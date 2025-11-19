void ResetDetection::~ResetDetection(ResetDetection *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  v4 = *(this + 6);
  *(this + 6) = 0;
  v5 = *MEMORY[0x29EDB8FC0];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN14ResetDetectionD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = v4;
  CFRunLoopPerformBlock(v3, v5, block);
  CFRunLoopWakeUp(*(this + 5));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 13));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 10));
  v6 = *(this + 7);
  if (v6)
  {
    CFRelease(v6);
  }

  MEMORY[0x29C26DE80](this + 32);
  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN14ResetDetectionD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(v1);
  }
}

void ResetDetection::start(ResetDetection *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN14ResetDetection5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_3;
  v1[4] = this;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(this, v1);
}

void ___ZN14ResetDetection5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Started", buf, 2u);
  }

  v3 = operator new(0x10uLL);
  v4 = v1[1];
  if (!v4 || (v5 = *v1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *v3 = v5;
  v3[1] = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v1[6] = v3;
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v1[6];
    v7 = v1[7];
    v9 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  v14 = v1[4];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_297288000, v14, OS_LOG_TYPE_ERROR, "failed registering for reset detect", v16, 2u);
    if (!v1[7])
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!v1[7])
  {
    return;
  }

LABEL_11:
  v19 = 1;
  if (TelephonyBasebandGetReset())
  {
    *(v1 + 16) = v19;
  }

  else
  {
    v15 = v1[4];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_297288000, v15, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v18, 2u);
    }
  }
}

void ResetDetection::sResetDetectCallback(ResetDetection *this, void *a2, int a3, unsigned int a4, void *a5)
{
  if (this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v7 = *this;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          v10[0] = MEMORY[0x29EDCA5F8];
          v10[1] = 0x40000000;
          v10[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
          v10[3] = &__block_descriptor_tmp_6;
          v10[4] = v7;
          v11 = a3;
          ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v7, v10);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t ResetDetection::poll(ResetDetection *this, BOOL *a2)
{
  result = *(this + 7);
  if (result)
  {
    v9 = 1;
    result = TelephonyBasebandGetReset();
    if (result)
    {
      *a2 = v9;
    }

    else
    {
      v5 = *(this + 4);
      v6 = result;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      result = v6;
      if (v7)
      {
        *v8 = 0;
        _os_log_error_impl(&dword_297288000, v5, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v8, 2u);
        return v6;
      }
    }
  }

  return result;
}

void ResetDetection::add(uint64_t *a1, uint64_t a2, char a3, void **a4, uint64_t a5)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke;
  v10[3] = &__block_descriptor_tmp_4_0;
  v10[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v14 = a3;
    v9 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v14 = a3;
  v9 = *a4;
  if (*a4)
  {
LABEL_5:
    v9 = _Block_copy(v9);
  }

LABEL_6:
  aBlock = v9;
  v13 = a5;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(a1, v10);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 80);
    *buf = 136315394;
    v24 = v4;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Added detection with key '%s', reset=%d", buf, 0x12u);
  }

  v6 = *(v2 + 64);
  v7 = v6;
  if (v6)
  {
    if (v6 == 2)
    {
      goto LABEL_25;
    }

    v7 = 1;
    if (v6 != 1)
    {
      v7 = 2;
    }

    if (!*(a1 + 80))
    {
      v7 = 0;
    }
  }

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 80);
  }

  v9 = v6 | *(a1 + 80);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  if (v7 == 1)
  {
    v11 = 0;
  }

  if ((v10 & 1) == 0 && (v11 & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_47;
  }

LABEL_25:
  v12 = *(a1 + 63);
  if (*(a1 + 80))
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v22 = *(a1 + 40);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    v21 = v14;
    ResetDetection::addToBlocks_sync(v2, &v22, &v21, (v2 + 72), *(a1 + 72));
    if (v14)
    {
      _Block_release(v14);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v22.__r_.__value_.__r.__words[0];
LABEL_46:
      operator delete(v17);
    }
  }

  else
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v20 = *(a1 + 40);
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = _Block_copy(v15);
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;
    ResetDetection::addToBlocks_sync(v2, &v20, &v19, (v2 + 96), *(a1 + 72));
    if (v16)
    {
      _Block_release(v16);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
      goto LABEL_46;
    }
  }

LABEL_47:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_2972B7B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ResetDetection::addToBlocks_sync(uint64_t *a1, uint64_t a2, void **a3, uint64_t **a4, dispatch_time_t a5)
{
  v10 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, a1[2]);
  dispatch_source_set_timer(v10, a5, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v11 = a1[1];
  if (!v11 || (v12 = *a1, (v13 = std::__shared_weak_count::lock(v11)) == 0))
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

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN14ResetDetection16addToBlocks_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFviEEERNS0_3mapIS6_NS0_4pairIP17dispatch_source_sSB_EENS0_4lessIS6_EENS4_INSD_IKS6_SG_EEEEEEy_block_invoke;
  handler[3] = &__block_descriptor_tmp_5_3;
  handler[4] = a1;
  handler[5] = v12;
  v38 = v14;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v39 = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(v10);
  v16 = *a3;
  if (*a3)
  {
    v16 = _Block_copy(v16);
  }

  v36 = v16;
  v18 = a4 + 1;
  v17 = a4[1];
  if (v17)
  {
    v19 = *(a2 + 23);
    if (v19 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    while (1)
    {
      v22 = v17;
      v25 = v17[4];
      v23 = v17 + 4;
      v24 = v25;
      v26 = *(v23 + 23);
      if (v26 >= 0)
      {
        v27 = v23;
      }

      else
      {
        v27 = v24;
      }

      if (v26 >= 0)
      {
        v28 = *(v23 + 23);
      }

      else
      {
        v28 = v23[1];
      }

      if (v28 >= v21)
      {
        v29 = v21;
      }

      else
      {
        v29 = v28;
      }

      v30 = memcmp(v20, v27, v29);
      if (v30)
      {
        if (v30 < 0)
        {
          goto LABEL_17;
        }

LABEL_31:
        v31 = memcmp(v27, v20, v29);
        if (v31)
        {
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (v28 >= v21)
        {
LABEL_45:
          v35 = v22[8];
          v22[7] = v10;
          v22[8] = v36;
          if (v35)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        v17 = v22[1];
        if (!v17)
        {
          v18 = v22 + 1;
          goto LABEL_38;
        }
      }

      else
      {
        if (v21 >= v28)
        {
          goto LABEL_31;
        }

LABEL_17:
        v17 = *v22;
        v18 = v22;
        if (!*v22)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v22 = a4 + 1;
LABEL_38:
  v32 = operator new(0x48uLL);
  v33 = v32;
  v41 = v32;
  v42 = a4;
  v43 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v32 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v32 + 2) = *a2;
    *(v32 + 6) = *(a2 + 16);
  }

  v33[7] = 0;
  v33[8] = 0;
  *v33 = 0;
  v33[1] = 0;
  v33[2] = v22;
  *v18 = v33;
  v34 = **a4;
  if (v34)
  {
    *a4 = v34;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a4[1], v33);
  a4[2] = (a4[2] + 1);
  v35 = v33[8];
  v33[7] = v10;
  v33[8] = v36;
  if (v35)
  {
LABEL_46:
    _Block_release(v35);
  }

LABEL_47:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  std::__shared_weak_count::__release_weak(v14);
}

void sub_2972B7ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>>>>::~unique_ptr[abi:ne200100]((v27 - 104));
  std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>::~pair(&a11);
  if (a26 < 0)
  {
    operator delete(__p);
    v29 = a19;
    if (!a19)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v26);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v29 = a19;
    if (!a19)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_weak(v26);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 63) & 0x80000000) == 0)
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    result = *(a2 + 64);
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  result = *(a2 + 64);
  if (result)
  {
LABEL_5:
    result = _Block_copy(result);
  }

LABEL_6:
  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void ___ZN14ResetDetection16addToBlocks_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFviEEERNS0_3mapIS6_NS0_4pairIP17dispatch_source_sSB_EENS0_4lessIS6_EENS4_INSD_IKS6_SG_EEEEEEy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_54;
  }

  v6 = *(a1 + 56);
  v9 = *(v6 + 8);
  v7 = (v6 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_54;
  }

  v10 = *(a1 + 87);
  if (v10 >= 0)
  {
    v11 = (a1 + 64);
  }

  else
  {
    v11 = *(a1 + 64);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 87);
  }

  else
  {
    v12 = *(a1 + 72);
  }

  v13 = v7;
  do
  {
    while (1)
    {
      v14 = *(v8 + 55);
      v15 = v14 >= 0 ? (v8 + 4) : v8[4];
      v16 = v14 >= 0 ? *(v8 + 55) : v8[5];
      v17 = v12 >= v16 ? v16 : v12;
      v18 = memcmp(v15, v11, v17);
      if (v18)
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_26;
      }

LABEL_12:
      v8 = v8[1];
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    if (v18 < 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    v13 = v8;
    v8 = *v8;
  }

  while (v8);
LABEL_27:
  if (v13 != v7)
  {
    v19 = v13[4];
    v20 = *(v13 + 55);
    if (v20 >= 0)
    {
      v21 = v13 + 4;
    }

    else
    {
      v21 = v13[4];
    }

    if (v20 >= 0)
    {
      v22 = *(v13 + 55);
    }

    else
    {
      v22 = v13[5];
    }

    if (v22 >= v12)
    {
      v23 = v12;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v11, v21, v23);
    if (v24)
    {
      if (v24 < 0)
      {
        goto LABEL_54;
      }

LABEL_41:
      ResetDetection::invokeBlock_sync(v3, (v13 + 4), 3760250883);
      v25 = *(a1 + 56);
      v26 = v13[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        v28 = v13;
        do
        {
          v27 = v28[2];
          v29 = *v27 == v28;
          v28 = v27;
        }

        while (!v29);
      }

      if (*v25 == v13)
      {
        *v25 = v27;
      }

      v30 = v25[1];
      v25[2] = (v25[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v30, v13);
      v31 = v13[8];
      if (v31)
      {
        _Block_release(v31);
      }

      if (*(v13 + 55) < 0)
      {
        operator delete(v13[4]);
      }

      operator delete(v13);
    }

    else if (v12 >= v22)
    {
      goto LABEL_41;
    }
  }

LABEL_54:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ResetDetection::invokeBlock_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  memset(&__p, 170, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6)
  {
    v8 = _Block_copy(v6);
    *(a2 + 24) = 0;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
LABEL_6:
    dispatch_source_cancel(v7);
    dispatch_release(v7);
  }

LABEL_7:
  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v14 = p_p;
    _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Signalling %s", buf, 0xCu);
  }

  v8[2](v8, a3);
  _Block_release(v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_2972B83CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14ResetDetectionEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v3 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v3;
  }
}

