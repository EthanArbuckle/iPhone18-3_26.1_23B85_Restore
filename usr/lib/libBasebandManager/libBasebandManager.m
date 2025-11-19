void Service::broadcastEvent(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v9 = std::__shared_weak_count::lock(v5);
  v19 = v9;
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = *(a1 + 8);
  v18 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v12 = *a3;
  v16 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  if (*a4)
  {
    v13 = _Block_copy(*a4);
    v15 = v13;
    v14 = *(v11 + 128);
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v15 = 0;
  v14 = *(v11 + 128);
  if (v14)
  {
LABEL_13:
    dispatch::block<void({block_pointer})(std::string,ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::block<void({block_pointer})(void)>)>::operator()<std::string const&,ctu::cf::CFSharedRef<__CFDictionary const>&,dispatch::block<void({block_pointer})(void)>&>(v14, &v17, &v16, &v15);
  }

LABEL_14:
  if (v13)
  {
    _Block_release(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_22:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    return;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }
}

void sub_296FF8E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296FF8E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (v18)
  {
    _Block_release(v18);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(std::string,ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::block<void({block_pointer})(void)>)>::operator()<std::string const&,ctu::cf::CFSharedRef<__CFDictionary const>&,dispatch::block<void({block_pointer})(void)>&>(uint64_t a1, uint64_t a2, const void **a3, void **a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v7 = *a3;
    cf = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *a2;
  v7 = *a3;
  cf = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  (*(a1 + 16))(a1, &v11, &cf, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_296FF8FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_39(void *a1, int *a2, unsigned int a3, uint64_t a4)
{
  v62 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_70;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v5);
  v59 = v10;
  if (!v10)
  {
    goto LABEL_70;
  }

  if (!a1[5])
  {
    goto LABEL_68;
  }

  v11 = *(v9 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a2[1];
    *buf = 67109376;
    *&buf[4] = a3;
    LOWORD(v61) = 1024;
    *(&v61 + 2) = v12;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Received segment %d of metric 0x%x", buf, 0xEu);
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  if (v13 || (v13 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v13) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v13);
      v14 = v13;
    }

    else
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v13 = 0;
  }

  xpc_release(v13);
  *buf = 0;
  v61 = 0;
  v15 = a1[8];
  if (v15)
  {
    v15 = std::__shared_weak_count::lock(v15);
    v61 = v15;
    if (v15)
    {
      v15 = a1[7];
      *buf = v15;
    }
  }

  AppID = awd::AppContext::getAppID(v15);
  v17 = xpc_int64_create(AppID);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBF8B0], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a2[3]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE5E8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a2);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE570], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(a2[1]);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE520], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_BOOL_create(*(a2 + 20));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE4D0], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_BOOL_create(*(a2 + 21));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6C8], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  if (*(a2 + 28) == 1)
  {
    v29 = xpc_int64_create(a2[6]);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6C0], v29);
    v30 = xpc_null_create();
    xpc_release(v29);
    xpc_release(v30);
  }

  v31 = xpc_data_create(*a4, *(a4 + 8) - *a4);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE4D8], v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  v33 = xpc_int64_create(a2[2]);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE640], v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = xpc_int64_create(a2[3]);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6D8], v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  v37 = xpc_int64_create(a3);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE860], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_int64_create(a2[4]);
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE5A0], v39);
  v40 = xpc_null_create();
  xpc_release(v39);
  xpc_release(v40);
  v41 = *MEMORY[0x29EDBE518];
  v42 = strlen(*MEMORY[0x29EDBE518]);
  if (v42 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    if ((v42 | 7) == 0x17)
    {
      v46 = 25;
    }

    else
    {
      v46 = (v42 | 7) + 1;
    }

    v44 = operator new(v46);
    __dst[1] = v43;
    v57 = v46 | 0x8000000000000000;
    __dst[0] = v44;
LABEL_50:
    memmove(v44, v41, v43);
    *(v43 + v44) = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_45;
    }

LABEL_51:
    object = xpc_null_create();
    goto LABEL_52;
  }

  HIBYTE(v57) = v42;
  v44 = __dst;
  if (v42)
  {
    goto LABEL_50;
  }

  LOBYTE(__dst[0]) = 0;
  object = v14;
  if (!v14)
  {
    goto LABEL_51;
  }

LABEL_45:
  xpc_retain(v14);
LABEL_52:
  xpc::bridge(&cf, &object, v45);
  v47 = cf;
  if (cf && (v48 = CFGetTypeID(cf), v48 == CFDictionaryGetTypeID()))
  {
    v55 = v47;
    CFRetain(v47);
  }

  else
  {
    v55 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v9, __dst, &v55, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  v49 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  xpc_release(v14);
  v10 = v59;
  if (v59)
  {
LABEL_68:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v50 = v10;
      (v10->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v50);
    }
  }

LABEL_70:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_296FF96B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (a1 + 8);
  do
  {
    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8 >= 0 ? v3 + 4 : v3[4];
      v10 = v8 >= 0 ? *(v3 + 55) : v3[5];
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, v5, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_23;
      }

LABEL_9:
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_24:
  if (v7 == v2)
  {
    return v2;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v5, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return v7;
    }

    return v2;
  }

  else
  {
    if (v6 < v15)
    {
      return v2;
    }

    return v7;
  }
}

void ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke_3(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v6 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v7 = *a3;
    aBlock[0] = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v7 = *a3;
  aBlock[0] = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock[1] = v8;
  v9 = v6[2];
  if (!v9 || (v10 = v6[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x30uLL);
  *v13 = v6;
  v14 = (v13 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v14->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(v13 + 3) = *(&__p.__r_.__value_.__l + 2);
  }

  *(v13 + 2) = *aBlock;
  aBlock[0] = 0;
  aBlock[1] = 0;
  v15 = v6[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v13;
  v16[1] = v10;
  v16[2] = v12;
  dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableINS1_9XpcServerEE15execute_wrappedIZZZN17ABMServerInternal4initENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISJ_NS7_14default_deleteISJ_EEEEENUlPvE_8__invokeESS_);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v17 = aBlock[1];
    if (!aBlock[1])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = aBlock[1];
  if (aBlock[1])
  {
LABEL_17:
    _Block_release(v17);
  }

LABEL_18:
  if (aBlock[0])
  {
    CFRelease(aBlock[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ABMServerInternal::broadcast_sync(void *a1, uint64_t a2, ctu **a3, void **a4)
{
  v76 = *MEMORY[0x29EDCA608];
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
  v43 = v7;
  if (*a3)
  {
    ctu::cf_to_xpc(&v70, *a3, v8);
    xpc_dictionary_set_value(v7, kKeyEventData[0], v70);
    v9 = v70;
    v70 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v70);
    v70 = 0;
  }

  v10 = xpc_string_create(kCommandSignalNotification[0]);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, kKeyCommand[0], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = a2;
  if (*(a2 + 23) < 0)
  {
    v12 = *a2;
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, kKeyEvent[0], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = dispatch_group_create();
  v16 = a1[2];
  if (!v16 || (v44 = a1[1], (v17 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v18);
    v45 = v18;
    v19 = a1[10];
    v47 = a1;
    v20 = a1 + 11;
    if (v19 == v20)
    {
      goto LABEL_90;
    }

LABEL_23:
    while (1)
    {
      v68 = 0xAAAAAAAAAAAAAAAALL;
      v69 = 0xAAAAAAAAAAAAAAAALL;
      v21 = v19[4];
      v67 = v21;
      if (v21)
      {
        break;
      }

      v21 = xpc_null_create();
      v67 = v21;
      v23 = v19[5];
      v22 = v19[6];
      v68 = v23;
      v69 = v22;
      if (v22)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v21)
      {
        xpc_retain(v21);
        v65 = v23;
        v66 = v22;
        if (!v22)
        {
          goto LABEL_29;
        }

LABEL_28:
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        goto LABEL_29;
      }

      v21 = xpc_null_create();
      v65 = v23;
      v66 = v22;
      if (v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v64 = *a3;
      v24 = v64;
      if (v64)
      {
        CFRetain(v64);
        *buf = v24;
        CFRetain(v24);
      }

      else
      {
        *buf = 0;
      }

      isNotificationRegistered = ServerClientState::State::isNotificationRegistered(v23, a2, buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!isNotificationRegistered)
      {
        goto LABEL_76;
      }

      SystemTime = TelephonyUtilGetSystemTime();
      v27 = v47[9];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a2;
        if (*(a2 + 23) < 0)
        {
          v28 = *a2;
          if (*(v23 + 23) < 0)
          {
            goto LABEL_46;
          }

LABEL_44:
          v29 = *v23;
          v63.__r_.__value_.__r.__words[2] = *(v23 + 16);
          *&v63.__r_.__value_.__l.__data_ = v29;
        }

        else
        {
          if ((*(v23 + 23) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_46:
          std::string::__init_copy_ctor_external(&v63, *v23, *(v23 + 8));
        }

        v30 = &v63;
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v63.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v28;
        v72 = 2080;
        v73 = v30;
        v74 = 2048;
        v75 = SystemTime;
        _os_log_impl(&dword_296FF7000, v27, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        v7 = v43;
      }

      if (*a4)
      {
        if (v15)
        {
          dispatch_retain(v15);
          dispatch_group_enter(v15);
        }

        v31 = v47[3];
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
        handler[3] = &__block_descriptor_tmp_31;
        handler[4] = v47;
        group = v15;
        if (v15)
        {
          dispatch_retain(v15);
          if (group)
          {
            dispatch_group_enter(group);
          }
        }

        v57 = v44;
        v58 = v45;
        atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v59 = v23;
        v60 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v62 = SystemTime;
        xpc_connection_send_message_with_reply(v21, v7, v31, handler);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v32 = v60;
          if (!v60)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v32 = v60;
          if (!v60)
          {
LABEL_69:
            v33 = v58;
            if (v58)
            {
              goto LABEL_70;
            }

            goto LABEL_71;
          }
        }

        if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_69;
        }

        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        v33 = v58;
        if (v58)
        {
LABEL_70:
          std::__shared_weak_count::__release_weak(v33);
        }

LABEL_71:
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (v15)
        {
          dispatch_group_leave(v15);
          dispatch_release(v15);
        }

        goto LABEL_76;
      }

      xpc_connection_send_message(v21, v7);
LABEL_76:
      v34 = v66;
      if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }

      xpc_release(v21);
      v35 = v69;
      if (v69 && !atomic_fetch_add((v69 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }

      xpc_release(v67);
      v36 = v19[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v19[2];
          v38 = *v37 == v19;
          v19 = v37;
        }

        while (!v38);
      }

      v19 = v37;
      if (v37 == v20)
      {
        goto LABEL_90;
      }
    }

    xpc_retain(v21);
    v23 = v19[5];
    v22 = v19[6];
    v68 = v23;
    v69 = v22;
    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_25:
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_26;
  }

  v45 = v17;
  v19 = a1[10];
  v47 = a1;
  v20 = a1 + 11;
  if (v19 != v20)
  {
    goto LABEL_23;
  }

LABEL_90:
  v39 = v47[28];
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v53 = v7;
  if (v7)
  {
    xpc_retain(v7);
    v40 = v53;
  }

  else
  {
    v40 = xpc_null_create();
    v53 = v40;
  }

  ServiceManager::handleBroadcastEvent(v39, &object, &v53);
  xpc_release(v40);
  v53 = 0;
  if (object)
  {
    dispatch_release(object);
  }

  if (*a4)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_32;
    block[3] = &__block_descriptor_tmp_33_0;
    block[4] = v47;
    block[5] = v44;
    v50 = v45;
    atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *a2, *(a2 + 8));
    }

    else
    {
      v51 = *a2;
    }

    v41 = *a4;
    if (*a4)
    {
      v41 = _Block_copy(v41);
    }

    aBlock = v41;
    dispatch_group_notify(v15, v47[3], block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }
  }

  std::__shared_weak_count::__release_weak(v45);
  if (v15)
  {
    dispatch_release(v15);
  }

  xpc_release(v7);
  v42 = *MEMORY[0x29EDCA608];
}

void sub_296FFA3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, dispatch_group_t group, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(a14);
  if (v46)
  {
    dispatch_release(v46);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableINS1_9XpcServerEE15execute_wrappedIZZZN17ABMServerInternal4initENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISJ_NS7_14default_deleteISJ_EEEEENUlPvE_8__invokeESS_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(*a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v2[1], v2[2]);
  }

  else
  {
    v4 = *(v2 + 1);
    v13.__r_.__value_.__r.__words[2] = v2[3];
    *&v13.__r_.__value_.__l.__data_ = v4;
  }

  v5 = v2[4];
  v12 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = v2[5];
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  ABMServerInternal::broadcast_sync(v3, &v13, &v12, &v11);
  if (v7)
  {
    _Block_release(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    v8 = v2[5];
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = v2[5];
  if (v8)
  {
LABEL_17:
    _Block_release(v8);
  }

LABEL_18:
  v9 = v2[4];
  if (v9)
  {
    CFRelease(v9);
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_296FFA708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  _ZNSt3__110unique_ptrIZZZN17ABMServerInternal4initENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0NS_14default_deleteISC_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296FFA73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    _Block_release(v18);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZZN17ABMServerInternal4initENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0NS_14default_deleteISC_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t ServerClientState::State::isNotificationRegistered(uint64_t a1, const void **a2, const void **a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(a1 + 32, a2);
  if ((a1 + 40) == v5)
  {
    return 0;
  }

  if (!*a3)
  {
    return 1;
  }

  v6 = v5[7];
  v20[1] = v6;
  if (!v6)
  {
    return 1;
  }

  CFRetain(v6);
  v19 = 0;
  v20[0] = 0;
  ctu::cf::convert_copy(v20, kKeyEventFilterAllowList[0], 0x8000100, *MEMORY[0x29EDB8ED8], v7);
  v8 = v20[0];
  v19 = v20[0];
  if (v20[0])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 1174405120;
    v12[2] = ___ZN17ServerClientState5State24isNotificationRegisteredERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke;
    v12[3] = &unk_2A1E2D0F0;
    v13 = v20[0];
    CFRetain(v20[0]);
    v9 = *a3;
    cf = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v12[4] = &v15;
    CFDictionaryApplyFunction(v6, ServerClientState::State::_dictApplyBlock, v12);
    v10 = *(v16 + 24);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    _Block_object_dispose(&v15, 8);
    CFRelease(v8);
  }

  else
  {
    v10 = 1;
  }

  CFRelease(v6);
  return v10;
}

void sub_296FFA9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v8 + 48));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v8 + 40));
  _Block_object_dispose(va, 8);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v9 - 56));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_296FFAA34(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v1 - 56));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v1 - 40));
  _Unwind_Resume(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = operator new(0x18uLL);
  *v7 = &unk_2A1E24F50;
  v7[1] = v6;
  v7[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v7;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a2 = v7;
  }
}

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<coex::Module::State>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E24F50;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<coex::Module::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E24F50;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_44(void *a1, int *a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v39 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_50:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v29 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v29);
    }

    return;
  }

  v7 = *(v5 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Received end of metric submission", buf, 2u);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v8) == MEMORY[0x29EDCAA00])
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
  *buf = 0;
  v37 = 0;
  v10 = a1[8];
  if (v10)
  {
    v10 = std::__shared_weak_count::lock(v10);
    v37 = v10;
    if (v10)
    {
      v10 = a1[7];
      *buf = v10;
    }
  }

  AppID = awd::AppContext::getAppID(v10);
  v12 = xpc_int64_create(AppID);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF8B0], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(a2[2]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE640], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a2[3]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE6D8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(a2[4]);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE5A0], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = *MEMORY[0x29EDBEFE8];
  v21 = strlen(*MEMORY[0x29EDBEFE8]);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v21 | 7) + 1;
    }

    v23 = operator new(v25);
    __dst[1] = v22;
    v35 = v25 | 0x8000000000000000;
    __dst[0] = v23;
LABEL_32:
    memmove(v23, v20, v22);
    *(v22 + v23) = 0;
    object = v9;
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_33:
    object = xpc_null_create();
    goto LABEL_34;
  }

  HIBYTE(v35) = v21;
  v23 = __dst;
  if (v21)
  {
    goto LABEL_32;
  }

  LOBYTE(__dst[0]) = 0;
  object = v9;
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_27:
  xpc_retain(v9);
LABEL_34:
  xpc::bridge(&cf, &object, v24);
  v26 = cf;
  if (cf && (v27 = CFGetTypeID(cf), v27 == CFDictionaryGetTypeID()))
  {
    v33 = v26;
    CFRetain(v26);
  }

  else
  {
    v33 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v5, __dst, &v33, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst[0]);
  }

  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  xpc_release(v9);
  v6 = v39;
  if (v39)
  {
    goto LABEL_50;
  }
}

void sub_296FFB11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a12);
  xpc_release(object);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a20);
  xpc_release(v20);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v21 - 64);
  _Unwind_Resume(a1);
}

