void sub_297345D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, xpc_object_t a17, xpc_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(v25);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void ABMServerInternal::registerNotification(uint64_t a1, void **a2, char a3, const void **a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_28_2;
  v7 = *a2;
  v9[4] = a1;
  object = v7;
  if (!v7)
  {
    object = xpc_null_create();
    v12 = a3;
    v8 = *a4;
    cf = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  xpc_retain(v7);
  v12 = a3;
  v8 = *a4;
  cf = v8;
  if (v8)
  {
LABEL_5:
    CFRetain(v8);
  }

LABEL_6:
  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v9);
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
}

void ___ZN17ABMServerInternal26handleInternalMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  cf = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBE658], *MEMORY[0x29EDBE940], v3, v5);
  v6 = *(a1 + 40);
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  v7 = *MEMORY[0x29EDBED30];
  v8 = strlen(*MEMORY[0x29EDBED30]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v8 | 7) + 1;
    }

    v10 = operator new(v12);
    __dst[1] = v9;
    v18 = v12 | 0x8000000000000000;
    __dst[0] = v10;
LABEL_15:
    memmove(v10, v7, v9);
    *(v9 + v10) = 0;
    v11 = cf;
    if (!cf)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  HIBYTE(v18) = v8;
  v10 = __dst;
  if (v8)
  {
    goto LABEL_15;
  }

  LOBYTE(__dst[0]) = 0;
  v11 = cf;
  if (!cf)
  {
    goto LABEL_18;
  }

LABEL_16:
  v13 = CFGetTypeID(v11);
  if (v13 == CFDictionaryGetTypeID())
  {
    v16 = v11;
    CFRetain(v11);
    v14 = v11;
    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
  v16 = 0;
LABEL_19:
  v15 = 0;
  ABMServerInternal::unicast_sync(v2, &object, __dst, &v16, &v15);
  if (v14)
  {
    CFRelease(v14);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(object);
  object = 0;
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_29734618C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, const void *a19)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a19);
  _Unwind_Resume(a1);
}

void ABMServerInternal::unicast_sync(void *a1, xpc_connection_t *a2, uint64_t a3, ctu **a4, void **a5)
{
  v69 = *MEMORY[0x29EDCA608];
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v8) == MEMORY[0x29EDCAA00])
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
  if (*a4)
  {
    ctu::cf_to_xpc(&v63, *a4, v10);
    xpc_dictionary_set_value(v9, kKeyEventData, v63);
    v11 = v63;
    v63 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v63);
    v63 = 0;
  }

  v12 = xpc_string_create(kCommandSignalNotification);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, kKeyCommand, v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = a3;
  if (*(a3 + 23) < 0)
  {
    v14 = *a3;
  }

  v15 = xpc_string_create(v14);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, kKeyEvent, v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = dispatch_group_create();
  v18 = a1[2];
  if (!v18 || (v44 = a1[1], (v19 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    v21 = *a2;
    if (*a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v20);
    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    v21 = *a2;
    if (*a2)
    {
LABEL_19:
      xpc_retain(v21);
      v61 = 0;
      v62 = 0;
      v22 = a1 + 11;
      v23 = a1[11];
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }
  }

  v21 = xpc_null_create();
  v61 = 0;
  v62 = 0;
  v22 = a1 + 11;
  v23 = a1[11];
  if (!v23)
  {
LABEL_30:
    v28 = 0;
    v29 = 0;
    goto LABEL_31;
  }

LABEL_23:
  v24 = v22;
  do
  {
    v25 = v23[4];
    v26 = v25 >= v21;
    v27 = v25 < v21;
    if (v26)
    {
      v24 = v23;
    }

    v23 = v23[v27];
  }

  while (v23);
  if (v24 == v22 || v21 < v24[4])
  {
    goto LABEL_30;
  }

  v29 = v24[5];
  v28 = v24[6];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v61 = v29;
  v62 = v28;
LABEL_31:
  xpc_release(v21);
  if (v29)
  {
    v60 = *a4;
    if (v60)
    {
      CFRetain(v60);
      *buf = v60;
      CFRetain(v60);
    }

    else
    {
      *buf = 0;
    }

    isNotificationRegistered = ServerClientState::State::isNotificationRegistered(v29, a3, buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    if (v60)
    {
      CFRelease(v60);
    }

    if (isNotificationRegistered)
    {
      SystemTime = TelephonyUtilGetSystemTime();
      v32 = a1[9];
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      v33 = a3;
      if (*(a3 + 23) < 0)
      {
        v33 = *a3;
        if ((*(v29 + 23) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }
      }

      else if ((*(v29 + 23) & 0x80000000) == 0)
      {
LABEL_43:
        v34 = *v29;
        v59.__r_.__value_.__r.__words[2] = *(v29 + 16);
        *&v59.__r_.__value_.__l.__data_ = v34;
        goto LABEL_49;
      }

      std::string::__init_copy_ctor_external(&v59, *v29, *(v29 + 8));
LABEL_49:
      v35 = &v59;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v59.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v33;
      v65 = 2080;
      v66 = v35;
      v67 = 2048;
      v68 = SystemTime;
      _os_log_impl(&dword_297288000, v32, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
        if (*a5)
        {
          goto LABEL_53;
        }

        goto LABEL_66;
      }

LABEL_52:
      if (*a5)
      {
LABEL_53:
        dispatch_group_enter(v17);
        v36 = *a2;
        v37 = a1[3];
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
        handler[3] = &__block_descriptor_tmp_34;
        handler[4] = a1;
        handler[5] = v44;
        v53 = v20;
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v54 = v29;
        v55 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a3 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
        }

        else
        {
          __p = *a3;
        }

        v57 = SystemTime;
        v58 = v17;
        xpc_connection_send_message_with_reply(v36, v9, v37, handler);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v38 = v55;
        if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        if (v53)
        {
          std::__shared_weak_count::__release_weak(v53);
        }

        goto LABEL_67;
      }

LABEL_66:
      xpc_connection_send_message(*a2, v9);
    }
  }

LABEL_67:
  if (!*a5)
  {
    goto LABEL_81;
  }

  v39 = a1[3];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_35;
  block[3] = &__block_descriptor_tmp_36_1;
  block[4] = a1;
  block[5] = v44;
  v48 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = *a2;
  object = v40;
  if (!v40)
  {
    object = xpc_null_create();
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_72:
    std::string::__init_copy_ctor_external(&v50, *a3, *(a3 + 8));
    goto LABEL_73;
  }

  xpc_retain(v40);
  if (*(a3 + 23) < 0)
  {
    goto LABEL_72;
  }

LABEL_70:
  v50 = *a3;
LABEL_73:
  v41 = *a5;
  if (*a5)
  {
    v41 = _Block_copy(v41);
  }

  aBlock = v41;
  dispatch_group_notify(v17, v39, block);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  object = 0;
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

LABEL_81:
  dispatch_release(v17);
  v42 = v62;
  if (v62 && !atomic_fetch_add((v62 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  std::__shared_weak_count::__release_weak(v20);
  xpc_release(v9);
  v43 = *MEMORY[0x29EDCA608];
}

void sub_2973468E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, xpc_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v41 - 168);
  std::__shared_weak_count::__release_weak(v40);
  xpc_release(v39);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
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

void ___ZN17ABMServerInternal24handlePublicMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x29C26F9F0](*(a1 + 40));
  v8 = MEMORY[0x29EDCAA00];
  if (v7 != MEMORY[0x29EDCAA00])
  {
    return;
  }

  if (a2 != -534716414)
  {
    v11 = xpc_int64_create(a2);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_11:
    v11 = xpc_null_create();
LABEL_12:
    xpc_dictionary_set_value(*(a1 + 40), kKeyCommandResult, v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (MEMORY[0x29C26F9F0](*a3) == v8)
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

      xpc_dictionary_set_value(*(a1 + 40), kKeyCommandData, v13);
      v14 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v14);
    }

    goto LABEL_27;
  }

  if (*(v6 + 128) != 3)
  {
    v11 = xpc_int64_create(-534716414);
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == v8)
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
  v15 = xpc_int64_create(-534716415);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(a1 + 40), kKeyCommandResult, v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_string_create("Server not available");
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, *MEMORY[0x29EDBE648], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if (v10)
  {
    xpc_retain(v10);
    v19 = v10;
  }

  else
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(a1 + 40), kKeyCommandData, v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  xpc_release(v10);
LABEL_27:
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);

  xpc_connection_send_message(v21, v22);
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

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c22_ZTSN3xpc10connectionE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ___ZN17ABMServerInternal20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4)
  {
    xpc_retain(*(a1 + 40));
    v26 = 0;
    v27 = 0;
    v5 = (v2 + 88);
    v6 = *(v2 + 88);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = xpc_null_create();
    v26 = 0;
    v27 = 0;
    v5 = (v2 + 88);
    v6 = *(v2 + 88);
    if (!v6)
    {
LABEL_12:
      v11 = 1;
      goto LABEL_13;
    }
  }

  v7 = v5;
  do
  {
    v8 = v6[4];
    v9 = v8 >= v4;
    v10 = v8 < v4;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == v5 || v4 < v7[4])
  {
    goto LABEL_12;
  }

  v19 = v7[5];
  v18 = v7[6];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v19;
  v27 = v18;
  v11 = v19 == 0;