void sub_2972B847C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14ResetDetectionEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void ResetDetection::notifyResetDetectBlocks_sync(uint64_t a1, uint64_t a2)
{
  v3 = &v15;
  v4 = *(a2 + 8);
  v15 = *a2;
  v16[0] = v4;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v16[1] = v5;
  if (v5)
  {
    v3 = v4 + 16;
  }

  *v3 = v16;
  *a2 = a2 + 8;
  v6 = v15;
  if (v15 != v16)
  {
    while (1)
    {
      aBlock = 0xAAAAAAAAAAAAAAAALL;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v7;
      v13 = v7;
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v6[4], v6[5]);
      }

      else
      {
        *__p = *(v6 + 2);
        *&v13 = v6[6];
      }

      v8 = v6[8];
      *(&v13 + 1) = v6[7];
      if (v8)
      {
        v8 = _Block_copy(v8);
      }

      aBlock = v8;
      ResetDetection::invokeBlock_sync(a1, __p, 0);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
        v9 = v6[1];
        if (v9)
        {
          do
          {
LABEL_17:
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
          goto LABEL_5;
        }
      }

      else
      {
        v9 = v6[1];
        if (v9)
        {
          goto LABEL_17;
        }
      }

      do
      {
        v10 = v6[2];
        v11 = *v10 == v6;
        v6 = v10;
      }

      while (!v11);
LABEL_5:
      v6 = v10;
      if (v10 == v16)
      {
        v4 = v16[0];
        break;
      }
    }
  }

  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(v4);
}

void sub_2972B8650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  std::pair<std::string const,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>::~pair(&a9);
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(a15);
  _Unwind_Resume(a1);
}

void ResetDetection::resetDetectCallback(ResetDetection *this, void *a2, unsigned int a3, int a4, void *a5)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
  v5[3] = &__block_descriptor_tmp_6;
  v5[4] = this;
  v6 = a4;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(this, v5);
}

void ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == -469794815)
  {
    v5 = *(v1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I baseband alive detected", &state, 2u);
    }

    *(v1 + 64) = 0;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 96);
  }

  else if (v2 == -469794816)
  {
    v3 = _os_activity_create(&dword_297288000, "Baseband state: reset detected", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v3, &state);
    os_activity_scope_leave(&state);
    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I baseband reset detected", &state, 2u);
    }

    *(v1 + 64) = 1;
    ResetDetection::notifyResetDetectBlocks_sync(v1, v1 + 72);
    if (v3)
    {
      os_release(v3);
    }
  }
}

void sub_2972B8830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::os::scoped_activity::~scoped_activity(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ctu::os::scoped_activity::~scoped_activity(void **this)
{
  v1 = *this;
  if (v1)
  {
    os_release(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    os_release(v1);
  }
}

void *std::shared_ptr<ResetDetection>::shared_ptr[abi:ne200100]<ResetDetection,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E353A0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
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
  *a2 = a2;
  a2[1] = v4;
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

void sub_2972B8A20(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1}::operator() const(ResetDetection*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ResetDetection *,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection *)#1},std::allocator<ResetDetection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ResetDetection *,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection *)#1},std::allocator<ResetDetection>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1}::operator() const(ResetDetection*)::{lambda(void *)#1}::__invoke(ResetDetection *a1)
{
  if (a1)
  {
    ResetDetection::~ResetDetection(a1);

    operator delete(v1);
  }
}

void std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      _Block_release(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ResetDetectionE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E353E8;
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

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ResetDetectionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        _Block_release(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void ResetInfo::ResetInfo(ResetInfo *this)
{
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
}

{
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
}

uint64_t ResetInfo::ResetInfo(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, int a6, __int128 *a7)
{
  v17 = 0;
  ctu::cf::assign();
  *a1 = 0uLL;
  *(a1 + 16) = v17;
  v16 = 0uLL;
  v17 = 0;
  ctu::cf::assign();
  *(a1 + 24) = 0uLL;
  *(a1 + 40) = v17;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v12;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  *(a1 + 72) = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    *(a1 + 80) = a6;
    if ((*(a7 + 23) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    std::string::__init_copy_ctor_external((a1 + 88), *a7, *(a7 + 1));
    return a1;
  }

  *(a1 + 80) = a6;
  if (*(a7 + 23) < 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = *a7;
  *(a1 + 104) = *(a7 + 2);
  *(a1 + 88) = v13;
  return a1;
}

void sub_2972B8FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 47) < 0)
  {
    operator delete(*v21);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::ResetInfo(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, int a6, __int128 *a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v14 = *a3;
      this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&this[1].__r_.__value_.__l.__data_ = v14;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
LABEL_6:
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v15 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v15;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  this[3].__r_.__value_.__r.__words[0] = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = a6;
    if ((*(a7 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = a6;
    if ((*(a7 + 23) & 0x80000000) == 0)
    {
LABEL_14:
      v16 = *a7;
      this[4].__r_.__value_.__l.__size_ = *(a7 + 2);
      *&this[3].__r_.__value_.__r.__words[2] = v16;
      return;
    }
  }

  std::string::__init_copy_ctor_external((this + 88), *a7, *(a7 + 1));
}

void sub_2972B91A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v14 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v14);
  _Unwind_Resume(exception_object);
}

void ResetInfo::~ResetInfo(void **this)
{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*this);
    return;
  }

LABEL_8:
  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*this);
    return;
  }

LABEL_8:
  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

void ResetInfo::getType(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void ResetInfo::getSubType(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

void ResetInfo::getReason(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

void ResetInfo::getTime(ResetInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 9);
  v4 = operator new(0x38uLL);
  v4[8] = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v6;
  v5 = v4;
  v6[0] = v4;
  *(v4 + 24) = 1;
  v6[1] = 1;
  *(v4 + 5) = v3;
  *(v4 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v5, 0, 9, a2);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v5, v6[0]);
}

void ResetInfo::getCrashReason(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 111) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 11), *(this + 12));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 88);
    a2->__r_.__value_.__r.__words[2] = *(this + 13);
  }
}

void ResetInfo::setType(ResetInfo *this, const __CFString *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  ctu::cf::assign();
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 15) = 0;
  *(this + 23) = 0;
  v3 = *MEMORY[0x29EDCA608];
}

void sub_2972B9550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::setSubType(ResetInfo *this, const __CFString *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  ctu::cf::assign();
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 39) = 0;
  *(this + 47) = 0;
  v3 = *MEMORY[0x29EDCA608];
}