void coex::XpcClient::handleMessage_sync(uint64_t a1, xpc::object *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(buf, a2);
    v16 = v26 >= 0 ? buf : *buf;
    *v22 = 136315138;
    *&v22[4] = v16;
    _os_log_debug_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEBUG, "#D Got Message:\n%s", v22, 0xCu);
    if (v26 < 0)
    {
      operator delete(*buf);
    }
  }

  value = xpc_dictionary_get_value(*a2, "kMessageId");
  object = value;
  if (value)
  {
    v6 = value;
    xpc_retain(value);
    v7 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
  }

  if (MEMORY[0x29C26CE60](v7) == MEMORY[0x29EDCAA40])
  {
    v13 = *(a1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(buf, a2);
      v14 = v26 >= 0 ? buf : *buf;
      *v22 = 136315394;
      *&v22[4] = "kMessageId";
      v23 = 2080;
      v24 = v14;
      _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Message was missing key %s from: %s", v22, 0x16u);
      if (v26 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v8 = xpc::dyn_cast_or_default(&object, 0);
    v9 = v8;
    v10 = *(a1 + 112);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = a1 + 112;
    do
    {
      if (*(v10 + 32) >= v8)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 32) < v8));
    }

    while (v10);
    if (v11 != a1 + 112 && *(v11 + 32) <= v8)
    {
      v15 = xpc_dictionary_get_value(*a2, "kSubId");
      *v22 = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        *v22 = xpc_null_create();
      }

      v17 = xpc::dyn_cast_or_default(v22, 0);
      v18 = *(v11 + 40);
      v19 = xpc_dictionary_get_value(*a2, "kMessageArgs");
      *buf = v19;
      if (v19)
      {
        xpc_retain(v19);
      }

      else
      {
        *buf = xpc_null_create();
      }

      (*(v18 + 16))(v18, buf, v17);
      xpc_release(*buf);
      xpc_release(*v22);
    }

    else
    {
LABEL_13:
      v12 = *(a1 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Unrecognized command %d", buf, 8u);
      }
    }
  }

  xpc_release(object);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296FFB4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex6Module5State4initEv_block_invoke_41(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb5_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_296FFB7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void coex::Module::State::handleSetWCI2Mode_sync(uint64_t *a1, xpc_object_t *a2, unsigned int a3)
{
  value = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Policy");
  v160[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  *bytes = v7;
  v8 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_PowerThreshold");
  v160[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v9 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v10 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_RB_Threshold");
  v160[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v12 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_LTE_TxDenialThreshold");
  v160[0] = v12;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v13 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v14 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_APTTable");
  v160[0] = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v16 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimit");
  v160[0] = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v17 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v18 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_WCI2PowerLimit");
  v160[0] = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v141 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v19 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_LinkPathLossThreshold");
  v160[0] = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v140 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v20 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_RBFilterAlpha");
  v160[0] = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(v160, v21, 0.0);
  v23 = v22;
  xpc_release(v160[0]);
  v24 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_FilterRBThreshold");
  v160[0] = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v139 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v25 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimitTO");
  v160[0] = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v138 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v26 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_WCI2PowerLimitTO");
  v160[0] = v26;
  if (v26)
  {
    xpc_retain(v26);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v137 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v27 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_MaxAllowedFrameDenials");
  v160[0] = v27;
  if (v27)
  {
    xpc_retain(v27);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v28 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v29 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_FrameDenialWindow");
  v160[0] = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v147 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v30 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_TxPowerThresholdForAdvTxNotice");
  v160[0] = v30;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v136 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v31 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_RbThresholdForAdvTxNotice");
  v160[0] = v31;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v134 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v32 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Controller_RB_Threshold");
  v160[0] = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v133 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v33 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Harq_nack_ratio_Threshold");
  v160[0] = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v132 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v34 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Controller_PowerLimiting_Enable");
  v160[0] = v34;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v131 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v35 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_enabled");
  v160[0] = v35;
  if (v35)
  {
    xpc_retain(v35);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v130 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v36 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_critical_ul_ca_bitmap");
  v160[0] = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v129 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v37 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_tx_denial_ca_bitmap");
  v160[0] = v37;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v160[0] = xpc_null_create();
  }

  v128 = xpc::dyn_cast_or_default(v160, 0);
  xpc_release(v160[0]);
  v38 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_ca_grp_bitmap");
  v159 = v38;
  if (v38)
  {
    xpc_retain(v38);
  }

  else
  {
    v159 = xpc_null_create();
  }

  v135 = v17;
  xpc::bridge(v160, &v159, v39);
  v40 = v160[0];
  if (!v160[0] || (v41 = CFGetTypeID(v160[0]), v41 != CFArrayGetTypeID()))
  {
    v157 = 0;
    v42 = v160[0];
    if (!v160[0])
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v157 = v40;
  CFRetain(v40);
  v42 = v160[0];
  if (v160[0])
  {
LABEL_75:
    CFRelease(v42);
  }

LABEL_76:
  xpc_release(v159);
  v43 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_consecutive_denial_threshold");
  v159 = v43;
  if (v43)
  {
    xpc_retain(v43);
  }

  else
  {
    v159 = xpc_null_create();
  }

  xpc::bridge(v160, &v159, v44);
  if (!v160[0] || (cf = v160[0], v45 = CFGetTypeID(v160[0]), v45 != CFArrayGetTypeID()))
  {
    cf = 0;
    v156 = 0;
    v46 = v160[0];
    if (!v160[0])
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v156 = cf;
  CFRetain(cf);
  v46 = v160[0];
  if (v160[0])
  {
LABEL_84:
    CFRelease(v46);
  }

LABEL_85:
  xpc_release(v159);
  v47 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_duty_cycle_numerator_rx_prio_req");
  v159 = v47;
  if (v47)
  {
    xpc_retain(v47);
  }

  else
  {
    v159 = xpc_null_create();
  }

  xpc::bridge(v160, &v159, v48);
  if (!v160[0] || (v145 = v160[0], v49 = CFGetTypeID(v160[0]), v49 != CFArrayGetTypeID()))
  {
    v145 = 0;
    v155 = 0;
    v50 = v160[0];
    if (!v160[0])
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v155 = v145;
  CFRetain(v145);
  v50 = v160[0];
  if (v160[0])
  {
LABEL_93:
    CFRelease(v50);
  }

LABEL_94:
  xpc_release(v159);
  v51 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_power_limiting_power_threshold");
  v159 = v51;
  if (v51)
  {
    xpc_retain(v51);
  }

  else
  {
    v159 = xpc_null_create();
  }

  xpc::bridge(v160, &v159, v52);
  if (!v160[0] || (v144 = v160[0], v53 = CFGetTypeID(v160[0]), v53 != CFArrayGetTypeID()))
  {
    v144 = 0;
    v154 = 0;
    v54 = v160[0];
    if (!v160[0])
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v154 = v144;
  CFRetain(v144);
  v54 = v160[0];
  if (v160[0])
  {
LABEL_102:
    CFRelease(v54);
  }

LABEL_103:
  xpc_release(v159);
  v55 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_power_limiting_RB_threshold");
  v159 = v55;
  if (v55)
  {
    xpc_retain(v55);
  }

  else
  {
    v159 = xpc_null_create();
  }

  xpc::bridge(v160, &v159, v56);
  if (!v160[0] || (v143 = v160[0], v57 = CFGetTypeID(v160[0]), v57 != CFArrayGetTypeID()))
  {
    v143 = 0;
    v153 = 0;
    v58 = v160[0];
    if (!v160[0])
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v153 = v143;
  CFRetain(v143);
  v58 = v160[0];
  if (v160[0])
  {
LABEL_111:
    CFRelease(v58);
  }

LABEL_112:
  xpc_release(v159);
  v59 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_advance_notice_power_threshold");
  v159 = v59;
  if (v59)
  {
    xpc_retain(v59);
  }

  else
  {
    v159 = xpc_null_create();
  }

  xpc::bridge(v160, &v159, v60);
  if (!v160[0] || (v142 = v160[0], v61 = CFGetTypeID(v160[0]), v61 != CFArrayGetTypeID()))
  {
    v142 = 0;
    v152 = 0;
    v62 = v160[0];
    if (!v160[0])
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v152 = v142;
  CFRetain(v142);
  v62 = v160[0];
  if (v160[0])
  {
LABEL_120:
    CFRelease(v62);
  }

LABEL_121:
  xpc_release(v159);
  v63 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_power_limiting_RB_threshold");
  v159 = v63;
  if (v63)
  {
    xpc_retain(v63);
  }

  else
  {
    v159 = xpc_null_create();
  }

  xpc::bridge(v160, &v159, v64);
  v65 = v160[0];
  if (!v160[0] || (v66 = CFGetTypeID(v160[0]), v66 != CFArrayGetTypeID()))
  {
    v151 = 0;
    v125 = 0;
    v67 = v160[0];
    if (!v160[0])
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

  v151 = v65;
  CFRetain(v65);
  v125 = v65;
  v67 = v160[0];
  if (v160[0])
  {
LABEL_129:
    CFRelease(v67);
  }

LABEL_130:
  v126 = v15;
  v127 = v13;
  v68 = v11;
  v69 = v9;
  xpc_release(v159);
  v150 = 0;
  v70 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v72 = Mutable;
  if (Mutable)
  {
    v150 = Mutable;
  }

  v123 = *MEMORY[0x29EDC86B0];
  ctu::cf::insert<__CFString const*,long long>(Mutable, *MEMORY[0x29EDC86B0], v28, v70);
  v122 = *MEMORY[0x29EDC8610];
  ctu::cf::insert<__CFString const*,long long>(v72, *MEMORY[0x29EDC8610], v147, v70);
  v73 = CFDataCreate(v70, bytes, 8);
  v74 = v73;
  v124 = a1;
  v75 = a1 + 9;
  v148 = a3;
  if (a3)
  {
    v76 = 3;
  }

  else
  {
    v76 = 1;
  }

  v77 = v75[v76];
  v149 = v73;
  if (v77)
  {
    CFRetain(v77);
  }

  v160[0] = *MEMORY[0x29EDC8600];
  v78 = v160[0];
  if (v160[0])
  {
    CFRetain(v160[0]);
  }

  v159 = v74;
  if (v74)
  {
    CFRetain(v74);
    if (v78)
    {
      CFDictionarySetValue(v77, v78, v74);
    }

    CFRelease(v74);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  v79 = v75[v76];
  v160[0] = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  ctu::cf::update<__CFString const*,long long>(v79, *MEMORY[0x29EDC8750], v69, v70);
  if (v79)
  {
    CFRelease(v79);
  }

  v80 = v75[v76];
  v160[0] = v80;
  if (v80)
  {
    CFRetain(v80);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v80, *MEMORY[0x29EDC86E0], v68, v70);
  if (v80)
  {
    CFRelease(v80);
  }

  v81 = v75[v76];
  v160[0] = v81;
  if (v81)
  {
    CFRetain(v81);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v81, *MEMORY[0x29EDC8AD0], v127, v70);
  if (v81)
  {
    CFRelease(v81);
  }

  v82 = v75[v76];
  v160[0] = v82;
  if (v82)
  {
    CFRetain(v82);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v82, *MEMORY[0x29EDC8628], v126, v70);
  if (v82)
  {
    CFRelease(v82);
  }

  v83 = v75[v76];
  v160[0] = v83;
  if (v83)
  {
    CFRetain(v83);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v83, *MEMORY[0x29EDC88F8], v135, v70);
  if (v83)
  {
    CFRelease(v83);
  }

  v84 = v75[v76];
  v160[0] = v84;
  if (v84)
  {
    CFRetain(v84);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v84, *MEMORY[0x29EDC87B8], v141, v70);
  if (v84)
  {
    CFRelease(v84);
  }

  v85 = v75[v76];
  v160[0] = v85;
  if (v85)
  {
    CFRetain(v85);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v85, *MEMORY[0x29EDC88D8], v140, v70);
  if (v85)
  {
    CFRelease(v85);
  }

  v86 = v75[v76];
  v160[0] = v86;
  if (v86)
  {
    CFRetain(v86);
  }

  ctu::cf::update<__CFString const*,double>(v86, *MEMORY[0x29EDC8730], v70, v23);
  if (v86)
  {
    CFRelease(v86);
  }

  v87 = v75[v76];
  v160[0] = v87;
  if (v87)
  {
    CFRetain(v87);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v87, *MEMORY[0x29EDC8830], v139, v70);
  if (v87)
  {
    CFRelease(v87);
  }

  v88 = v75[v76];
  v160[0] = v88;
  if (v88)
  {
    CFRetain(v88);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v88, *MEMORY[0x29EDC8A70], v138, v70);
  if (v88)
  {
    CFRelease(v88);
  }

  v89 = v75[v76];
  v160[0] = v89;
  if (v89)
  {
    CFRetain(v89);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v89, *MEMORY[0x29EDC8978], v137, v70);
  if (v89)
  {
    CFRelease(v89);
  }

  v90 = v75[v76];
  v160[0] = v90;
  if (v90)
  {
    CFRetain(v90);
  }

  ctu::cf::update<__CFString const*,__CFDictionary *>(v90, *MEMORY[0x29EDC89A0], v72);
  if (v90)
  {
    CFRelease(v90);
  }

  v91 = v75[v76];
  v160[0] = v91;
  if (v91)
  {
    CFRetain(v91);
  }

  ctu::cf::update<__CFString const*,long long>(v91, *MEMORY[0x29EDC8A98], v136, v70);
  if (v91)
  {
    CFRelease(v91);
  }

  v92 = v75[v76];
  v160[0] = v92;
  if (v92)
  {
    CFRetain(v92);
  }

  ctu::cf::update<__CFString const*,long long>(v92, *MEMORY[0x29EDC89C8], v134, v70);
  if (v92)
  {
    CFRelease(v92);
  }

  v93 = v75[v76];
  v160[0] = v93;
  if (v93)
  {
    CFRetain(v93);
  }

  ctu::cf::update<__CFString const*,long long>(v93, *MEMORY[0x29EDC88A0], v133, v70);
  if (v93)
  {
    CFRelease(v93);
  }

  v94 = v75[v76];
  v160[0] = v94;
  if (v94)
  {
    CFRetain(v94);
  }

  ctu::cf::update<__CFString const*,long long>(v94, *MEMORY[0x29EDC8900], v132, v70);
  if (v94)
  {
    CFRelease(v94);
  }

  v95 = v75[v76];
  v160[0] = v95;
  if (v95)
  {
    CFRetain(v95);
  }

  ctu::cf::update<__CFString const*,BOOL>(v95, *MEMORY[0x29EDC8A68], v131);
  if (v95)
  {
    CFRelease(v95);
  }

  v96 = v75[v76];
  v160[0] = v96;
  if (v96)
  {
    CFRetain(v96);
  }

  ctu::cf::update<__CFString const*,BOOL>(v96, *MEMORY[0x29EDC8940], v130);
  if (v96)
  {
    CFRelease(v96);
  }

  v97 = v75[v76];
  v160[0] = v97;
  if (v97)
  {
    CFRetain(v97);
  }

  ctu::cf::update<__CFString const*,long long>(v97, *MEMORY[0x29EDC88A8], v129, v70);
  if (v97)
  {
    CFRelease(v97);
  }

  v98 = v75[v76];
  v160[0] = v98;
  if (v98)
  {
    CFRetain(v98);
  }

  ctu::cf::update<__CFString const*,long long>(v98, *MEMORY[0x29EDC8828], v128, v70);
  if (v98)
  {
    CFRelease(v98);
  }

  v99 = v75[v76];
  v160[0] = v99;
  if (v99)
  {
    CFRetain(v99);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v99, *MEMORY[0x29EDC87A0], v157);
  if (v99)
  {
    CFRelease(v99);
  }

  v100 = v75[v76];
  v160[0] = v100;
  if (v100)
  {
    CFRetain(v100);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v100, *MEMORY[0x29EDC8A78], cf);
  if (v100)
  {
    CFRelease(v100);
  }

  v101 = v75[v76];
  v160[0] = v101;
  if (v101)
  {
    CFRetain(v101);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v101, *MEMORY[0x29EDC8A88], v145);
  if (v101)
  {
    CFRelease(v101);
  }

  v102 = v75[v76];
  v160[0] = v102;
  if (v102)
  {
    CFRetain(v102);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v102, *MEMORY[0x29EDC8A90], v144);
  if (v102)
  {
    CFRelease(v102);
  }

  v103 = v75[v76];
  v160[0] = v103;
  if (v103)
  {
    CFRetain(v103);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v103, *MEMORY[0x29EDC8A30], v143);
  if (v103)
  {
    CFRelease(v103);
  }

  v104 = v75[v76];
  v160[0] = v104;
  if (v104)
  {
    CFRetain(v104);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v104, *MEMORY[0x29EDC8A80], v142);
  if (v104)
  {
    CFRelease(v104);
  }

  v105 = v75[v76];
  v160[0] = v105;
  if (v105)
  {
    CFRetain(v105);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v105, *MEMORY[0x29EDC8A28], v125);
  if (v105)
  {
    CFRelease(v105);
  }

  if (capabilities::abs::supportsCoexEur5G(v106))
  {
    v107 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_CoexTech");
    v160[0] = v107;
    if (v107)
    {
      xpc_retain(v107);
    }

    else
    {
      v160[0] = xpc_null_create();
    }

    v108 = xpc::dyn_cast_or_default(v160, 0);
    xpc_release(v160[0]);
    v109 = v75[v76];
    v160[0] = v109;
    if (v109)
    {
      CFRetain(v109);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v109, *MEMORY[0x29EDC86D8], v148, v70);
    if (v109)
    {
      CFRelease(v109);
    }

    v110 = v75[v76];
    v160[0] = v110;
    if (v110)
    {
      CFRetain(v110);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v110, *MEMORY[0x29EDC8710], v148, v70);
    if (v110)
    {
      CFRelease(v110);
    }

    v111 = v75[v76];
    v160[0] = v111;
    if (v111)
    {
      CFRetain(v111);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v111, *MEMORY[0x29EDC8638], v108, v70);
    if (v111)
    {
      CFRelease(v111);
    }

    v112 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_NGC_TxDenialThresholdSlots");
    v160[0] = v112;
    if (v112)
    {
      xpc_retain(v112);
    }

    else
    {
      v160[0] = xpc_null_create();
    }

    v113 = xpc::dyn_cast_or_default(v160, 0);
    xpc_release(v160[0]);
    v114 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_NGC_MaxAllowedSlotDenials");
    v160[0] = v114;
    if (v114)
    {
      xpc_retain(v114);
    }

    else
    {
      v160[0] = xpc_null_create();
    }

    v115 = xpc::dyn_cast_or_default(v160, 0);
    xpc_release(v160[0]);
    v116 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_NGC_SlotsDenialWindow");
    v160[0] = v116;
    if (v116)
    {
      xpc_retain(v116);
    }

    else
    {
      v160[0] = xpc_null_create();
    }

    v117 = xpc::dyn_cast_or_default(v160, 0);
    xpc_release(v160[0]);
    v160[0] = 0;
    v118 = CFDictionaryCreateMutable(v70, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v119 = v118;
    if (v118)
    {
      v160[0] = v118;
    }

    ctu::cf::insert<__CFString const*,long long>(v118, v123, v115, v70);
    ctu::cf::insert<__CFString const*,long long>(v119, v122, v117, v70);
    v120 = v75[v76];
    v159 = v120;
    if (v120)
    {
      CFRetain(v120);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v120, *MEMORY[0x29EDC8AD8], v113, v70);
    if (v120)
    {
      CFRelease(v120);
    }

    v121 = v75[v76];
    v159 = v121;
    if (v121)
    {
      CFRetain(v121);
    }

    ctu::cf::update<__CFString const*,__CFDictionary *>(v121, *MEMORY[0x29EDC8A38], v119);
    if (v121)
    {
      CFRelease(v121);
    }

    if (v119)
    {
      CFRelease(v119);
    }
  }

  v160[0] = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(v124, coex::kKeyFailCondition, 0, 0, v160);
  if (v160[0])
  {
    CFDictionaryRemoveValue(v160[0], *MEMORY[0x29EDC8970]);
    CFDictionaryRemoveValue(v160[0], *MEMORY[0x29EDC8848]);
  }

  coex::Module::State::setPolicy_sync(v124, v148);
  if (v160[0])
  {
    CFRelease(v160[0]);
  }

  if (v149)
  {
    CFRelease(v149);
  }

  if (v150)
  {
    CFRelease(v150);
  }

  if (v151)
  {
    CFRelease(v151);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v156)
  {
    CFRelease(v156);
  }

  if (v157)
  {
    CFRelease(v157);
  }
}

void sub_296FFCCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, const void *a33)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef((v33 - 120));
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef((v33 - 112));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a31);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a32);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a33);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 184));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 176));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 168));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 160));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 152));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 144));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 136));
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,long long>(__CFDictionary *a1, CFTypeRef cf, uint64_t a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296FFD434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296FFD458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,long long>(__CFDictionary *a1, CFTypeRef cf, uint64_t a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionarySetValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296FFD508(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296FFD52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_113(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb23_E4__25EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void coex::Module::State::handleTransparentMessageReq_sync(uint64_t *a1, void *a2, uint64_t a3)
{
  v73 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_103;
  }

  v70 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v70 = Mutable;
  }

  v69 = 0xAAAAAAAAAAAAAAAALL;
  *buf = a2;
  *&buf[8] = "kWCMCellularTransparentMessageInformationSet";
  xpc::dict::object_proxy::operator xpc::array(buf, &v69);
  v10 = MEMORY[0x29C26CE60](v69);
  v11 = MEMORY[0x29EDCA9E0];
  if (v10 == MEMORY[0x29EDCA9E0])
  {
    v68 = 0;
    v12 = CFArrayCreateMutable(v7, 0, MEMORY[0x29EDB9000]);
    if (v12)
    {
      v68 = v12;
    }

    memset(buf, 170, sizeof(buf));
    v13 = v69;
    if (v69)
    {
      xpc_retain(v69);
      *buf = v13;
    }

    else
    {
      v13 = xpc_null_create();
      *buf = v13;
      if (!v13)
      {
        v13 = 0;
        *buf = xpc_null_create();
        goto LABEL_13;
      }
    }

    xpc_retain(v13);
LABEL_13:
    *&buf[8] = 0;
    xpc_release(v13);
    v14 = *MEMORY[0x29EDC8930];
    v55 = *MEMORY[0x29EDC8A48];
    while (1)
    {
      v15 = v69;
      if (v69)
      {
        xpc_retain(v69);
      }

      else
      {
        v15 = xpc_null_create();
      }

      if (MEMORY[0x29C26CE60](v69) == v11)
      {
        count = xpc_array_get_count(v69);
        if (!v15)
        {
LABEL_23:
          v17 = xpc_null_create();
          goto LABEL_24;
        }
      }

      else
      {
        count = 0;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      xpc_retain(v15);
      v17 = v15;
LABEL_24:
      xpc_release(v15);
      v18 = *buf;
      v19 = *&buf[8];
      xpc_release(v17);
      if (v19 == count && v18 == v17)
      {
        xpc_release(*buf);
        v39 = v68;
        v9 = v70;
        ctu::cf::insert<__CFString const*,__CFArray *>(v70, *MEMORY[0x29EDC8AB8], v68);
        a3 = a3;
        if (v39)
        {
          CFRelease(v39);
        }

        break;
      }

      *v67 = 0;
      v20 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v21 = v20;
      if (v20)
      {
        *v67 = v20;
      }

      object = buf;
      v65 = *&buf[8];
      xdict = 0xAAAAAAAAAAAAAAAALL;
      xpc::array::object_proxy::operator xpc::dict(&object, &xdict);
      value = xpc_dictionary_get_value(xdict, "kWCMCellularTransparentMessage_Type");
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      v23 = xpc::dyn_cast_or_default(&object, 0);
      ctu::cf::insert<__CFString const*,unsigned int>(v21, v14, v23, v7);
      xpc_release(object);
      xarray = 0xAAAAAAAAAAAAAAAALL;
      object = &xdict;
      v65 = "kWCMCellularTransparentMessage_ByteList";
      xpc::dict::object_proxy::operator xpc::array(&object, &xarray);
      if (MEMORY[0x29C26CE60](xarray) == v11)
      {
        v62 = 0;
        v24 = CFArrayCreateMutable(v7, 0, MEMORY[0x29EDB9000]);
        if (v24)
        {
          v62 = v24;
        }

        v25 = xarray;
        if (xarray)
        {
          xpc_retain(xarray);
          goto LABEL_37;
        }

        v25 = xpc_null_create();
        if (v25)
        {
LABEL_37:
          xpc_retain(v25);
          v26 = v25;
        }

        else
        {
          v25 = xpc_null_create();
          v26 = 0;
        }

        xpc_release(v26);
        v27 = 0;
        while (2)
        {
          v29 = xarray;
          if (xarray)
          {
            xpc_retain(xarray);
          }

          else
          {
            v29 = xpc_null_create();
          }

          if (MEMORY[0x29C26CE60](xarray) == v11)
          {
            v30 = xpc_array_get_count(xarray);
            if (!v29)
            {
              goto LABEL_48;
            }

LABEL_46:
            xpc_retain(v29);
            v31 = v29;
          }

          else
          {
            v30 = 0;
            if (v29)
            {
              goto LABEL_46;
            }

LABEL_48:
            v31 = xpc_null_create();
          }

          xpc_release(v29);
          xpc_release(v31);
          if (v27 == v30 && v25 == v31)
          {
            xpc_release(v25);
            v36 = v62;
            v21 = *v67;
            ctu::cf::insert<__CFString const*,__CFArray *>(*v67, v55, v62);
            if (v36)
            {
              CFRelease(v36);
            }

            break;
          }

          v32 = xpc_array_get_value(v25, v27);
          v61 = v32;
          if (v32)
          {
            xpc_retain(v32);
          }

          else
          {
            v61 = xpc_null_create();
          }

          v33 = xpc::dyn_cast_or_default(&v61, 0);
          v34 = v62;
          valuePtr = v33;
          v35 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
          object = v35;
          if (v35)
          {
            CFArrayAppendValue(v34, v35);
            CFRelease(v35);
          }

          xpc_release(v61);
          if (v25)
          {
            xpc_retain(v25);
            v28 = v25;
          }

          else
          {
            v28 = xpc_null_create();
          }

          ++v27;
          xpc_release(v28);
          continue;
        }
      }

      v37 = v68;
      object = v21;
      if (v21)
      {
        CFRetain(v21);
        CFArrayAppendValue(v37, v21);
        CFRelease(v21);
      }

      xpc_release(xarray);
      xpc_release(xdict);
      if (v21)
      {
        CFRelease(v21);
      }

      v38 = *buf;
      if (*buf)
      {
        xpc_retain(*buf);
      }

      else
      {
        v38 = xpc_null_create();
      }

      ++*&buf[8];
      xpc_release(v38);
    }
  }

  object = 0;
  v40 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v41 = v40;
  if (v40)
  {
    object = v40;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v40, *MEMORY[0x29EDC89D0], v9);
  v42 = a1[4];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v41;
    _os_log_impl(&dword_296FF7000, v42, OS_LOG_TYPE_DEFAULT, "#I Sending transparent message reqeust: %@", buf, 0xCu);
  }

  v44 = *a1;
  v43 = a1[1];
  *buf = *a1;
  if (!v43 || (v45 = std::__shared_weak_count::lock(v43), (*&buf[8] = v45) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v46 = v45;
  v47 = a1[5];
  if (v41 && (v48 = CFGetTypeID(v41), v48 == CFDictionaryGetTypeID()))
  {
    cf = v41;
    CFRetain(v41);
  }

  else
  {
    cf = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State32handleTransparentMessageReq_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_209;
  aBlock[4] = a1;
  aBlock[5] = v44;
  v57 = v46;
  atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  v49 = _Block_copy(aBlock);
  v50 = a1[2];
  if (v50)
  {
    dispatch_retain(v50);
  }

  if (v49)
  {
    v58 = _Block_copy(v49);
    v59 = v50;
    if (!v50)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v58 = 0;
  v59 = v50;
  if (v50)
  {
LABEL_83:
    dispatch_retain(v50);
  }

LABEL_84:
  (*(*v47 + 16))(v47, &cf, a3, &v58);
  if (v59)
  {
    dispatch_release(v59);
  }

  if (v58)
  {
    _Block_release(v58);
  }

  if (v50)
  {
    dispatch_release(v50);
  }

  if (v49)
  {
    _Block_release(v49);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v51 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  v52 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v53 = object;
    if (!object)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  (v52->__on_zero_shared)(v52);
  std::__shared_weak_count::__release_weak(v52);
  v53 = object;
  if (object)
  {
LABEL_100:
    CFRelease(v53);
  }

LABEL_101:
  xpc_release(v69);
  if (v70)
  {
    CFRelease(v70);
  }

LABEL_103:
  v54 = *MEMORY[0x29EDCA608];
}

void sub_296FFDF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, xpc_object_t a22, char a23, xpc_object_t object, xpc_object_t a25, uint64_t a26, xpc_object_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::cf::insert<__CFString const*,__CFArray *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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

void sub_296FFE1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296FFE200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator xpc::array(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v4) != MEMORY[0x29EDCA9E0])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void ctu::cf::insert<__CFString const*,unsigned int>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296FFE350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296FFE374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void xpc::array::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v4) != MEMORY[0x29EDCAA00])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
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

void sub_296FFE4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296FFE4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE(uint64_t result, uint64_t a2)
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

void boost::detail::function::void_function_obj_invoker2<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::invoke(uint64_t a1, const void **a2, int a3)
{
  v4 = *a2;
  v24 = *a2;
  *a2 = 0;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (!v5)
  {
    v8 = 0;
LABEL_10:
    v19 = 1;
    *&v25 = 0;
    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (!v9)
  {
    v19 = 0;
    *&v25 = 0;
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRetain(v4);
    goto LABEL_23;
  }

  v11 = _Block_copy(v9);
  v12 = v11;
  if (v11)
  {
    v13 = _Block_copy(v11);
    v14 = v13;
    if (v13)
    {
      v15 = _Block_copy(v13);
      v16 = v15;
      if (v15)
      {
        v17 = _Block_copy(v15);
        v18 = v17;
        if (v17)
        {
          *&v25 = _Block_copy(v17);
          _Block_release(v18);
        }

        else
        {
          *&v25 = 0;
        }

        _Block_release(v16);
      }

      else
      {
        *&v25 = 0;
      }

      _Block_release(v14);
    }

    else
    {
      *&v25 = 0;
    }

    _Block_release(v12);
  }

  else
  {
    *&v25 = 0;
  }

  _Block_release(v10);
  v19 = 0;
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
  v20 = operator new(8uLL);
  *v20 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v21 = operator new(4uLL);
  *v21 = a3;
  v22 = operator new(0x20uLL);
  v23 = v22;
  *v22 = 0;
  if (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable)
  {
    *v22 = boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable;
    if (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable)
    {
      *(v22 + 8) = v25;
      *(v22 + 3) = v26;
    }

    else
    {
      (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable[0])(&v25, v22 + 8, 0);
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN4coex5SubIdEEEES8_SA__block_invoke;
  block[3] = &__block_descriptor_tmp_383;
  block[4] = v23;
  block[5] = v20;
  block[6] = v21;
  dispatch_async(v6, block);
  if (v4)
  {
    CFRelease(v4);
  }

  if (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable && (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable & 1) == 0 && boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable[0])
  {
    (boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>(dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>)::stored_vtable[0])(&v25, &v25, 2);
  }

  if ((v19 & 1) == 0)
  {
    _Block_release(v8);
    v4 = v24;
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_296FFE7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void (**a12)(void, void, void))
{
  operator delete(v13);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>::~function(&a12);
  if ((v14 & 1) == 0)
  {
    _Block_release(v12);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x8000000297223ADBLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x8000000297223ADBLL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t coex::Module::State::getSubProperty@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, CFMutableDictionaryRef *a5@<X8>)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a1 + 16 * (a3 != 0) + 72);
  if (v8)
  {
    CFRetain(v8);
  }

  ctu::cf::dict_adapter::dict_adapter(v14, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = (*v14[0])(v14, a2);
  Mutable = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    TypeID = CFDictionaryGetTypeID();
    CFRelease(Mutable);
    *a5 = 0;
    if (v11 == TypeID)
    {
      CFRetain(Mutable);
LABEL_11:
      *a5 = Mutable;
      return MEMORY[0x29C26B180](v14);
    }
  }

  else
  {
    *a5 = 0;
  }

  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      goto LABEL_11;
    }
  }

  return MEMORY[0x29C26B180](v14);
}

void sub_296FFEA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v3);
  MEMORY[0x29C26B180](va);
  _Unwind_Resume(a1);
}

void sub_296FFEA6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,__CFDictionary *>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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
      CFDictionarySetValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296FFEB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296FFEB38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,void const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  CFRetain(a3);
  if (cf)
  {
    CFDictionarySetValue(a1, cf, a3);
  }

  CFRelease(a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296FFEBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296FFEBEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN4coex5SubIdEEEES8_SA__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(a1 + 40);
  if (v3)
  {
    CFRetain(v3);
  }

  if (!*v2)
  {
    std::runtime_error::runtime_error(&cf, "call to empty boost::function");
    cf.__vftable = &unk_2A1E24E88;
    boost::throw_exception<boost::bad_function_call>(&cf);
  }

  v4 = **(a1 + 48);
  v5 = *((*v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  cf.__vftable = v3;
  v5(v2 + 1, &cf, v4);
  if (cf.__vftable)
  {
    CFRelease(cf.__vftable);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      if ((v7 & 1) == 0)
      {
        v8 = *v7;
        if (v8)
        {
          v9 = *(a1 + 32);
          v8(v6 + 1, v9 + 1, 2);
          v6 = v9;
        }
      }

      *v6 = 0;
    }

    operator delete(v6);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    if (*v10)
    {
      CFRelease(*v10);
    }

    operator delete(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    operator delete(v11);
  }
}

void sub_296FFED24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, std::runtime_error a11)
{
  std::runtime_error::~runtime_error(&a11);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_296FFED40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296FFED5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void boost::detail::function::void_function_obj_invoker2<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::invoke(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a1;
  cf = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296FFEDCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS_2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISF_EENSL_IFvRKNS7_10connectionESD_SE_EEENS7_5mutexEEES3_vJSD_SE_EEEDTcl7connectfp_cvNSI_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSY_S10_E_block_invoke(void *a1, const void **a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = (a1[4] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
    v7 = *a2;
    cf = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = *a2;
  cf = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v4(v6, &cf, a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296FFEE74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void coex::Module::State::handleCommandDriverStateUpdate_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a2;
  if (v4)
  {
    memset(buf, 170, 16);
    v6 = ctu::cf::dict_adapter::dict_adapter(buf, v4);
    v170 = 0;
    v7 = ctu::cf::map_adapter::copyCFDictionaryRef(v6, *MEMORY[0x29EDC8728]);
    v170 = v7;
    v8 = MEMORY[0x29EDB8ED8];
    if (v7 || (v7 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8790]), (v170 = v7) != 0))
    {
      v168 = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v168, v7);
      Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v10 = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      v12 = *MEMORY[0x29EDC87E8];
      v13 = (*v168)(&v168, *MEMORY[0x29EDC87E8]);
      v14 = v13;
      if (v13)
      {
        CFRelease(v13);
        ctu::cf::update<__CFString const*,void const*>(v10, v12, v14);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v15 = *MEMORY[0x29EDC87D0];
      v16 = (*v168)(&v168, *MEMORY[0x29EDC87D0]);
      v17 = v16;
      if (v16)
      {
        CFRelease(v16);
        ctu::cf::update<__CFString const*,void const*>(v10, v15, v17);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v18 = *MEMORY[0x29EDC86F0];
      v19 = (*v168)(&v168, *MEMORY[0x29EDC86F0]);
      v20 = v19;
      if (v19)
      {
        CFRelease(v19);
        ctu::cf::update<__CFString const*,void const*>(v10, v18, v20);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v21 = *MEMORY[0x29EDC88D0];
      v22 = (*v168)(&v168, *MEMORY[0x29EDC88D0]);
      v23 = v22;
      if (v22)
      {
        CFRelease(v22);
        ctu::cf::update<__CFString const*,void const*>(v10, v21, v23);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v24 = *MEMORY[0x29EDC89D8];
      v25 = (*v168)(&v168, *MEMORY[0x29EDC89D8]);
      v26 = v25;
      if (v25)
      {
        CFRelease(v25);
        ctu::cf::update<__CFString const*,void const*>(v10, v24, v26);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v27 = *MEMORY[0x29EDC88B0];
      v28 = (*v168)(&v168, *MEMORY[0x29EDC88B0]);
      v29 = v28;
      if (v28)
      {
        CFRelease(v28);
        ctu::cf::update<__CFString const*,void const*>(v10, v27, v29);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v30 = *MEMORY[0x29EDC8910];
      v31 = (*v168)(&v168, *MEMORY[0x29EDC8910]);
      v32 = v31;
      if (v31)
      {
        CFRelease(v31);
        ctu::cf::update<__CFString const*,void const*>(v10, v30, v32);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v33 = *MEMORY[0x29EDC88C0];
      v34 = (*v168)(&v168, *MEMORY[0x29EDC88C0]);
      v35 = v34;
      if (v34)
      {
        CFRelease(v34);
        ctu::cf::update<__CFString const*,void const*>(v10, v33, v35);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v36 = *MEMORY[0x29EDC8968];
      v37 = (*v168)(&v168, *MEMORY[0x29EDC8968]);
      v38 = v37;
      if (v37)
      {
        CFRelease(v37);
        ctu::cf::update<__CFString const*,void const*>(v10, v36, v38);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v39 = *MEMORY[0x29EDC8988];
      v40 = (*v168)(&v168, *MEMORY[0x29EDC8988]);
      v41 = v40;
      if (v40)
      {
        CFRelease(v40);
        ctu::cf::update<__CFString const*,void const*>(v10, v39, v41);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v42 = *MEMORY[0x29EDC88E0];
      v43 = (*v168)(&v168, *MEMORY[0x29EDC88E0]);
      v44 = v43;
      if (v43)
      {
        CFRelease(v43);
        ctu::cf::update<__CFString const*,void const*>(v10, v42, v44);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v45 = *MEMORY[0x29EDC8990];
      v46 = (*v168)(&v168, *MEMORY[0x29EDC8990]);
      v47 = v46;
      if (v46)
      {
        CFRelease(v46);
        ctu::cf::update<__CFString const*,void const*>(v10, v45, v47);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      v48 = *(v3 + 16 * (a3 != 0) + 72);
      if (v48)
      {
        CFRetain(v48);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v48, coex::kKeyWWANState, v10);
      if (v48)
      {
        CFRelease(v48);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      MEMORY[0x29C26B180](&v168);
      v166 = 0;
    }

    else
    {
      v166 = 1;
    }

    v49 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8780]);
    v170 = v49;
    if (v7)
    {
      CFRelease(v7);
    }

    v167 = v49 != 0;
    if (v49)
    {
      v168 = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v168, v49);
      v50 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v51 = v50;
      if (v50)
      {
        CFRetain(v50);
      }

      v52 = *MEMORY[0x29EDC8AE8];
      v53 = (*v168)(&v168, *MEMORY[0x29EDC8AE8]);
      v54 = v53;
      if (v53)
      {
        CFRelease(v53);
        ctu::cf::update<__CFString const*,void const*>(v51, v52, v54);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      v55 = *(v3 + 16 * (a3 != 0) + 72);
      if (v55)
      {
        CFRetain(v55);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v55, coex::kKeyLinkQuality, v51);
      if (v55)
      {
        CFRelease(v55);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      MEMORY[0x29C26B180](&v168);
    }

    v56 = *MEMORY[0x29EDC87D8];
    v57 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC87D8]);
    v58 = v170;
    v170 = v57;
    if (v58)
    {
      CFRelease(v58);
    }

    v59 = MEMORY[0x29EDC8718];
    if (v57)
    {
      v168 = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v168, v57);
      v60 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v61 = v60;
      if (v60)
      {
        CFRetain(v60);
      }

      v62 = *MEMORY[0x29EDC86C0];
      v63 = (*v168)(&v168, *MEMORY[0x29EDC86C0]);
      v64 = v63;
      if (v63)
      {
        CFRelease(v63);
        ctu::cf::update<__CFString const*,void const*>(v61, v62, v64);
      }

      if (v61)
      {
        CFRelease(v61);
        CFRetain(v61);
      }

      v65 = *v59;
      v66 = (*v168)(&v168, *v59);
      v67 = v66;
      if (v66)
      {
        CFRelease(v66);
        ctu::cf::update<__CFString const*,void const*>(v61, v65, v67);
      }

      if (v61)
      {
        CFRelease(v61);
        CFRetain(v61);
      }

      v68 = *MEMORY[0x29EDC8748];
      v69 = (*v168)(&v168, *MEMORY[0x29EDC8748]);
      v70 = v69;
      if (v69)
      {
        CFRelease(v69);
        ctu::cf::update<__CFString const*,void const*>(v61, v68, v70);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      v71 = *(v3 + 16 * (a3 != 0) + 72);
      if (v71)
      {
        CFRetain(v71);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v71, coex::kKeyWLANScanState, v61);
      if (v71)
      {
        CFRelease(v71);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      MEMORY[0x29C26B180](&v168);
    }

    v72 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, v56);
    v170 = v72;
    if (v57)
    {
      CFRelease(v57);
    }

    if (v72)
    {
      v168 = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v168, v72);
      v73 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v74 = v73;
      if (v73)
      {
        CFRetain(v73);
      }

      v75 = *MEMORY[0x29EDC8890];
      v76 = (*v168)(&v168, *MEMORY[0x29EDC8890]);
      v77 = v76;
      if (v76)
      {
        CFRelease(v76);
        ctu::cf::update<__CFString const*,void const*>(v74, v75, v77);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v78 = *v59;
      v79 = (*v168)(&v168, *v59);
      v80 = v79;
      if (v79)
      {
        CFRelease(v79);
        ctu::cf::update<__CFString const*,void const*>(v74, v78, v80);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v81 = *MEMORY[0x29EDC8858];
      v82 = (*v168)(&v168, *MEMORY[0x29EDC8858]);
      v83 = v82;
      if (v82)
      {
        CFRelease(v82);
        ctu::cf::update<__CFString const*,void const*>(v74, v81, v83);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v84 = *MEMORY[0x29EDC8860];
      v85 = (*v168)(&v168, *MEMORY[0x29EDC8860]);
      v86 = v85;
      if (v85)
      {
        CFRelease(v85);
        ctu::cf::update<__CFString const*,void const*>(v74, v84, v86);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v87 = *MEMORY[0x29EDC8810];
      v88 = (*v168)(&v168, *MEMORY[0x29EDC8810]);
      v89 = v88;
      if (v88)
      {
        CFRelease(v88);
        ctu::cf::update<__CFString const*,void const*>(v74, v87, v89);
      }

      if (v74)
      {
        CFRelease(v74);
      }

      v90 = *(v3 + 16 * (a3 != 0) + 72);
      if (v90)
      {
        CFRetain(v90);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v90, coex::kKeyWLANConnState, v74);
      if (v90)
      {
        CFRelease(v90);
      }

      if (v74)
      {
        CFRelease(v74);
      }

      MEMORY[0x29C26B180](&v168);
    }

    v91 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8788]);
    v170 = v91;
    if (v72)
    {
      CFRelease(v72);
    }

    if (v91)
    {
      v168 = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v168, v91);
      v92 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v93 = v92;
      if (v92)
      {
        CFRetain(v92);
      }

      v94 = *MEMORY[0x29EDC8698];
      v95 = (*v168)(&v168, *MEMORY[0x29EDC8698]);
      v96 = v95;
      if (v95)
      {
        CFRelease(v95);
        ctu::cf::update<__CFString const*,void const*>(v93, v94, v96);
      }

      if (v93)
      {
        CFRelease(v93);
        CFRetain(v93);
      }

      v97 = *MEMORY[0x29EDC8980];
      v98 = (*v168)(&v168, *MEMORY[0x29EDC8980]);
      v99 = v98;
      if (v98)
      {
        CFRelease(v98);
        ctu::cf::update<__CFString const*,void const*>(v93, v97, v99);
      }

      if (v93)
      {
        CFRelease(v93);
      }

      v100 = *(v3 + 16 * (a3 != 0) + 72);
      if (v100)
      {
        CFRetain(v100);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v100, coex::kKeyLinkQuality, v93);
      if (v100)
      {
        CFRelease(v100);
      }

      if (v93)
      {
        CFRelease(v93);
      }

      MEMORY[0x29C26B180](&v168);
      v167 = 1;
    }

    v101 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8840]);
    v170 = v101;
    if (v91)
    {
      CFRelease(v91);
    }

    if (v101)
    {
      v168 = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v168, v101);
      v102 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v103 = v102;
      if (v102)
      {
        CFRetain(v102);
      }

      v104 = *MEMORY[0x29EDC8AA8];
      v105 = (*v168)(&v168, *MEMORY[0x29EDC8AA8]);
      v106 = v105;
      if (v105)
      {
        CFRelease(v105);
        ctu::cf::update<__CFString const*,void const*>(v103, v104, v106);
      }

      if (v103)
      {
        CFRelease(v103);
        CFRetain(v103);
      }

      v107 = *MEMORY[0x29EDC8918];
      v108 = (*v168)(&v168, *MEMORY[0x29EDC8918]);
      v109 = v108;
      if (v108)
      {
        CFRelease(v108);
        ctu::cf::update<__CFString const*,void const*>(v103, v107, v109);
      }

      if (v103)
      {
        CFRelease(v103);
        CFRetain(v103);
      }

      v110 = *MEMORY[0x29EDC8970];
      v111 = (*v168)(&v168, *MEMORY[0x29EDC8970]);
      v112 = v111;
      if (v111)
      {
        CFRelease(v111);
        ctu::cf::update<__CFString const*,void const*>(v103, v110, v112);
      }

      if (v103)
      {
        CFRelease(v103);
      }

      v113 = *(v3 + 16 * (a3 != 0) + 72);
      if (v113)
      {
        CFRetain(v113);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v113, coex::kKeyFailCondition, v103);
      if (v113)
      {
        CFRelease(v113);
      }

      if (v103)
      {
        CFRelease(v103);
      }

      MEMORY[0x29C26B180](&v168);
    }

    v114 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC86B8]);
    v170 = v114;
    if (v101)
    {
      CFRelease(v101);
    }

    if (v114)
    {
      v168 = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAAAALL;
      v115 = v3 + 72;
      v116 = 24;
      if (!a3)
      {
        v116 = 8;
      }

      v117 = *(v115 + v116);
      if (v117)
      {
        CFRetain(v117);
      }

      ctu::cf::dict_adapter::dict_adapter(&v168, v117);
      if (v117)
      {
        CFRelease(v117);
      }

      v118 = *v8;
      v119 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v120 = v119;
      if (v119)
      {
        CFRetain(v119);
      }

      v121 = *MEMORY[0x29EDC8600];
      v122 = (*v168)(&v168, *MEMORY[0x29EDC8600]);
      v123 = v122;
      if (v122)
      {
        CFRelease(v122);
        ctu::cf::update<__CFString const*,void const*>(v120, v121, v123);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v124 = *MEMORY[0x29EDC8750];
      v125 = (*v168)(&v168, *MEMORY[0x29EDC8750]);
      v126 = v125;
      if (v125)
      {
        CFRelease(v125);
        ctu::cf::update<__CFString const*,void const*>(v120, v124, v126);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v127 = *MEMORY[0x29EDC8AD0];
      v128 = (*v168)(&v168, *MEMORY[0x29EDC8AD0]);
      v129 = v128;
      if (v128)
      {
        CFRelease(v128);
        ctu::cf::update<__CFString const*,void const*>(v120, v127, v129);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v130 = *MEMORY[0x29EDC88F8];
      v131 = (*v168)(&v168, *MEMORY[0x29EDC88F8]);
      v132 = v131;
      if (v131)
      {
        CFRelease(v131);
        ctu::cf::update<__CFString const*,void const*>(v120, v130, v132);
      }

      v165 = v3;
      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v133 = *MEMORY[0x29EDC89A0];
      v134 = (*v168)(&v168, *MEMORY[0x29EDC89A0]);
      v135 = v134;
      if (v134)
      {
        CFRelease(v134);
        ctu::cf::update<__CFString const*,void const*>(v120, v133, v135);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v136 = *MEMORY[0x29EDC8A98];
      v137 = (*v168)(&v168, *MEMORY[0x29EDC8A98]);
      v138 = v137;
      if (v137)
      {
        CFRelease(v137);
        ctu::cf::update<__CFString const*,void const*>(v120, v136, v138);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v139 = *MEMORY[0x29EDC89C8];
      v140 = (*v168)(&v168, *MEMORY[0x29EDC89C8]);
      v141 = v140;
      if (v140)
      {
        CFRelease(v140);
        ctu::cf::update<__CFString const*,void const*>(v120, v139, v141);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v142 = *MEMORY[0x29EDC86D8];
      v143 = (*v168)(&v168, *MEMORY[0x29EDC86D8]);
      v144 = v143;
      if (v143)
      {
        CFRelease(v143);
        ctu::cf::update<__CFString const*,void const*>(v120, v142, v144);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v145 = *MEMORY[0x29EDC8710];
      v146 = (*v168)(&v168, *MEMORY[0x29EDC8710]);
      v147 = v146;
      if (v146)
      {
        CFRelease(v146);
        ctu::cf::update<__CFString const*,void const*>(v120, v145, v147);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v148 = *MEMORY[0x29EDC8638];
      v149 = (*v168)(&v168, *MEMORY[0x29EDC8638]);
      v150 = v149;
      if (v149)
      {
        CFRelease(v149);
        ctu::cf::update<__CFString const*,void const*>(v120, v148, v150);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v151 = *MEMORY[0x29EDC8AD8];
      v152 = (*v168)(&v168, *MEMORY[0x29EDC8AD8]);
      v153 = v152;
      if (v152)
      {
        CFRelease(v152);
        ctu::cf::update<__CFString const*,void const*>(v120, v151, v153);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v154 = *MEMORY[0x29EDC8A38];
      v155 = (*v168)(&v168, *MEMORY[0x29EDC8A38]);
      v156 = v155;
      if (v155)
      {
        CFRelease(v155);
        ctu::cf::update<__CFString const*,void const*>(v120, v154, v156);
      }

      if (v120)
      {
        CFRelease(v120);
      }

      v157 = *(v115 + 16 * (a3 != 0));
      if (v157)
      {
        CFRetain(v157);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v157, coex::kKeyPolicy, v120);
      if (v157)
      {
        CFRelease(v157);
      }

      v158 = CFDictionaryCreateMutable(v118, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v159 = v158;
      if (v158)
      {
        CFRetain(v158);
      }

      v160 = (*v168)(&v168, v127);
      v161 = v160;
      if (v160)
      {
        CFRelease(v160);
        ctu::cf::update<__CFString const*,void const*>(v159, v127, v161);
      }

      if (v159)
      {
        CFRelease(v159);
        CFRetain(v159);
      }

      v162 = (*v168)(&v168, v130);
      v163 = v162;
      if (v162)
      {
        CFRelease(v162);
        ctu::cf::update<__CFString const*,void const*>(v159, v130, v163);
      }

      if (v159)
      {
        CFRelease(v159);
      }

      v164 = *(v115 + 16 * (a3 != 0));
      if (v164)
      {
        CFRetain(v164);
      }

      ctu::cf::update<__CFString const*,__CFDictionary *>(v164, coex::kKeyFailCondition, v159);
      v3 = v165;
      if (v164)
      {
        CFRelease(v164);
      }

      if (v159)
      {
        CFRelease(v159);
      }

      if (v120)
      {
        CFRelease(v120);
      }

      MEMORY[0x29C26B180](&v168);
    }

    if ((v166 & 1) == 0)
    {
      coex::Module::State::sendWWANState_sync(v3, a3);
    }

    if (v167)
    {
      coex::Module::State::sendLinkQuality_sync(v3, a3);
    }

    if (v101)
    {
      coex::Module::State::sendFailCondition_sync(v3, a3);
    }

    if (v114)
    {
      CFRelease(v114);
    }

    MEMORY[0x29C26B180](buf);
  }

  else
  {
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEBUG, "#D Empty update passed; ignoring it", buf, 2u);
    }
  }
}

void sub_2970008F8(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v1 - 120));
  MEMORY[0x29C26B180](v1 - 112);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,unsigned int>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionarySetValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_297000E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297000E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,double>(__CFDictionary *a1, CFTypeRef cf, CFAllocatorRef allocator, double a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a4;
  v8 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionarySetValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_297000F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297000F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,BOOL>(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v6 = MEMORY[0x29EDB8EF8];
  }

  v7 = *v6;
  if (cf && v7)
  {
    CFDictionarySetValue(theDict, cf, v7);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  CFRelease(v7);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_297000FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void ctu::cf::update<__CFString const*,__CFArray const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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
      CFDictionarySetValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2970010A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2970010C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void coex::Module::State::setPolicy_sync(uint64_t *a1, uint64_t a2)
{
  v170 = *MEMORY[0x29EDCA608];
  if (a1[5])
  {
    v168 = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v6 = Mutable;
    if (Mutable)
    {
      v168 = Mutable;
    }

    memset(buf, 170, 16);
    v7 = 3;
    if (!a2)
    {
      v7 = 1;
    }

    v8 = a1[v7 + 9];
    *&v169 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    ctu::cf::dict_adapter::dict_adapter(buf, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v166 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    v9 = *MEMORY[0x29EDC8750];
    v10 = (**buf)(buf, *MEMORY[0x29EDC8750]);
    v11 = v10;
    if (v10)
    {
      CFRelease(v10);
      ctu::cf::update<__CFString const*,void const*>(v6, v9, v11);
    }

    if (v6)
    {
      CFRelease(v6);
      v165 = v6;
      CFRetain(v6);
    }

    else
    {
      v165 = 0;
    }

    v13 = *MEMORY[0x29EDC87B8];
    v14 = (**buf)(buf, *MEMORY[0x29EDC87B8]);
    v15 = v14;
    if (v14)
    {
      CFRelease(v14);
      ctu::cf::update<__CFString const*,void const*>(v6, v13, v15);
    }

    if (v6)
    {
      CFRelease(v6);
      v164 = v6;
      CFRetain(v6);
    }

    else
    {
      v164 = 0;
    }

    v16 = *MEMORY[0x29EDC88F8];
    v17 = (**buf)(buf, *MEMORY[0x29EDC88F8]);
    v18 = v17;
    if (v17)
    {
      CFRelease(v17);
      ctu::cf::update<__CFString const*,void const*>(v6, v16, v18);
    }

    if (v6)
    {
      CFRelease(v6);
      v163 = v6;
      CFRetain(v6);
    }

    else
    {
      v163 = 0;
    }

    v19 = *MEMORY[0x29EDC8600];
    v20 = (**buf)(buf, *MEMORY[0x29EDC8600]);
    v21 = v20;
    if (v20)
    {
      CFRelease(v20);
      ctu::cf::update<__CFString const*,void const*>(v6, v19, v21);
    }

    if (v6)
    {
      CFRelease(v6);
      v162 = v6;
      CFRetain(v6);
    }

    else
    {
      v162 = 0;
    }

    v22 = *MEMORY[0x29EDC86E0];
    v23 = (**buf)(buf, *MEMORY[0x29EDC86E0]);
    v24 = v23;
    if (v23)
    {
      CFRelease(v23);
      ctu::cf::update<__CFString const*,void const*>(v6, v22, v24);
    }

    if (v6)
    {
      CFRelease(v6);
      v161 = v6;
      CFRetain(v6);
    }

    else
    {
      v161 = 0;
    }

    v25 = *MEMORY[0x29EDC8AD0];
    v26 = (**buf)(buf, *MEMORY[0x29EDC8AD0]);
    v27 = v26;
    if (v26)
    {
      CFRelease(v26);
      ctu::cf::update<__CFString const*,void const*>(v6, v25, v27);
    }

    if (v6)
    {
      CFRelease(v6);
      v160 = v6;
      CFRetain(v6);
    }

    else
    {
      v160 = 0;
    }

    v28 = *MEMORY[0x29EDC8628];
    v29 = (**buf)(buf, *MEMORY[0x29EDC8628]);
    v30 = v29;
    if (v29)
    {
      CFRelease(v29);
      ctu::cf::update<__CFString const*,void const*>(v6, v28, v30);
    }

    if (v6)
    {
      CFRelease(v6);
      v159 = v6;
      CFRetain(v6);
    }

    else
    {
      v159 = 0;
    }

    v31 = *MEMORY[0x29EDC88D8];
    v32 = (**buf)(buf, *MEMORY[0x29EDC88D8]);
    v33 = v32;
    if (v32)
    {
      CFRelease(v32);
      ctu::cf::update<__CFString const*,void const*>(v6, v31, v33);
    }

    if (v6)
    {
      CFRelease(v6);
      v158 = v6;
      CFRetain(v6);
    }

    else
    {
      v158 = 0;
    }

    v34 = *MEMORY[0x29EDC8730];
    v35 = (**buf)(buf, *MEMORY[0x29EDC8730]);
    v36 = v35;
    if (v35)
    {
      CFRelease(v35);
      ctu::cf::update<__CFString const*,void const*>(v6, v34, v36);
    }

    if (v6)
    {
      CFRelease(v6);
      v157 = v6;
      CFRetain(v6);
    }

    else
    {
      v157 = 0;
    }

    v37 = *MEMORY[0x29EDC8830];
    v38 = (**buf)(buf, *MEMORY[0x29EDC8830]);
    v39 = v38;
    if (v38)
    {
      CFRelease(v38);
      ctu::cf::update<__CFString const*,void const*>(v6, v37, v39);
    }

    if (v6)
    {
      CFRelease(v6);
      v156 = v6;
      CFRetain(v6);
    }

    else
    {
      v156 = 0;
    }

    v40 = *MEMORY[0x29EDC8A70];
    v41 = (**buf)(buf, *MEMORY[0x29EDC8A70]);
    v42 = v41;
    if (v41)
    {
      CFRelease(v41);
      ctu::cf::update<__CFString const*,void const*>(v6, v40, v42);
    }

    if (v6)
    {
      CFRelease(v6);
      v155 = v6;
      CFRetain(v6);
    }

    else
    {
      v155 = 0;
    }

    v43 = *MEMORY[0x29EDC8978];
    v44 = (**buf)(buf, *MEMORY[0x29EDC8978]);
    v45 = v44;
    if (v44)
    {
      CFRelease(v44);
      ctu::cf::update<__CFString const*,void const*>(v6, v43, v45);
    }

    if (v6)
    {
      CFRelease(v6);
      v154 = v6;
      CFRetain(v6);
    }

    else
    {
      v154 = 0;
    }

    v46 = *MEMORY[0x29EDC89A0];
    v47 = (**buf)(buf, *MEMORY[0x29EDC89A0]);
    v48 = v47;
    if (v47)
    {
      CFRelease(v47);
      ctu::cf::update<__CFString const*,void const*>(v6, v46, v48);
    }

    if (v6)
    {
      CFRelease(v6);
      v153 = v6;
      CFRetain(v6);
    }

    else
    {
      v153 = 0;
    }

    v49 = *MEMORY[0x29EDC8A98];
    v50 = (**buf)(buf, *MEMORY[0x29EDC8A98]);
    v51 = v50;
    if (v50)
    {
      CFRelease(v50);
      ctu::cf::update<__CFString const*,void const*>(v6, v49, v51);
    }

    if (v6)
    {
      CFRelease(v6);
      v152 = v6;
      CFRetain(v6);
    }

    else
    {
      v152 = 0;
    }

    v52 = *MEMORY[0x29EDC89C8];
    v53 = (**buf)(buf, *MEMORY[0x29EDC89C8]);
    v54 = v53;
    if (v53)
    {
      CFRelease(v53);
      ctu::cf::update<__CFString const*,void const*>(v6, v52, v54);
    }

    if (v6)
    {
      CFRelease(v6);
      v151 = v6;
      CFRetain(v6);
    }

    else
    {
      v151 = 0;
    }

    v55 = *MEMORY[0x29EDC88A0];
    v56 = (**buf)(buf, *MEMORY[0x29EDC88A0]);
    v57 = v56;
    if (v56)
    {
      CFRelease(v56);
      ctu::cf::update<__CFString const*,void const*>(v6, v55, v57);
    }

    if (v6)
    {
      CFRelease(v6);
      v150 = v6;
      CFRetain(v6);
    }

    else
    {
      v150 = 0;
    }

    v58 = *MEMORY[0x29EDC8900];
    v59 = (**buf)(buf, *MEMORY[0x29EDC8900]);
    v60 = v59;
    if (v59)
    {
      CFRelease(v59);
      ctu::cf::update<__CFString const*,void const*>(v6, v58, v60);
    }

    if (v6)
    {
      CFRelease(v6);
      v149 = v6;
      CFRetain(v6);
    }

    else
    {
      v149 = 0;
    }

    v61 = *MEMORY[0x29EDC8A68];
    v62 = (**buf)(buf, *MEMORY[0x29EDC8A68]);
    v63 = v62;
    if (v62)
    {
      CFRelease(v62);
      ctu::cf::update<__CFString const*,void const*>(v6, v61, v63);
    }

    if (v6)
    {
      CFRelease(v6);
      v148 = v6;
      CFRetain(v6);
    }

    else
    {
      v148 = 0;
    }

    v64 = *MEMORY[0x29EDC8940];
    v65 = (**buf)(buf, *MEMORY[0x29EDC8940]);
    v66 = v65;
    if (v65)
    {
      CFRelease(v65);
      ctu::cf::update<__CFString const*,void const*>(v6, v64, v66);
    }

    if (v6)
    {
      CFRelease(v6);
      v147 = v6;
      CFRetain(v6);
    }

    else
    {
      v147 = 0;
    }

    v67 = *MEMORY[0x29EDC88A8];
    v68 = (**buf)(buf, *MEMORY[0x29EDC88A8]);
    v69 = v68;
    if (v68)
    {
      CFRelease(v68);
      ctu::cf::update<__CFString const*,void const*>(v6, v67, v69);
    }

    if (v6)
    {
      CFRelease(v6);
      v146 = v6;
      CFRetain(v6);
    }

    else
    {
      v146 = 0;
    }

    v70 = *MEMORY[0x29EDC8828];
    v71 = (**buf)(buf, *MEMORY[0x29EDC8828]);
    v72 = v71;
    if (v71)
    {
      CFRelease(v71);
      ctu::cf::update<__CFString const*,void const*>(v6, v70, v72);
    }

    if (v6)
    {
      CFRelease(v6);
      v145 = v6;
      CFRetain(v6);
    }

    else
    {
      v145 = 0;
    }

    v73 = *MEMORY[0x29EDC87A0];
    v74 = (**buf)(buf, *MEMORY[0x29EDC87A0]);
    v75 = v74;
    if (v74)
    {
      CFRelease(v74);
      ctu::cf::update<__CFString const*,void const*>(v6, v73, v75);
    }

    if (v6)
    {
      CFRelease(v6);
      v144 = v6;
      CFRetain(v6);
    }

    else
    {
      v144 = 0;
    }

    v76 = *MEMORY[0x29EDC8A78];
    v77 = (**buf)(buf, *MEMORY[0x29EDC8A78]);
    v78 = v77;
    if (v77)
    {
      CFRelease(v77);
      ctu::cf::update<__CFString const*,void const*>(v6, v76, v78);
    }

    if (v6)
    {
      CFRelease(v6);
      v143 = v6;
      CFRetain(v6);
    }

    else
    {
      v143 = 0;
    }

    v79 = *MEMORY[0x29EDC8A88];
    v80 = (**buf)(buf, *MEMORY[0x29EDC8A88]);
    v81 = v80;
    if (v80)
    {
      CFRelease(v80);
      ctu::cf::update<__CFString const*,void const*>(v6, v79, v81);
    }

    if (v6)
    {
      CFRelease(v6);
      v142 = v6;
      CFRetain(v6);
    }

    else
    {
      v142 = 0;
    }

    v82 = *MEMORY[0x29EDC8A90];
    v83 = (**buf)(buf, *MEMORY[0x29EDC8A90]);
    v84 = v83;
    if (v83)
    {
      CFRelease(v83);
      ctu::cf::update<__CFString const*,void const*>(v6, v82, v84);
    }

    if (v6)
    {
      CFRelease(v6);
      v141 = v6;
      CFRetain(v6);
    }

    else
    {
      v141 = 0;
    }

    v85 = *MEMORY[0x29EDC8A30];
    v86 = (**buf)(buf, *MEMORY[0x29EDC8A30]);
    v87 = v86;
    if (v86)
    {
      CFRelease(v86);
      ctu::cf::update<__CFString const*,void const*>(v6, v85, v87);
    }

    if (v6)
    {
      CFRelease(v6);
      v140 = v6;
      CFRetain(v6);
    }

    else
    {
      v140 = 0;
    }

    v88 = *MEMORY[0x29EDC8A80];
    v89 = (**buf)(buf, *MEMORY[0x29EDC8A80]);
    v90 = v89;
    if (v89)
    {
      CFRelease(v89);
      ctu::cf::update<__CFString const*,void const*>(v6, v88, v90);
    }

    if (v6)
    {
      CFRelease(v6);
      v139 = v6;
      CFRetain(v6);
    }

    else
    {
      v139 = 0;
    }

    v91 = *MEMORY[0x29EDC8A28];
    v92 = (**buf)(buf, *MEMORY[0x29EDC8A28]);
    v93 = v92;
    if (v92)
    {
      CFRelease(v92);
      ctu::cf::update<__CFString const*,void const*>(v6, v91, v93);
    }

    if (v6)
    {
      CFRelease(v6);
      v138 = v6;
      CFRetain(v6);
    }

    else
    {
      v138 = 0;
    }

    v94 = *MEMORY[0x29EDC86D8];
    v95 = (**buf)(buf, *MEMORY[0x29EDC86D8]);
    v96 = v95;
    if (v95)
    {
      CFRelease(v95);
      ctu::cf::update<__CFString const*,void const*>(v6, v94, v96);
    }

    if (v6)
    {
      CFRelease(v6);
      v137 = v6;
      CFRetain(v6);
    }

    else
    {
      v137 = 0;
    }

    v97 = *MEMORY[0x29EDC8710];
    v98 = (**buf)(buf, *MEMORY[0x29EDC8710]);
    v99 = v98;
    if (v98)
    {
      CFRelease(v98);
      ctu::cf::update<__CFString const*,void const*>(v6, v97, v99);
    }

    if (v6)
    {
      CFRelease(v6);
      v136 = v6;
      CFRetain(v6);
    }

    else
    {
      v136 = 0;
    }

    v100 = *MEMORY[0x29EDC8638];
    v101 = (**buf)(buf, *MEMORY[0x29EDC8638]);
    v102 = v101;
    if (v101)
    {
      CFRelease(v101);
      ctu::cf::update<__CFString const*,void const*>(v6, v100, v102);
    }

    if (v6)
    {
      CFRelease(v6);
      v135 = v6;
      CFRetain(v6);
    }

    else
    {
      v135 = 0;
    }

    v103 = *MEMORY[0x29EDC8AD8];
    v104 = (**buf)(buf, *MEMORY[0x29EDC8AD8]);
    v105 = v104;
    if (v104)
    {
      CFRelease(v104);
      ctu::cf::update<__CFString const*,void const*>(v6, v103, v105);
    }

    if (v6)
    {
      CFRelease(v6);
      v134 = v6;
      CFRetain(v6);
    }

    else
    {
      v134 = 0;
    }

    v106 = *MEMORY[0x29EDC8A38];
    v107 = (**buf)(buf, *MEMORY[0x29EDC8A38]);
    v108 = v107;
    if (v107)
    {
      CFRelease(v107);
      ctu::cf::update<__CFString const*,void const*>(v6, v106, v108);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v109 = capabilities::abs::supportsCoexGPSReporting(v107);
    ctu::cf::update<__CFString const*,BOOL>(v6, *MEMORY[0x29EDC89F8], v109);
    if (!CFDictionaryGetCount(v6))
    {
      v124 = a1[4];
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v169) = 0;
        _os_log_impl(&dword_296FF7000, v124, OS_LOG_TYPE_DEFAULT, "#I Nothing in policy yet, bail\n", &v169, 2u);
      }

      goto LABEL_217;
    }

    v133 = 0;
    v110 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v111 = v110;
    if (v110)
    {
      v133 = v110;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v110, *MEMORY[0x29EDC8688], v6);
    theDict = 0xAAAAAAAAAAAAAAAALL;
    coex::Module::State::getSubProperty(a1, coex::kKeyFailCondition, 0, 0, &theDict);
    if (theDict)
    {
      CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC8AA8]);
    }

    v112 = a1[4];
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v169) = 138412290;
      *(&v169 + 4) = v111;
      _os_log_impl(&dword_296FF7000, v112, OS_LOG_TYPE_DEFAULT, "#I Setting policy with: %@", &v169, 0xCu);
    }

    v114 = *a1;
    v113 = a1[1];
    *&v169 = *a1;
    if (!v113 || (v115 = std::__shared_weak_count::lock(v113), (*(&v169 + 1) = v115) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v116 = v115;
    v117 = a1[5];
    if (v111 && (v118 = CFGetTypeID(v111), v118 == CFDictionaryGetTypeID()))
    {
      cf = v111;
      CFRetain(v111);
    }

    else
    {
      cf = 0;
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_320;
    aBlock[4] = a1;
    aBlock[5] = v114;
    v127 = v116;
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    ctu::cf::dict_adapter::dict_adapter(v128, buf);
    v119 = _Block_copy(aBlock);
    v120 = a1[2];
    if (v120)
    {
      dispatch_retain(v120);
    }

    if (v119)
    {
      v129 = _Block_copy(v119);
      object = v120;
      if (!v120)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v129 = 0;
      object = v120;
      if (!v120)
      {
LABEL_196:
        (*(*v117 + 16))(v117, &cf, a2, &v129);
        if (object)
        {
          dispatch_release(object);
        }

        if (v129)
        {
          _Block_release(v129);
        }

        if (v120)
        {
          dispatch_release(v120);
        }

        if (v119)
        {
          _Block_release(v119);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C26B180](v128);
        v121 = v127;
        if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
          v122 = *(&v169 + 1);
          if (!*(&v169 + 1))
          {
            goto LABEL_210;
          }
        }

        else
        {
          v122 = *(&v169 + 1);
          if (!*(&v169 + 1))
          {
            goto LABEL_210;
          }
        }

        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
          v123 = theDict;
          if (!theDict)
          {
            goto LABEL_212;
          }

          goto LABEL_211;
        }

LABEL_210:
        v123 = theDict;
        if (!theDict)
        {
LABEL_212:
          if (v133)
          {
            CFRelease(v133);
          }

          v6 = v168;
LABEL_217:
          MEMORY[0x29C26B180](buf);
          if (v6)
          {
            CFRelease(v6);
          }

          goto LABEL_219;
        }

LABEL_211:
        CFRelease(v123);
        goto LABEL_212;
      }
    }

    dispatch_retain(v120);
    goto LABEL_196;
  }

  v12 = a1[4];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Invalid driver", buf, 2u);
  }

LABEL_219:
  v125 = *MEMORY[0x29EDCA608];
}

void sub_297002594(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE56c27_ZTSN3ctu2cf12dict_adapterE(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return ctu::cf::dict_adapter::dict_adapter((a1 + 7), (a2 + 7));
}

void ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke(uint64_t a1, const void **a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v4 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to set policy: %@", buf, 0xCu);
    }
  }

  ctu::cf::dict_adapter::dict_adapter(v19, (a1 + 56));
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v15 = ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke_317;
  v16 = &__block_descriptor_tmp_319;
  v7 = *a2;
  v17 = v4;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = (*v19[0])(v19, *MEMORY[0x29EDC88F8]);
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      *buf = -1431655766;
      v12 = ctu::cf::assign(buf, v9, v11);
      CFRelease(v9);
      if (v12)
      {
        v15(v14, *buf);
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  MEMORY[0x29C26B180](v19);
  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_297002B40(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_297002B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v7 + 40));
  MEMORY[0x29C26B180](va);
  _Unwind_Resume(a1);
}

void coex::XpcClient::sendMessage(uint64_t a1, int a2, void **a3, int a4)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4coex9XpcClient11sendMessageE19WCMReceiveMessageIdN3xpc6objectENS_5SubIdE_block_invoke;
  v7[3] = &__block_descriptor_tmp_7_2;
  v9 = a2;
  v6 = *a3;
  v7[4] = a1;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  v10 = a4;
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((a1 + 8), v7);
  xpc_release(object);
}

void ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E27F38;
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

xpc_object_t __copy_helper_block_e8_40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t result, uint64_t a2)
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

void coex::Module::State::sendFailCondition_sync(uint64_t a1, int a2)
{
  v70 = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(a1, coex::kKeyFailCondition, a2, 0, &v70);
  if (!v70)
  {
    return;
  }

  v69[0] = 0xAAAAAAAAAAAAAAAALL;
  v69[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = ctu::cf::dict_adapter::dict_adapter(v69, v70);
  v5 = ctu::cf::map_adapter::copyCFDataRef(v4, *MEMORY[0x29EDC8AA8]);
  v6 = v5;
  v68 = v5;
  if (v5)
  {
    v67 = v5;
    CFRetain(v5);
    *buffer = 0;
    v71.length = CFDataGetLength(v6);
    v71.location = 0;
    CFDataGetBytes(v6, v71, buffer);
    v7 = buffer[0];
    CFRelease(v6);
    if (v7)
    {
      *buffer = 0;
      v62 = buffer;
      v63 = 0x3002000000;
      v64 = __Block_byref_object_copy__277;
      v65 = __Block_byref_object_dispose__278;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v66 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v66 = v9;
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
LABEL_12:
        xpc_release(v9);
        v11 = xpc_int64_create(1);
        if (!v11)
        {
          v11 = xpc_null_create();
        }

        xpc_dictionary_set_value(*(v62 + 5), "kWCMCellularThresholdReached_EventType", v11);
        v12 = xpc_null_create();
        xpc_release(v11);
        xpc_release(v12);
        ctu::cf::dict_adapter::dict_adapter(v60, v69);
        v13 = *MEMORY[0x29EDC8AD0];
        v56[0] = MEMORY[0x29EDCA5F8];
        v56[1] = 0x40000000;
        v57 = ___ZN4coex6Module5State22sendFailCondition_syncENS_5SubIdE_block_invoke;
        v58 = &unk_29EE63A40;
        v59 = buffer;
        v14 = (*v60[0])(v60, v13);
        v15 = v14;
        if (v14)
        {
          v16 = CFGetTypeID(v14);
          if (v16 == CFNumberGetTypeID())
          {
            LODWORD(cf) = -1431655766;
            v18 = ctu::cf::assign(&cf, v15, v17);
            CFRelease(v15);
            if (v18)
            {
              v57(v56, cf);
            }
          }

          else
          {
            CFRelease(v15);
          }
        }

        MEMORY[0x29C26B180](v60);
        v19 = *(a1 + 56);
        if (v19)
        {
          v20 = *(v62 + 5);
          v55 = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            v20 = xpc_null_create();
            v55 = v20;
          }

          coex::XpcClient::sendMessage(v19, 303, &v55, a2);
          xpc_release(v20);
          v55 = 0;
        }

        _Block_object_dispose(buffer, 8);
        xpc_release(v66);
        goto LABEL_25;
      }

      v10 = xpc_null_create();
LABEL_11:
      v66 = v10;
      goto LABEL_12;
    }
  }

LABEL_25:
  v21 = ctu::cf::map_adapter::copyCFDataRef(v69, *MEMORY[0x29EDC8848]);
  v22 = v21;
  cf = v21;
  if (v21)
  {
    v53[2] = v21;
    CFRetain(v21);
    *buffer = 0;
    v72.length = CFDataGetLength(v22);
    v72.location = 0;
    CFDataGetBytes(v22, v72, buffer);
    v23 = buffer[0];
    CFRelease(v22);
    if ((v23 & 2) != 0)
    {
      *buffer = 0;
      v62 = buffer;
      v63 = 0x3002000000;
      v64 = __Block_byref_object_copy__277;
      v65 = __Block_byref_object_dispose__278;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      v24 = xpc_dictionary_create(0, 0, 0);
      v25 = v24;
      if (v24)
      {
        v66 = v24;
      }

      else
      {
        v25 = xpc_null_create();
        v66 = v25;
        if (!v25)
        {
          v26 = xpc_null_create();
          v25 = 0;
          goto LABEL_34;
        }
      }

      if (MEMORY[0x29C26CE60](v25) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v25);
LABEL_35:
        xpc_release(v25);
        v27 = xpc_int64_create(0);
        if (!v27)
        {
          v27 = xpc_null_create();
        }

        xpc_dictionary_set_value(*(v62 + 5), "kWCMCellularThresholdReached_EventType", v27);
        v28 = xpc_null_create();
        xpc_release(v27);
        xpc_release(v28);
        ctu::cf::dict_adapter::dict_adapter(v53, v69);
        v29 = *MEMORY[0x29EDC88F8];
        v49[0] = MEMORY[0x29EDCA5F8];
        v49[1] = 0x40000000;
        v50 = ___ZN4coex6Module5State22sendFailCondition_syncENS_5SubIdE_block_invoke_2;
        v51 = &unk_29EE63A68;
        v52 = buffer;
        v30 = (*v53[0])(v53, v29);
        v31 = v30;
        if (v30)
        {
          v32 = CFGetTypeID(v30);
          if (v32 == CFNumberGetTypeID())
          {
            LODWORD(v47) = -1431655766;
            v34 = ctu::cf::assign(&v47, v31, v33);
            CFRelease(v31);
            if (v34)
            {
              v50(v49, v47);
            }
          }

          else
          {
            CFRelease(v31);
          }
        }

        MEMORY[0x29C26B180](v53);
        v35 = *(a1 + 56);
        if (v35)
        {
          v36 = *(v62 + 5);
          v48 = v36;
          if (v36)
          {
            xpc_retain(v36);
          }

          else
          {
            v36 = xpc_null_create();
            v48 = v36;
          }

          coex::XpcClient::sendMessage(v35, 303, &v48, a2);
          xpc_release(v36);
          v48 = 0;
        }

        _Block_object_dispose(buffer, 8);
        xpc_release(v66);
        goto LABEL_48;
      }

      v26 = xpc_null_create();
LABEL_34:
      v66 = v26;
      goto LABEL_35;
    }
  }

LABEL_48:
  v37 = ctu::cf::map_adapter::copyCFDataRef(v69, *MEMORY[0x29EDC8918]);
  v38 = v37;
  v47 = v37;
  if (v37)
  {
    v46[1] = v37;
    CFRetain(v37);
    *buffer = 0;
    v73.length = CFDataGetLength(v38);
    v73.location = 0;
    CFDataGetBytes(v38, v73, buffer);
    v39 = *buffer;
    CFRelease(v38);
    if (!v39)
    {
      goto LABEL_64;
    }

    v40 = xpc_dictionary_create(0, 0, 0);
    if (v40 || (v40 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v40) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v40);
        v41 = v40;
      }

      else
      {
        v41 = xpc_null_create();
      }
    }

    else
    {
      v41 = xpc_null_create();
      v40 = 0;
    }

    xpc_release(v40);
    v42 = xpc_uint64_create(v39);
    if (!v42)
    {
      v42 = xpc_null_create();
    }

    xpc_dictionary_set_value(v41, "kWCMCellularTxPower_Response", v42);
    v43 = xpc_null_create();
    xpc_release(v42);
    xpc_release(v43);
    v44 = *(a1 + 56);
    if (v44)
    {
      v46[0] = v41;
      if (v41)
      {
        xpc_retain(v41);
        v45 = v46[0];
      }

      else
      {
        v45 = xpc_null_create();
        v46[0] = v45;
      }

      coex::XpcClient::sendMessage(v44, 301, v46, a2);
      xpc_release(v45);
      v46[0] = 0;
    }

    xpc_release(v41);
    v38 = v47;
    if (v47)
    {
LABEL_64:
      CFRelease(v38);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  MEMORY[0x29C26B180](v69);
  if (v70)
  {
    CFRelease(v70);
  }
}

void sub_2970035B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 136), 8);
  xpc_release(*(v13 - 96));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v13 - 80));
  MEMORY[0x29C26B180](v13 - 72);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v13 - 56));
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE56c27_ZTSN3ctu2cf12dict_adapterE(uint64_t a1)
{
  MEMORY[0x29C26B180](a1 + 56);
  v2 = *(a1 + 48);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void ___ZN4coex9XpcClient11sendMessageE19WCMReceiveMessageIdN3xpc6objectENS_5SubIdE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
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
  v6 = xpc_uint64_create(*(a1 + 48));
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v7 = xdict;
  xpc_dictionary_set_value(xdict, "kMessageId", v6);
  v8 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v8);
  v9 = *(a1 + 40);
  if (v9)
  {
    xpc_retain(*(a1 + 40));
  }

  else
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kMessageArgs", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_uint64_create(*(a1 + 52));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kSubId", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  xpc_connection_send_message(*(v2 + 40), xdict);
  v13 = *(v2 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(__p, &xdict);
    if (v17 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 136315138;
    v20 = v15;
    _os_log_debug_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEBUG, "#D Sending Message: \n\t%s\n", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = xdict;
  }

  xpc_release(v7);
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297003A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17ABMServerInternal20handleNewClient_syncEN3xpc10connectionE_block_invoke(uint64_t a1, void **a2, void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v8 = v5;
  if (!v5)
  {
    v8 = xpc_null_create();
    v6 = *a3;
    object = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v5);
  v6 = *a3;
  object = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v6);
LABEL_6:
  (*(*v4 + 40))(v4, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_297003BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void ABMServerInternal::handleMessage_sync(uint64_t a1, xpc_object_t *a2, xpc::object *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v36 = 0;
    v37 = 0;
    v7 = (a1 + 88);
    v8 = *(a1 + 88);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = xpc_null_create();
    v36 = 0;
    v37 = 0;
    v7 = (a1 + 88);
    v8 = *(a1 + 88);
    if (!v8)
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  v9 = v7;
  do
  {
    v10 = v8[4];
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 == v7 || v6 < v9[4])
  {
    goto LABEL_12;
  }

  v13 = v9[5];
  v20 = v9[6];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v13;
  v37 = v20;
LABEL_13:
  xpc_release(v6);
  v14 = *(a1 + 72);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *v13, *(v13 + 1));
    }

    else
    {
      v28 = *v13;
      v35.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v35.__r_.__value_.__l.__data_ = v28;
    }

    v29 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    v30 = v35.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v26 = &v35;
    if (v29 < 0)
    {
      v26 = v30;
    }

    if (v34 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }
  }

  else
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    xpc::object::to_string(&v35, a2);
    v24 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    v25 = v35.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v26 = &v35;
    if (v24 < 0)
    {
      v26 = v25;
    }

    if (v34 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }
  }

  *buf = 136315394;
  v39 = v26;
  v40 = 2080;
  v41 = v27;
  _os_log_debug_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEBUG, "#D Message from %s:\n%s", buf, 0x16u);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_18:
  v16 = *a3;
  v35.__r_.__value_.__r.__words[0] = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v16 = xpc_null_create();
    v35.__r_.__value_.__r.__words[0] = v16;
  }

  v17 = MEMORY[0x29C26CE60](v16);
  v18 = MEMORY[0x29EDCAA00];
  if (v17 == MEMORY[0x29EDCAA00])
  {
    v19 = *a2;
    v32 = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v19 = xpc_null_create();
      v32 = v19;
    }

    ABMServerInternal::handleInternalMessage_sync(a1, &v32, &v35.__r_.__value_.__l.__data_);
    xpc_release(v19);
    v32 = 0;
    v16 = v35.__r_.__value_.__r.__words[0];
  }

  if (MEMORY[0x29C26CE60](v16) == v18)
  {
    v21 = *a2;
    v31 = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      v21 = xpc_null_create();
      v31 = v21;
    }

    ABMServerInternal::handlePublicMessage_sync(a1, &v31, &v35.__r_.__value_.__l.__data_);
    xpc_release(v21);
    v31 = 0;
  }

  xpc_release(v35.__r_.__value_.__l.__data_);
  v22 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_297003FC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(v15);
  xpc_release(object);
  JUMPOUT(0x29700403CLL);
}