LABEL_13:
  xpc_release(v4);
  if (v11)
  {
    v12 = *(v2 + 72);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    xpc::object::to_string(&__p, v3);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v29 = p_p;
    _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "%s is not in client list", buf, 0xCu);
    goto LABEL_33;
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  cf = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  ServerClientState::registerNotification_sync(&v26, v14, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v16 = *(v2 + 72);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v26[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v26, *(v26 + 1));
    }

    else
    {
      v17 = *v26;
      __p.__r_.__value_.__r.__words[2] = *(v26 + 2);
      *&__p.__r_.__value_.__l.__data_ = v17;
    }

    v20 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    v21 = *(a1 + 48);
    *buf = 136315394;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I %s registered for: %@", buf, 0x16u);
LABEL_33:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_35:
  v22 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_297347114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297347128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFTypeRef __copy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (!v4)
  {
    *(a1 + 40) = xpc_null_create();
    result = *(a2 + 48);
    *(a1 + 48) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  xpc_retain(v4);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ___ZN17ABMServerInternal9broadcastENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a1 + 40), *(a1 + 48));
    v3 = *(a1 + 64);
    v7 = v3;
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&v8.__r_.__value_.__l.__data_ = *(a1 + 40);
  v3 = *(a1 + 64);
  v8.__r_.__value_.__r.__words[2] = *(a1 + 56);
  v7 = v3;
  if (v3)
  {
LABEL_5:
    CFRetain(v3);
  }

LABEL_6:
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  ABMServerInternal::broadcast_sync(v2, &v8, &v7, &v6);
  if (v5)
  {
    _Block_release(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_297347314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    _Block_release(v16);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE72c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    *(a1 + 64) = v5;
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
  *(a1 + 64) = v5;
  if (v5)
  {
LABEL_5:
    CFRetain(v5);
  }

LABEL_6:
  result = *(a2 + 72);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 72) = result;
  return result;
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE72c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    v15 = v4;
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 48))
      {
        v6 = *(v3 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 64);
          if (*(v7 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
          }

          else
          {
            v8 = *v7;
            __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
            *&__p.__r_.__value_.__l.__data_ = v8;
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          v10 = (a1 + 80);
          if (*(a1 + 103) < 0)
          {
            v10 = *v10;
          }

          v11 = *(a1 + 104);
          *buf = 136315650;
          v17 = p_p;
          v18 = 2080;
          v19 = v10;
          v20 = 2048;
          v21 = v11;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s sent at %llu", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
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

  v12 = *MEMORY[0x29EDCA608];
}

void sub_2973475B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE64c23_ZTS17ServerClientState80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v8 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v8;
  }
}

void sub_29734767C(_Unwind_Exception *a1)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v2);
  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = *(v1 + 40);
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE64c23_ZTS17ServerClientState80c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(a1 + 40);
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_32(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(v2 + 72);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v9 = v6;
          _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I All clients responded to %s", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 80) + 16))();
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  result = *(a2 + 80);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 80) = result;
  return result;
}

void sub_29734792C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (v2 && (v3 = *(a1 + 32), v4 = std::__shared_weak_count::lock(v2), (v17 = v4) != 0))
  {
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = *(v3 + 72);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
        }

        else
        {
          v8 = *v7;
          __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        v12 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v12 = *v12;
        }

        v13 = *(a1 + 96);
        *buf = 136315650;
        v19 = p_p;
        v20 = 2080;
        v21 = v12;
        v22 = 2048;
        v23 = v13;
        _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s sent at %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    dispatch_group_leave(*(a1 + 104));
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v14 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = *(a1 + 104);
    v10 = *MEMORY[0x29EDCA608];

    dispatch_group_leave(v9);
  }
}

void sub_297347B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTS17ServerClientState72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 64);
  a1[2].__r_.__value_.__l.__size_ = *(a2 + 56);
  a1[2].__r_.__value_.__r.__words[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v4 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_297347C2C(_Unwind_Exception *a1)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v1);
  v4 = *(v2 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTS17ServerClientState72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN17ABMServerInternal12unicast_syncEN3xpc10connectionENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_35(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v11 = 0;
  v12 = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    v12 = v4;
    if (v4)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v5 = *(v2 + 72);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          xpc::object::to_string(__p, (a1 + 56));
          v6 = __p[0];
          if (v10 >= 0)
          {
            v6 = __p;
          }

          v7 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v7 = *v7;
          }

          *buf = 136315394;
          v14 = v6;
          v15 = 2080;
          v16 = v7;
          _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Client '%s' responded to %s", buf, 0x16u);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 88) + 16))();
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_297347E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297347E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTSKN3xpc10connectionE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    xpc_retain(v5);
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
LABEL_5:
      v6 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 56) = xpc_null_create();
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
LABEL_8:
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void sub_297347F30(_Unwind_Exception *a1)
{
  xpc::connection::~connection(v2);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTSKN3xpc10connectionE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t ABMServer::previousShutdownWasClean(ABMServer *this)
{
  if (qword_2A1399E20 != -1)
  {
    dispatch_once(&qword_2A1399E20, &__block_literal_global_6);
  }

  return _MergedGlobals_7;
}

void ___ZN9ABMServer24previousShutdownWasCleanEv_block_invoke()
{
  v11 = *MEMORY[0x29EDCA608];
  BYTE7(v9[2]) = 17;
  strcpy(v9, "/tmp/abm.shutdow/tmp/abm.shutdown");
  v0.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v0.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v0;
  *v10.st_qspare = v0;
  v10.st_birthtimespec = v0;
  *&v10.st_size = v0;
  v10.st_mtimespec = v0;
  v10.st_ctimespec = v0;
  *&v10.st_uid = v0;
  v10.st_atimespec = v0;
  *&v10.st_dev = v0;
  v1 = stat(&v9[1], &v10);
  if (SBYTE7(v9[2]) < 0)
  {
    v6 = v1;
    operator delete(*&v9[1]);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_12:
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A1399CD8 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v7 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:
        _MergedGlobals_7 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
      v7 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }
    }

    v10.st_dev = 136315138;
    *&v10.st_mode = "abmserver";
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "%s: Previous shutdown was not clean", &v10, 0xCu);
    goto LABEL_16;
  }

  if (!v1)
  {
    goto LABEL_12;
  }

LABEL_3:
  _MergedGlobals_7 = 1;
  HIBYTE(v10.st_gid) = 17;
  *&v10.st_dev = v9[0];
  LOWORD(v10.st_uid) = 110;
  v2 = open(&v10, 513, 420);
  v3 = v2;
  if (SHIBYTE(v10.st_gid) < 0)
  {
    operator delete(*&v10.st_dev);
    if (v3 >= 1)
    {
      do
      {
LABEL_5:
        if (!close(v3))
        {
          goto LABEL_21;
        }
      }

      while (*__error() == 4);
      {
        GetOsLogContext(void)::sOsLogContext = 0;
        qword_2A1399CD8 = 0;
      }

      if (GetOsLogContext(void)::onceToken == -1)
      {
        v4 = qword_2A1399CD8;
        if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

      else
      {
        dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
        v4 = qword_2A1399CD8;
        if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

      v10.st_dev = 136315394;
      *&v10.st_mode = "abmserver";
      WORD2(v10.st_ino) = 2080;
      *(&v10.st_ino + 6) = "/tmp/abm.shutdown";
      v5 = "%s: Failed closing %s";
      goto LABEL_26;
    }
  }

  else if (v2 >= 1)
  {
    goto LABEL_5;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v4 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
    v4 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }

  v10.st_dev = 136315394;
  *&v10.st_mode = "abmserver";
  WORD2(v10.st_ino) = 2080;
  *(&v10.st_ino + 6) = "/tmp/abm.shutdown";
  v5 = "%s: Failed creating %s";
LABEL_26:
  _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, v5, &v10, 0x16u);
LABEL_21:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_2973483D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<xpc::connection const,ServerClientState>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void std::__shared_ptr_pointer<ABMServer *,std::shared_ptr<ABMServer>::__shared_ptr_default_delete<ABMServer,ABMServer>,std::allocator<ABMServer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMServer *,std::shared_ptr<ABMServer>::__shared_ptr_default_delete<ABMServer,ABMServer>,std::allocator<ABMServer>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMServer *,std::shared_ptr<ABMServer>::__shared_ptr_default_delete<ABMServer,ABMServer>,std::allocator<ABMServer>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297432880)
  {
    if (((v2 & 0x8000000297432880 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297432880))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297432880 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

atomic_ullong *std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E399F0;
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

void sub_297348704(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1}::operator() const(ABMServerInternal*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ABMServerInternal *,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal *)#1},std::allocator<ABMServerInternal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ABMServerInternal *,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal *)#1},std::allocator<ABMServerInternal>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableINS_9XpcServerEE15make_shared_ptrI17ABMServerInternalEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1}::operator() const(ABMServerInternal*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_emplace<Registry>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E39A40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<Registry>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
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

void std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*a1);
    std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    xpc_release(a1[4]);

    operator delete(a1);
  }
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