void sub_2972B9610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **ResetInfo::setReason(uint64_t a1, void **a2)
{
  result = (a1 + 48);
  if (result != a2)
  {
    if (*(a1 + 71) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return std::string::__assign_no_alias<false>(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::string::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      result[2] = a2[2];
      *result = v4;
    }
  }

  return result;
}

void ResetInfo::setTime(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *(a1 + 72) = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2972B9704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **ResetInfo::setCrashReason(uint64_t a1, void **a2)
{
  result = (a1 + 88);
  if (result != a2)
  {
    if (*(a1 + 111) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return std::string::__assign_no_alias<false>(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::string::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      result[2] = a2[2];
      *result = v4;
    }
  }

  return result;
}

uint64_t ResetInfo::asString@<X0>(ResetInfo *this@<X0>, _BYTE *a2@<X8>)
{
  if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
  {
    dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_0);
  }

  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57[7] = v4;
  v57[8] = v4;
  v57[5] = v4;
  v57[6] = v4;
  v57[3] = v4;
  v57[4] = v4;
  v57[1] = v4;
  v57[2] = v4;
  v56 = v4;
  v57[0] = v4;
  *v54 = v4;
  v55 = v4;
  v52 = v4;
  v53 = v4;
  v50 = v4;
  v51 = v4;
  v49 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v49);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "ResetInfo { Type='", 18);
  v6 = *(this + 23);
  if (v6 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = *this;
  }

  if (v6 >= 0)
  {
    v8 = *(this + 23);
  }

  else
  {
    v8 = *(this + 1);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "' SubType='", 11);
  v11 = *(this + 47);
  if (v11 >= 0)
  {
    v12 = this + 24;
  }

  else
  {
    v12 = *(this + 3);
  }

  if (v11 >= 0)
  {
    v13 = *(this + 47);
  }

  else
  {
    v13 = *(this + 4);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "' Time='", 8);
  v16 = *(this + 9);
  v60 = 0;
  v61 = 0;
  v59 = &v60;
  v17 = operator new(0x38uLL);
  v17[8] = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = &v60;
  v59 = v17;
  v60 = v17;
  *(v17 + 24) = 1;
  v61 = 1;
  *(v17 + 5) = v16;
  *(v17 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v59, 0, 9, __p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v59, v60);
  if ((v48 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v19 = v48;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v18, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "' Radar='", 9);
  v22 = MEMORY[0x29C26EA50](v21, *(this + 20));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' Reason='", 10);
  v25 = this + 48;
  v24 = *(this + 6);
  v26 = *(this + 71);
  if (v26 >= 0)
  {
    v27 = this + 48;
  }

  else
  {
    v27 = *(this + 6);
  }

  if (v26 >= 0)
  {
    v28 = *(this + 71);
  }

  else
  {
    v28 = *(this + 7);
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "' MTBF='", 8);
  *(v30 + *(*v30 - 24) + 8) |= 1u;
  isMTBF = ResetInfo::isMTBF(this);
  v32 = MEMORY[0x29C26EA30](v30, isMTBF);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "' SCD='", 7);
  *(v33 + *(*v33 - 24) + 8) |= 1u;
  v34 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(2, v25, ResetInfo::sPatternMasks);
  v35 = MEMORY[0x29C26EA30](v33, v34);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "' COF='", 7);
  *(v36 + *(*v36 - 24) + 8) |= 1u;
  v37 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(4, v25, ResetInfo::sPatternMasks);
  v38 = MEMORY[0x29C26EA30](v36, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "' }", 3);
  if ((v48 & 0x80000000) == 0)
  {
    v39 = BYTE8(v56);
    if ((BYTE8(v56) & 0x10) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v41 = v56;
    if (v56 < *(&v53 + 1))
    {
      *&v56 = *(&v53 + 1);
      v41 = *(&v53 + 1);
    }

    v42 = v53;
    v40 = v41 - v53;
    if ((v41 - v53) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

  operator delete(__p[0]);
  v39 = BYTE8(v56);
  if ((BYTE8(v56) & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  if ((v39 & 8) == 0)
  {
    v40 = 0;
    a2[23] = 0;
    goto LABEL_43;
  }

  v42 = *(&v51 + 1);
  v40 = *(&v52 + 1) - *(&v51 + 1);
  if (*(&v52 + 1) - *(&v51 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_47:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_35:
  if (v40 >= 0x17)
  {
    if ((v40 | 7) == 0x17)
    {
      v43 = 25;
    }

    else
    {
      v43 = (v40 | 7) + 1;
    }

    v44 = operator new(v43);
    *(a2 + 1) = v40;
    *(a2 + 2) = v43 | 0x8000000000000000;
    *a2 = v44;
    a2 = v44;
    goto LABEL_42;
  }

  a2[23] = v40;
  if (v40)
  {
LABEL_42:
    memmove(a2, v42, v40);
  }

LABEL_43:
  a2[v40] = 0;
  *&v49 = *MEMORY[0x29EDC9528];
  v45 = *(MEMORY[0x29EDC9528] + 72);
  *(&v49 + *(v49 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v50 = v45;
  *(&v50 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[1]);
  }

  *(&v50 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v51);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26EC90](v57);
}

void sub_2972B9C88(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24 - 88, *(v24 - 80));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](va);
  _Unwind_Resume(a1);
}

void ResetInfo::readResetReasonPatterns(ResetInfo *this)
{
  if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
  {
    dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_0);
  }
}

uint64_t ResetInfo::isMTBF(ResetInfo **this)
{
  v2 = *MEMORY[0x29EDBEB60];
  v3 = *(this + 23);
  if (v3 < 0)
  {
    v4 = *this;
    v3 = this[1];
    v5 = strlen(*MEMORY[0x29EDBEB60]);
    if (!v5)
    {
      return ResetInfo::reasonMatchesAtLeastOneApplicablePattern(1, (this + 6), ResetInfo::sPatternMasks) ^ 1;
    }
  }

  else
  {
    v4 = this;
    v5 = strlen(*MEMORY[0x29EDBEB60]);
    if (!v5)
    {
      return ResetInfo::reasonMatchesAtLeastOneApplicablePattern(1, (this + 6), ResetInfo::sPatternMasks) ^ 1;
    }
  }

  v6 = v5;
  if (v3 < v5)
  {
    return 0;
  }

  v8 = v4 + v3;
  v9 = *v2;
  v10 = v4;
  while (1)
  {
    if (v3 - v6 == -1)
    {
      return 0;
    }

    result = memchr(v10, v9, v3 - v6 + 1);
    if (!result)
    {
      return result;
    }

    v11 = result;
    result = memcmp(result, v2, v6);
    if (!result)
    {
      break;
    }

    v10 = (v11 + 1);
    v3 = &v8[-v11 - 1];
    if (v3 < v6)
    {
      return 0;
    }
  }

  if (v11 != v8 && v11 - v4 != -1)
  {
    return ResetInfo::reasonMatchesAtLeastOneApplicablePattern(1, (this + 6), ResetInfo::sPatternMasks) ^ 1;
  }

  return result;
}

uint64_t ResetInfo::addToDict(uint64_t result, __CFDictionary **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  if (*a2)
  {
    v6 = result;
    if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
    {
      dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_0);
    }

    v7 = *MEMORY[0x29EDB8ED8];
    v8 = *a2;
    v9 = *MEMORY[0x29EDBEB00];
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *v6, *(v6 + 8));
    }

    else
    {
      v28 = *v6;
    }

    ctu::cf::update<char const*,std::string>(v8, v9, &v28, v7, a5);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      v11 = *a2;
      v12 = *MEMORY[0x29EDBEEE0];
      if ((*(v6 + 47) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = *a2;
      v12 = *MEMORY[0x29EDBEEE0];
      if ((*(v6 + 47) & 0x80000000) == 0)
      {
LABEL_9:
        v28 = *(v6 + 24);
        goto LABEL_12;
      }
    }

    std::string::__init_copy_ctor_external(&v28, *(v6 + 24), *(v6 + 32));
LABEL_12:
    ctu::cf::update<char const*,std::string>(v11, v12, &v28, v7, v10);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      v14 = *a2;
      v15 = *MEMORY[0x29EDBED88];
      if ((*(v6 + 71) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *a2;
      v15 = *MEMORY[0x29EDBED88];
      if ((*(v6 + 71) & 0x80000000) == 0)
      {
LABEL_14:
        v28 = *(v6 + 48);
        goto LABEL_17;
      }
    }

    std::string::__init_copy_ctor_external(&v28, *(v6 + 48), *(v6 + 56));
LABEL_17:
    ctu::cf::update<char const*,std::string>(v14, v15, &v28, v7, v13);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    v16 = *(v6 + 72);
    v17 = operator new(0x38uLL);
    v17[8] = 0;
    *v17 = 0;
    *(v17 + 1) = 0;
    *(v17 + 2) = &v28.__r_.__value_.__l.__size_;
    v28.__r_.__value_.__r.__words[0] = v17;
    v28.__r_.__value_.__l.__size_ = v17;
    *(v17 + 24) = 1;
    v28.__r_.__value_.__r.__words[2] = 1;
    *(v17 + 5) = v16;
    *(v17 + 6) = 0xAAAAAAAA00000000;
    Timestamp::asString(&v28, 0, 9, &__p);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v28, v28.__r_.__value_.__l.__size_);
    v19 = *a2;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = __p;
    }

    ctu::cf::update<char const*,std::string>(v19, *MEMORY[0x29EDBE930], &v28, v7, v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      ctu::cf::update<char const*,unsigned int>(*a2, *MEMORY[0x29EDBE578], *(v6 + 80), v7, v20);
      isMTBF = ResetInfo::isMTBF(v6);
      ctu::cf::update<char const*,BOOL>(*a2, *MEMORY[0x29EDBED80], isMTBF, v7, v22);
      v23 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(2, v6 + 48, ResetInfo::sPatternMasks);
      ctu::cf::update<char const*,BOOL>(*a2, *MEMORY[0x29EDBED98], v23, v7, v24);
      v25 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(4, v6 + 48, ResetInfo::sPatternMasks);
      return ctu::cf::update<char const*,BOOL>(*a2, *MEMORY[0x29EDBED90], v25, v7, v26);
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_24;
  }

  return result;
}

void sub_2972BA188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::addToDict(ResetInfo *this, xpc_object_t *a2)
{
  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    return;
  }

  if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
  {
    dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_0);
    v4 = this;
    if ((*(this + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = this;
  if (*(this + 23) < 0)
  {
LABEL_4:
    v4 = *this;
  }

LABEL_5:
  v5 = xpc_string_create(v4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEB00], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = this + 24;
  if (*(this + 47) < 0)
  {
    v7 = *v7;
  }

  v8 = xpc_string_create(v7);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEEE0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = (this + 48);
  v11 = this + 48;
  if (*(this + 71) < 0)
  {
    v11 = *v10;
  }

  v12 = xpc_string_create(v11);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED88], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = *(this + 9);
  v15 = operator new(0x38uLL);
  v15[8] = 0;
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = v33;
  v32 = v15;
  v33[0] = v15;
  *(v15 + 24) = 1;
  v33[1] = 1;
  *(v15 + 5) = v14;
  *(v15 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v32, 0, 9, __p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v32, v33[0]);
  if (v31 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v17 = xpc_string_create(v16);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE930], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = xpc_int64_create(*(this + 20));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE578], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  isMTBF = ResetInfo::isMTBF(this);
  v22 = xpc_BOOL_create(isMTBF);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED80], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(2, v10, ResetInfo::sPatternMasks);
  v25 = xpc_BOOL_create(v24);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED98], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(4, v10, ResetInfo::sPatternMasks);
  v28 = xpc_BOOL_create(v27);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED90], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
}

void ResetInfo::fetchFromDict(void **this, xpc_object_t *a2)
{
  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    return;
  }

  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEB00]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  xpc::dyn_cast_or_default();
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = v12;
  this[2] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  xpc_release(object);
  v5 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEEE0]);
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  xpc::dyn_cast_or_default();
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  *(this + 3) = v12;
  this[5] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  xpc_release(object);
  v6 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED88]);
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  xpc::dyn_cast_or_default();
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *(this + 3) = v12;
  this[8] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  xpc_release(object);
  v7 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE930]);
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  Timestamp::Timestamp(&v12);
  Timestamp::asString(&v12, 0, 9, &__p);
  xpc::dyn_cast_or_default();
  this[9] = Timestamp::convert(&v9);
  if (v10 < 0)
  {
    operator delete(v9);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(__p);
    goto LABEL_22;
  }

  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v12, *(&v12 + 1));
  xpc_release(object);
  v8 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE578]);
  __p = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    __p = xpc_null_create();
  }

  *(this + 20) = xpc::dyn_cast_or_default(&__p, 7);
  xpc_release(__p);
}