void sub_297003FE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  xpc_release(v15);
  xpc_release(a15);
  JUMPOUT(0x29700403CLL);
}

void sub_29700404C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ABMServerInternal::handleInternalMessage_sync(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v71 = *MEMORY[0x29EDCA608];
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*a3, kKeyCommand[0]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = strlen(kCommandCheckIn[0]);
  v8 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v7 == __s1[1])
    {
      if (v7 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], kCommandCheckIn[0], v7))
      {
LABEL_34:
        memset(object, 170, sizeof(object));
        v14 = xpc_dictionary_get_value(*a3, kKeyClientName[0]);
        v67 = v14;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v67 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        xpc::dyn_cast_or_default();
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        xpc_release(v67);
        memset(buf, 170, 16);
        v18 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          *buf = 0;
          *&buf[8] = 0;
          v19 = (a1 + 88);
          v20 = *(a1 + 88);
          if (!v20)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v18 = xpc_null_create();
          *buf = 0;
          *&buf[8] = 0;
          v19 = (a1 + 88);
          v20 = *(a1 + 88);
          if (!v20)
          {
            goto LABEL_54;
          }
        }

        v21 = v19;
        do
        {
          v22 = v20[4];
          v23 = v22 >= v18;
          v24 = v22 < v18;
          if (v23)
          {
            v21 = v20;
          }

          v20 = v20[v24];
        }

        while (v20);
        if (v21 != v19 && v18 >= v21[4])
        {
          v26 = v21[5];
          v25 = v21[6];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *buf = v26;
          *&buf[8] = v25;
          goto LABEL_55;
        }