void sub_297348B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  _ZNSt3__110unique_ptrIZZZN17ABMServerInternal4initENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0NS_14default_deleteISC_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_297348B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZZN17ABMServerInternal4initENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0NS_14default_deleteISC_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 48);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  xpc_release(*(a2 + 32));

  operator delete(a2);
}

void ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E39A88;
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

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t abb::router::MipcTransport::MipcTransport(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2A1E39AC8;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 256;
  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2A1E39AC8;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 256;
  return result;
}

uint64_t abb::router::MipcTransport::open(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v30[3] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 24);
  if (!v4 || !*a3)
  {
    v6 = 0;
    goto LABEL_40;
  }

  if (v4 == a2)
  {
    *(&v26 + 1) = &v25;
    (*(*v4 + 24))(v4, &v25);
  }

  else
  {
    *(&v26 + 1) = (*(*v4 + 16))(v4);
  }

  v7 = (a1 + 112);
  if ((a1 + 112) == &v25)
  {
    goto LABEL_16;
  }

  v8 = *(&v26 + 1);
  v9 = *(a1 + 136);
  if (*(&v26 + 1) != &v25)
  {
    if (v9 != v7)
    {
      *(&v26 + 1) = *(a1 + 136);
      *(a1 + 136) = v8;
      v10 = v9;
      if (v9 == &v25)
      {
        goto LABEL_42;
      }

      goto LABEL_17;
    }

    (*(*v9 + 24))(*(a1 + 136), &v25);
    (*(**(a1 + 136) + 32))(*(a1 + 136));
    *(a1 + 136) = *(&v26 + 1);
    *(&v26 + 1) = &v25;
LABEL_16:
    v10 = *(&v26 + 1);
    if (*(&v26 + 1) == &v25)
    {
      goto LABEL_42;
    }

    goto LABEL_17;
  }

  if (v9 == v7)
  {
    memset(v30, 170, 24);
    (*(**(&v26 + 1) + 24))();
    (*(**(&v26 + 1) + 32))(*(&v26 + 1));
    *(&v26 + 1) = 0;
    (*(**(a1 + 136) + 24))(*(a1 + 136), &v25);
    (*(**(a1 + 136) + 32))(*(a1 + 136));
    *(a1 + 136) = 0;
    *(&v26 + 1) = &v25;
    (*(v30[0] + 24))(v30, a1 + 112);
    (*(v30[0] + 32))(v30);
    *(a1 + 136) = v7;
    v10 = *(&v26 + 1);
    if (*(&v26 + 1) == &v25)
    {
      goto LABEL_42;
    }
  }

  else
  {
    (*(**(&v26 + 1) + 24))();
    (*(**(&v26 + 1) + 32))(*(&v26 + 1));
    *(&v26 + 1) = *(a1 + 136);
    v11 = *(&v26 + 1);
    *(a1 + 136) = v7;
    v10 = v11;
    if (v11 == &v25)
    {
LABEL_42:
      (*(*v10 + 32))(v10);
      v12 = *a3;
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

LABEL_17:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v12 = *a3;
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_20:
  dispatch_retain(v12);
LABEL_21:
  v13 = *(a1 + 144);
  *(a1 + 144) = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[0] = v14;
  v28[1] = v14;
  v27 = v14;
  v25 = v14;
  v26 = v14;
  inited = TelephonyBasebandPCITransportInitParameters();
  *(&v25 + 1) = *(a1 + 144);
  *(v28 + 8) = 0u;
  *(&v27 + 4) = 0xF0000000003FLL;
  if (*(a1 + 153))
  {
    v16 = 31;
  }

  else
  {
    v16 = 30;
  }

  LODWORD(v25) = v16;
  *(&v26 + 1) = 0x200001B58;
  LODWORD(v29) = 25;
  LODWORD(v27) = v27 | 5;
  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 1174405120;
  v23[2] = ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke;
  v23[3] = &__block_descriptor_tmp_27;
  v23[4] = v18;
  v24 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&v26 = v23;
  if (capabilities::pci::supportsRxIOPool(inited))
  {
    LODWORD(v27) = v27 | 8;
    HIDWORD(v27) = 2 * DWORD1(v27);
  }

  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 1174405120;
  v21[2] = ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1;
  v21[3] = &__block_descriptor_tmp_3_0;
  v21[4] = a1;
  v21[5] = v18;
  v22 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  *&v28[0] = v21;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v6 = TelephonyBasebandPCITransportCreate();
  *(a1 + 152) = v6;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_40:
  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_2973494D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v2;
        (v2->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1(std::__shared_weak_count *a1, int a2, void *a3, unsigned int a4)
{
  if (a3)
  {
    shared_owners = a1[1].__shared_owners_;
    if (a1[2].__vftable)
    {
      v6 = a1;
      a1 = std::__shared_weak_count::lock(a1[2].__vftable);
      v9 = a1;
      if (a1)
      {
        shared_weak_owners = v6[1].__shared_weak_owners_;
        if (!a2)
        {
          if (v6[1].__shared_weak_owners_)
          {
            v13 = a4;
            v14 = a3;
            v10 = *(shared_owners + 136);
            if (!v10)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v11 = (*(*v10 + 48))(v10, &v14, &v13);
            if ((capabilities::pci::supportsRxIOPool(v11) & 1) == 0)
            {
              free(a3);
            }

LABEL_13:
            if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }

            return;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    if ((capabilities::pci::supportsRxIOPool(a1) & 1) == 0)
    {
      free(a3);
    }

    if (v9)
    {
      goto LABEL_13;
    }
  }
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t abb::router::MipcTransport::close(abb::router::MipcTransport *this)
{
  v2 = *(this + 10);
  if (v2 && v2(this + 24))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v3(this + 24);
    }

    TelephonyUtilTransportFree();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 152) = 0;
  return 1;
}

uint64_t abb::router::MipcTransport::write(abb::router::MipcTransport *this, const unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*(this + 152) != 1)
    {
      return 0;
    }

    v6 = *(this + 10);
    if (!v6)
    {
      return 0;
    }

    result = v6(this + 24);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v10 = *(this + 3);
    if (!v10)
    {
      return 0;
    }

    result = v10(this + 24, a2, a3, &v11, 1, 10000, 0);
    if (a4)
    {
      if (result)
      {
        *a4 = v11;
        return 1;
      }
    }
  }

  return result;
}

uint64_t abb::router::MipcTransport::isReady(abb::router::MipcTransport *this)
{
  if (*(this + 152) == 1 && (v1 = *(this + 10)) != 0)
  {
    return v1(this + 24);
  }

  else
  {
    return 0;
  }
}

void abb::router::MipcTransport::~MipcTransport(abb::router::MipcTransport *this)
{
  *this = &unk_2A1E39AC8;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 17);
  if (v3 == (this + 112))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 2);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2A1E39AC8;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 17);
  if (v3 == (this + 112))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 2);
    if (v4)
    {
LABEL_7:
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 2);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  operator delete(this);
}

void *sys::UIObserver::create_default_global@<X0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  sys::UIObserver::UIObserver(v3);

  return std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(a1, v3);
}