uint64_t ResetInfo::reasonMatchesAtLeastOneApplicablePattern(int a1, uint64_t a2, __int128 **a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v7 = 0;
    while (1)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v17 = v8;
      *&v17[16] = v8;
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v17, *v3, *(v3 + 1));
      }

      else
      {
        v9 = *v3;
        *&v17[16] = *(v3 + 2);
        *v17 = v9;
      }

      *&v17[24] = *(v3 + 6);
      if ((*&v17[24] & a1) != 0)
      {
        memset(&__p, 170, sizeof(__p));
        if ((v17[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v17, *&v17[8]);
        }

        else
        {
          __p = *v17;
        }

        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v20 = v11;
        v21 = v11;
        *&v18[0].__locale_ = v11;
        v19 = v11;
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v18, &__p, 0);
        v12 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a2, v18, 0);
        if (v12)
        {
          v10 = 2;
        }

        else
        {
          v10 = 0;
        }

        v13 = v21;
        if (v21 && !atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          std::locale::~locale(v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_25:
            operator delete(__p.__r_.__value_.__l.__data_);
            v7 |= v12;
            if ((v17[23] & 0x80000000) == 0)
            {
              goto LABEL_21;
            }

LABEL_20:
            operator delete(*v17);
            goto LABEL_21;
          }
        }

        else
        {
          std::locale::~locale(v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_25;
          }
        }

        v7 |= v12;
        if ((v17[23] & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v10 = 3;
        if ((v17[23] & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      if (v10 == 3 || !v10)
      {
        v3 += 2;
        if (v3 != v4)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  LOBYTE(v7) = 0;
LABEL_28:
  v14 = *MEMORY[0x29EDCA608];
  return v7 & 1;
}

void sub_2972BAC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = *(a1 + 23);
  v5 = *a1;
  v6 = *(a1 + 8);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[24] = v7;
  if ((v4 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v15 = 0xAAAAAAAAAAAAAA00;
  v17 = v7;
  *&v13[32] = 0;
  v14 = 0;
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  BYTE8(v17) = 0;
  v18 = 0;
  *v12 = 0u;
  memset(v13, 0, 25);
  v20[6] = 0xAAAAAAAAAAAAAA00;
  v20[3] = v7;
  v21 = v7;
  v20[4] = 0;
  v20[5] = 0;
  v20[7] = 0;
  v20[8] = 0;
  LOBYTE(v21) = 0;
  BYTE8(v21) = 0;
  v22 = 0;
  *__p = 0u;
  memset(v20, 0, 25);
  v10 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v8, (v8 + v9), __p, a3 | 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v12, v8, (v8 + v9), __p, (v3 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10 && (v17 & 1) != 0)
  {
    v10 = 0;
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v10;
}

void sub_2972BAE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a9;
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = a9;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
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

void sGetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A1399D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D18))
  {
    qword_2A1399D20 = 0;
    qword_2A1399D28 = 0;
    __cxa_guard_release(&qword_2A1399D18);
  }

  if (_MergedGlobals_0 != -1)
  {

    dispatch_once(&_MergedGlobals_0, &__block_literal_global_42);
  }
}

{
  if ((atomic_load_explicit(&qword_2A1399DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399DD0))
  {
    qword_2A1399DD8 = 0;
    qword_2A1399DE0 = 0;
    __cxa_guard_release(&qword_2A1399DD0);
  }

  if (_MergedGlobals_4 != -1)
  {

    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3);
  }
}

{
  if ((atomic_load_explicit(&qword_2A1399E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E30))
  {
    qword_2A1399E38 = 0;
    qword_2A1399E40 = 0;
    __cxa_guard_release(&qword_2A1399E30);
  }

  if (_MergedGlobals_8 != -1)
  {

    dispatch_once(&_MergedGlobals_8, &__block_literal_global_7);
  }
}

{
  if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
  {
    qword_2A1399EB0 = 0;
    qword_2A1399EB8 = 0;
    __cxa_guard_release(&qword_2A1399EA8);
  }

  if (_MergedGlobals_13 != -1)
  {

    dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
  }
}

uint64_t ResetInfo::readResetInfoReasonPatternsFromFactoryFile@<X0>(void *a1@<X8>)
{
  memset(v10, 170, sizeof(v10));
  MEMORY[0x29C26DFD0](v10, @"/AppleInternal/Cellular/Factory/BasebandCOFSCD.plist", *MEMORY[0x29EDB8FB0]);
  v9 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  ctu::cf::MakeCFString::MakeCFString(v7, "ResetInfoRegexPatterns");
  v3 = ctu::cf::map_adapter::copyCFArrayRef(v10, v7[0]);
  MEMORY[0x29C26DF80](v7);
  v9 = v3;
  v6 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  ResetInfo::convertResetInfoReasonPatternsFromCFSharedArrayToVector(&v6, v7);
  v4 = v8;
  *a1 = *v7;
  a1[2] = v4;
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  if (v3)
  {
    CFRelease(v3);
    CFRelease(v3);
  }

  return MEMORY[0x29C26DFE0](v10);
}

void sub_2972BB0AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va1);
  MEMORY[0x29C26DFE0](v3 - 40);
  _Unwind_Resume(a1);
}

void ResetInfo::convertResetInfoReasonPatternsFromCFSharedArrayToVector(CFArrayRef *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    std::vector<ResetInfo::RegexPatternAndReasonMask>::reserve(a2, Count);
    if (Count)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        v8 = ValueAtIndex;
        if (ValueAtIndex && (v9 = CFGetTypeID(ValueAtIndex), v9 == CFDictionaryGetTypeID()))
        {
          v19 = v8;
          CFRetain(v8);
        }

        else
        {
          v8 = 0;
          v19 = 0;
        }

        v18[0] = 0xAAAAAAAAAAAAAAAALL;
        v18[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v18, v8);
        memset(&v17, 170, sizeof(v17));
        memset(&__p, 0, sizeof(__p));
        ctu::cf::MakeCFString::MakeCFString(&v20, "ResetInfoReasonRegexPattern");
        ctu::cf::map_adapter::getString();
        MEMORY[0x29C26DF80](&v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ctu::cf::MakeCFString::MakeCFString(&__p, "ResetInfoReasonRegexPatternMask");
        Int = ctu::cf::map_adapter::getInt(v18, __p.__r_.__value_.__l.__data_);
        MEMORY[0x29C26DF80](&__p);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v17;
        }

        v16 = Int;
        v11 = *(a2 + 8);
        if (v11 >= *(a2 + 16))
        {
          v13 = std::vector<ResetInfo::RegexPatternAndReasonMask>::__emplace_back_slow_path<ResetInfo::RegexPatternAndReasonMask>(a2, &__p);
          v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a2 + 8) = v13;
          if (v14 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_19:
              MEMORY[0x29C26DFC0](v18);
              if (!v8)
              {
                continue;
              }

LABEL_23:
              CFRelease(v8);
              continue;
            }
          }

          else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = *&__p.__r_.__value_.__l.__data_;
          *(v11 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v11 = v12;
          memset(&__p, 0, sizeof(__p));
          *(v11 + 24) = v16;
          *(a2 + 8) = v11 + 32;
          if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        operator delete(v17.__r_.__value_.__l.__data_);
        MEMORY[0x29C26DFC0](v18);
        if (v8)
        {
          goto LABEL_23;
        }
      }
    }
  }
}

void sub_2972BB338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, const void *a25)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26DFC0](&a23);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a25);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void ***std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](void ***a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
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

void ResetInfo::readResetInfoReasonPatternsFromPreferences(void ***a1@<X8>)
{
  v18 = 0;
  v19 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v4 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v4, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v4;
    v3 = operator new(0x20uLL);
    *v3 = &unk_2A1E34960;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = v4;
    v5 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v4;
    *(&xmmword_2A1399338 + 1) = v3;
    if (!v5)
    {
      *&v17 = v4;
      *(&v17 + 1) = v3;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v3 = *(&xmmword_2A1399338 + 1);
  v4 = xmmword_2A1399338;
  v17 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  strcpy(__p, "ResetInfoRegexPatterns");
  HIBYTE(__p[2]) = 22;
  v6 = Preferences::getPreference<__CFArray const*>(v4, __p, &v19);
  if (v19)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(&v17 + 1);
  if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_30:
    if ((atomic_load_explicit(&qword_2A1399D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D18))
    {
      qword_2A1399D20 = 0;
      qword_2A1399D28 = 0;
      __cxa_guard_release(&qword_2A1399D18);
    }

    if (_MergedGlobals_0 == -1)
    {
      v14 = qword_2A1399D28;
      if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_42);
      v14 = qword_2A1399D28;
      if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }
    }

    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_297288000, v14, OS_LOG_TYPE_INFO, "No reset reason patterns entry found in ABMProperties", __p, 2u);
    goto LABEL_34;
  }

  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_17:
  v9 = v18;
  v10 = v19;
  v18 = v19;
  if (v9)
  {
    CFRelease(v9);
  }

  v15 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  ResetInfo::convertResetInfoReasonPatternsFromCFSharedArrayToVector(&v15, __p);
  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    while (v12 != v11)
    {
      v13 = *(v12 - 9);
      v12 -= 4;
      if (v13 < 0)
      {
        operator delete(*v12);
      }
    }

    operator delete(v11);
  }

  *a1 = *__p;
  a1[2] = __p[2];
  memset(__p, 0, 24);
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_34:
  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_2972BB798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v18);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v19 - 48));
  _Unwind_Resume(a1);
}

BOOL Preferences::getPreference<__CFArray const*>(uint64_t (***a1)(void, uint64_t), const char *a2, void *a3)
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
    v8 = v7 == CFArrayGetTypeID();
    v9 = v8;
    if (v8)
    {
      *a3 = v6;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x29C26DF80](&v11);
  return v9;
}

void std::vector<ResetInfo::RegexPatternAndReasonMask>::reserve(__int128 **a1, unint64_t a2)
{
  v2 = *a1;
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (a2 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v4 = a1[1];
    v5 = 32 * a2;
    v6 = operator new(32 * a2);
    v7 = v6;
    v8 = &v6[v5];
    v9 = &v6[v4 - v2];
    if (v4 != v2)
    {
      v10 = v2;
      v11 = v6;
      do
      {
        v12 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v12;
        *(v10 + 1) = 0;
        *(v10 + 2) = 0;
        *v10 = 0;
        *(v11 + 6) = *(v10 + 6);
        v10 += 2;
        v11 += 32;
      }

      while (v10 != v4);
      do
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

        v2 += 2;
      }

      while (v2 != v4);
      v2 = *a1;
    }

    *a1 = v7;
    a1[1] = v9;
    a1[2] = v8;
    if (v2)
    {

      operator delete(v2);
    }
  }
}

void ___ZN9ResetInfo23readResetReasonPatternsEv_block_invoke()
{
  v27 = *MEMORY[0x29EDCA608];
  ResetInfo::readResetInfoReasonPatternsFromPreferences(&buf);
  v1 = *ResetInfo::sPatternMasks;
  if (*ResetInfo::sPatternMasks)
  {
    v2 = *&ResetInfo::sPatternMasks[8];
    v3 = *ResetInfo::sPatternMasks;
    if (*&ResetInfo::sPatternMasks[8] != *ResetInfo::sPatternMasks)
    {
      do
      {
        v4 = *(v2 - 9);
        v2 -= 4;
        if (v4 < 0)
        {
          operator delete(*v2);
        }
      }

      while (v2 != v1);
      v3 = *ResetInfo::sPatternMasks;
    }

    *&ResetInfo::sPatternMasks[8] = v1;
    operator delete(v3);
    *ResetInfo::sPatternMasks = 0;
    *&ResetInfo::sPatternMasks[8] = 0;
    *&ResetInfo::sPatternMasks[16] = 0;
  }

  *ResetInfo::sPatternMasks = buf;
  if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
  {
    if ((atomic_load_explicit(&qword_2A1399D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D18))
    {
      qword_2A1399D20 = 0;
      qword_2A1399D28 = 0;
      __cxa_guard_release(&qword_2A1399D18);
    }

    if (_MergedGlobals_0 == -1)
    {
      v5 = qword_2A1399D28;
      v0 = os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO);
      if (!v0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    dispatch_once(&_MergedGlobals_0, &__block_literal_global_42);
    v5 = qword_2A1399D28;
    v0 = os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO);
    if (v0)
    {
LABEL_13:
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_INFO, "Reset info reason patterns and masks initialized from preferences file", &buf, 2u);
    }
  }

LABEL_14:
  if (*ResetInfo::sPatternMasks == *&ResetInfo::sPatternMasks[8] && capabilities::radio::initium(v0))
  {
    ResetInfo::readResetInfoReasonPatternsFromFactoryFile(&buf);
    v6 = *ResetInfo::sPatternMasks;
    if (*ResetInfo::sPatternMasks)
    {
      v7 = *&ResetInfo::sPatternMasks[8];
      v8 = *ResetInfo::sPatternMasks;
      if (*&ResetInfo::sPatternMasks[8] != *ResetInfo::sPatternMasks)
      {
        do
        {
          v9 = *(v7 - 9);
          v7 -= 4;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = *ResetInfo::sPatternMasks;
      }

      *&ResetInfo::sPatternMasks[8] = v6;
      operator delete(v8);
      *ResetInfo::sPatternMasks = 0;
      *&ResetInfo::sPatternMasks[8] = 0;
      *&ResetInfo::sPatternMasks[16] = 0;
    }

    *ResetInfo::sPatternMasks = buf;
    if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
    {
      if ((atomic_load_explicit(&qword_2A1399D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D18))
      {
        qword_2A1399D20 = 0;
        qword_2A1399D28 = 0;
        __cxa_guard_release(&qword_2A1399D18);
      }

      if (_MergedGlobals_0 == -1)
      {
        v10 = qword_2A1399D28;
        if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      dispatch_once(&_MergedGlobals_0, &__block_literal_global_42);
      v10 = qword_2A1399D28;
      if (os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO))
      {
LABEL_28:
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_INFO, "Reset info reason patterns and masks initialized from factory file", &buf, 2u);
      }
    }
  }

LABEL_29:
  if (*ResetInfo::sPatternMasks == *&ResetInfo::sPatternMasks[8])
  {
    if ((atomic_load_explicit(&qword_2A1399D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D18))
    {
      qword_2A1399D20 = 0;
      qword_2A1399D28 = 0;
      __cxa_guard_release(&qword_2A1399D18);
    }

    if (_MergedGlobals_0 == -1)
    {
      v11 = qword_2A1399D28;
      if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO))
      {
LABEL_34:
        std::vector<ResetInfo::RegexPatternAndReasonMask>::__assign_with_size[abi:ne200100]<ResetInfo::RegexPatternAndReasonMask*,ResetInfo::RegexPatternAndReasonMask*>(ResetInfo::sPatternMasks, kDefaultPatternMasks, qword_2A18CA988, (qword_2A18CA988 - kDefaultPatternMasks) >> 5);
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_0, &__block_literal_global_42);
      v11 = qword_2A1399D28;
      if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_INFO, "Default reset info reason patterns and masks will be used", &buf, 2u);
    goto LABEL_34;
  }

LABEL_35:
  if ((atomic_load_explicit(&qword_2A1399D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D18))
  {
    qword_2A1399D20 = 0;
    qword_2A1399D28 = 0;
    __cxa_guard_release(&qword_2A1399D18);
  }

  if (_MergedGlobals_0 == -1)
  {
    v12 = qword_2A1399D28;
    if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

LABEL_59:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_297288000, v12, OS_LOG_TYPE_DEBUG, "The effective reset info reason patterns and masks:", &buf, 2u);
    v13 = *ResetInfo::sPatternMasks;
    v14 = *&ResetInfo::sPatternMasks[8];
    if (*ResetInfo::sPatternMasks != *&ResetInfo::sPatternMasks[8])
    {
      goto LABEL_39;
    }

    goto LABEL_60;
  }

  dispatch_once(&_MergedGlobals_0, &__block_literal_global_42);
  v12 = qword_2A1399D28;
  if (os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_59;
  }

LABEL_38:
  v13 = *ResetInfo::sPatternMasks;
  v14 = *&ResetInfo::sPatternMasks[8];
  if (*ResetInfo::sPatternMasks != *&ResetInfo::sPatternMasks[8])
  {
LABEL_39:
    v15 = 0;
    do
    {
      if ((atomic_load_explicit(&qword_2A1399D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399D18))
      {
        qword_2A1399D20 = 0;
        qword_2A1399D28 = 0;
        __cxa_guard_release(&qword_2A1399D18);
      }

      if (_MergedGlobals_0 == -1)
      {
        v16 = qword_2A1399D28;
        if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_42;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_0, &__block_literal_global_42);
        v16 = qword_2A1399D28;
        if (!os_log_type_enabled(qword_2A1399D28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_42;
        }
      }

      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *v13, *(v13 + 1));
      }

      else
      {
        v17 = *v13;
        v20.__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&v20.__r_.__value_.__l.__data_ = v17;
      }

      v21 = *(v13 + 6);
      ResetInfo::toString(&v20, &buf);
      p_buf = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      *v23 = 67109378;
      v24 = v15;
      v25 = 2080;
      v26 = p_buf;
      _os_log_debug_impl(&dword_297288000, v16, OS_LOG_TYPE_DEBUG, "pattern mask [%d]: %s", v23, 0x12u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_53;
        }
      }

      else if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_53:
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      ++v15;
LABEL_42:
      v13 += 2;
    }

    while (v13 != v14);
  }