LABEL_54:
        v25 = 0;
        v26 = 0;
LABEL_55:
        xpc_release(v18);
        if (v26)
        {
          if (v26 != object)
          {
            if (*(v26 + 23) < 0)
            {
              if (SHIBYTE(object[2]) >= 0)
              {
                v46 = object;
              }

              else
              {
                v46 = object[0];
              }

              if (SHIBYTE(object[2]) >= 0)
              {
                v47 = HIBYTE(object[2]);
              }

              else
              {
                v47 = object[1];
              }

              std::string::__assign_no_alias<false>(v26, v46, v47);
            }

            else if ((HIBYTE(object[2]) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v26, object[0], object[1]);
            }

            else
            {
              v27 = *object;
              *(v26 + 16) = object[2];
              *v26 = v27;
            }
          }

          *(v26 + 24) = 1;
        }

        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        if (SHIBYTE(object[2]) < 0)
        {
          operator delete(object[0]);
        }

        goto LABEL_117;
      }
    }
  }

  else if (v7 == SHIBYTE(__s1[2]) && !memcmp(__s1, kCommandCheckIn[0], v7))
  {
    goto LABEL_34;
  }

  v9 = strlen(kCommandCheckOut);
  if ((v8 & 0x80000000) != 0)
  {
    if (v9 == __s1[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], kCommandCheckOut, v9))
      {
        goto LABEL_36;
      }
    }