sys::UIObserver *sys::UIObserver::UIObserver(sys::UIObserver *this)
{
  v2 = dispatch_queue_create("sys::UIObserver", 0);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 3) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 4) = &unk_2A1E39CA0;
  v4 = operator new(0x28uLL);
  boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(v4);
  *(this + 5) = v4;
  *(this + 6) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(this + 40, v4, this + 6);
  *(this + 7) = 0xFFFFFFFF00000000;
  return this;
}

void sub_297349B84(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void sub_297349BA4(_Unwind_Exception *a1)
{
  operator delete(v2);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

uint64_t sys::UIObserver::handleDisplayLockedChange_sync(uint64_t this)
{
  if (*(this + 60) != -1)
  {
    v1 = this;
    v2 = SBSGetScreenLockStatus() != 0;
    return boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v1 + 40), v2);
  }

  return this;
}

void sys::UIObserver::registerForScreenLockedNotification_sync(sys::UIObserver *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
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

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN3sys10UIObserver40registerForScreenLockedNotification_syncEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_28;
  v7[4] = v3;
  v8 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  notify_register_dispatch("com.apple.springboard.lockstate", this + 15, *(this + 2), v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_297349D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN3sys10UIObserver40registerForScreenLockedNotification_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4 && *(v4 + 60) != -1)
      {
        v5 = v3;
        v6 = SBSGetScreenLockStatus() != 0;
        boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v4 + 40), v6);
        v3 = v5;
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_297349E2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sys::UIObserver::unregisterForScreenLockedNotification_sync(sys::UIObserver *this)
{
  result = *(this + 15);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(this + 15) = -1;
  }

  return result;
}

void sys::UIObserver::observe(sys::UIObserver *this@<X0>, char a2@<W1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v4 = *(this + 1);
  if (!v4 || (v7 = *this, (v8 = std::__shared_weak_count::lock(v4)) == 0))
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

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(8uLL);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3sys10UIObserver7observeEb_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_6_3;
  aBlock[4] = this;
  aBlock[5] = v7;
  v20 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (v11)
  {
    v13 = _Block_copy(v11);
  }

  else
  {
    v13 = 0;
  }

  v10->~__shared_weak_count = v13;
  *a3 = v10;
  v21 = v10;
  v14 = operator new(0x20uLL);
  v14->__vftable = &unk_2A1E39EE8;
  v14->__shared_owners_ = 0;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v10;
  a3[1] = v14;
  if (v12)
  {
    _Block_release(v12);
  }

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN3sys10UIObserver7observeEb_block_invoke_7;
  v16[3] = &__block_descriptor_tmp_8_2;
  v16[4] = this;
  v16[5] = v10;
  v17 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = a2;
  ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(this, v16);
  v15 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_29734A0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  std::unique_ptr<sys::UIObserver::Handle>::~unique_ptr[abi:ne200100]((v25 - 88));
  if (v24)
  {
    _Block_release(v24);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
    std::__shared_weak_count::__release_weak(v23);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

void ___ZN3sys10UIObserver7observeEb_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN3sys10UIObserver7observeEb_block_invoke_2;
        v7[3] = &__block_descriptor_tmp_5;
        v7[4] = v3;
        ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(v6, v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t ___ZN3sys10UIObserver7observeEb_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 56) - 1;
  *(v1 + 56) = v2;
  if (!v2)
  {
    result = *(v1 + 60);
    if (result != -1)
    {
      result = notify_cancel(result);
      *(v1 + 60) = -1;
    }
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3sys10UIObserver7observeEb_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = v3 + 1;
  if (v3)
  {
    if (*(a1 + 56) != 1)
    {
      return;
    }
  }

  else
  {
    sys::UIObserver::registerForScreenLockedNotification_sync(v2);
    if (*(a1 + 56) != 1)
    {
      return;
    }
  }

  if (*(v2 + 60) != -1)
  {
    v4 = SBSGetScreenLockStatus() != 0;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v2 + 40), v4);
  }
}

uint64_t __copy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN3sys10UIObserver6HandleEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN3sys10UIObserver6HandleEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E39C50;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = a2[1];
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *a2 = a2;
        a2[1] = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_8:
        v9 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  return a1;
}

void sub_29734A5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v1[4] = &unk_2A1E39CA0;
    v2 = v1[6];
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

    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297432C4ALL)
  {
    if (((v2 & 0x8000000297432C4ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297432C4ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297432C4ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E39CA0;
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

void boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E39CA0;
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

uint64_t boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

void **std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v1[4] = &unk_2A1E39CA0;
    v3 = v1[6];
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

    v4 = v1[3];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[2];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = v1[1];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(uint64_t a1)
{
  v19[4] = *MEMORY[0x29EDCA608];
  v2 = operator new(0x20uLL);
  v15 = &v15;
  v16 = &v15;
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v18 = v19;
  v3 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v3, &v15);
  *v2 = v3;
  *(v2 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v2, v3, v2 + 1);
  v4 = operator new(1uLL);
  *(v2 + 3) = 0;
  *(v2 + 2) = v4;
  v5 = operator new(0x18uLL);
  v5[1] = 0x100000001;
  *v5 = &unk_2A1E39D60;
  v5[2] = v4;
  *(v2 + 3) = v5;
  *a1 = v2;
  *(a1 + 8) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v2, (a1 + 8));
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19[0]);
  if (v17)
  {
    v6 = v16;
    v7 = *(v15 + 8);
    v8 = *v16;
    *(v8 + 8) = v7;
    *v7 = v8;
    v17 = 0;
    if (v6 != &v15)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[3];
        if (v10)
        {
          if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 16))(v10);
            if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 24))(v10);
            }
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != &v15);
    }
  }

  *(a1 + 16) = **a1;
  v11 = operator new(0x40uLL);
  pthread_mutex_init(v11, 0);
  *(a1 + 32) = 0;
  *(a1 + 24) = v11;
  v12 = operator new(0x18uLL);
  v12[1] = 0x100000001;
  *v12 = &unk_2A1E39DC0;
  v12[2] = v11;
  *(a1 + 32) = v12;
  v13 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29734ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::mutex>(v10);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
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

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((a1 + 3), a1[4]);
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