LABEL_60:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2972BBFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::toString(int *a1@<X0>, std::string *a2@<X8>)
{
  v3 = 0x7FFFFFFFFFFFFFF7;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 1);
  }

  v6 = v5 + 15;
  if (v5 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 < 0x17)
  {
    v28.__r_.__value_.__r.__words[2] = 0;
    *(&v28.__r_.__value_.__s + 23) = v5 + 15;
    strcpy(&v28, "regex pattern: ");
    v9 = &v28.__r_.__value_.__s.__data_[15];
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v28.__r_.__value_.__l.__size_ = v5 + 15;
    v28.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v28.__r_.__value_.__r.__words[0] = operator new(v8);
    qmemcpy(v28.__r_.__value_.__l.__data_, "regex pattern: ", 15);
    v9 = (v28.__r_.__value_.__r.__words[0] + 15);
  }

  v10 = *a1;
  if (v4 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v9, v11, v5);
LABEL_15:
  v9[v5] = 0;
  size = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) - 2) < 0x15)
    {
      if (*(&v28.__r_.__value_.__s + 23))
      {
        v13 = SHIBYTE(v28.__r_.__value_.__r.__words[2]) + 21;
        v14 = &v28;
        v15 = 22;
LABEL_22:
        v16 = 2 * v15;
        if (v13 > 2 * v15)
        {
          v16 = v13;
        }

        if ((v16 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v16 | 7) + 1;
        }

        if (v16 >= 0x17)
        {
          v3 = v17;
        }

        else
        {
          v3 = 23;
        }

        v18 = v15 == 22;
        goto LABEL_31;
      }

LABEL_57:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = &v28;
LABEL_38:
    qmemcpy(v22 + size, ", reason mask value: ", 21);
    v23 = size + 21;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v28.__r_.__value_.__l.__size_ = size + 21;
    }

    else
    {
      *(&v28.__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    v21 = v22 + v23;
    goto LABEL_42;
  }

  size = v28.__r_.__value_.__l.__size_;
  v15 = (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - v28.__r_.__value_.__l.__size_ >= 0x15)
  {
    v22 = v28.__r_.__value_.__r.__words[0];
    goto LABEL_38;
  }

  v13 = v28.__r_.__value_.__l.__size_ + 21;
  if (0x7FFFFFFFFFFFFFF7 - (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v28.__r_.__value_.__l.__size_ + 21 - v15)
  {
    goto LABEL_57;
  }

  v14 = v28.__r_.__value_.__r.__words[0];
  if (v15 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_22;
  }

  v18 = 0;
LABEL_31:
  v19 = operator new(v3);
  v20 = v19;
  if (size)
  {
    memmove(v19, v14, size);
  }

  qmemcpy((v20 + size), ", reason mask value: ", 21);
  if (!v18)
  {
    operator delete(v14);
  }

  v28.__r_.__value_.__l.__size_ = v13;
  v28.__r_.__value_.__r.__words[2] = v3 | 0x8000000000000000;
  v28.__r_.__value_.__r.__words[0] = v20;
  v21 = (v20 + v13);
LABEL_42:
  *v21 = 0;
  v29 = v28;
  memset(&v28, 0, sizeof(v28));
  std::to_string(&__p, a1[6]);
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
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v29, p_p, v25);
  *a2 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_50:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_54:
      operator delete(v28.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }
}

void sub_2972BC2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (a26 < 0)
    {
LABEL_5:
      operator delete(a21);
      if (a20 < 0)
      {
LABEL_8:
        operator delete(a15);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (a26 < 0)
  {
    goto LABEL_5;
  }

  if (a20 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetInfo::RegexPatternAndReasonMask>,ResetInfo::RegexPatternAndReasonMask*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<ResetInfo::RegexPatternAndReasonMask>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
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
          v6 = *(v4 - 9);
          v4 -= 4;
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

void ___ZL16sGetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "reset.info");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

char *std::vector<ResetInfo::RegexPatternAndReasonMask>::__emplace_back_slow_path<ResetInfo::RegexPatternAndReasonMask>(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (v7 >> 59)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(32 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v10 = &v8[32 * v7];
  *v9 = *a2;
  *(v9 + 2) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v9 + 6) = *(a2 + 24);
  v11 = v9 + 32;
  v12 = *a1;
  v13 = a1[1];
  v14 = &v9[*a1 - v13];
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 2) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      *(v16 + 6) = *(v15 + 6);
      v15 += 32;
      v16 += 32;
    }

    while (v15 != v13);
    do
    {
      if (v12[23] < 0)
      {
        operator delete(*v12);
      }

      v12 += 32;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = v10;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void std::vector<ResetInfo::RegexPatternAndReasonMask>::__assign_with_size[abi:ne200100]<ResetInfo::RegexPatternAndReasonMask*,ResetInfo::RegexPatternAndReasonMask*>(void **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 >> 59)
    {
      goto LABEL_68;
    }

    v30 = v7 >> 4;
    if (v7 >> 4 <= a4)
    {
      v30 = a4;
    }

    v31 = v7 >= 0x7FFFFFFFFFFFFFE0;
    v32 = 0x7FFFFFFFFFFFFFFLL;
    if (!v31)
    {
      v32 = v30;
    }

    if (v32 >> 59)
    {
LABEL_68:
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v33 = 32 * v32;
    v34 = operator new(32 * v32);
    *a1 = v34;
    a1[1] = v34;
    a1[2] = v34 + v33;
    v41 = v34;
    if (v5 == a3)
    {
      v8 = v34;
    }

    else
    {
      v8 = v34;
      do
      {
        if (v5[23] < 0)
        {
          std::string::__init_copy_ctor_external(v8, *v5, *(v5 + 1));
          v36 = v41;
        }

        else
        {
          v35 = *v5;
          v8->__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&v8->__r_.__value_.__l.__data_ = v35;
          v36 = v8;
        }

        LODWORD(v8[1].__r_.__value_.__l.__data_) = *(v5 + 6);
        v5 += 32;
        v8 = (v36 + 32);
        v41 = (v36 + 32);
      }

      while (v5 != a3);
    }

LABEL_66:
    a1[1] = v8;
    return;
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        v26 = v8 + v23;
        v27 = &v5[v23];
        if (v5 != v8)
        {
          v28 = v27[23];
          if (v26[23] < 0)
          {
            if (v28 >= 0)
            {
              v24 = &v5[v23];
            }

            else
            {
              v24 = *&v5[v23];
            }

            if (v28 >= 0)
            {
              v25 = v27[23];
            }

            else
            {
              v25 = *&v5[v23 + 8];
            }

            std::string::__assign_no_alias<false>((&v8->__r_.__value_.__l.__data_ + v23), v24, v25);
          }

          else if (v27[23] < 0)
          {
            std::string::__assign_no_alias<true>(&v8->__r_.__value_.__r.__words[v23 / 8], *&v5[v23], *&v5[v23 + 8]);
          }

          else
          {
            v29 = *v27;
            *(v26 + 2) = *(v27 + 2);
            *v26 = v29;
          }
        }

        *(v26 + 6) = *(v27 + 6);
        v23 += 32;
      }

      while (&v5[v23] != a3);
      v13 = a1[1];
      v8 = (v8 + v23);
    }

    while (v13 != v8)
    {
      v40 = *(v13 - 9);
      v13 -= 4;
      if (v40 < 0)
      {
        operator delete(*v13);
      }
    }

    goto LABEL_66;
  }

  v15 = &v14[a2];
  if (v13 != v8)
  {
    v16 = 0;
    do
    {
      v19 = &v16[v8];
      v20 = &v16[v5];
      if (v5 != v8)
      {
        v21 = v20[23];
        if (v19[23] < 0)
        {
          if (v21 >= 0)
          {
            v17 = &v16[v5];
          }

          else
          {
            v17 = *&v16[v5];
          }

          if (v21 >= 0)
          {
            v18 = v20[23];
          }

          else
          {
            v18 = *&v16[v5 + 8];
          }

          std::string::__assign_no_alias<false>(&v16[v8], v17, v18);
        }

        else if (v20[23] < 0)
        {
          std::string::__assign_no_alias<true>(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
        }

        else
        {
          v22 = *v20;
          *(v19 + 2) = *(v20 + 2);
          *v19 = v22;
        }
      }

      *(v19 + 6) = *(v20 + 6);
      v16 += 32;
    }

    while (v14 != v16);
    v13 = a1[1];
  }

  v42 = v13;
  v37 = v13;
  if (v15 != a3)
  {
    v37 = v13;
    do
    {
      if (v15[23] < 0)
      {
        std::string::__init_copy_ctor_external(v37, *v15, *(v15 + 1));
        v39 = v42;
      }

      else
      {
        v38 = *v15;
        v37[2] = *(v15 + 2);
        *v37 = v38;
        v39 = v37;
      }

      *(v37 + 6) = *(v15 + 6);
      v15 += 32;
      v37 = v39 + 4;
      v42 = v39 + 4;
    }

    while (v15 != a3);
  }

  a1[1] = v37;
}