LABEL_18:
    v10 = strlen(kCommandEventsOn[0]);
    if ((v8 & 0x80000000) != 0)
    {
      if (v10 == __s1[1])
      {
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], kCommandEventsOn[0], v10))
        {
LABEL_38:
          v16 = xpc_dictionary_get_value(*a3, kKeyEventsList[0]);
          object[0] = v16;
          if (v16)
          {
            xpc_retain(v16);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          xpc::bridge(buf, object, v17);
          v37 = *buf;
          if (*buf)
          {
            v38 = CFGetTypeID(*buf);
            if (v38 == CFArrayGetTypeID())
            {
              CFRetain(v37);
              v39 = *buf;
              if (!*buf)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v37 = 0;
              v39 = *buf;
              if (!*buf)
              {
                goto LABEL_82;
              }
            }

            CFRelease(v39);
          }

LABEL_82:
          xpc_release(object[0]);
          if (v37)
          {
            v40 = *a2;
            v66 = v40;
            if (v40)
            {
              xpc_retain(v40);
            }

            else
            {
              v66 = xpc_null_create();
            }

            v65 = v37;
            CFRetain(v37);
            ABMServerInternal::registerNotification(a1, &v66, 1, &v65);
            CFRelease(v37);
            xpc_release(v66);
            v66 = 0;
            CFRelease(v37);
LABEL_117:
            v45 = 0;
            goto LABEL_118;
          }

          goto LABEL_98;
        }
      }
    }

    else if (v10 == v8 && !memcmp(__s1, kCommandEventsOn[0], v10))
    {
      goto LABEL_38;
    }

    v11 = strlen(kCommandEventsOff[0]);
    if ((v8 & 0x80000000) != 0)
    {
      if (v11 != __s1[1])
      {
        goto LABEL_143;
      }

      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], kCommandEventsOff[0], v11))
      {
        goto LABEL_143;
      }
    }

    else if (v11 != v8 || memcmp(__s1, kCommandEventsOff[0], v11))
    {
      goto LABEL_143;
    }

    v12 = xpc_dictionary_get_value(*a3, kKeyEventsList[0]);
    object[0] = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::bridge(buf, object, v13);
    v41 = *buf;
    if (*buf)
    {
      v42 = CFGetTypeID(*buf);
      if (v42 == CFArrayGetTypeID())
      {
        CFRetain(v41);
        v43 = *buf;
        if (!*buf)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v41 = 0;
        v43 = *buf;
        if (!*buf)
        {
          goto LABEL_95;
        }
      }

      CFRelease(v43);
    }