void boost::checked_delete<boost::signals2::mutex>(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_destroy(a1);

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    pthread_mutex_destroy(*(a1 + 16));

    operator delete(v1);
  }
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E39E20;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_29734B23C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
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

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(uint64_t *a1, char a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v35 = a2;
  v33 = 0;
  v34 = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v3;
  v48 = v3;
  v45 = v3;
  v46 = v3;
  v43 = v3;
  v44 = v3;
  v41 = v3;
  v42 = v3;
  v39 = v3;
  v40 = v3;
  v4 = a1[3];
  __p[0] = 10;
  __p[1] = &v39;
  v50[0] = 0;
  v50[1] = v4;
  pthread_mutex_lock(v4);
  v5 = a1[1];
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit((v5 + 8), memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = a1[2];
    if (v9 == *v7)
    {
      v9 = v8[1];
      *&v36 = v9;
      if (v8 == v9)
      {
LABEL_10:
        a1[2] = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v36 = a1[2];
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v36);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

LABEL_13:
  v11 = v34;
  v33 = v7;
  v34 = v5;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
      if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 24))(v11);
      }
    }
  }

  pthread_mutex_unlock(v50[1]);
  v12 = __p[1];
  if (__p[1])
  {
    if (v50[0] > 0)
    {
      v25 = __p[1] + 16 * v50[0];
      do
      {
        v26 = *(v25 - 1);
        if (v26)
        {
          if (atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v26 + 16))(v26);
            if (atomic_fetch_add(v26 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v26 + 24))(v26);
            }
          }
        }

        v25 -= 16;
      }

      while (v25 > v12);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v13;
  v53 = v13;
  *v50 = v13;
  v51 = v13;
  v48 = v13;
  *__p = v13;
  v46 = v13;
  v47 = v13;
  v44 = v13;
  v45 = v13;
  v42 = v13;
  v43 = v13;
  v40 = v13;
  v41 = v13;
  v39 = v13;
  LOBYTE(v39) = 0;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = 10;
  v56 = &v39 + 8;
  v57 = 0;
  v59 = 0;
  v60 = 0;
  v58 = &v35;
  v14 = v33;
  v15 = *v33;
  v30 = &v39;
  v31 = a1;
  v32 = v15;
  *&v28 = *(v15 + 8);
  *(&v28 + 1) = v15;
  *&v29 = &v39;
  *(&v29 + 1) = v15;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v28);
  v27[0] = *v14;
  v27[1] = v27[0];
  v27[2] = &v39;
  v27[3] = v27[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(v27);
  v36 = v28;
  v37 = v29;
  v16 = v27[0];
  v17 = v28;
  if (v28 == v27[0])
  {
    if (HIDWORD(v59) <= v59)
    {
      goto LABEL_35;
    }

LABEL_34:
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(v31, v32);
    goto LABEL_35;
  }

  v18 = v37;
  LOBYTE(v19) = *v37;
  do
  {
    if ((v19 & 1) == 0)
    {
      v20 = *(*(v17 + 16) + 32);
      v21 = *(v20 + 24);
      if (!v21)
      {
        std::runtime_error::runtime_error(&v38, "call to empty boost::function");
        v38.__vftable = &unk_2A1E35198;
        boost::throw_exception<boost::bad_function_call>(&v38);
      }

      (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32, **(v18 + 272));
      if ((*v18 & 1) == 0)
      {
        *v18 = 1;
      }
    }

    *&v36 = *(v17 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v36);
    v18 = v37;
    v19 = *v37;
    if (v19 == 1)
    {
      LOBYTE(v19) = 0;
      *v37 = 0;
    }

    v17 = v36;
  }

  while (v36 != v16);
  if (*(v30 + 71) > *(v30 + 70))
  {
    goto LABEL_34;
  }

LABEL_35:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(&v39);
  v23 = v34;
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v23 + 16))(v23);
      if (atomic_fetch_add(v23 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v23 + 24))(v23);
      }
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29734BA60(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x29734BAC4);
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v71[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_96;
  }

  v2 = a1;
  if (v1 == a1[1])
  {
    goto LABEL_87;
  }

  while (1)
  {
    v3 = v2[2];
    v4 = *(v3 + 264);
    if (v4)
    {
      v5 = *(v3 + 264);
      if (-24 * v4 < 0)
      {
        v6 = *(v3 + 256) + 24 * v4;
        v7 = *(v3 + 256);
        v8 = v6;
        do
        {
          v9 = *(v8 - 24);
          v8 -= 24;
          if (v9 == v9 >> 31)
          {
            v10 = *(v6 - 8);
            if (v10)
            {
              if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v10 + 16))(v10);
                if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v10 + 24))(v10);
                }
              }
            }
          }

          else
          {
            v11 = *(v6 - 16);
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          v6 = v8;
        }

        while (v8 > v7);
        v5 = *(v3 + 264);
        v1 = *v2;
      }

      *(v3 + 264) = v5 - v4;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v12;
    v70 = v12;
    v67 = v12;
    v68 = v12;
    v65 = v12;
    v66 = v12;
    v63 = v12;
    v64 = v12;
    v61 = v12;
    v62 = v12;
    v59 = v12;
    v60 = v12;
    v13 = *(v1 + 16);
    __p[0] = 10;
    __p[1] = &v59;
    *&v70 = 0;
    *(&v70 + 1) = v13;
    (*(*v13 + 24))(v13);
    v14 = *v2;
    v15 = *(*v2 + 16);
    v16 = v2[2];
    v17 = *(v15 + 32);
    if (v17)
    {
      v18 = *v17;
      if (*v17 != v17[1])
      {
        v19 = (v16 + 8);
        while (1)
        {
          memset(v71, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v18, v71);
          if ((*v18 ^ (*v18 >> 31)) == 2)
          {
            if (!(*(**(v18 + 8) + 24))(*(v18 + 8)))
            {
              goto LABEL_22;
            }
          }

          else
          {
            v20 = *(v18 + 16);
            if (v20 && atomic_load_explicit((v20 + 8), memory_order_acquire))
            {
LABEL_22:
              v21 = *(v16 + 264);
              if (v21 == *(v16 + 248))
              {
                if (v21 == -1)
                {
                  v34 = *(v16 + 256) - 24;
                  v35 = v71[1];
                  if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  if (4 * v21 <= (v21 + 1))
                  {
                    v22 = v21 + 1;
                  }

                  else
                  {
                    v22 = 4 * v21;
                  }

                  v23 = v19;
                  if (v22 >= 0xB)
                  {
                    if (v22 >= 0xAAAAAAAAAAAAAABLL)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v23 = operator new(24 * v22);
                  }

                  v24 = v19;
                  v58 = v22;
                  if (v21)
                  {
                    v25 = 0;
                    v26 = *(v16 + 256);
                    v27 = v26 + 24 * v21;
                    v28 = v23;
                    do
                    {
                      v30 = *(v26 + 8);
                      if (*v26 == *v26 >> 31)
                      {
                        v28[1] = v30;
                        v31 = *(v26 + 16);
                        v28[2] = v31;
                        if (v31)
                        {
                          atomic_fetch_add_explicit((v31 + 8), 1u, memory_order_relaxed);
                        }
                      }

                      else
                      {
                        v28[1] = (*(*v30 + 16))(v30);
                      }

                      v29 = *v26;
                      v26 += 24;
                      *v28 = v29 ^ (v29 >> 31);
                      v28 += 3;
                      v25 -= 24;
                    }

                    while (v26 != v27);
                  }

                  v19 = v24;
                  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(v24);
                  *(v16 + 248) = v22;
                  *(v16 + 256) = v23;
                  v34 = &v23[3 * *(v16 + 264)];
                  v35 = v71[1];
                  if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                  {
LABEL_48:
                    *(v34 + 8) = v35;
                    v37 = v71[2];
                    *(v34 + 16) = v71[2];
                    if (v37)
                    {
                      atomic_fetch_add_explicit((v37 + 8), 1u, memory_order_relaxed);
                    }

LABEL_53:
                    v32 = 0;
                    *v34 = LODWORD(v71[0]) ^ (SLODWORD(v71[0]) >> 31);
                    ++*(v16 + 264);
                    if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_54;
                  }
                }

                v36 = (*(*v35 + 16))(v35);
              }

              else
              {
                v34 = *(v16 + 256) + 24 * v21;
                v35 = v71[1];
                if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
                {
                  goto LABEL_48;
                }

                v36 = (*(*v71[1] + 16))(v71[1]);
              }

              *(v34 + 8) = v36;
              goto LABEL_53;
            }
          }

          if (*(v15 + 24) == 1)
          {
            *(v15 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v59);
          }

          v32 = 1;
          if (LODWORD(v71[0]) == SLODWORD(v71[0]) >> 31)
          {
LABEL_41:
            v33 = v71[2];
            if (v71[2])
            {
              if (atomic_fetch_add((v71[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v33 + 16))(v33);
                if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v33 + 24))(v33);
                }
              }
            }

            goto LABEL_56;
          }

LABEL_54:
          if (v71[1])
          {
            (*(*v71[1] + 8))(v71[1]);
          }

LABEL_56:
          if ((v32 & 1) == 0)
          {
            v18 += 24;
            if (v18 != *(*(v15 + 32) + 8))
            {
              continue;
            }
          }

          v2 = a1;
          v14 = *a1;
          v15 = *(*a1 + 16);
          v16 = a1[2];
          break;
        }
      }
    }

    if ((*(v15 + 24) & 1) == 0)
    {
      ++*(v16 + 284);
LABEL_69:
      v41 = 1;
      goto LABEL_70;
    }

    ++*(v16 + 280);
    v38 = *(v15 + 16);
    if (v38)
    {
      if (atomic_load_explicit((v38 + 8), memory_order_acquire))
      {
        goto LABEL_69;
      }

      v16 = v2[2];
      v14 = *v2;
    }

    v2[3] = v14;
    if (v2[1] == v14)
    {
      v46 = *(v16 + 288);
      if (v46)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v46, &v59);
      }

      v41 = 0;
      *(v16 + 288) = 0;
    }

    else
    {
      v39 = *(v14 + 16);
      v40 = *(v16 + 288);
      if (v40)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v40, &v59);
      }

      *(v16 + 288) = v39;
      v41 = 0;
      if (v39)
      {
        ++*(v39 + 28);
      }
    }