void sub_2972BC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetInfo::RegexPatternAndReasonMask>,ResetInfo::RegexPatternAndReasonMask*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_2972BC968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetInfo::RegexPatternAndReasonMask>,ResetInfo::RegexPatternAndReasonMask*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::update<char const*,std::string>(__CFDictionary *a1, const __CFString **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v6 = value;
  value = 0;
  ctu::cf::convert_copy();
  v7 = value;
  if (v6)
  {
    v8 = value == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (!value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v6, value);
  }

  CFRelease(v7);
LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void sub_2972BCA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2972BCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::update<char const*,unsigned int>(__CFDictionary *a1, const __CFString **a2, unsigned int a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_2972BCB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2972BCB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::update<char const*,BOOL>(__CFDictionary *a1, const __CFString **a2, int a3, uint64_t a4, const __CFAllocator *a5)
{
  key = 0;
  ctu::cf::convert_copy(&key, a2, 0x8000100, a4, a5);
  v7 = key;
  v8 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v8 = MEMORY[0x29EDB8EF8];
  }

  v9 = *v8;
  key = *v8;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v7, v9);
  }

  CFRelease(v9);
LABEL_13:
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

void sub_2972BCC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = MEMORY[0x29C26EB90]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(a1, v8, &v8[v7]) != &v8[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_2972BCCD0(_Unwind_Exception *a1)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E35468;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E354C0;
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
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
          }

          goto LABEL_15;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      else
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x80u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x100u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_2972BCF40(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 17);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v11, a3, v9, (v10 + 1), (*(a1 + 28) + 1));
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v22 = *(a1 + 56);
      v23 = (&v8->__traits_.__loc_.__locale_ + 1);
      v24 = &v8->__traits_.__loc_.__locale_ + 1;
      while (1)
      {
        v8 = v24;
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &unk_2A1E35A80;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &unk_2A1E35AC8;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v27, a3, v25, (v26 + 1), (*(a1 + 28) + 1));
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = &unk_2A1E355B8;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v14, a3, v12, (v13 + 1), (*(a1 + 28) + 1));
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = &unk_2A1E35600;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &unk_2A1E35A80;
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
    *v17 = &unk_2A1E35AC8;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
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
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
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
      return a3;
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
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E35A80;
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
    *v21 = &unk_2A1E35AC8;
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
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
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
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
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
      return a3;
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
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E35A80;
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
    *v21 = &unk_2A1E35AC8;
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
  return a3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 14);
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
  if (v2 != 0x800000029742FC31)
  {
    if (((v2 & 0x800000029742FC31 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029742FC31))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029742FC31 & 0x7FFFFFFFFFFFFFFFLL));
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
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
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_2A1E35648;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E355B8;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E35600;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v31.__loop_count_ = v25;
    *&v31.__start_.__cntrl_ = v25;
    *&v31.__traits_.__loc_.__locale_ = v25;
    *&v31.__traits_.__col_ = v25;
    v26 = a1;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
    v28 = v26;
    v31.__flags_ = v26->__flags_;
    v29 = v4 + 2;
    v30 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v29, a3);
    LODWORD(v26) = v31.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v28, &v31, 1, v28->__marked_count_);
    v28->__marked_count_ += v26;
    if (v12 == v30 || *v12 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.__loop_count_ = v6;
  *&v31.__start_.__cntrl_ = v6;
  *&v31.__traits_.__loc_.__locale_ = v6;
  *&v31.__traits_.__col_ = v6;
  v7 = a1;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
  v9 = v7;
  v31.__flags_ = v7->__flags_;
  v10 = v4 + 2;
  v11 = a3;
  v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v10, a3);
  LODWORD(v7) = v31.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v9, &v31, 0, v9->__marked_count_);
  v9->__marked_count_ += v7;
  if (v12 == v11 || *v12 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_27:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v31.__traits_.__loc_);
  return v12 + 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
  if (locale_low > 0x3E)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) > 0x5Bu)
    {
      if (locale_low == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      if (locale_low != 123)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (locale_low != 91)
    {
      if (locale_low != 63)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_32:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  if (locale_low != 40)
  {
    if (locale_low == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = &unk_2A1E356D8;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return (&v5->__traits_.__loc_.__locale_ + 1);
    }

    if (locale_low - 42 >= 2)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    goto LABEL_32;
  }

  if ((&a2->__traits_.__loc_.__locale_ + 1) == a3)
  {
LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v10 = a1;
  if ((&a2->__traits_.__loc_.__locale_ + 2) != a3 && BYTE1(a2->__traits_.__loc_.__locale_) == 63 && BYTE2(a2->__traits_.__loc_.__locale_) == 58)
  {
    ++*(a1 + 36);
    v11 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
    if (v12 != v11 && LOBYTE(v12->__traits_.__loc_.__locale_) == 41)
    {
      --*(v10 + 36);
      return (&v12->__traits_.__loc_.__locale_ + 1);
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v13 = a3;
    v14 = operator new(0x18uLL);
    a3 = v13;
    v15 = v14;
    a1 = v10;
    v16 = *(v10 + 28) + 1;
    *(v10 + 28) = v16;
    v17 = *(v10 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2A1E35918;
    v15[1] = v18;
    *(v15 + 4) = v16;
    *(v17 + 8) = v15;
    *(v10 + 56) = v15;
  }

  ++*(a1 + 36);
  v19 = a3;
  v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
  if (v20 == v19)
  {
    goto LABEL_33;
  }

  v21 = v20;
  if (LOBYTE(v20->__traits_.__loc_.__locale_) != 41)
  {
    goto LABEL_33;
  }

  v22 = v10;
  if ((*(v10 + 24) & 2) == 0)
  {
    v23 = operator new(0x18uLL);
    v22 = v10;
    v24 = *(v10 + 56);
    v25 = *(v24 + 8);
    *v23 = &unk_2A1E35960;
    v23[1] = v25;
    *(v23 + 4) = v16;
    *(v24 + 8) = v23;
    *(v10 + 56) = v23;
  }

  --*(v22 + 36);
  return (&v21->__traits_.__loc_.__locale_ + 1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v9, v16, a4, __mexp_begin, __mexp_end, v17);
                  return v6;
                }

                v9 = v12;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                goto LABEL_34;
              }

              v9 = v12;
              __mexp_begin = __mexp_begin;
              __mexp_end = __mexp_end;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    __mexp_begin = __mexp_begin;
                    __mexp_end = __mexp_end;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
        }
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      goto LABEL_34;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(std::basic_regex<char> *this, BOOL a2)
{
  v4 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v4 = &unk_2A1E35648;
  *(v4 + 1) = first;
  std::locale::locale(v4 + 2, &this->__traits_.__loc_);
  *(v4 + 24) = *&this->__traits_.__ct_;
  v4[40] = a2;
  this->__end_->__first_ = v4;
  this->__end_ = v4;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1)
{
  v2 = MEMORY[0x29C26EB90]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(std::basic_regex<char> *this, const std::basic_regex<char> *a2, BOOL a3, unsigned int a4)
{
  v8 = operator new(0x58uLL);
  first = this->__end_->__first_;
  *v8 = &unk_2A1E35690;
  *(v8 + 1) = first;
  std::locale::locale(v8 + 2, &a2->__traits_.__loc_);
  *(v8 + 24) = *&a2->__traits_.__ct_;
  *(v8 + 40) = *&a2->__flags_;
  cntrl = a2->__start_.__cntrl_;
  *(v8 + 7) = a2->__start_.__ptr_;
  *(v8 + 8) = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v8 + 9) = a2->__end_;
  *(v8 + 20) = a4;
  v8[84] = a3;
  this->__end_->__first_ = v8;
  this->__end_ = v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 6);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
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

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
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

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
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

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
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

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35648;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35648;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35690;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35690;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAA00;
  v24 = v4;
  v21 = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  BYTE8(v24) = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  *&v19 = *(a2 + 24);
  *(&v19 + 1) = v19;
  LOBYTE(v20) = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v5, &v19);
  *(&v20 + 1) = v6;
  v21 = v6;
  LOBYTE(v22) = 0;
  v23 = v19;
  LOBYTE(v24) = v20;
  v25 = v6;
  BYTE8(v24) = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &begin[v15];
    v17 = v13 + 24 * v12;
    *v17 = v16->std::pair<const char *, const char *>;
    *(v17 + 16) = v16->matched;
    v15 = v14;
    ++v12;
    ++v14;
  }

  while (v11 > v15);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_2972BF028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v48 = 0;
  memset(&v48[8], 0, 85);
  v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
  if (*&v48[56])
  {
    *&v48[64] = *&v48[56];
    operator delete(*&v48[56]);
  }

  if (*&v48[32])
  {
    *&v48[40] = *&v48[32];
    operator delete(*&v48[32]);
  }

  v13 = v51;
  *(v51 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 4), v15 - v16, &__x);
    v13 = v51;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v19 - v20);
    v13 = v51;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v48[64] = v30;
          *&v48[80] = v30;
          *&v48[32] = v30;
          *&v48[48] = v30;
          *v48 = v30;
          *&v48[16] = v30;
          std::__state<char>::__state(v48, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(**&v48[80] + 24))(*&v48[80], 0, v48);
          v31 = v51;
          if (v51 >= v52)
          {
            v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
            if (*&v48[56])
            {
              *&v48[64] = *&v48[56];
              operator delete(*&v48[56]);
            }
          }

          else
          {
            v32 = *&v48[16];
            *v51 = *v48;
            v31[1] = v32;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            v31[2] = *&v48[32];
            *(v31 + 6) = *&v48[48];
            *&v48[32] = 0;
            *&v48[40] = 0;
            *(v31 + 8) = 0;
            *(v31 + 9) = 0;
            *(v31 + 56) = *&v48[56];
            *(v31 + 9) = *&v48[72];
            memset(&v48[48], 0, 32);
            v33 = *&v48[80];
            *(v31 + 85) = *&v48[85];
            *(v31 + 10) = v33;
            v51 = v31 + 6;
          }

          if (*&v48[32])
          {
            *&v48[40] = *&v48[32];
            operator delete(*&v48[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v50;
    v13 = v51;
    ++v21;
    if (v50 == v51)
    {
      v17 = 0;
      if (!v50)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v51;
    v28 = *(v51 - 5);
    if (v28)
    {
      *(v51 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v51 = v27 - 6;
    goto LABEL_17;
  }

  v39 = *a4;
  *v39 = a2;
  *(v39 + 8) = v26;
  *(v39 + 16) = 1;
  v40 = *(v13 - 8);
  v41 = *(v13 - 7) - v40;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    v43 = (v40 + 16);
    v44 = 1;
    do
    {
      v45 = v39 + 24 * v44;
      *v45 = *(v43 - 1);
      v46 = *v43;
      v43 += 24;
      *(v45 + 16) = v46;
    }

    while (v42 > v44++);
  }

  v17 = 1;
  v22 = v50;
  if (v50)
  {
LABEL_44:
    v34 = v51;
    v35 = v22;
    if (v51 != v22)
    {
      do
      {
        v36 = *(v34 - 5);
        if (v36)
        {
          *(v34 - 4) = v36;
          operator delete(v36);
        }

        v37 = *(v34 - 8);
        if (v37)
        {
          *(v34 - 7) = v37;
          operator delete(v37);
        }

        v34 -= 6;
      }

      while (v34 != v22);
      v35 = v50;
    }

    v51 = v22;
    operator delete(v35);
  }

  return v17;
}

void sub_2972BF4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__state<char>::~__state(&a9);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v9 - 104));
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v8 = begin;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_29;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= __n)
    {
      v10 = __n;
    }

    v11 = v9 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v10;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_29:
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    v13 = operator new(24 * v11);
    this->__begin_ = v13;
    this->__end_ = v13;
    this->__end_cap_.__value_ = &v13[v12];
    v14 = 24 * __n;
    v15 = &v13[__n];
    do
    {
      v13->std::pair<const char *, const char *> = __u->std::pair<const char *, const char *>;
      *&v13->matched = *&__u->matched;
      ++v13;
      v14 -= 24;
    }

    while (v14);
    goto LABEL_28;
  }

  end = this->__end_;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v17 >= __n)
  {
    v18 = __n;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v18)
  {
    first = __u->first;
    second = __u->second;
    v21 = v18;
    matched = __u->matched;
    if (v18 == 1)
    {
      goto LABEL_32;
    }

    v8 = &begin[v18 & 0xFFFFFFFFFFFFFFFELL];
    v21 = v18 & 1;
    v23 = begin + 1;
    v24 = v18 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v23[-1].first = first;
      v23[-1].second = second;
      v23->first = first;
      v23->second = second;
      v23[-1].matched = matched;
      v23->matched = matched;
      v23 += 2;
      v24 -= 2;
    }

    while (v24);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        v8->first = first;
        v8->second = second;
        v8->matched = matched;
        ++v8;
        --v21;
      }

      while (v21);
    }
  }

  if (__n <= v17)
  {
    v15 = &begin[__n];
LABEL_28:
    this->__end_ = v15;
    return;
  }

  v25 = &end[__n - v17];
  v26 = 24 * __n - 24 * v17;
  do
  {
    v27 = __u->std::pair<const char *, const char *>;
    *&end->matched = *&__u->matched;
    end->std::pair<const char *, const char *> = v27;
    ++end;
    v26 -= 24;
  }

  while (v26);
  this->__end_ = v25;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 12);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 16);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void **std::vector<std::__state<char>>::~vector[abi:ne200100](void **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    if (v6 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(96 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[96 * v2];
  __p = v7;
  v19 = v8;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v8 + 56) = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 9) = v10;
  *(v8 + 10) = v11;
  v20 = v8 + 96;
  v21 = &v7[96 * v6];
  std::vector<std::__state<char>>::__swap_out_circular_buffer(a1, &__p);
  v12 = a1[1];
  v13 = v19;
  while (1)
  {
    v14 = v20;
    if (v20 == v13)
    {
      break;
    }

    v20 -= 96;
    v15 = *(v14 - 5);
    if (v15)
    {
      *(v14 - 4) = v15;
      operator delete(v15);
    }

    v16 = *(v14 - 8);
    if (v16)
    {
      *(v14 - 7) = v16;
      operator delete(v16);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_2972BF9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::__swap_out_circular_buffer(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v5);
    do
    {
      v11 = v4[7];
      if (v11)
      {
        v4[8] = v11;
        operator delete(v11);
      }

      v12 = v4[4];
      if (v12)
      {
        v4[5] = v12;
        operator delete(v12);
      }

      v4 += 12;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v13 = &end[__n];
      v14 = 24 * __n;
      do
      {
        v15 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v15;
        ++end;
        v14 -= 24;
      }

      while (v14);
      end = v13;
    }

    this->__end_ = end;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v6 = v5 + __n;
    if (v5 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v9 = __n;
      v10 = __x;
      v11 = this;
      v12 = operator new(24 * v8);
      this = v11;
      __x = v10;
      __n = v9;
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v5];
    v17 = 24 * __n;
    v18 = (v16 + 24 * __n);
    v19 = v16;
    do
    {
      v20 = __x->std::pair<const char *, const char *>;
      v19[1].first = *&__x->matched;
      *v19 = v20;
      v19 = (v19 + 24);
      v17 -= 24;
    }

    while (v17);
    v21 = &v12[24 * v8];
    begin = this->__begin_;
    v23 = (v16 + this->__begin_ - end);
    if (end != this->__begin_)
    {
      v24 = v23;
      do
      {
        v25 = begin->std::pair<const char *, const char *>;
        *&v24->matched = *&begin->matched;
        v24->std::pair<const char *, const char *> = v25;
        ++v24;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v23;
    this->__end_ = v18;
    this->__end_cap_.__value_ = v21;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 16 * __n;
      bzero(this->__end_, 16 * __n);
      end = (end + v12);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 4) + __n;
    if (v7 >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = __n;
      v11 = operator new(16 * v9);
      __n = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = __n;
    bzero(&v11[v6 >> 4], 16 * __n);
    memcpy(v11, begin, v6);
    this->__begin_ = v11;
    this->__end_ = &v11[(v6 >> 4) + v13];
    this->__end_cap_.__value_ = &v11[v9];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__state<char>::__state(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = 0;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v8);
    *(a1 + 32) = v9;
    *(a1 + 40) = v9;
    *(a1 + 48) = &v9[v8];
    v10 = 24 * ((v8 - 24) / 0x18uLL) + 24;
    memcpy(v9, v7, v10);
    *(a1 + 40) = &v9[v10];
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if (v13 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(v11 - v12);
    *(a1 + 56) = v14;
    *(a1 + 64) = v14;
    *(a1 + 72) = &v14[v13];
    v15 = v13 & 0x7FFFFFFFFFFFFFF0;
    memcpy(v14, v12, v15);
    *(a1 + 64) = &v14[v15];
  }

  v16 = *(a2 + 10);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = v16;
  return a1;
}

void sub_2972BFFBC(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3 && LOBYTE(this->__traits_.__loc_.__locale_) == 92)
  {
    v4 = &this->__traits_.__loc_.__locale_ + 1;
    if (a3 == (&this->__traits_.__loc_.__locale_ + 1))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v5 = *v4;
    v6 = v5 - 48;
    if (v5 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      return (v3 + 2);
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 = (v3 + 2);
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          locale_low = LOBYTE(v3->__traits_.__loc_.__locale_);
          if ((locale_low - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          v3 = (v3 + 1);
          v6 = locale_low + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v6 > a1->__marked_count_)
      {
        goto LABEL_23;
      }

      v10 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v10 + 1;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 11);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  v5 = (locale_low - 36) > 0x3A || ((1 << (locale_low - 36)) & 0x7800000080004F1) == 0;
  if (!v5 || (locale_low - 123) < 3)
  {
    return this;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
  return (&this->__traits_.__loc_.__locale_ + 1);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
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

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 3);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v8;
          *(a4 + 1) = 0;
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_98;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void sub_2972C0D60(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C26E8B0](exception, 4);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1E357F8;
  }

  else
  {
    if ((flags & 8) == 0)
    {
      v5 = operator new(0x18uLL);
      end = this->__end_;
      first = end->__first_;
      v5->__vftable = &unk_2A1E35888;
      v5->__first_ = first;
      LODWORD(v5[1].__vftable) = __i;
      end->__first_ = v5;
      this->__end_ = v5;
      return;
    }

    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1E35840;
  }

  v8->__locale_ = v10;
  std::locale::locale(v8 + 2, &this->__traits_.__loc_);
  *&v9[3].__locale_ = *&this->__traits_.__ct_;
  LODWORD(v9[5].__locale_) = __i;
  this->__end_->__first_ = v9;
  this->__end_ = v9;
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35720;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35720;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35768;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35768;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
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

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
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

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E357F8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E357F8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35840;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E35840;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
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

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
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

uint64_t std::__back_ref<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 40);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 48) = v9 + 1;
    return;
  }

  v10 = *(a1 + 40);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 40) = v16;
  *(a1 + 48) = v6;
  *(a1 + 56) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 48) = v6;
    return;
  }