LABEL_95:
    xpc_release(object[0]);
    if (v41)
    {
      v44 = *a2;
      v64 = v44;
      if (v44)
      {
        xpc_retain(v44);
      }

      else
      {
        v64 = xpc_null_create();
      }

      v63 = v41;
      CFRetain(v41);
      ABMServerInternal::registerNotification(a1, &v64, 0, &v63);
      CFRelease(v41);
      xpc_release(v64);
      v64 = 0;
      CFRelease(v41);
      goto LABEL_117;
    }

LABEL_98:
    v45 = -534716414;
LABEL_118:
    reply = xpc_dictionary_create_reply(*a3);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](reply) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(reply);
        v49 = reply;
      }

      else
      {
        v49 = xpc_null_create();
      }
    }

    else
    {
      v49 = xpc_null_create();
      reply = 0;
    }

    xpc_release(reply);
    v50 = xpc_int64_create(v45);
    if (!v50)
    {
      v50 = xpc_null_create();
    }

    xpc_dictionary_set_value(v49, kKeyCommandResult[0], v50);
    v51 = xpc_null_create();
    xpc_release(v50);
    xpc_release(v51);
    v52 = *(a1 + 72);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v58 = __s1;
      if (SHIBYTE(__s1[2]) < 0)
      {
        v58 = __s1[0];
      }

      *buf = 136315394;
      *&buf[4] = v58;
      *&buf[12] = 1024;
      *&buf[14] = v45;
      _os_log_debug_impl(&dword_296FF7000, v52, OS_LOG_TYPE_DEBUG, "#D Replying to client's command: %s, with return code: 0x%x", buf, 0x12u);
    }

    xpc_connection_send_message(*a2, v49);
    v53 = xpc_null_create();
    v54 = xpc_null_create();
    v55 = *a3;
    *a3 = v53;
    xpc_release(v55);
    xpc_release(v54);
    v56 = strlen(kCommandEventsOn[0]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v56 != __s1[1])
      {
        goto LABEL_142;
      }

      if (v56 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], kCommandEventsOn[0], v56))
      {
        goto LABEL_142;
      }
    }

    else if (v56 != SHIBYTE(__s1[2]) || memcmp(__s1, kCommandEventsOn[0], v56))
    {
LABEL_142:
      xpc_release(v49);
      goto LABEL_143;
    }

    if (*(a1 + 128) == 1)
    {
      v61[0] = MEMORY[0x29EDCA5F8];
      v61[1] = 1174405120;
      v61[2] = ___ZN17ABMServerInternal26handleInternalMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke;
      v61[3] = &__block_descriptor_tmp_24_0;
      v57 = *a2;
      v61[4] = a1;
      v62 = v57;
      if (v57)
      {
        xpc_retain(v57);
      }

      else
      {
        v62 = xpc_null_create();
      }

      ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v61);
      xpc_release(v62);
      v62 = 0;
    }

    goto LABEL_142;
  }

  if (v9 != v8 || memcmp(__s1, kCommandCheckOut, v9))
  {
    goto LABEL_18;
  }