LABEL_70:
    (*(**(&v70 + 1) + 32))(*(&v70 + 1));
    v42 = __p[1];
    if (__p[1])
    {
      if (v70 > 0)
      {
        v44 = __p[1] + 16 * v70;
        do
        {
          v45 = *(v44 - 1);
          if (v45)
          {
            if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v45 + 16))(v45);
              if (atomic_fetch_add(v45 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v45 + 24))(v45);
              }
            }
          }

          v44 -= 16;
        }

        while (v44 > v42);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }

    v1 = *v2;
    v43 = v2[1];
    if (!v41)
    {
      break;
    }

    v1 = *(v1 + 8);
    *v2 = v1;
    if (v1 == v43)
    {
      v48 = v43;
      v47 = v2[3];
      if (v47 != v48)
      {
        goto LABEL_90;
      }

      goto LABEL_96;
    }
  }

  if (v1 == v43)
  {
LABEL_87:
    v47 = v2[3];
    if (v47 == v1)
    {
      goto LABEL_96;
    }

LABEL_90:
    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v67 = v49;
    v68 = v49;
    v65 = v49;
    v66 = v49;
    v63 = v49;
    v64 = v49;
    v61 = v49;
    v62 = v49;
    v59 = v49;
    v60 = v49;
    v50 = *(v47 + 16);
    __p[0] = 10;
    __p[1] = &v59;
    *&v70 = 0;
    *(&v70 + 1) = v50;
    (*(*v50 + 24))(v50);
    v51 = v2[2];
    v2[3] = v2[1];
    v52 = *(v51 + 288);
    if (v52)
    {
      boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v52, &v59);
    }

    *(v51 + 288) = 0;
    (*(**(&v70 + 1) + 32))(*(&v70 + 1));
    v53 = __p[1];
    if (__p[1])
    {
      if (v70 > 0)
      {
        v55 = __p[1] + 16 * v70;
        do
        {
          v56 = *(v55 - 1);
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

          v55 -= 16;
        }

        while (v55 > v53);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }
  }

LABEL_96:
  v54 = *MEMORY[0x29EDCA608];
}

void sub_29734C4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_29734C530(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v3)
    {
      v4 = -v3;
      v5 = (v2 + 16);
      do
      {
        if (*(v5 - 4) == *(v5 - 4) >> 31)
        {
          v6 = *v5;
          if (*v5 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        else
        {
          v7 = *(v5 - 1);
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }
        }

        v5 += 3;
        v4 -= 24;
      }

      while (v4);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x29734C654);
}

void sub_29734C624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  __cxa_end_catch();
  boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(va);
  boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(v3 - 120);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va1);
  _Unwind_Resume(a1);
}

void sub_29734C64C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_29734C830(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29734C820);
}

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[8] = v4;
  v20[9] = v4;
  v20[6] = v4;
  v20[7] = v4;
  v20[4] = v4;
  v20[5] = v4;
  v20[2] = v4;
  v20[3] = v4;
  v20[0] = v4;
  v20[1] = v4;
  v5 = a1[3];
  v21 = 10;
  __p = v20;
  v23 = 0;
  v24 = v5;
  pthread_mutex_lock(v5);
  if (**a1 == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      v7 = operator new(0x20uLL);
      v8 = *a1;
      v9 = **a1;
      v10 = operator new(0x40uLL);
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v7, v10, v7 + 1);
      v11 = v8[3];
      *(v7 + 2) = v8[2];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v7);
    }

    v12 = **a1;
    v13 = v12[1];
    v19 = v13;
    if (v12 != v13)
    {
      do
      {
        while (1)
        {
          v14 = v13[2];
          if ((*(v14 + 24) & 1) == 0)
          {
            break;
          }

          v13 = v13[1];
          v19 = v13;
          if (v13 == v12)
          {
            goto LABEL_12;
          }
        }

        v13 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v12, (v14 + 64), &v19);
        v12 = **a1;
        v19 = v13;
      }

      while (v13 != v12);
LABEL_12:
      v13 = v12;
    }

    a1[2] = v13;
  }

  pthread_mutex_unlock(v24);
  v15 = __p;
  if (__p)
  {
    if (v23 > 0)
    {
      v17 = __p + 16 * v23;
      do
      {
        v18 = *(v17 - 1);
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

        v17 -= 16;
      }

      while (v17 > v15);
    }

    if (v21 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_29734CADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  boost::detail::shared_count::~shared_count(v12);
  operator delete(v11);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&a11);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(uint64_t a1)
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

void sub_29734CD14(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3sys10UIObserverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E39EA8;
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

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297432E8ELL)
  {
    if (((v2 & 0x8000000297432E8ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297432E8ELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297432E8ELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const void ***std::unique_ptr<sys::UIObserver::Handle>::~unique_ptr[abi:ne200100](const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void AWDModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x98uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AWDModule::AWDModule(v4, v10);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2 + 72;
  v11 = *a2;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67_0;
  block[4] = v8;
  block[5] = &v11;
  v9 = *(v11 + 88);
  if (*(v11 + 96))
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    dispatch_sync(v9, block);
  }
}

void sub_29734D1C4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void AWDModule::init(AWDModule *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67_0;
  block[4] = this + 72;
  block[5] = &v3;
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

void AWDModule::~AWDModule(AWDModule *this)
{
  *this = &unk_2A1E39F38;
  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 17));
  v2 = *(this + 15);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C26DE80](this + 104);
  v3 = *(this + 12);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(this + 4);
    v8 = *(this + 3);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 3);
    }

    *(this + 4) = v6;
    operator delete(v8);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

{
  AWDModule::~AWDModule(this);

  operator delete(v1);
}

void *AWDModule::AWDModule(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  a1[1] = v3;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E34AE8;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E39F38;
  ctu::OsLogContext::OsLogContext(&v15, "com.apple.telephony.abm", "awd.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("awd.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    a1[12] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[12] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 13, v14);
  MEMORY[0x29C26DE80](v14);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = &unk_2A1E39F38;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v15, v7);
    v9 = v15;
    v15 = 0uLL;
    v10 = *(&off_2A1399388 + 1);
    off_2A1399388 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v15 + 1);
    if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A1399388;
  }

  v12 = *(&off_2A1399388 + 1);
  v14[0] = v8;
  v14[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 64))(v8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  a1[18] = 0;
  a1[17] = 0;
  a1[16] = a1 + 17;
  return a1;
}

void sub_29734D708(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  MEMORY[0x29C26DE80](v1 + 104);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

_WORD *AWDModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *AWDModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void AWDModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_29;
  v5 = *a3;
  v13[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[10];
  if (!v6 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[11];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E3A340;
  block[5] = v7;
  v17 = v9;
  p_shared_owners = &v9->__shared_owners_;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v10, block);
  v12 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_9:
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void AWDModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void AWDModule::registerCommandHandlers_sync(AWDModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
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

  v7 = *MEMORY[0x29EDBEE68];
  v8 = strlen(*MEMORY[0x29EDBEE68]);
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
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_5_6;
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

  v13 = *MEMORY[0x29EDBF110];
  v14 = strlen(*MEMORY[0x29EDBF110]);
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
  v37[1] = 1174405120;
  v37[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6;
  v37[3] = &__block_descriptor_tmp_9_3;
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

  v19 = *MEMORY[0x29EDBE8C0];
  v20 = strlen(*MEMORY[0x29EDBE8C0]);
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
  v34[1] = 1174405120;
  v34[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10;
  v34[3] = &__block_descriptor_tmp_13_4;
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

  v25 = *MEMORY[0x29EDBEEB0];
  v26 = strlen(*MEMORY[0x29EDBEEB0]);
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
  v31[1] = 1174405120;
  v31[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14;
  v31[3] = &__block_descriptor_tmp_17_3;
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

void sub_29734E1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
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

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
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
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6(void *a1, xpc_object_t *a2, const void **a3)
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
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10(void *a1, xpc_object_t *a2, const void **a3)
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
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14(void *a1, xpc_object_t *a2, const void **a3)
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
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void AWDModule::sendPayload_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16sendPayload_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_11PayloadTypeERKNS0_6vectorIhNS0_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_19_2;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 8))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Cannot send payload because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_29734ED68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::enableMetricSubmission_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 112);
  if (v5)
  {
    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 1174405120;
    v12[2] = ___ZN9AWDModule27enableMetricSubmission_syncENSt3__110shared_ptrIN3awd10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v12[3] = &__block_descriptor_tmp_22_1;
    v8 = *a4;
    if (*a4)
    {
      v8 = _Block_copy(v8);
    }

    v13 = v8;
    aBlock = _Block_copy(v12);
    (**v5)(v5, &v15, a3, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v9 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    else
    {
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    _Block_release(v10);
  }

  else
  {
    v11 = *(a1 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "Cannot enable metric submission because driver is unavailable", buf, 2u);
    }

    (*(*a4 + 16))();
  }
}

void sub_29734EF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::clearConfiguration_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule23clearConfiguration_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_25_0;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 16))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Cannot clear configuration because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_29734F174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::updateProperties_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule21updateProperties_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_28_3;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 24))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Cannot update properties because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_29734F370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::queryMetric_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16queryMetric_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_10MetricInfoENS2_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_31_2;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 40))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Cannot query metric because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_29734F588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::appCheckIn_sync(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v51 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 80);
  if (!v5 || (v7 = *(a1 + 72), (v8 = std::__shared_weak_count::lock(v5)) == 0))
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

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x58uLL);
  v11 = v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = &unk_2A1E3A4D0;
  v12 = v10 + 24;
  v13 = *(a1 + 88);
  if (v13)
  {
    dispatch_retain(*(a1 + 88));
    *(v11 + 3) = v13;
    dispatch_retain(v13);
    *(v11 + 33) = 0;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    v11[32] = a2;
    dispatch_release(v13);
  }

  else
  {
    *(v10 + 3) = 0;
    *(v10 + 33) = 0;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    v10[32] = a2;
  }

  *a3 = v12;
  a3[1] = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v15 = (a1 + 136);
  v14 = *(a1 + 136);
  if (v14)
  {
    while (1)
    {
      while (1)
      {
        v16 = v14;
        v17 = *(v14 + 32);
        if (v17 <= a2)
        {
          break;
        }

        v14 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_15;
        }
      }

      if (v17 >= a2)
      {
        break;
      }

      v14 = v16[1];
      if (!v14)
      {
        v15 = v16 + 1;
        goto LABEL_15;
      }
    }

    v21 = v16;
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    v20 = v16[6];
    v21[5] = v12;
    v21[6] = v11;
    if (!v20)
    {
LABEL_21:
      v22 = *(a1 + 104);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v16 = (a1 + 136);
LABEL_15:
    v18 = operator new(0x38uLL);
    *(v18 + 32) = a2;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v15 = v18;
    v19 = **(a1 + 128);
    if (v19)
    {
      *(a1 + 128) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 136), v18);
    ++*(a1 + 144);
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    v20 = *(v18 + 6);
    *(v18 + 5) = v12;
    *(v18 + 6) = v11;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v22 = *(a1 + 104);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