LABEL_28:
  *(a1 + 48) = v6;
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_2972C1C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  std::vector<std::string>::~vector[abi:ne200100]((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v1 = std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  operator delete(v1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  v2 = a2;
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v23 = 0;
    negate = this->__negate_;
    goto LABEL_59;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_34;
  }

  LOBYTE(v112) = *current;
  v6 = current[1];
  HIBYTE(v112) = current[1];
  if (this->__icase_)
  {
    LOBYTE(v112) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(v112) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v112, __p, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    v25 = __p[1];
    operator delete(__p[0]);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_34:
    negate = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if (!HIBYTE(__p[2]))
  {
    goto LABEL_34;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v112 != *(p_second - 1) || HIBYTE(v112) != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_225;
  }

LABEL_17:
  if (!this->__collate_ || this->__ranges_.__begin_ == this->__ranges_.__end_)
  {
LABEL_179:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
      v86 = 0;
      goto LABEL_207;
    }

    memset(__p, 170, sizeof(__p));
    std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v112, __p, __p);
    v87 = this->__equivalences_.__begin_;
    v88 = HIBYTE(__p[2]);
    v89 = this->__equivalences_.__end_ - v87;
    if (v89)
    {
      v90 = v2;
      v91 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v92 = HIBYTE(__p[2]);
      }

      else
      {
        v92 = __p[1];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v93 = __p;
      }

      else
      {
        v93 = __p[0];
      }

      if (v91 <= 1)
      {
        v94 = 1;
      }

      else
      {
        v94 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      }

      v95 = 1;
      v96 = 1;
      do
      {
        size = HIBYTE(v87->__r_.__value_.__r.__words[2]);
        v98 = size;
        if ((size & 0x80u) != 0)
        {
          size = v87->__r_.__value_.__l.__size_;
        }

        if (v92 == size)
        {
          v99 = v98 >= 0 ? v87 : v87->__r_.__value_.__r.__words[0];
          if (!memcmp(v93, v99, v92))
          {
            v86 = 1;
            v70 = 5;
            v2 = v90;
            if ((v88 & 0x80) == 0)
            {
              goto LABEL_204;
            }

            goto LABEL_203;
          }
        }

        v96 = v95++ < v91;
        ++v87;
        --v94;
      }

      while (v94);
      v70 = 0;
      v86 = 0;
      v2 = v90;
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
      v70 = 0;
      v86 = 0;
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
LABEL_204:
        if (v96)
        {
          goto LABEL_205;
        }

LABEL_207:
        if (v112 < 0)
        {
          neg_mask = this->__neg_mask_;
        }

        else
        {
          mask = this->__mask_;
          tab = this->__traits_.__ct_->__tab_;
          v102 = tab[v112];
          if (((v102 & mask) != 0 || v112 == 95 && (mask & 0x80) != 0) && (SHIBYTE(v112) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(v112)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(v112) == 95))
          {
            goto LABEL_225;
          }

          neg_mask = this->__neg_mask_;
          if ((neg_mask & v102) != 0 || v112 == 95 && (neg_mask & 0x80) != 0)
          {
LABEL_224:
            negate = v86;
LABEL_226:
            v23 = 2;
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v112) & 0x8000000000000000) == 0)
        {
          if ((this->__traits_.__ct_->__tab_[SHIBYTE(v112)] & neg_mask) == 0)
          {
            negate = 1;
            if (SHIBYTE(v112) != 95 || (neg_mask & 0x80) == 0)
            {
              goto LABEL_226;
            }
          }

          goto LABEL_224;
        }

LABEL_225:
        negate = 1;
        goto LABEL_226;
      }
    }