LABEL_36:
  memset(object, 170, sizeof(object));
  v15 = xpc_dictionary_get_value(*a3, kKeyClientName[0]);
  v67 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v67 = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v67);
  v28 = *(a1 + 88);
  if (v28)
  {
    v29 = *a2;
    v30 = a1 + 88;
    do
    {
      v31 = *(v28 + 32);
      v23 = v31 >= v29;
      v32 = v31 < v29;
      if (v23)
      {
        v30 = v28;
      }

      v28 = *(v28 + 8 * v32);
    }

    while (v28);
    if (v30 != a1 + 88 && v29 >= *(v30 + 32))
    {
      std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase((a1 + 80), v30);
    }
  }

  v33 = xpc_null_create();
  v34 = xpc_null_create();
  v35 = *a3;
  *a3 = v33;
  xpc_release(v35);
  xpc_release(v34);
  v36 = *(a1 + 72);
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_74;
  }

  v60 = object;
  if (SHIBYTE(object[2]) < 0)
  {
    v60 = object[0];
  }

  *buf = 136315138;
  *&buf[4] = v60;
  _os_log_debug_impl(&dword_296FF7000, v36, OS_LOG_TYPE_DEBUG, "#D Client '%s' checked out", buf, 0xCu);
  if (SHIBYTE(object[2]) < 0)
  {
LABEL_74:
    operator delete(object[0]);
  }

LABEL_143:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  v59 = *MEMORY[0x29EDCA608];
}