LABEL_22:
    v23 = awd::asString();
    *buf = 136315138;
    v50 = v23;
    _os_log_impl(&dword_297288000, v22, OS_LOG_TYPE_DEFAULT, "#I New app checking-in: %s", buf, 0xCu);
  }

LABEL_23:
  v24 = *a3;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_35_1;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v47 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v48 = _Block_copy(aBlock);
  awd::AppContext::setHandler();
  if (v48)
  {
    _Block_release(v48);
  }

  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 1174405120;
  v41[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36;
  v41[3] = &__block_descriptor_tmp_38;
  v41[4] = a1;
  v41[5] = v7;
  v42 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v43 = v12;
  v44 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v45 = _Block_copy(v41);
  awd::AppContext::setHandler();
  if (v45)
  {
    _Block_release(v45);
  }

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_39;
  v36[3] = &__block_descriptor_tmp_43;
  v36[4] = a1;
  v36[5] = v7;
  v37 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v38 = v12;
  v39 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v36);
  awd::AppContext::setHandler();
  if (v40)
  {
    _Block_release(v40);
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_44;
  v31[3] = &__block_descriptor_tmp_48_2;
  v31[4] = a1;
  v31[5] = v7;
  v32 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = v12;
  v34 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v35 = _Block_copy(v31);
  awd::AppContext::setHandler();
  if (v35)
  {
    _Block_release(v35);
  }

  if (*(a1 + 112))
  {
    v25 = a3[1];
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    awd::AwdCommandDriver::checkIn();
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v26 = v34;
      if (!v34)
      {
        goto LABEL_41;
      }

LABEL_40:
      std::__shared_weak_count::__release_weak(v26);
      goto LABEL_41;
    }

LABEL_39:
    v26 = v34;
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v27 = *(a1 + 104);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_39;
  }

  v29 = awd::asString();
  *buf = 136315138;
  v50 = v29;
  _os_log_error_impl(&dword_297288000, v27, OS_LOG_TYPE_ERROR, "Cannot check in context of app %s because driver is unavailable", buf, 0xCu);
  v26 = v34;
  if (v34)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  std::__shared_weak_count::__release_weak(v11);
  std::__shared_weak_count::__release_weak(v9);
  v28 = *MEMORY[0x29EDCA608];
}

void sub_29734FC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_weak(a39);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  v44 = *(v42 - 160);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v40);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v41);
  std::__shared_weak_count::__release_weak(v39);
  _Unwind_Resume(a1);
}

void sub_29734FD1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
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
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v9 = awd::asString();
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Client state: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36(void *a1, uint64_t a2, int *a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_58;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v47 = v8;
  if (!v8)
  {
    goto LABEL_58;
  }

  if (!a1[5])
  {
    goto LABEL_56;
  }

  v9 = *(v7 + 104);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Received trigger 0x%x", buf, 8u);
  }

  *buf = 0;
  v49 = 0;
  v11 = a1[8];
  if (v11)
  {
    v49 = std::__shared_weak_count::lock(v11);
    if (v49)
    {
      *buf = a1[7];
    }
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v12) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  AppID = awd::AppContext::getAppID(*buf);
  v15 = xpc_int64_create(AppID);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF8B0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(a3[1]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5E8], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a3[2]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE680], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a3);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5A0], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(*(a3 + 2));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE678], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_int64_create(*(a2 + 12));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE6D8], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(*(a2 + 8));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE640], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = *MEMORY[0x29EDBE538];
  v30 = strlen(*MEMORY[0x29EDBE538]);
  if (v30 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v30 | 7) + 1;
    }

    v32 = operator new(v34);
    __dst[1] = v31;
    v45 = v34 | 0x8000000000000000;
    __dst[0] = v32;
LABEL_38:
    memmove(v32, v29, v31);
    *(v31 + v32) = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_39:
    object = xpc_null_create();
    goto LABEL_40;
  }

  HIBYTE(v45) = v30;
  v32 = __dst;
  if (v30)
  {
    goto LABEL_38;
  }

  LOBYTE(__dst[0]) = 0;
  object = v13;
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_33:
  xpc_retain(v13);
LABEL_40:
  xpc::bridge(&cf, &object, v33);
  v35 = cf;
  if (cf && (v36 = CFGetTypeID(cf), v36 == CFDictionaryGetTypeID()))
  {
    v43 = v35;
    CFRetain(v35);
  }

  else
  {
    v43 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v7, __dst, &v43, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v13);
  v37 = v49;
  if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v8 = v47;
  if (v47)
  {
LABEL_56:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v38 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v38);
    }
  }

LABEL_58:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_2973503A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
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
    _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Received segment %d of metric 0x%x", buf, 0xEu);
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  if (v13 || (v13 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v13) == MEMORY[0x29EDCAA00])
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

void sub_297350C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Received end of metric submission", buf, 2u);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v8) == MEMORY[0x29EDCAA00])
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

void sub_29735128C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
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

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a20);
  xpc_release(v20);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v21 - 64);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E3A2F8;
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

void sub_297351488(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*a1);
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(**(a1 + 40) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_297288000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", v2, 2u);
  }
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AWDModule::registerCommandHandlers_sync(**a1);
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