LABEL_203:
    operator delete(__p[0]);
    goto LABEL_204;
  }

  memset(v111, 170, sizeof(v111));
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  __p[2] = 0x2AAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__p[0]) = v112;
  (*(*this->__traits_.__col_ + 32))(v111);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = this->__ranges_.__begin_;
  v13 = HIBYTE(v111[2]);
  v14 = this->__ranges_.__end_ - v12;
  if (!v14)
  {
    v22 = 0;
    v70 = 0;
    goto LABEL_175;
  }

  v106 = v2;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v16 = v111;
  }

  else
  {
    v16 = v111[0];
  }

  v17 = HIBYTE(v111[2]);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v18 = HIBYTE(v111[2]);
  }

  else
  {
    v18 = v111[1];
  }

  if (v15 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  }

  v20 = &v12->second.__r_.__value_.__r.__words[2] + 7;
  v21 = 1;
  v22 = 1;
  do
  {
    v60 = *(v20 - 24);
    if (v60 >= 0)
    {
      v61 = (v20 - 47);
    }

    else
    {
      v61 = *(v20 - 47);
    }

    if (v60 >= 0)
    {
      v62 = *(v20 - 24);
    }

    else
    {
      v62 = *(v20 - 39);
    }

    if (v18 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v18;
    }

    v64 = memcmp(v61, v16, v63);
    if (v64)
    {
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else if (v62 > v18)
    {
      goto LABEL_109;
    }

    v65 = *v20;
    if (v65 >= 0)
    {
      v66 = (v20 - 23);
    }

    else
    {
      v66 = *(v20 - 23);
    }

    if (v65 >= 0)
    {
      v67 = *v20;
    }

    else
    {
      v67 = *(v20 - 15);
    }

    if (v67 >= v18)
    {
      v68 = v18;
    }

    else
    {
      v68 = v67;
    }

    v69 = memcmp(v16, v66, v68);
    if (v69)
    {
      if (v69 < 0)
      {
LABEL_134:
        v70 = 5;
        goto LABEL_173;
      }
    }

    else if (v18 <= v67)
    {
      goto LABEL_134;
    }

LABEL_109:
    v22 = v21++ < v15;
    v20 += 48;
    --v19;
  }

  while (v19);
  v70 = 0;
LABEL_173:
  v2 = v106;
  v13 = v17;
LABEL_175:
  if (v13 < 0)
  {
    operator delete(v111[0]);
  }

  if (!v22)
  {
    goto LABEL_179;
  }

  v86 = 1;
LABEL_205:
  v23 = 2;
  negate = v86;
  if (v70)
  {
    goto LABEL_59;
  }

LABEL_35:
  v26 = *v2->__current_;
  LOBYTE(v112) = *v2->__current_;
  if (this->__icase_)
  {
    LODWORD(v26) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v26);
    LOBYTE(v112) = v26;
  }

  v27 = this->__chars_.__begin_;
  v28 = this->__chars_.__end_ - v27;
  if (v28)
  {
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      v29 = *v27++;
      if (v29 == v26)
      {
        goto LABEL_58;
      }

      --v28;
    }

    while (v28);
  }

  v30 = this->__neg_mask_;
  if (v30 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v26 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v26] & v30) == 0)
    {
      v32 = (v30 >> 7) & 1;
      v31 = v26 == 95 ? v32 : 0;
    }

    else
    {
      v31 = 1;
    }

    end = this->__neg_chars_.__end_;
    v34 = memchr(this->__neg_chars_.__begin_, v26, end - this->__neg_chars_.__begin_);
    v35 = !v34 || v34 == end;
    v36 = !v35;
    if ((v31 & 1) == 0 && !v36)
    {
      goto LABEL_58;
    }
  }

  v39 = this->__ranges_.__begin_;
  v40 = this->__ranges_.__end_;
  if (v39 == v40)
  {
    goto LABEL_139;
  }

  memset(v111, 170, sizeof(v111));
  v109 = negate;
  if (this->__collate_)
  {
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    __p[2] = 0x1AAAAAAAAAAAAAALL;
    __p[0] = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(__p[0]) = v26;
    (*(*this->__traits_.__col_ + 32))(v111);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v39 = this->__ranges_.__begin_;
    v41 = HIBYTE(v111[2]);
    v42 = this->__ranges_.__end_ - v39;
    if (!v42)
    {
LABEL_68:
      v43 = 0;
      if ((v41 & 0x80) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }
  }

  else
  {
    v41 = 1;
    HIBYTE(v111[2]) = 1;
    LOWORD(v111[0]) = v26;
    v42 = v40 - v39;
    if (!v42)
    {
      goto LABEL_68;
    }
  }

  v105 = v23;
  v107 = v2;
  v44 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  v104 = v41;
  if ((v41 & 0x80u) == 0)
  {
    v45 = v111;
  }

  else
  {
    v45 = v111[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = v111[1];
  }

  if (v44 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  }

  v48 = &v39->second.__r_.__value_.__r.__words[2] + 7;
  v49 = 1;
  v43 = 1;
  while (2)
  {
    v50 = *(v48 - 24);
    if (v50 >= 0)
    {
      v51 = (v48 - 47);
    }

    else
    {
      v51 = *(v48 - 47);
    }

    if (v50 >= 0)
    {
      v52 = *(v48 - 24);
    }

    else
    {
      v52 = *(v48 - 39);
    }

    if (v46 >= v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = v46;
    }

    v54 = memcmp(v51, v45, v53);
    if (v54)
    {
      if (v54 < 0)
      {
        goto LABEL_96;
      }
    }

    else if (v52 <= v46)
    {
LABEL_96:
      v55 = *v48;
      if (v55 >= 0)
      {
        v56 = (v48 - 23);
      }

      else
      {
        v56 = *(v48 - 23);
      }

      if (v55 >= 0)
      {
        v57 = *v48;
      }

      else
      {
        v57 = *(v48 - 15);
      }

      if (v57 >= v46)
      {
        v58 = v46;
      }

      else
      {
        v58 = v57;
      }

      v59 = memcmp(v45, v56, v58);
      if (v59)
      {
        if (v59 < 0)
        {
LABEL_107:
          negate = 1;
          v2 = v107;
          goto LABEL_136;
        }
      }

      else if (v46 <= v57)
      {
        goto LABEL_107;
      }
    }

    v43 = v49++ < v44;
    v48 += 48;
    if (--v47)
    {
      continue;
    }

    break;
  }

  v2 = v107;
  negate = v109;
LABEL_136:
  v23 = v105;
  if (v104 < 0)
  {
LABEL_137:
    operator delete(v111[0]);
  }

LABEL_138:
  if (!v43)
  {
LABEL_139:
    if (this->__equivalences_.__begin_ != this->__equivalences_.__end_)
    {
      v71 = v23;
      memset(__p, 170, sizeof(__p));
      v72 = __p;
      std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v112, &v112 + 1, __p);
      v73 = this->__equivalences_.__begin_;
      v74 = HIBYTE(__p[2]);
      v75 = this->__equivalences_.__end_ - v73;
      if (v75)
      {
        v110 = negate;
        v108 = v2;
        v76 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v77 = HIBYTE(__p[2]);
        }

        else
        {
          v77 = __p[1];
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          v72 = __p[0];
        }

        if (v76 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        }

        v79 = 1;
        v80 = 1;
        do
        {
          v81 = HIBYTE(v73->__r_.__value_.__r.__words[2]);
          v82 = v81;
          if ((v81 & 0x80u) != 0)
          {
            v81 = v73->__r_.__value_.__l.__size_;
          }

          if (v77 == v81)
          {
            v83 = v82 >= 0 ? v73 : v73->__r_.__value_.__r.__words[0];
            if (!memcmp(v72, v83, v77))
            {
              negate = 1;
              v2 = v108;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            }
          }

          v80 = v79++ < v76;
          ++v73;
          --v78;
        }

        while (v78);
        v2 = v108;
        negate = v110;
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_162;
        }

LABEL_161:
        operator delete(__p[0]);
      }

      else
      {
        v80 = 0;
        if ((HIBYTE(__p[2]) & 0x80) != 0)
        {
          goto LABEL_161;
        }
      }

LABEL_162:
      if (v80)
      {
        v23 = v71;
        goto LABEL_59;
      }

      LOBYTE(v26) = v112;
      v23 = v71;
    }

    v84 = this->__mask_;
    if ((v26 & 0x80) != 0 || (this->__traits_.__ct_->__tab_[v26] & v84) == 0)
    {
      v85 = (v84 >> 7) & 1;
      if (v26 != 95)
      {
        LOBYTE(v85) = 0;
      }

      negate |= v85;
      goto LABEL_59;
    }

LABEL_58:
    negate = 1;
  }

LABEL_59:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v38 = -993;
  }

  else
  {
    v2->__current_ += v23;
    first = this->__first_;
    v38 = -995;
  }

  v2->__do_ = v38;
  v2->__node_ = first;
}

void sub_2972C2690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
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
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
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

void ***std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          std::string::__assign_no_alias<false>(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__assign_no_alias<true>(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}