void sub_297004A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::handlePublicMessage_sync(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  v7 = MEMORY[0x29EDCAA00];
  if (reply || (reply = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](reply) == v7)
    {
      xpc_retain(reply);
      v8 = reply;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    reply = 0;
  }

  xpc_release(reply);
  if (*(a1 + 128) == 5)
  {
    if (MEMORY[0x29C26CE60](v8) == v7)
    {
      v9 = xpc_int64_create(-534716415);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, kKeyCommandResult[0], v9);
      v10 = xpc_null_create();
      xpc_release(v9);
      xpc_release(v10);
      v11 = xpc_dictionary_create(0, 0, 0);
      if (v11 || (v11 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26CE60](v11) == v7)
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
      v18 = xpc_string_create("Server not available");
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE648], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      if (v12)
      {
        xpc_retain(v12);
        v20 = v12;
      }

      else
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, kKeyCommandData[0], v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
      xpc_connection_send_message(*a2, v8);
      xpc_release(v12);
    }

    goto LABEL_38;
  }

  memset(__p, 170, 24);
  value = xpc_dictionary_get_value(*a3, kKeyCommand[0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(&__p[3], 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object);
  v14 = *(a1 + 224);
  v15 = *a3;
  v29 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v29 = xpc_null_create();
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN17ABMServerInternal24handlePublicMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke;
  v25[3] = &__block_descriptor_tmp_27_1;
  v25[4] = a1;
  v26 = v8;
  if (!v8)
  {
    v26 = xpc_null_create();
    v16 = *a2;
    v27 = v16;
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_25:
    v27 = xpc_null_create();
    goto LABEL_26;
  }

  xpc_retain(v8);
  v16 = *a2;
  v27 = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_23:
  xpc_retain(v16);
LABEL_26:
  v17 = _Block_copy(v25);
  v28 = v17;
  ServiceManager::runCommand(v14, __p, &v29, &v28);
  if (v17)
  {
    _Block_release(v17);
  }

  xpc_release(v29);
  v29 = 0;
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_38:
  v22 = xpc_null_create();
  v23 = xpc_null_create();
  v24 = *a3;
  *a3 = v22;
  xpc_release(v24);
  xpc_release(v23);
  xpc_release(v8);
}

void sub_297004FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, xpc_object_t a17, xpc_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(v25);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    xpc_retain(v4);
    v5 = *(a2 + 48);
    *(a1 + 48) = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  else
  {
    *(a1 + 40) = xpc_null_create();
    v5 = *(a2 + 48);
    *(a1 + 48) = v5;
    if (v5)
    {
      return xpc_retain(v5);
    }
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void ServiceManager::runCommand(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v6 = *(a1 + 112);
  v7 = *a3;
  object = v7;
  if (!v7)
  {
    object = xpc_null_create();
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(v7);
  v8 = *a4;
  if (*a4)
  {
LABEL_5:
    v8 = _Block_copy(v8);
  }

LABEL_6:
  aBlock = v8;
  ServiceCtrl::handleCommand(v6, a2, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
}

void sub_29700522C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, xpc_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void ServiceCtrl::handleCommand(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v9 = a1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = *a3;
    object = v7;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    object = xpc_null_create();
    v8 = *a4;
    if (!*a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  v7 = *a3;
  object = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  xpc_retain(v7);
  v8 = *a4;
  if (*a4)
  {
LABEL_7:
    v8 = _Block_copy(v8);
  }

LABEL_8:
  aBlock = v8;
  ctu::SharedSynchronizable<ServiceCtrl>::execute_wrapped<ServiceCtrl::handleCommand(std::string const&,xpc::dict,dispatch::block<void({block_pointer})(int,xpc::dict)>)::{lambda(void)#1}>((a1 + 8), &v9);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void *__copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

xpc_object_t __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void *a2, const void **a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_31;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  v11 = v7[13];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x29C26CD90](*a2);
    memset(__dst, 170, sizeof(__dst));
    v13 = strlen(v12);
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
      __dst[1] = v14;
      __dst[2] = (v16 | 0x8000000000000000);
      __dst[0] = v15;
    }

    else
    {
      HIBYTE(__dst[2]) = v13;
      v15 = __dst;
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    memcpy(v15, v12, v14);
LABEL_17:
    *(v14 + v15) = 0;
    free(v12);
    v17 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v17 = __dst[0];
    }

    *buf = 136315138;
    v32 = v17;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Received set audio state command with dict: %s", buf, 0xCu);
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  v18 = *a2;
  if (v18)
  {
    xpc_retain(v18);
    v19 = *a3;
    if (*a3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = xpc_null_create();
    v19 = *a3;
    if (*a3)
    {
LABEL_23:
      v20 = _Block_copy(v19);
      v21 = v7[10];
      if (!v21)
      {
LABEL_32:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_27;
    }
  }

  v20 = 0;
  v21 = v7[10];
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_27:
  v22 = v7[9];
  v23 = std::__shared_weak_count::lock(v21);
  if (!v23)
  {
    goto LABEL_32;
  }

  v24 = v23;
  v25 = operator new(0x18uLL);
  *v25 = v7;
  v25[1] = v18;
  v26 = xpc_null_create();
  v25[2] = v20;
  v27 = v7[11];
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  v28 = operator new(0x18uLL);
  *v28 = v25;
  v28[1] = v22;
  v28[2] = v24;
  dispatch_async_f(v27, v28, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  xpc_release(v26);
LABEL_31:
  v29 = *MEMORY[0x29EDCA608];
}

void sub_297005700(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250884;
  if (MEMORY[0x29C26CE60]((*a1)[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 144);
    if (v5)
    {
      v6 = v2[1];
      object = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object = xpc_null_create();
      }

      AudioManager::setAudioState(v5, &object);
      xpc_release(object);
      v4 = 0;
      object = 0;
    }

    else
    {
      v7 = *(v3 + 104);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Audio Manager is not created yet", buf, 2u);
      }
    }
  }

  else
  {
    v4 = 3760250880;
  }

  v8 = v2[2];
  *buf = xpc_null_create();
  (*(v8 + 16))(v8, v4, buf);
  xpc_release(*buf);
  v9 = v2[2];
  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_2970058BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void boost::detail::function::void_function_obj_invoker2<ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::invoke(uint64_t a1, void *a2, int a3)
{
  v4 = a2 + 1;
  v5 = a2[1];
  v33 = *a2;
  v34 = v5;
  if (a2[2])
  {
    v5[2] = &v34;
    *a2 = v4;
    *v4 = 0;
    a2[2] = 0;
    v7 = *a1;
    v6 = *(a1 + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v33 = &v34;
  v7 = *a1;
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = _Block_copy(v6);
  v9 = v8;
  if (!v8)
  {
LABEL_12:
    v20 = 1;
LABEL_13:
    v38 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>(dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>)::stored_vtable;
    *&v39 = 0;
    goto LABEL_23;
  }

  v10 = _Block_copy(v8);
  v11 = v10;
  v38 = 0;
  if (!v10)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v12 = _Block_copy(v10);
  v13 = v12;
  if (v12)
  {
    v14 = _Block_copy(v12);
    v15 = v14;
    if (v14)
    {
      v16 = _Block_copy(v14);
      v17 = v16;
      if (v16)
      {
        v18 = _Block_copy(v16);
        v19 = v18;
        if (v18)
        {
          *&v39 = _Block_copy(v18);
          _Block_release(v19);
        }

        else
        {
          *&v39 = 0;
        }

        _Block_release(v17);
      }

      else
      {
        *&v39 = 0;
      }

      _Block_release(v15);
    }

    else
    {
      *&v39 = 0;
    }

    v38 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>(dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>)::stored_vtable;
    _Block_release(v13);
  }

  else
  {
    v38 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>(dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>)::stored_vtable;
    *&v39 = 0;
  }

  _Block_release(v11);
  v20 = 0;
LABEL_23:
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v21 = v33;
  if (v33 != &v34)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(&v36, v37, v21[4], v21 + 4);
      v28 = v21[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v21[2];
          v30 = *v29 == v21;
          v21 = v29;
        }

        while (!v30);
      }

      v21 = v29;
    }

    while (v29 != &v34);
  }

  v22 = operator new(0x18uLL);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = (v22 + 1);
  v23 = v36;
  if (v36 != v37)
  {
    do
    {
      std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(v22, v22 + 1, v23[4], v23 + 4);
      v31 = v23[1];
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
          v32 = v23[2];
          v30 = *v32 == v23;
          v23 = v32;
        }

        while (!v30);
      }

      v23 = v32;
    }

    while (v32 != v37);
  }

  v24 = operator new(4uLL);
  *v24 = a3;
  v25 = operator new(0x20uLL);
  v26 = v25;
  *v25 = 0;
  v27 = v38;
  if (v38)
  {
    *v25 = v38;
    if (v27)
    {
      *(v25 + 8) = v39;
      *(v25 + 3) = v40;
    }

    else
    {
      (*v27)(&v39, v25 + 8, 0);
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvNSt3__13mapIPKcNS3_4listINS3_4pairIyjEENS3_9allocatorIS9_EEEENS3_4lessIS6_EENSA_INS8_IKS6_SC_EEEEEEN4coex5SubIdEEEESI_SK__block_invoke;
  block[3] = &__block_descriptor_tmp_396;
  block[4] = v26;
  block[5] = v22;
  block[6] = v24;
  dispatch_async(v7, block);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v37[0]);
  if (v38)
  {
    if ((v38 & 1) == 0 && *v38)
    {
      (*v38)(&v39, &v39, 2);
    }

    v38 = 0;
  }

  if ((v20 & 1) == 0)
  {
    _Block_release(v9);
  }

  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(v34);
}

void sub_297005CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void (**a16)(void, void, void))
{
  operator delete(v17);
  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a14);
  boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>::~function(&a16);
  if ((v18 & 1) == 0)
  {
    _Block_release(v16);
  }

  std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::destroy(a11);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::__map_value_compare<char const*,std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>>>::__emplace_hint_unique_key_args<char const*,std::pair<char const* const,std::list<std::pair<unsigned long long,unsigned int>>> const&>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = result;
  v7 = (result + 1);
  if (result + 1 == a2 || (v8 = a2[4], v8 > a3))
  {
    v9 = *a2;
    if (*result == a2)
    {
      v11 = a2;
LABEL_16:
      if (v9)
      {
        v17 = v11;
      }

      else
      {
        v17 = a2;
      }

      if (v9)
      {
        v13 = (v11 + 1);
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

      v5 = v17;
      goto LABEL_36;
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v15 = a2;
      do
      {
        v11 = v15[2];
        v16 = *v11 == v15;
        v15 = v11;
      }

      while (v16);
    }

    if (v11[4] < a3)
    {
      goto LABEL_16;
    }

    v18 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
LABEL_36:
      v22 = operator new(0x40uLL);
      v23 = v22;
      v24 = v22 + 5;
      v25 = a4 + 1;
      v22[4] = *a4;
      v22[5] = (v22 + 5);
      v22[6] = (v22 + 5);
      v22[7] = 0;
      v26 = a4[2];
      if (v26 != v25)
      {
        v27 = 1;
        v28 = v22 + 5;
        do
        {
          v29 = operator new(0x20uLL);
          v29[1] = *(v26 + 16);
          *v29 = v28;
          *(v29 + 1) = v24;
          v28[1] = v29;
          v23[5] = v29;
          v23[7] = v27;
          v26 = *(v26 + 8);
          ++v27;
          v28 = v29;
        }

        while (v26 != v25);
      }

      *v23 = 0;
      v23[1] = 0;
      v23[2] = v5;
      *v13 = v23;
      v30 = **v6;
      if (v30)
      {
        *v6 = v30;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v6[1], v23);
      ++v6[2];
      return result;
    }

    while (1)
    {
      while (1)
      {
        v5 = v18;
        v19 = v18[4];
        if (v19 <= a3)
        {
          break;
        }

        v18 = *v18;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v19 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (v8 >= a3)
    {
      return result;
    }

    v13 = (a2 + 1);
    v12 = a2[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
        v5 = v13;
        v14 = v13;
      }

      while (v12);
    }

    else
    {
      v14 = a2;
      do
      {
        v20 = v14;
        v14 = v14[2];
      }

      while (*v14 != v20);
    }

    if (v14 == v7)
    {
      goto LABEL_36;
    }

    if (v14[4] > a3)
    {
      goto LABEL_36;
    }

    v21 = *v7;
    v13 = (result + 1);
    v5 = (result + 1);
    if (!*v7)
    {
      goto LABEL_36;
    }

    while (1)
    {
      while (1)
      {
        v5 = v21;
        v31 = v21[4];
        if (v31 <= a3)
        {
          break;
        }

        v21 = *v21;
        v13 = v5;
        if (!*v5)
        {
          goto LABEL_36;
        }
      }

      if (v31 >= a3)
      {
        break;
      }

      v21 = v21[1];
      if (!v21)
      {
LABEL_30:
        v13 = v5 + 1;
        goto LABEL_36;
      }
    }
  }

  return result;
}

void sub_297005F5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(v2);
  std::unique_ptr<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void coex::Module::State::sendWWANState_sync(uint64_t a1, uint64_t a2)
{
  v173 = 0;
  v174 = &v173;
  v175 = 0x3002000000;
  v176 = __Block_byref_object_copy__277;
  v177 = __Block_byref_object_dispose__278;
  v178 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v178 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v178 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v178 = v6;
LABEL_9:
  xpc_release(v5);
  v172 = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(a1, coex::kKeyWWANState, a2, 0, &v172);
  if (v172)
  {
    v170[0] = 0xAAAAAAAAAAAAAAAALL;
    v170[1] = 0xAAAAAAAAAAAAAAAALL;
    v7 = ctu::cf::dict_adapter::dict_adapter(v170, v172);
    v169 = 0;
    v8 = ctu::cf::map_adapter::copyCFDictionaryRef(v7, *MEMORY[0x29EDC87E8]);
    v169 = v8;
    if (v8)
    {
      v167 = 0xAAAAAAAAAAAAAAAALL;
      v168 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v167, v8);
      v9 = ctu::cf::dict_adapter::dict_adapter(v166, &v167);
      v10 = *MEMORY[0x29EDC87E0];
      v162[0] = MEMORY[0x29EDCA5F8];
      v162[1] = 0x40000000;
      v163 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke;
      v164 = &unk_29EE63900;
      v165 = &v173;
      v11 = (*v166[0])(v9, v10);
      v12 = v11;
      if (v11)
      {
        v13 = CFGetTypeID(v11);
        TypeID = CFDictionaryGetTypeID();
        CFRelease(v12);
        if (v13 == TypeID)
        {
          v163(v162, v12);
        }
      }

      MEMORY[0x29C26B180](v166);
      ctu::cf::dict_adapter::dict_adapter(v161, &v167);
      v15 = *MEMORY[0x29EDC87C8];
      v157[0] = MEMORY[0x29EDCA5F8];
      v157[1] = 0x40000000;
      v158 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_2;
      v159 = &unk_29EE63928;
      v160 = &v173;
      v16 = (*v161[0])(v161, v15);
      v17 = v16;
      if (v16)
      {
        v18 = CFGetTypeID(v16);
        v19 = CFDictionaryGetTypeID();
        CFRelease(v17);
        if (v18 == v19)
        {
          v158(v157, v17);
        }
      }

      MEMORY[0x29C26B180](v161);
      MEMORY[0x29C26B180](&v167);
    }

    v20 = ctu::cf::map_adapter::copyCFDictionaryRef(v170, *MEMORY[0x29EDC87D0]);
    v169 = v20;
    if (v8)
    {
      CFRelease(v8);
    }

    if (v20)
    {
      v167 = 0xAAAAAAAAAAAAAAAALL;
      v168 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v167, v20);
      ctu::cf::dict_adapter::dict_adapter(v156, &v167);
      v21 = *MEMORY[0x29EDC86D0];
      v152[0] = MEMORY[0x29EDCA5F8];
      v152[1] = 0x40000000;
      v153 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_3;
      v154 = &unk_29EE63950;
      v155 = &v173;
      v22 = (*v156[0])(v156, v21);
      v23 = v22;
      if (v22)
      {
        v24 = CFGetTypeID(v22);
        if (v24 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v26 = ctu::cf::assign(&v131, v23, v25);
          CFRelease(v23);
          if (v26)
          {
            v153(v152, v131);
          }
        }

        else
        {
          CFRelease(v23);
        }
      }

      MEMORY[0x29C26B180](v156);
      ctu::cf::dict_adapter::dict_adapter(v151, &v167);
      v33 = *MEMORY[0x29EDC8690];
      v147[0] = MEMORY[0x29EDCA5F8];
      v147[1] = 0x40000000;
      v148 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_4;
      v149 = &unk_29EE63978;
      v150 = &v173;
      v34 = (*v151[0])(v151, v33);
      v35 = v34;
      if (v34)
      {
        v36 = CFGetTypeID(v34);
        if (v36 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v38 = ctu::cf::assign(&v131, v35, v37);
          CFRelease(v35);
          if (v38)
          {
            v148(v147, v131);
          }
        }

        else
        {
          CFRelease(v35);
        }
      }

      MEMORY[0x29C26B180](v151);
      ctu::cf::dict_adapter::dict_adapter(v146, &v167);
      v39 = *MEMORY[0x29EDC8770];
      v142[0] = MEMORY[0x29EDCA5F8];
      v142[1] = 0x40000000;
      v143 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_5;
      v144 = &unk_29EE639A0;
      v145 = &v173;
      v40 = (*v146[0])(v146, v39);
      v41 = v40;
      if (v40)
      {
        v42 = CFGetTypeID(v40);
        if (v42 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v44 = ctu::cf::assign(&v131, v41, v43);
          CFRelease(v41);
          if (v44)
          {
            v143(v142, v131);
          }
        }

        else
        {
          CFRelease(v41);
        }
      }

      MEMORY[0x29C26B180](v146);
      ctu::cf::dict_adapter::dict_adapter(v141, &v167);
      v45 = *MEMORY[0x29EDC8650];
      v137[0] = MEMORY[0x29EDCA5F8];
      v137[1] = 0x40000000;
      v138 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_6;
      v139 = &unk_29EE639C8;
      v140 = &v173;
      v46 = (*v141[0])(v141, v45);
      v47 = v46;
      if (v46)
      {
        v48 = CFGetTypeID(v46);
        if (v48 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v50 = ctu::cf::assign(&v131, v47, v49);
          CFRelease(v47);
          if (v50)
          {
            v138(v137, v131);
          }
        }

        else
        {
          CFRelease(v47);
        }
      }

      MEMORY[0x29C26B180](v141);
      ctu::cf::dict_adapter::dict_adapter(v136, &v167);
      v51 = *MEMORY[0x29EDC8640];
      v132[0] = MEMORY[0x29EDCA5F8];
      v132[1] = 0x40000000;
      v133 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_7;
      v134 = &unk_29EE639F0;
      v135 = &v173;
      v52 = (*v136[0])(v136, v51);
      v53 = v52;
      if (v52)
      {
        v54 = CFGetTypeID(v52);
        if (v54 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v56 = ctu::cf::assign(&v131, v53, v55);
          CFRelease(v53);
          if (v56)
          {
            v133(v132, v131);
          }
        }

        else
        {
          CFRelease(v53);
        }
      }

      MEMORY[0x29C26B180](v136);
      MEMORY[0x29C26B180](&v167);
    }

    v57 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88D0]);
    v58 = v57;
    v131 = v57;
    if (v57)
    {
      v130 = v57;
      CFRetain(v57);
      v59 = v174[5];
      v129 = v59;
      if (v59)
      {
        v60 = xpc_retain(v59);
      }

      else
      {
        v60 = xpc_null_create();
        v59 = v60;
        v129 = v60;
      }

      coex::Module::State::fetchBandInfoSet_sync(v60, &v130, "kWCMCellularNetworkConfiguration_LTEBandInformationSet", &v129);
      xpc_release(v59);
      v129 = 0;
      CFRelease(v58);
    }

    v61 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC89D8]);
    v62 = v61;
    v128[1] = v61;
    if (v61)
    {
      v128[0] = v61;
      CFRetain(v61);
      v63 = v174[5];
      v127 = v63;
      if (v63)
      {
        v64 = xpc_retain(v63);
      }

      else
      {
        v64 = xpc_null_create();
        v63 = v64;
        v127 = v64;
      }

      coex::Module::State::fetchBandInfoSet_sync(v64, v128, "kWCMCellularNetworkConfiguration_TDSCDMABandInformationSet", &v127);
      xpc_release(v63);
      v127 = 0;
      CFRelease(v62);
    }

    v65 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88B0]);
    v66 = v65;
    v126[1] = v65;
    if (v65)
    {
      v126[0] = v65;
      CFRetain(v65);
      v67 = v174[5];
      v125 = v67;
      if (v67)
      {
        v68 = xpc_retain(v67);
      }

      else
      {
        v68 = xpc_null_create();
        v67 = v68;
        v125 = v68;
      }

      coex::Module::State::fetchBandInfoSet_sync(v68, v126, "kWCMCellularNetworkConfiguration_GSMBandInformationSet", &v125);
      xpc_release(v67);
      v125 = 0;
      CFRelease(v66);
    }

    cf = v66;
    v69 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8910]);
    v70 = v69;
    v124[1] = v69;
    if (v69)
    {
      v124[0] = v69;
      CFRetain(v69);
      v71 = v174[5];
      v123 = v71;
      if (v71)
      {
        v72 = xpc_retain(v71);
      }

      else
      {
        v72 = xpc_null_create();
        v71 = v72;
        v123 = v72;
      }

      coex::Module::State::fetchBandInfoSet_sync(v72, v124, "kWCMCellularNetworkConfiguration_ONEXBandInformationSet", &v123);
      xpc_release(v71);
      v123 = 0;
      CFRelease(v70);
    }

    v73 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88C0]);
    v74 = v73;
    v122[1] = v73;
    if (v73)
    {
      v122[0] = v73;
      CFRetain(v73);
      v75 = v174[5];
      v121 = v75;
      if (v75)
      {
        v76 = xpc_retain(v75);
      }

      else
      {
        v76 = xpc_null_create();
        v75 = v76;
        v121 = v76;
      }

      coex::Module::State::fetchBandInfoSet_sync(v76, v122, "kWCMCellularNetworkConfiguration_HDRBandInformationSet", &v121);
      xpc_release(v75);
      v121 = 0;
      CFRelease(v74);
    }

    v105 = a1;
    v77 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8968]);
    v78 = v77;
    v120[1] = v77;
    if (v77)
    {
      v120[0] = v77;
      CFRetain(v77);
      v79 = v174[5];
      v119 = v79;
      if (v79)
      {
        v80 = xpc_retain(v79);
      }

      else
      {
        v80 = xpc_null_create();
        v79 = v80;
        v119 = v80;
      }

      coex::Module::State::fetchBandInfoSet_sync(v80, v120, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet", &v119);
      xpc_release(v79);
      v119 = 0;
      CFRelease(v78);
    }

    v102 = a2;
    v81 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88E0]);
    v82 = v81;
    v118[1] = v81;
    if (v81)
    {
      v118[0] = v81;
      CFRetain(v81);
      v83 = v174[5];
      v117 = v83;
      if (v83)
      {
        v84 = xpc_retain(v83);
      }

      else
      {
        v84 = xpc_null_create();
        v83 = v84;
        v117 = v84;
      }

      coex::Module::State::fetchBandInfoSet_sync(v84, v118, "kWCMCellularNetworkConfiguration_NGCBandInformationSet", &v117);
      xpc_release(v83);
      v117 = 0;
      CFRelease(v82);
    }

    v85 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8988]);
    v86 = v85;
    v116[1] = v85;
    if (v85)
    {
      v116[0] = v85;
      CFRetain(v85);
      v87 = v174[5];
      v115 = v87;
      if (v87)
      {
        v88 = xpc_retain(v87);
      }

      else
      {
        v88 = xpc_null_create();
        v87 = v88;
        v115 = v88;
      }

      coex::Module::State::fetchCarrierIdSet_sync(v88, v116, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet", &v115);
      xpc_release(v87);
      v115 = 0;
      CFRelease(v86);
    }

    v104 = v62;
    v89 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8990]);
    v90 = v89;
    v114[1] = v89;
    if (v89)
    {
      v114[0] = v89;
      CFRetain(v89);
      v91 = v174[5];
      v113 = v91;
      if (v91)
      {
        v92 = xpc_retain(v91);
      }

      else
      {
        v92 = xpc_null_create();
        v91 = v92;
        v113 = v92;
      }

      coex::Module::State::fetchCarrierIdSet_sync(v92, v114, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet", &v113);
      xpc_release(v91);
      v113 = 0;
      CFRelease(v90);
    }

    v103 = v58;
    v93 = *MEMORY[0x29EDC86F0];
    v94 = ctu::cf::map_adapter::copyCFDictionaryRef(v170, *MEMORY[0x29EDC86F0]);
    v169 = v94;
    if (v20)
    {
      CFRelease(v20);
    }

    if (v94)
    {
      v167 = 0xAAAAAAAAAAAAAAAALL;
      v168 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v167, v94);
      ctu::cf::dict_adapter::dict_adapter(v112, &v167);
      v108[0] = MEMORY[0x29EDCA5F8];
      v108[1] = 0x40000000;
      v109 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_8;
      v110 = &unk_29EE63A18;
      v111 = &v173;
      v95 = (*v112[0])(v112, v93);
      v96 = v95;
      if (v95)
      {
        v97 = CFGetTypeID(v95);
        if (v97 == CFNumberGetTypeID())
        {
          v179[0] = -1431655766;
          v99 = ctu::cf::assign(v179, v96, v98);
          CFRelease(v96);
          if (v99)
          {
            v109(v108, v179[0]);
          }
        }

        else
        {
          CFRelease(v96);
        }
      }

      MEMORY[0x29C26B180](v112);
      MEMORY[0x29C26B180](&v167);
    }

    v100 = *(v105 + 56);
    if (v100)
    {
      v101 = v174[5];
      v107 = v101;
      if (v101)
      {
        xpc_retain(v101);
      }

      else
      {
        v101 = xpc_null_create();
        v107 = v101;
      }

      coex::XpcClient::sendMessage(v100, 300, &v107, v102);
      xpc_release(v101);
      v107 = 0;
    }

    if (v90)
    {
      CFRelease(v90);
    }

    if (v86)
    {
      CFRelease(v86);
    }

    if (v82)
    {
      CFRelease(v82);
    }

    if (v78)
    {
      CFRelease(v78);
    }

    if (v74)
    {
      CFRelease(v74);
    }

    if (v70)
    {
      CFRelease(v70);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v104)
    {
      CFRelease(v104);
    }

    if (v103)
    {
      CFRelease(v103);
    }

    if (v94)
    {
      CFRelease(v94);
    }

    MEMORY[0x29C26B180](v170);
    v32 = v172;
    if (v172)
    {
LABEL_140:
      CFRelease(v32);
    }
  }

  else
  {
    v170[0] = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v28 = Mutable;
    if (Mutable)
    {
      v170[0] = Mutable;
    }

    v29 = *MEMORY[0x29EDB8F00];
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(Mutable, *MEMORY[0x29EDC8728], *MEMORY[0x29EDB8F00]);
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(v28, *MEMORY[0x29EDC8780], v29);
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(v28, *MEMORY[0x29EDC86B8], v29);
    v30 = *(a1 + 40);
    if (v30)
    {
      if (v28 && (v31 = CFGetTypeID(v28), v31 == CFDictionaryGetTypeID()))
      {
        v171 = v28;
        CFRetain(v28);
      }

      else
      {
        v171 = 0;
      }

      (*(*v30 + 40))(v30, &v171, a2);
      if (v171)
      {
        CFRelease(v171);
      }
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v32 = v172;
    if (v172)
    {
      goto LABEL_140;
    }
  }

  _Block_object_dispose(&v173, 8);
  xpc_release(v178);
}