void sub_297351838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = *__p;
  if (*__p)
  {
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
  }

  v5 = __p[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = __p;
  }

  else
  {
    v6 = __p;
  }

  operator delete(v6);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    __p = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      __p = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
    xpc_release(__p);
    if (v13 != 1)
    {
      if (v13)
      {
        if ((v13 - 2) > 3u)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v42 = 0;
    v43 = 0;
    v15 = *(v2 + 136);
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v2 + 136;
    do
    {
      v17 = *(v15 + 32);
      v18 = v17 >= v13;
      v19 = v17 < v13;
      if (v18)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v19);
    }

    while (v15);
    if (v16 != v2 + 136 && *(v16 + 32) <= v13)
    {
      v21 = *(v16 + 40);
      v20 = *(v16 + 48);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_32:
      AWDModule::appCheckIn_sync(v2, v13, &__p);
      v21 = __p;
      v20 = v31;
    }

    v42 = v21;
    v43 = v20;
    if (v21)
    {
      *(v45 + 6) = -534716416;
      v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE650]);
      __p = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        __p = xpc_null_create();
      }

      v23 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
      xpc_release(__p);
      memset(object, 170, sizeof(object));
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE4D8]);
      v40[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v40[0] = xpc_null_create();
      }

      __p = 0;
      v31 = 0;
      v32 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      xpc_release(v40[0]);
      v25 = object[0];
      if (object[1] != object[0] && v23 <= 2u)
      {
        v40[0] = v21;
        v40[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p = MEMORY[0x29EDCA5F8];
        v31 = 1174405120;
        v32 = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke;
        v33 = &unk_2A1E3A3B0;
        v35 = v2;
        v26 = *(v1 + 32);
        if (v26)
        {
          v26 = _Block_copy(v26);
        }

        aBlock = v26;
        v37 = v21;
        v38 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = &v44;
        v27 = _Block_copy(&__p);
        v39 = v27;
        AWDModule::sendPayload_sync(v2, v40, v23, object, &v39);
        if (v27)
        {
          _Block_release(v27);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v28 = v38;
        if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        v25 = object[0];
      }

      if (v25)
      {
        object[1] = v25;
        operator delete(v25);
      }

      v20 = v43;
    }

    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_2:
  v3 = v45;
  if (*(v45 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object[0] = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, object);
    xpc_release(object[0]);
    xpc_release(v7);
  }

  _Block_object_dispose(&v44, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_297351DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, uint64_t a23, void *__p, uint64_t a25)
{
  if (v25)
  {
    _Block_release(v25);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v26 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&object);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v27 - 112);
  _Block_object_dispose((v27 - 96), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[8];
    v15[0] = a1[7];
    v15[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E3A378;
    aBlock[4] = a1[4];
    v13 = 1;
    v5 = a1[6];
    if (v5)
    {
      v5 = _Block_copy(v5);
    }

    v12 = v5;
    v6 = _Block_copy(aBlock);
    v14 = v6;
    AWDModule::enableMetricSubmission_sync(v3, v15, 1, &v14);
    if (v6)
    {
      _Block_release(v6);
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v7 = v12;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v12;
      if (v12)
      {
LABEL_11:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v8 = xpc_null_create();
    v9 = a1[6];
    v16 = v8;
    v10 = xpc_null_create();
    (*(v9 + 16))(v9, 3760250880, &v16);
    xpc_release(v16);
    xpc_release(v10);
  }
}

void sub_297352128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_297352228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(void *a1, void *a2)
{
  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[7];
  v5 = a2[8];
  a1[6] = result;
  a1[7] = v6;
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
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

  _Block_release(v2);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 != 1)
    {
      if (v13)
      {
        if (v13 - 2 > 3)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v15 = v2[17];
    if (v15)
    {
      v16 = v2 + 17;
      do
      {
        v17 = *(v15 + 32);
        v18 = v17 >= v13;
        v19 = v17 < v13;
        if (v18)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v16 != v2 + 17 && *(v16 + 32) <= v13)
      {
        *(v30 + 6) = -534716416;
        v20 = v16[6];
        v28[0] = v16[5];
        v28[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        object[0] = MEMORY[0x29EDCA5F8];
        object[1] = 1174405120;
        object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke;
        object[3] = &unk_2A1E3A420;
        object[5] = v2;
        v21 = *(v1 + 32);
        if (v21)
        {
          v21 = _Block_copy(v21);
        }

        aBlock = v21;
        v26 = v16;
        object[4] = &v29;
        v22 = _Block_copy(object);
        v27 = v22;
        AWDModule::clearConfiguration_sync(v2, v28, &v27);
        if (v22)
        {
          _Block_release(v22);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }
    }
  }

LABEL_2:
  v3 = v30;
  if (*(v30 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v33 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v33);
    xpc_release(v33);
    xpc_release(v7);
  }

  _Block_object_dispose(&v29, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_29735264C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a20);
  _Block_object_dispose((v21 - 88), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[7];
    v5 = *(v4 + 48);
    v16[0] = *(v4 + 40);
    v16[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E3A3E8;
    aBlock[4] = a1[4];
    v14 = 1;
    v6 = a1[6];
    if (v6)
    {
      v6 = _Block_copy(v6);
    }

    v13 = v6;
    v7 = _Block_copy(aBlock);
    v15 = v7;
    AWDModule::enableMetricSubmission_sync(v3, v16, 0, &v15);
    if (v7)
    {
      _Block_release(v7);
    }

    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v8 = v13;
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = v13;
      if (v13)
      {
LABEL_11:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v9 = xpc_null_create();
    v10 = a1[6];
    v17 = v9;
    v11 = xpc_null_create();
    (*(v10 + 16))(v10, 3760250880, &v17);
    xpc_release(v17);
    xpc_release(v11);
  }
}

void sub_297352904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_297352A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    aBlock[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      aBlock[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(aBlock, 0xFFFFFFFFLL);
    xpc_release(aBlock[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v51 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5E8]);
          aBlock[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE680]);
          aBlock[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5A0]);
          aBlock[0] = v24;
          if (v24)
          {
            xpc_retain(v24);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v26 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE570]);
          aBlock[0] = v26;
          if (v26)
          {
            xpc_retain(v26);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v27 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v28 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE520]);
          aBlock[0] = v28;
          if (v28)
          {
            xpc_retain(v28);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v29 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v30 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE6D8]);
          aBlock[0] = v30;
          if (v30)
          {
            xpc_retain(v30);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v31 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v32 = *(v16 + 40);
          v33 = *(v16 + 48);
          v49[0] = v32;
          v49[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object = __PAIR64__(v29, v27);
          v43 = 0;
          v44 = v31;
          v45 = 0;
          v46 = -1431699456;
          v47 = -1431655936;
          v48 = -1431655936;
          v40[0] = v25;
          v40[1] = v21;
          v40[2] = v23;
          v40[3] = -1431655766;
          v41 = 0;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke;
          aBlock[3] = &unk_2A1E3A458;
          aBlock[4] = &v50;
          v34 = *(v1 + 32);
          if (v34)
          {
            v34 = _Block_copy(v34);
          }

          v38 = v34;
          v35 = _Block_copy(aBlock);
          v39 = v35;
          AWDModule::queryMetric_sync(v2, v49, &object, v40, &v39);
          if (v35)
          {
            _Block_release(v35);
          }

          if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v38)
          {
            _Block_release(v38);
          }
        }
      }
    }
  }

  v3 = v51;
  if (*(v51 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &object);
    xpc_release(object);
    xpc_release(v7);
  }

  _Block_object_dispose(&v50, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_297352FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a26);
  _Block_object_dispose((v27 - 120), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_29735321C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v34 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE910]);
          object[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5D0]);
          object[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          LOWORD(v37) = -21846;
          BYTE2(v37) = -86;
          LOBYTE(v37) = awd::AppContext::getProperties(*(v16 + 40));
          BYTE1(v37) = v23;
          BYTE2(v37) = v21;
          v24 = *(v16 + 40);
          awd::AppContext::setProperties();
          v25 = *(v16 + 48);
          v32[0] = *(v16 + 40);
          v32[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object[0] = MEMORY[0x29EDCA5F8];
          object[1] = 1174405120;
          object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke;
          object[3] = &unk_2A1E3A490;
          object[4] = &v33;
          v26 = *(v1 + 32);
          if (v26)
          {
            v26 = _Block_copy(v26);
          }

          aBlock = v26;
          v27 = _Block_copy(object);
          v31 = v27;
          AWDModule::updateProperties_sync(v2, v32, &v31);
          if (v27)
          {
            _Block_release(v27);
          }

          if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }
    }
  }

  v3 = v34;
  if (*(v34 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v37 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v37);
    xpc_release(v37);
    xpc_release(v7);
  }

  _Block_object_dispose(&v33, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_297353628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a18);
  _Block_object_dispose(&a20, 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_297353824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<awd::AppContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3A4D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::AppContext>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = a1[3];
  if (v8)
  {

    dispatch_release(v8);
  }
}

uint64_t __cxx_global_var_init_49()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

void StatsModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v11[0] = v6;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  StatsModule::StatsModule(v4, v11);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v9 = *a2 + 72;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN11StatsModule4initEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_10;
  v12[4] = v8;
  v13 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22_0;
  block[4] = v9;
  block[5] = &v13;
  v10 = *(v8 + 88);
  if (*(v8 + 96))
  {
    dispatch_async_and_wait(v10, block);
  }

  else
  {
    dispatch_sync(v10, block);
  }
}

void sub_297353AEC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void StatsModule::init(StatsModule *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11StatsModule4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_10;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22_0;
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

uint64_t StatsModule::StatsModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
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
    *a1 = &unk_2A1E34AE8;
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
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E3A520;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "stats.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("stats.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
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
  MEMORY[0x29C26DE70](a1 + 104, v9);
  MEMORY[0x29C26DE80](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E3A520;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}