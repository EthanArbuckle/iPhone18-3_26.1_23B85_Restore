void sub_297031C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  operator delete(v25);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*v24)
  {
    _Block_release(*v24);
  }

  _Unwind_Resume(a1);
}

void ABMServerInternal::handleClientError_sync(void *a1, xpc_object_t *a2, xpc::object *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v48 = 0;
    v49 = 0;
    v8 = a1 + 11;
    v7 = a1[11];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = xpc_null_create();
    v48 = 0;
    v49 = 0;
    v8 = a1 + 11;
    v7 = a1[11];
    if (!v7)
    {
LABEL_12:
      v13 = 0;
      v14 = 0;
      goto LABEL_13;
    }
  }

  v9 = v8;
  do
  {
    v10 = v7[4];
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v7;
    }

    v7 = v7[v12];
  }

  while (v7);
  if (v9 == v8 || v6 < v9[4])
  {
    goto LABEL_12;
  }

  v14 = v9[5];
  v13 = v9[6];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = v14;
  v49 = v13;
LABEL_13:
  xpc_release(v6);
  if (v14)
  {
    memset(v47, 170, 24);
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      v50.__r_.__value_.__r.__words[2] = *(v14 + 2);
      *&v50.__r_.__value_.__l.__data_ = v15;
    }

    v16 = std::string::insert(&v50, 0, "Client '", 8uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v52 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = SHIBYTE(v52);
    if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
    {
      v18 = __p[1];
      v21 = v52 & 0x7FFFFFFFFFFFFFFFLL;
      v20 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v20 == __p[1])
      {
        v22 = 0x7FFFFFFFFFFFFFF7;
        if (v21 == 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = __p[0];
        if (v20 > 0x3FFFFFFFFFFFFFF2)
        {
          v25 = 0;
LABEL_32:
          v26 = operator new(v22);
          v27 = v26;
          if (v20)
          {
            memmove(v26, v19, v20);
          }

          v27[v20] = 39;
          if (!v25)
          {
            operator delete(v19);
          }

          __p[1] = v21;
          v52 = v22 | 0x8000000000000000;
          __p[0] = v27;
          v28 = &v27[v21];
LABEL_45:
          *v28 = 0;
          *v47 = *__p;
          v47[2] = v52;
          __p[1] = 0;
          v52 = 0;
          __p[0] = 0;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
            v30 = *a3;
            if (*a3 != MEMORY[0x29EDCA9C0])
            {
LABEL_47:
              if (v30 == MEMORY[0x29EDCA9B8])
              {
                v32 = a1[9];
                if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_77;
                }

                v43 = v47;
                if (SHIBYTE(v47[2]) < 0)
                {
                  v43 = v47[0];
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v43;
                v44 = "#D %s connection interrupted";
              }

              else
              {
                v31 = MEMORY[0x29EDCA9D0];
                v32 = a1[9];
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
                if (v30 != v31)
                {
                  if (v33)
                  {
                    xpc::object::to_string(__p, a3);
                    v34 = v47;
                    if (SHIBYTE(v47[2]) < 0)
                    {
                      v34 = v47[0];
                    }

                    v35 = v52 >= 0 ? __p : __p[0];
                    LODWORD(v50.__r_.__value_.__l.__data_) = 136315394;
                    *(v50.__r_.__value_.__r.__words + 4) = v34;
                    WORD2(v50.__r_.__value_.__r.__words[1]) = 2080;
                    *(&v50.__r_.__value_.__r.__words[1] + 6) = v35;
                    _os_log_debug_impl(&dword_296FF7000, v32, OS_LOG_TYPE_DEBUG, "#D %s %s", &v50, 0x16u);
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__p[0]);
                      if (SHIBYTE(v47[2]) < 0)
                      {
                        goto LABEL_78;
                      }

                      goto LABEL_79;
                    }
                  }

LABEL_77:
                  if (SHIBYTE(v47[2]) < 0)
                  {
LABEL_78:
                    operator delete(v47[0]);
                  }

LABEL_79:
                  v13 = v49;
                  goto LABEL_80;
                }

                if (!v33)
                {
                  goto LABEL_77;
                }

                v46 = v47;
                if (SHIBYTE(v47[2]) < 0)
                {
                  v46 = v47[0];
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v46;
                v44 = "#D %s will be terminated";
              }

              _os_log_debug_impl(&dword_296FF7000, v32, OS_LOG_TYPE_DEBUG, v44, __p, 0xCu);
              if ((SHIBYTE(v47[2]) & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }
          }

          else
          {
            v30 = *a3;
            if (*a3 != MEMORY[0x29EDCA9C0])
            {
              goto LABEL_47;
            }
          }

          v36 = a1[9];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v47;
            if (SHIBYTE(v47[2]) < 0)
            {
              v37 = v47[0];
            }

            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v37;
            _os_log_impl(&dword_296FF7000, v36, OS_LOG_TYPE_DEFAULT, "#I %s disappeared", __p, 0xCu);
          }

          v38 = a1[11];
          if (v38)
          {
            v39 = *a2;
            v40 = v8;
            do
            {
              v41 = *(v38 + 32);
              v11 = v41 >= v39;
              v42 = v41 < v39;
              if (v11)
              {
                v40 = v38;
              }

              v38 = *(v38 + 8 * v42);
            }

            while (v38);
            if (v40 != v8 && v39 >= *(v40 + 32))
            {
              std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase(a1 + 10, v40);
            }
          }

          goto LABEL_77;
        }

LABEL_23:
        v23 = 2 * v20;
        if (v21 > 2 * v20)
        {
          v23 = v21;
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
          v22 = v24;
        }

        else
        {
          v22 = 23;
        }

        v25 = v20 == 22;
        goto LABEL_32;
      }

      v19 = __p[0];
    }

    else
    {
      v19 = __p;
      if (SHIBYTE(v52) == 22)
      {
        v20 = 22;
        v21 = 23;
        goto LABEL_23;
      }
    }

    *(v18 + v19) = 39;
    v29 = v18 + 1;
    if (SHIBYTE(v52) < 0)
    {
      __p[1] = v29;
    }

    else
    {
      HIBYTE(v52) = v29 & 0x7F;
    }

    v28 = &v29[v19];
    goto LABEL_45;
  }

LABEL_80:
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v45 = *MEMORY[0x29EDCA608];
}

void sub_297032220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_297032288(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
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

void ABMServerInternal::registerNotification(uint64_t a1, void **a2, char a3, const void **a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_28_1;
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

void sub_297032598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, const void *a19)
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
  if (*a4)
  {
    ctu::cf_to_xpc(&v63, *a4, v10);
    xpc_dictionary_set_value(v9, kKeyEventData[0], v63);
    v11 = v63;
    v63 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v63);
    v63 = 0;
  }

  v12 = xpc_string_create(kCommandSignalNotification[0]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, kKeyCommand[0], v12);
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

  xpc_dictionary_set_value(v9, kKeyEvent[0], v15);
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
      _os_log_impl(&dword_296FF7000, v32, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
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
        handler[3] = &__block_descriptor_tmp_34_0;
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
  block[3] = &__block_descriptor_tmp_36_0;
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

void sub_297032CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, xpc_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v41 - 168);
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
    _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "%s is not in client list", buf, 0xCu);
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
    _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I %s registered for: %@", buf, 0x16u);
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

void sub_297033138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29703314C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void sub_297033338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s sent at %llu", buf, 0x20u);
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

void sub_2970335DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
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

void sub_2970336A0(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2);
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
          _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I All clients responded to %s", buf, 0xCu);
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

void sub_297033950(_Unwind_Exception *exception_object)
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
        _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s sent at %llu", buf, 0x20u);
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

void sub_297033BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
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

void sub_297033C50(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
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
          _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Client '%s' responded to %s", buf, 0x16u);
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

void sub_297033E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297033EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
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

void sub_297033F54(_Unwind_Exception *a1)
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
  if (qword_2A18B77C0 != -1)
  {
    dispatch_once(&qword_2A18B77C0, &__block_literal_global_1);
  }

  return _MergedGlobals_1;
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
      qword_2A18B7680 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v7 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:
        _MergedGlobals_1 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
      v7 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }
    }

    v10.st_dev = 136315138;
    *&v10.st_mode = "abmserver";
    _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "%s: Previous shutdown was not clean", &v10, 0xCu);
    goto LABEL_16;
  }

  if (!v1)
  {
    goto LABEL_12;
  }

LABEL_3:
  _MergedGlobals_1 = 1;
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
        qword_2A18B7680 = 0;
      }

      if (GetOsLogContext(void)::onceToken == -1)
      {
        v4 = qword_2A18B7680;
        if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }

      else
      {
        dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
        v4 = qword_2A18B7680;
        if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
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
    qword_2A18B7680 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v4 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
    v4 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
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
  _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, v5, &v10, 0x16u);
LABEL_21:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_2970343FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
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
  if (v2 != 0x8000000297222C7BLL)
  {
    if (((v2 & 0x8000000297222C7BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297222C7BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297222C7BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMServer>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

atomic_ullong *std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E23FA8;
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

void sub_2970347F4(void *a1)
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
  a1->__vftable = &unk_2A1E23FF8;
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

void _ZNSt3__115allocate_sharedB8ne200100I20BootControllerLegacyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(uint64_t *a1@<X8>)
{
  v2 = operator new(0x68uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E24048;
  BootController::BootController(&v2[1]);
  v2[1].__vftable = &unk_2A1E264B8;
  LOBYTE(v2[4].__vftable) = 1;
  *a1 = v3;
  a1[1] = v2;
  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v2[3].__shared_owners_ = v3;
  v2[3].__shared_weak_owners_ = v2;
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_297034B88(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<BootControllerLegacy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E24048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<BootControllerLegacy>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  a1[3] = &unk_2A1E282E8;
  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x29C26B020);
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

uint64_t ctu::cf::insert<char const*,std::string>(__CFDictionary *a1, const __CFString **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
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
    CFDictionaryAddValue(a1, v6, value);
  }

  CFRelease(v7);
LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void sub_297034DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297034DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
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

uint64_t ctu::cf::insert<char const*,char const*>(__CFDictionary *a1, const __CFString **a2, const __CFString **a3, uint64_t a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v8 = value;
  value = 0;
  ctu::cf::convert_copy(&value, a3, 0x8000100, a4, v9);
  v10 = value;
  if (v8)
  {
    v11 = value == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!value)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, value);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_297034F84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297034FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
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
  block[3] = &unk_2A1E24090;
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

const char *diag::config::toString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE63860[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE63888[a1];
  }
}

{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE638A0[a1];
  }
}

const char *diag::config::toStringCompact(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_29EE638B8[a1];
  }
}

BOOL diag::config::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

uint64_t diag::config::asEnum(uint64_t a1, _DWORD *a2)
{
  v7 = 4;
  strcpy(v6, "none");
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (!strcasecmp(v3, v6))
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    v7 = 5;
    strcpy(v6, "reset");
    if (!strcasecmp(v3, v6))
    {
      *a2 = 1;
      return 1;
    }

    else
    {
      v7 = 11;
      strcpy(v6, "reconfigure");
      v4 = strcasecmp(v3, v6);
      result = 0;
      if (!v4)
      {
        *a2 = 2;
        return 1;
      }
    }
  }

  return result;
}

BOOL diag::config::getShouldAlwaysFilter(diag::config *this)
{
  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  return ((IsCarrierBuild | IsInternalBuild | TelephonyUtilIsVendorBuild()) & 1) == 0;
}

void coex::Module::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x58uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  coex::Module::Module(v4, v9);
  *a2 = v5;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E24A68;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v5;
  a2[1] = v8;
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2970354C4(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  _Unwind_Resume(a1);
}

void *coex::Module::Module(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  a1[1] = v4;
  a1[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v5);
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E240D0;
  a1[9] = 0;
  a1[10] = 0;
  if (capabilities::abs::supportsCoex(a1))
  {
    v6 = *a2;
    v7 = a2[1];
    v12 = v6;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    coex::Module::State::create(&v12, &v14);
    v8 = v14;
    v14 = 0uLL;
    v9 = a1[10];
    *(a1 + 9) = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v14 + 1);
    if (*(&v14 + 1) && !atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  return a1;
}

void sub_297035720(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
    Service::~Service(v1);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void coex::Module::State::create(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v4 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v5 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v30, v4);
    v6 = v30;
    v30 = 0uLL;
    v7 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A18B7390;
  }

  v9 = *(&off_2A18B7390 + 1);
  v27[2] = v5;
  v27[3] = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v5 + 48))(&v28, v5);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0xC8uLL);
  v11 = v10;
  v12 = v29;
  v27[0] = v28;
  v27[1] = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *a1;
  v14 = a1[1];
  v26[0] = v13;
  v26[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  coex::Module::State::State(v10, v27, v26);
  *a2 = v11;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v15 = operator new(0x20uLL);
  v15[1] = 0;
  v21 = v15 + 1;
  *v15 = &unk_2A1E24AB8;
  v15[2] = 0;
  v15[3] = v11;
  *(a2 + 8) = v15;
  v22 = v11[1];
  if (!v22)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *v11 = v11;
    v11[1] = v15;
    if (atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v22->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *v11 = v11;
    v11[1] = v15;
    v23 = v15;
    std::__shared_weak_count::__release_weak(v22);
    v15 = v23;
    if (!atomic_fetch_add(v21, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_23:
      v24 = v15;
      (*(*v15 + 16))(v15, v16, v17, v18, v19, v20);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

LABEL_24:
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  coex::Module::State::init(*a2);
  v25 = v29;
  if (v29)
  {
    if (!atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }
  }
}

void sub_297035B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297035B1C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<coex::Module::State> ctu::SharedSynchronizable<coex::Module::State>::make_shared_ptr<coex::Module::State>(coex::Module::State*)::{lambda(coex::Module::State*)#1}::operator() const(coex::Module::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_297035B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  __cxa_end_catch();
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_297035BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297035BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void coex::Module::~Module(coex::Module *this)
{
  *this = &unk_2A1E240D0;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  *this = &unk_2A1E240D0;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  *this = &unk_2A1E240D0;
  v2 = *(this + 10);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(this);
}

_WORD *coex::Module::getBootstrapStages@<X0>(_WORD *this@<X0>, void *a2@<X8>)
{
  if (*(this + 9))
  {
    v3 = operator new(2uLL);
    *a2 = v3;
    *v3 = 256;
    this = v3 + 1;
    a2[1] = this;
    a2[2] = this;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

_WORD *coex::Module::State::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *coex::Module::getShutdownStages@<X0>(_BYTE *this@<X0>, void *a2@<X8>)
{
  if (*(this + 9))
  {
    v3 = operator new(1uLL);
    *a2 = v3;
    *v3 = 3;
    this = v3 + 1;
    a2[1] = this;
    a2[2] = this;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

_BYTE *coex::Module::State::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void coex::Module::bootstrap(coex::Module *a1)
{
  v2 = *(a1 + 9);
  if (v2)
  {
    coex::Module::State::registerEventHandlers(v2, a1);
  }
}

void coex::Module::State::registerEventHandlers(coex::Module::State *this, coex::Module *a2)
{
  v3 = *(this + 1);
  if (!v3 || (v5 = *this, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[1] = a2;
  v9 = *(this + 2);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<coex::Module::State>::execute_wrapped<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>(coex::Module::State::registerEventHandlers(coex::Module*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0,dispatch_queue_s *::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void coex::Module::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *a3;
    v6 = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v4);
      coex::Module::State::shutdown(v3, a2, &v6);
      dispatch_group_leave(v4);

      dispatch_release(v4);
    }

    else
    {
      coex::Module::State::shutdown(v3, a2, &v6);
    }
  }
}

void coex::Module::State::shutdown(uint64_t *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN4coex6Module5State8shutdownE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_118;
  v5 = *a3;
  v13[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[1];
  if (!v6 || (v7 = *a1, (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E255E0;
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

void coex::Module::State::init(coex::Module::State *this)
{
  v850 = *MEMORY[0x29EDCA608];
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v744 = this;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v7 = v5;
  v8 = *(v744 + 7);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State4initEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_25;
  aBlock[4] = v744;
  aBlock[5] = v3;
  v761 = v7;
  v815 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = _Block_copy(aBlock);
  v10 = v9;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v8;
  LODWORD(v839) = 1200;
  if (!v9)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v8 + 1, &block);
    v11 = v838[1];
    if (!v838[1])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v838[1] = _Block_copy(v9);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v8 + 1, &block);
  v11 = v838[1];
  if (v838[1])
  {
LABEL_9:
    _Block_release(v11);
  }

LABEL_10:
  if (v10)
  {
    _Block_release(v10);
  }

  v12 = *(v744 + 7);
  v812[0] = MEMORY[0x29EDCA5F8];
  v812[1] = 1174405120;
  v812[2] = ___ZN4coex6Module5State4initEv_block_invoke_21;
  v812[3] = &__block_descriptor_tmp_24_1;
  v812[4] = v744;
  v812[5] = v3;
  v813 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(v812);
  v14 = v13;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v12;
  LODWORD(v839) = 1201;
  if (!v13)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v12 + 1, &block);
    v15 = v838[1];
    if (!v838[1])
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v838[1] = _Block_copy(v13);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v12 + 1, &block);
  v15 = v838[1];
  if (v838[1])
  {
LABEL_16:
    _Block_release(v15);
  }

LABEL_17:
  if (v14)
  {
    _Block_release(v14);
  }

  v16 = *(v744 + 7);
  v810[0] = MEMORY[0x29EDCA5F8];
  v810[1] = 1174405120;
  v810[2] = ___ZN4coex6Module5State4initEv_block_invoke_25;
  v810[3] = &__block_descriptor_tmp_28_2;
  v810[4] = v744;
  v810[5] = v3;
  v811 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = _Block_copy(v810);
  v18 = v17;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v16;
  LODWORD(v839) = 1202;
  if (!v17)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v16 + 1, &block);
    v19 = v838[1];
    if (!v838[1])
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v838[1] = _Block_copy(v17);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v16 + 1, &block);
  v19 = v838[1];
  if (v838[1])
  {
LABEL_23:
    _Block_release(v19);
  }

LABEL_24:
  if (v18)
  {
    _Block_release(v18);
  }

  v20 = *(v744 + 7);
  v808[0] = MEMORY[0x29EDCA5F8];
  v808[1] = 1174405120;
  v808[2] = ___ZN4coex6Module5State4initEv_block_invoke_29;
  v808[3] = &__block_descriptor_tmp_32_0;
  v808[4] = v744;
  v808[5] = v3;
  v809 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = _Block_copy(v808);
  v22 = v21;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v20;
  LODWORD(v839) = 1203;
  if (!v21)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v20 + 1, &block);
    v23 = v838[1];
    if (!v838[1])
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v838[1] = _Block_copy(v21);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v20 + 1, &block);
  v23 = v838[1];
  if (v838[1])
  {
LABEL_30:
    _Block_release(v23);
  }

LABEL_31:
  if (v22)
  {
    _Block_release(v22);
  }

  v24 = *(v744 + 7);
  v806[0] = MEMORY[0x29EDCA5F8];
  v806[1] = 1174405120;
  v806[2] = ___ZN4coex6Module5State4initEv_block_invoke_33;
  v806[3] = &__block_descriptor_tmp_36_1;
  v806[4] = v744;
  v806[5] = v3;
  v807 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = _Block_copy(v806);
  v26 = v25;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v24;
  LODWORD(v839) = 1206;
  if (!v25)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v24 + 1, &block);
    v27 = v838[1];
    if (!v838[1])
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v838[1] = _Block_copy(v25);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v24 + 1, &block);
  v27 = v838[1];
  if (v838[1])
  {
LABEL_37:
    _Block_release(v27);
  }

LABEL_38:
  if (v26)
  {
    _Block_release(v26);
  }

  v28 = *(v744 + 7);
  v804[0] = MEMORY[0x29EDCA5F8];
  v804[1] = 1174405120;
  v804[2] = ___ZN4coex6Module5State4initEv_block_invoke_37;
  v804[3] = &__block_descriptor_tmp_40_1;
  v804[4] = v744;
  v804[5] = v3;
  v805 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = _Block_copy(v804);
  v30 = v29;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v28;
  LODWORD(v839) = 1204;
  if (!v29)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v28 + 1, &block);
    v31 = v838[1];
    if (!v838[1])
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v838[1] = _Block_copy(v29);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v28 + 1, &block);
  v31 = v838[1];
  if (v838[1])
  {
LABEL_44:
    _Block_release(v31);
  }

LABEL_45:
  if (v30)
  {
    _Block_release(v30);
  }

  v32 = *(v744 + 7);
  v802[0] = MEMORY[0x29EDCA5F8];
  v802[1] = 1174405120;
  v802[2] = ___ZN4coex6Module5State4initEv_block_invoke_41;
  v802[3] = &__block_descriptor_tmp_44;
  v802[4] = v744;
  v802[5] = v3;
  v803 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = _Block_copy(v802);
  v34 = v33;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v32;
  LODWORD(v839) = 1205;
  if (!v33)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v32 + 1, &block);
    v35 = v838[1];
    if (!v838[1])
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v838[1] = _Block_copy(v33);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v32 + 1, &block);
  v35 = v838[1];
  if (v838[1])
  {
LABEL_51:
    _Block_release(v35);
  }

LABEL_52:
  if (v34)
  {
    _Block_release(v34);
  }

  v36 = *(v744 + 7);
  v800[0] = MEMORY[0x29EDCA5F8];
  v800[1] = 1174405120;
  v800[2] = ___ZN4coex6Module5State4initEv_block_invoke_45;
  v800[3] = &__block_descriptor_tmp_48_0;
  v800[4] = v744;
  v800[5] = v3;
  v801 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = _Block_copy(v800);
  v38 = v37;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v36;
  LODWORD(v839) = 1207;
  if (!v37)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v36 + 1, &block);
    v39 = v838[1];
    if (!v838[1])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v838[1] = _Block_copy(v37);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v36 + 1, &block);
  v39 = v838[1];
  if (v838[1])
  {
LABEL_58:
    _Block_release(v39);
  }

LABEL_59:
  if (v38)
  {
    _Block_release(v38);
  }

  v40 = *(v744 + 7);
  v798[0] = MEMORY[0x29EDCA5F8];
  v798[1] = 1174405120;
  v798[2] = ___ZN4coex6Module5State4initEv_block_invoke_49;
  v798[3] = &__block_descriptor_tmp_52_2;
  v798[4] = v744;
  v798[5] = v3;
  v799 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = _Block_copy(v798);
  v42 = v41;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v40;
  LODWORD(v839) = 1208;
  if (!v41)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v40 + 1, &block);
    v43 = v838[1];
    if (!v838[1])
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v838[1] = _Block_copy(v41);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v40 + 1, &block);
  v43 = v838[1];
  if (v838[1])
  {
LABEL_65:
    _Block_release(v43);
  }

LABEL_66:
  if (v42)
  {
    _Block_release(v42);
  }

  v44 = *(v744 + 7);
  v796[0] = MEMORY[0x29EDCA5F8];
  v796[1] = 1174405120;
  v796[2] = ___ZN4coex6Module5State4initEv_block_invoke_53;
  v796[3] = &__block_descriptor_tmp_56;
  v796[4] = v744;
  v796[5] = v3;
  v797 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v45 = _Block_copy(v796);
  v46 = v45;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v44;
  LODWORD(v839) = 1209;
  if (!v45)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v44 + 1, &block);
    v47 = v838[1];
    if (!v838[1])
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v838[1] = _Block_copy(v45);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v44 + 1, &block);
  v47 = v838[1];
  if (v838[1])
  {
LABEL_72:
    _Block_release(v47);
  }

LABEL_73:
  if (v46)
  {
    _Block_release(v46);
  }

  v48 = *(v744 + 7);
  v794[0] = MEMORY[0x29EDCA5F8];
  v794[1] = 1174405120;
  v794[2] = ___ZN4coex6Module5State4initEv_block_invoke_57;
  v794[3] = &__block_descriptor_tmp_60_2;
  v794[4] = v744;
  v794[5] = v3;
  v795 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v49 = _Block_copy(v794);
  v50 = v49;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v48;
  LODWORD(v839) = 1210;
  if (!v49)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v48 + 1, &block);
    v51 = v838[1];
    if (!v838[1])
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v838[1] = _Block_copy(v49);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v48 + 1, &block);
  v51 = v838[1];
  if (v838[1])
  {
LABEL_79:
    _Block_release(v51);
  }

LABEL_80:
  if (v50)
  {
    _Block_release(v50);
  }

  v52 = *(v744 + 7);
  v792[0] = MEMORY[0x29EDCA5F8];
  v792[1] = 1174405120;
  v792[2] = ___ZN4coex6Module5State4initEv_block_invoke_61;
  v792[3] = &__block_descriptor_tmp_64_0;
  v792[4] = v744;
  v792[5] = v3;
  v793 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v53 = _Block_copy(v792);
  v54 = v53;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v52;
  LODWORD(v839) = 1211;
  if (!v53)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v52 + 1, &block);
    v55 = v838[1];
    if (!v838[1])
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v838[1] = _Block_copy(v53);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v52 + 1, &block);
  v55 = v838[1];
  if (v838[1])
  {
LABEL_86:
    _Block_release(v55);
  }

LABEL_87:
  if (v54)
  {
    _Block_release(v54);
  }

  v56 = *(v744 + 7);
  v790[0] = MEMORY[0x29EDCA5F8];
  v790[1] = 1174405120;
  v790[2] = ___ZN4coex6Module5State4initEv_block_invoke_65;
  v790[3] = &__block_descriptor_tmp_68;
  v790[4] = v744;
  v790[5] = v3;
  v791 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v57 = _Block_copy(v790);
  v58 = v57;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v56;
  LODWORD(v839) = 1212;
  if (!v57)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v56 + 1, &block);
    v59 = v838[1];
    if (!v838[1])
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v838[1] = _Block_copy(v57);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v56 + 1, &block);
  v59 = v838[1];
  if (v838[1])
  {
LABEL_93:
    _Block_release(v59);
  }

LABEL_94:
  if (v58)
  {
    _Block_release(v58);
  }

  v60 = *(v744 + 7);
  v788[0] = MEMORY[0x29EDCA5F8];
  v788[1] = 1174405120;
  v788[2] = ___ZN4coex6Module5State4initEv_block_invoke_69;
  v788[3] = &__block_descriptor_tmp_72_0;
  v788[4] = v744;
  v788[5] = v3;
  v789 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v61 = _Block_copy(v788);
  v62 = v61;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v60;
  LODWORD(v839) = 1213;
  if (!v61)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v60 + 1, &block);
    v63 = v838[1];
    if (!v838[1])
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  v838[1] = _Block_copy(v61);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v60 + 1, &block);
  v63 = v838[1];
  if (v838[1])
  {
LABEL_100:
    _Block_release(v63);
  }

LABEL_101:
  if (v62)
  {
    _Block_release(v62);
  }

  v64 = *(v744 + 7);
  v786[0] = MEMORY[0x29EDCA5F8];
  v786[1] = 1174405120;
  v786[2] = ___ZN4coex6Module5State4initEv_block_invoke_73;
  v786[3] = &__block_descriptor_tmp_76;
  v786[4] = v744;
  v786[5] = v3;
  v787 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v65 = _Block_copy(v786);
  v66 = v65;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v64;
  LODWORD(v839) = 1214;
  if (!v65)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v64 + 1, &block);
    v67 = v838[1];
    if (!v838[1])
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  v838[1] = _Block_copy(v65);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v64 + 1, &block);
  v67 = v838[1];
  if (v838[1])
  {
LABEL_107:
    _Block_release(v67);
  }

LABEL_108:
  if (v66)
  {
    _Block_release(v66);
  }

  v68 = *(v744 + 7);
  v784[0] = MEMORY[0x29EDCA5F8];
  v784[1] = 1174405120;
  v784[2] = ___ZN4coex6Module5State4initEv_block_invoke_77;
  v784[3] = &__block_descriptor_tmp_80_0;
  v784[4] = v744;
  v784[5] = v3;
  v785 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v69 = _Block_copy(v784);
  v70 = v69;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v68;
  LODWORD(v839) = 1215;
  if (!v69)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v68 + 1, &block);
    v71 = v838[1];
    if (!v838[1])
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v838[1] = _Block_copy(v69);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v68 + 1, &block);
  v71 = v838[1];
  if (v838[1])
  {
LABEL_114:
    _Block_release(v71);
  }

LABEL_115:
  if (v70)
  {
    _Block_release(v70);
  }

  v72 = *(v744 + 7);
  v782[0] = MEMORY[0x29EDCA5F8];
  v782[1] = 1174405120;
  v782[2] = ___ZN4coex6Module5State4initEv_block_invoke_81;
  v782[3] = &__block_descriptor_tmp_84;
  v782[4] = v744;
  v782[5] = v3;
  v783 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v73 = _Block_copy(v782);
  v74 = v73;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v72;
  LODWORD(v839) = 1216;
  if (!v73)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v72 + 1, &block);
    v75 = v838[1];
    if (!v838[1])
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v838[1] = _Block_copy(v73);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v72 + 1, &block);
  v75 = v838[1];
  if (v838[1])
  {
LABEL_121:
    _Block_release(v75);
  }

LABEL_122:
  if (v74)
  {
    _Block_release(v74);
  }

  v76 = *(v744 + 7);
  v780[0] = MEMORY[0x29EDCA5F8];
  v780[1] = 1174405120;
  v780[2] = ___ZN4coex6Module5State4initEv_block_invoke_85;
  v780[3] = &__block_descriptor_tmp_88;
  v780[4] = v744;
  v780[5] = v3;
  v781 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v77 = _Block_copy(v780);
  v78 = v77;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v76;
  LODWORD(v839) = 1221;
  if (!v77)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v76 + 1, &block);
    v79 = v838[1];
    if (!v838[1])
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  v838[1] = _Block_copy(v77);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v76 + 1, &block);
  v79 = v838[1];
  if (v838[1])
  {
LABEL_128:
    _Block_release(v79);
  }

LABEL_129:
  if (v78)
  {
    _Block_release(v78);
  }

  v80 = *(v744 + 7);
  v778[0] = MEMORY[0x29EDCA5F8];
  v778[1] = 1174405120;
  v778[2] = ___ZN4coex6Module5State4initEv_block_invoke_89;
  v778[3] = &__block_descriptor_tmp_92;
  v778[4] = v744;
  v778[5] = v3;
  v779 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v81 = _Block_copy(v778);
  v82 = v81;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v80;
  LODWORD(v839) = 1224;
  if (!v81)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v80 + 1, &block);
    v83 = v838[1];
    if (!v838[1])
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v838[1] = _Block_copy(v81);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v80 + 1, &block);
  v83 = v838[1];
  if (v838[1])
  {
LABEL_135:
    _Block_release(v83);
  }

LABEL_136:
  if (v82)
  {
    _Block_release(v82);
  }

  v84 = *(v744 + 7);
  v776[0] = MEMORY[0x29EDCA5F8];
  v776[1] = 1174405120;
  v776[2] = ___ZN4coex6Module5State4initEv_block_invoke_93;
  v776[3] = &__block_descriptor_tmp_96;
  v776[4] = v744;
  v776[5] = v3;
  v777 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v85 = _Block_copy(v776);
  v86 = v85;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v84;
  LODWORD(v839) = 1222;
  if (!v85)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v84 + 1, &block);
    v87 = v838[1];
    if (!v838[1])
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  v838[1] = _Block_copy(v85);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v84 + 1, &block);
  v87 = v838[1];
  if (v838[1])
  {
LABEL_142:
    _Block_release(v87);
  }

LABEL_143:
  if (v86)
  {
    _Block_release(v86);
  }

  v88 = *(v744 + 7);
  v774[0] = MEMORY[0x29EDCA5F8];
  v774[1] = 1174405120;
  v774[2] = ___ZN4coex6Module5State4initEv_block_invoke_97;
  v774[3] = &__block_descriptor_tmp_100;
  v774[4] = v744;
  v774[5] = v3;
  v775 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v89 = _Block_copy(v774);
  v90 = v89;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v88;
  LODWORD(v839) = 1217;
  if (!v89)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v88 + 1, &block);
    v91 = v838[1];
    if (!v838[1])
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  v838[1] = _Block_copy(v89);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v88 + 1, &block);
  v91 = v838[1];
  if (v838[1])
  {
LABEL_149:
    _Block_release(v91);
  }

LABEL_150:
  if (v90)
  {
    _Block_release(v90);
  }

  v92 = *(v744 + 7);
  v772[0] = MEMORY[0x29EDCA5F8];
  v772[1] = 1174405120;
  v772[2] = ___ZN4coex6Module5State4initEv_block_invoke_101;
  v772[3] = &__block_descriptor_tmp_104;
  v772[4] = v744;
  v772[5] = v3;
  v773 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v93 = _Block_copy(v772);
  v94 = v93;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v92;
  LODWORD(v839) = 1218;
  if (!v93)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v92 + 1, &block);
    v95 = v838[1];
    if (!v838[1])
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v838[1] = _Block_copy(v93);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v92 + 1, &block);
  v95 = v838[1];
  if (v838[1])
  {
LABEL_156:
    _Block_release(v95);
  }

LABEL_157:
  if (v94)
  {
    _Block_release(v94);
  }

  v96 = *(v744 + 7);
  v770[0] = MEMORY[0x29EDCA5F8];
  v770[1] = 1174405120;
  v770[2] = ___ZN4coex6Module5State4initEv_block_invoke_105;
  v770[3] = &__block_descriptor_tmp_108_1;
  v770[4] = v744;
  v770[5] = v3;
  v771 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v97 = _Block_copy(v770);
  v98 = v97;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v96;
  LODWORD(v839) = 1219;
  if (!v97)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v96 + 1, &block);
    v99 = v838[1];
    if (!v838[1])
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  v838[1] = _Block_copy(v97);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v96 + 1, &block);
  v99 = v838[1];
  if (v838[1])
  {
LABEL_163:
    _Block_release(v99);
  }

LABEL_164:
  if (v98)
  {
    _Block_release(v98);
  }

  v100 = *(v744 + 7);
  v768[0] = MEMORY[0x29EDCA5F8];
  v768[1] = 1174405120;
  v768[2] = ___ZN4coex6Module5State4initEv_block_invoke_109;
  v768[3] = &__block_descriptor_tmp_112;
  v768[4] = v744;
  v768[5] = v3;
  v769 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v101 = _Block_copy(v768);
  v102 = v101;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v100;
  LODWORD(v839) = 1220;
  if (!v101)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v100 + 1, &block);
    v103 = v838[1];
    if (!v838[1])
    {
      goto LABEL_171;
    }

    goto LABEL_170;
  }

  v838[1] = _Block_copy(v101);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v100 + 1, &block);
  v103 = v838[1];
  if (v838[1])
  {
LABEL_170:
    _Block_release(v103);
  }

LABEL_171:
  if (v102)
  {
    _Block_release(v102);
  }

  v104 = *(v744 + 7);
  v766[0] = MEMORY[0x29EDCA5F8];
  v766[1] = 1174405120;
  v766[2] = ___ZN4coex6Module5State4initEv_block_invoke_113;
  v766[3] = &__block_descriptor_tmp_116;
  v766[4] = v744;
  v766[5] = v3;
  v767 = v761;
  atomic_fetch_add_explicit(&v761->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v105 = _Block_copy(v766);
  v106 = v105;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  *&v837 = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_5_6;
  v838[0] = v104;
  LODWORD(v839) = 1223;
  if (!v105)
  {
    v838[1] = 0;
    ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v104 + 1, &block);
    v107 = v838[1];
    if (!v838[1])
    {
      goto LABEL_178;
    }

    goto LABEL_177;
  }

  v838[1] = _Block_copy(v105);
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(v104 + 1, &block);
  v107 = v838[1];
  if (v838[1])
  {
LABEL_177:
    _Block_release(v107);
  }

LABEL_178:
  if (v106)
  {
    _Block_release(v106);
  }

  v108 = *(v744 + 7);
  v825[0] = MEMORY[0x29EDCA5F8];
  v825[1] = 0x40000000;
  *&v826 = ___ZN4coex9XpcClient5startEv_block_invoke;
  *(&v826 + 1) = &__block_descriptor_tmp_3;
  *&v827 = v108;
  v816 = v825;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 0x40000000;
  *&v837 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  *(&v837 + 1) = &__block_descriptor_tmp_14_0;
  v838[0] = v108 + 1;
  v838[1] = &v816;
  v109 = v108[3];
  if (v108[4])
  {
    dispatch_async_and_wait(v109, &block);
  }

  else
  {
    dispatch_sync(v109, &block);
  }

  v110 = *(v744 + 5);
  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvvENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEEEENS7_5mutexEEES3_vJEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke;
  v819 = &__block_descriptor_tmp_352;
  v820 = v744;
  v821 = coex::Module::State::handleCommandDriverStarted_sync;
  v822 = 0;
  v111 = _Block_copy(&v816);
  v753 = v110;
  v112 = *(v744 + 1);
  if (!v112 || (v113 = *v744, (v114 = std::__shared_weak_count::lock(v112)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v115 = v114;
  v116 = *(v744 + 2);
  v823 = v116;
  if (v111)
  {
    v117 = _Block_copy(v111);
  }

  else
  {
    v117 = 0;
  }

  v824 = v117;
  dispatch_retain(v116);
  v826 = 0u;
  *v825 = 0u;
  v829 = v116;
  if (v117)
  {
    v117 = _Block_copy(v117);
  }

  v830 = v117;
  dispatch_retain(v116);
  object = v116;
  v738 = v111;
  v742 = v115;
  if (!v117)
  {
    v835 = 0;
    dispatch_retain(v116);
    goto LABEL_199;
  }

  v118 = _Block_copy(v117);
  v835 = v118;
  dispatch_retain(v116);
  if (!v118)
  {
LABEL_199:
    dispatch_retain(v116);
    v831 = 0;
    goto LABEL_200;
  }

  v119 = _Block_copy(v118);
  dispatch_retain(v116);
  v831 = 0;
  if (!v119)
  {
LABEL_200:
    dispatch_retain(v116);
    v733 = 0;
    v124 = 1;
LABEL_201:
    dispatch_retain(v116);
    v745 = 0;
    v125 = 1;
LABEL_202:
    dispatch_retain(v116);
    v121 = 0;
    v126 = 1;
LABEL_203:
    dispatch_retain(v116);
    v122 = 0;
    v832 = v116;
    v127 = 1;
    goto LABEL_204;
  }

  v120 = _Block_copy(v119);
  dispatch_retain(v116);
  v733 = v119;
  if (!v120)
  {
    v124 = 0;
    goto LABEL_201;
  }

  v121 = _Block_copy(v120);
  dispatch_retain(v116);
  v745 = v120;
  if (!v121)
  {
    v124 = 0;
    v125 = 0;
    goto LABEL_202;
  }

  v122 = _Block_copy(v121);
  dispatch_retain(v116);
  if (!v122)
  {
    v124 = 0;
    v125 = 0;
    v126 = 0;
    goto LABEL_203;
  }

  v123 = _Block_copy(v122);
  dispatch_retain(v116);
  v832 = v116;
  if (v123)
  {
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v833 = _Block_copy(v123);
    dispatch_retain(v116);
    dispatch_release(v116);
    _Block_release(v123);
    goto LABEL_205;
  }

  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
LABEL_204:
  v833 = 0;
  dispatch_retain(v116);
  dispatch_release(v116);
LABEL_205:
  dispatch_release(v116);
  if ((v127 & 1) == 0)
  {
    _Block_release(v122);
  }

  dispatch_release(v116);
  if ((v126 & 1) == 0)
  {
    _Block_release(v121);
  }

  v831 = boost::function0<void>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>)::stored_vtable;
  dispatch_release(v116);
  if ((v125 & 1) == 0)
  {
    _Block_release(v745);
  }

  dispatch_release(v116);
  if ((v124 & 1) == 0)
  {
    _Block_release(v733);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function0<void>::move_assign(&block, &v831);
  boost::function0<void>::move_assign(&v831, &v826 + 8);
  boost::function0<void>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v128 = operator new(0x18uLL);
  *v128 = &unk_2A1E24EF0;
  v128[1] = v113;
  v128[2] = v742;
  atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v129 = operator new(0x18uLL);
  *v129 = &unk_2A1E24EF0;
  v129[1] = v113;
  v129[2] = v742;
  atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v129;
  LODWORD(block) = 2;
  v130 = v825[1];
  if (v825[1] < v826)
  {
    v131 = operator new(0x18uLL);
    *v131 = &unk_2A1E24EF0;
    v131[1] = v113;
    v131[2] = v742;
    atomic_fetch_add_explicit(&v742->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v130[1] = v131;
    *v130 = 2;
    v825[1] = v130 + 3;
LABEL_228:
    (*(*v129 + 8))(v129);
    goto LABEL_229;
  }

  v232 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v233 = block ^ (block >> 31);
  v825[1] = v232;
  if (v233 == 2)
  {
    v129 = *(&block + 1);
    if (!*(&block + 1))
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  if (v233 == 1)
  {
    v234 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_420:
      (*(*v234 + 24))(v234);
    }
  }

  else
  {
    v234 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_420;
    }
  }

LABEL_229:
  (*(*v128 + 8))(v128);
  std::__shared_weak_count::__release_weak(v742);
  v132 = *(v753 + 72);
  *&v133 = 0xAAAAAAAAAAAAAAAALL;
  *(&v133 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v133;
  v844 = v133;
  v843 = v133;
  v842 = v133;
  v841 = v133;
  v840 = v133;
  v839 = v133;
  *v838 = v133;
  v837 = v133;
  block = v133;
  v134 = v132[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v134;
  pthread_mutex_lock(v134);
  v135 = v132[1];
  v746 = v132;
  if (!v135 || atomic_load_explicit(v135 + 2, memory_order_acquire) != 1)
  {
    v139 = operator new(0x20uLL);
    v140 = *v132;
    v141 = **v132;
    v734 = v139;
    v142 = operator new(0x40uLL);
    v143 = v142;
    *v142 = v142;
    v142[1] = v142;
    v142[2] = 0;
    v144 = *(v141 + 1);
    if (v144 != v141)
    {
      v145 = 0;
      v146 = v142;
      do
      {
        v147 = operator new(0x20uLL);
        v147[2] = *(v144 + 2);
        v148 = *(v144 + 3);
        v147[3] = v148;
        if (v148)
        {
          atomic_fetch_add_explicit((v148 + 8), 1u, memory_order_relaxed);
          v146 = *v143;
          v145 = v143[2];
        }

        *v147 = v146;
        v147[1] = v143;
        v146[1] = v147;
        *v143 = v147;
        v143[2] = ++v145;
        v144 = *(v144 + 1);
        v146 = v147;
      }

      while (v144 != v141);
    }

    v726 = v140;
    v143[3] = 0;
    v143[4] = 0;
    v149 = v143 + 4;
    v143[5] = 0;
    *(v143 + 48) = *(v141 + 48);
    v754 = (v143 + 3);
    v143[3] = v143 + 4;
    v150 = *(v141 + 3);
    v151 = (v141 + 32);
    if (v150 == (v141 + 32))
    {
LABEL_239:
      *(v143 + 56) = *(v141 + 56);
      v152 = *(v141 + 3);
      if (v152 != v151)
      {
        v153 = v143[3];
        v154 = v143[1];
        do
        {
          v153[6] = v154;
          v155 = v141;
          if (v152 != v151)
          {
            v155 = v152[6];
          }

          v156 = v152[1];
          v157 = v156;
          v158 = v152;
          if (v156)
          {
            do
            {
              v159 = v157;
              v157 = *v157;
            }

            while (v157);
          }

          else
          {
            do
            {
              v159 = v158[2];
              v203 = *v159 == v158;
              v158 = v159;
            }

            while (!v203);
          }

          v160 = v141;
          if (v159 != v151)
          {
            v160 = v159[6];
          }

          while (v155 != v160)
          {
            v155 = *(v155 + 1);
            v154 = *(v154 + 8);
          }

          if (v156)
          {
            do
            {
              v161 = v156;
              v156 = *v156;
            }

            while (v156);
          }

          else
          {
            do
            {
              v161 = v152[2];
              v203 = *v161 == v152;
              v152 = v161;
            }

            while (!v203);
          }

          v162 = v153[1];
          if (v162)
          {
            do
            {
              v163 = v162;
              v162 = *v162;
            }

            while (v162);
          }

          else
          {
            do
            {
              v163 = v153[2];
              v203 = *v163 == v153;
              v153 = v163;
            }

            while (!v203);
          }

          v152 = v161;
          v153 = v163;
        }

        while (v161 != v151);
      }

      *v734 = v143;
      v734[1] = 0;
      v183 = operator new(0x18uLL);
      *(v183 + 1) = 0x100000001;
      *v183 = &unk_2A1E24B78;
      *(v183 + 2) = v143;
      v734[1] = v183;
      v734[2] = v726[2];
      v184 = v726[3];
      v734[3] = v184;
      if (v184)
      {
        atomic_fetch_add_explicit(v184 + 2, 1u, memory_order_relaxed);
      }

      v831 = v734;
      v832 = 0;
      v185 = operator new(0x18uLL);
      v132 = v746;
      v185[1] = 0x100000001;
      *v185 = &unk_2A1E24B08;
      v185[2] = v734;
      v186 = v746[1];
      v831 = *v746;
      *v746 = v734;
      v746[1] = v185;
      v832 = v186;
      if (v186)
      {
        if (atomic_fetch_add(v186 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v186 + 16))(v186);
          if (atomic_fetch_add(v186 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v186 + 24))(v186);
          }
        }
      }

      v136 = **v746;
      v138 = -1;
LABEL_318:
      v137 = *(v136 + 1);
      if (v136 == v137)
      {
        goto LABEL_413;
      }

      goto LABEL_319;
    }

    while (1)
    {
      v164 = *(v150 + 8);
      v165 = *v754;
      v166 = *v149;
      v167 = v143 + 4;
      if (*v754 != v149)
      {
        v168 = *v149;
        v169 = v143 + 4;
        if (v166)
        {
          do
          {
            v167 = v168;
            v168 = v168[1];
          }

          while (v168);
        }

        else
        {
          do
          {
            v167 = v169[2];
            v203 = *v167 == v169;
            v169 = v167;
          }

          while (v203);
        }

        v170 = *(v150 + 10);
        v171 = *(v167 + 8);
        if (v171 == v164)
        {
          if (v164 != 1)
          {
            goto LABEL_284;
          }

          if (*(v167 + 10) >= v170)
          {
            v172 = *v149;
            v173 = v143 + 4;
            v174 = v143 + 4;
            if (v166)
            {
              goto LABEL_288;
            }

LABEL_295:
            v178 = operator new(0x38uLL);
            v179 = *(v150 + 2);
            v178[6] = v150[6];
            *(v178 + 2) = v179;
            *v178 = 0;
            v178[1] = 0;
            v178[2] = v174;
            *v173 = v178;
            if (*v165)
            {
              *v754 = *v165;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v143[4], v178);
            ++v143[5];
            goto LABEL_298;
          }
        }

        else if (v171 >= v164)
        {
LABEL_284:
          v173 = v143 + 4;
          v174 = v143 + 4;
          if (!v166)
          {
            goto LABEL_295;
          }

          v172 = *v149;
          if (v164 != 1)
          {
            v175 = *(v166 + 8);
            v174 = *v149;
            while (v164 != v175)
            {
              if (v164 < v175)
              {
                v182 = *v174;
                v173 = v174;
                if (!*v174)
                {
                  goto LABEL_295;
                }
              }

              else
              {
                if (v175 >= v164)
                {
                  goto LABEL_298;
                }

                v182 = v174[1];
                if (!v182)
                {
                  goto LABEL_294;
                }
              }

              v175 = *(v182 + 32);
              v174 = v182;
            }

            goto LABEL_298;
          }

          while (1)
          {
LABEL_288:
            v174 = v172;
            v176 = *(v172 + 8);
            if (v176 == 1)
            {
              v177 = *(v172 + 10);
              if (v177 > v170)
              {
                goto LABEL_287;
              }

              if (v177 >= v170)
              {
                goto LABEL_298;
              }
            }

            else if (v176 > 1)
            {
LABEL_287:
              v172 = *v172;
              v173 = v174;
              if (!*v174)
              {
                goto LABEL_295;
              }

              continue;
            }

            v172 = v172[1];
            if (!v172)
            {
LABEL_294:
              v173 = v174 + 1;
              goto LABEL_295;
            }
          }
        }
      }

      if (v166)
      {
        v174 = v167;
      }

      else
      {
        v174 = v143 + 4;
      }

      if (v166)
      {
        v173 = v167 + 1;
      }

      else
      {
        v173 = v143 + 4;
      }

      if (!*v173)
      {
        goto LABEL_295;
      }

LABEL_298:
      v180 = v150[1];
      if (v180)
      {
        do
        {
          v181 = v180;
          v180 = *v180;
        }

        while (v180);
      }

      else
      {
        do
        {
          v181 = v150[2];
          v203 = *v181 == v150;
          v150 = v181;
        }

        while (!v203);
      }

      v150 = v181;
      if (v181 == v151)
      {
        goto LABEL_239;
      }
    }
  }

  v136 = **v132;
  v137 = v132[2];
  v138 = 1;
  if (v137 == v136)
  {
    goto LABEL_318;
  }

LABEL_319:
  v187 = 0;
  do
  {
    v189 = *(v137 + 2);
    v190 = *(v189 + 32);
    if (v190)
    {
      for (i = *v190; i != v190[1]; i += 24)
      {
        if ((*i ^ (*i >> 31)) > 1)
        {
          if ((*(**(i + 8) + 24))(*(i + 8)))
          {
            goto LABEL_335;
          }
        }

        else
        {
          v192 = *(i + 16);
          if (!v192 || !atomic_load_explicit((v192 + 8), memory_order_acquire))
          {
LABEL_335:
            if (*(v189 + 24) == 1)
            {
              *(v189 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v189, &block);
            }

            break;
          }
        }
      }
    }

    v193 = *(v137 + 2);
    if (*(v193 + 24))
    {
      v136 = *(v137 + 1);
      goto LABEL_321;
    }

    v194 = **v132;
    v196 = (v194 + 32);
    v195 = *(v194 + 4);
    if (!v195)
    {
      if (*(v194 + 10) != v137)
      {
        goto LABEL_408;
      }

      v216 = *(v137 + 1);
      v218 = (v194 + 32);
      v199 = (v194 + 32);
      if (v216 != v194)
      {
        goto LABEL_404;
      }

LABEL_386:
      v221 = v199[1];
      v222 = v199;
      if (v221)
      {
        do
        {
          v223 = v221;
          v221 = *v221;
        }

        while (v221);
      }

      else
      {
        do
        {
          v223 = v222[2];
          v203 = *v223 == v222;
          v222 = v223;
        }

        while (!v203);
      }

      if (*(v194 + 3) == v199)
      {
        *(v194 + 3) = v223;
      }

      --*(v194 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v195, v199);
      operator delete(v199);
      goto LABEL_408;
    }

    v197 = *(v193 + 64);
    v198 = *(v193 + 72);
    v199 = (v194 + 32);
    v200 = *(v194 + 4);
    if (v197 == 1)
    {
      v199 = (v194 + 32);
      v201 = *(v194 + 4);
      do
      {
        while (1)
        {
          v206 = *(v201 + 32);
          v207 = v206 < 1;
          if (v206 == 1)
          {
            v207 = *(v201 + 40) < v198;
          }

          if (!v207)
          {
            break;
          }

          v201 = *(v201 + 8);
          if (!v201)
          {
            goto LABEL_354;
          }
        }

        v199 = v201;
        v201 = *v201;
      }

      while (v201);
    }

    else
    {
      do
      {
        v202 = *(v200 + 32);
        v203 = v202 == v197;
        v207 = v202 < v197;
        v204 = 8 * (v202 < v197);
        if (v207)
        {
          v205 = v199;
        }

        else
        {
          v205 = v200;
        }

        if (v203)
        {
          v204 = 0;
          v199 = v200;
        }

        else
        {
          v199 = v205;
        }

        v200 = *(v200 + v204);
      }

      while (v200);
    }

LABEL_354:
    if (v199[6] != v137)
    {
      goto LABEL_408;
    }

    v208 = (v194 + 32);
    v209 = *(v194 + 4);
    if (v197 == 1)
    {
      while (1)
      {
        v214 = *(v209 + 8);
        if (v214 == 1)
        {
          if (v198 < *(v209 + 10))
          {
            goto LABEL_369;
          }

LABEL_364:
          v209 = v209[1];
          if (!v209)
          {
            goto LABEL_370;
          }
        }

        else
        {
          if (v214 <= 1)
          {
            goto LABEL_364;
          }

LABEL_369:
          v208 = v209;
          v209 = *v209;
          if (!v209)
          {
            goto LABEL_370;
          }
        }
      }
    }

    do
    {
      v210 = *(v209 + 8);
      v211 = v197 == v210;
      v207 = v197 < v210;
      v212 = v197 >= v210;
      if (v207)
      {
        v213 = v209;
      }

      else
      {
        v213 = v208;
      }

      if (v211)
      {
        v212 = 1;
      }

      else
      {
        v208 = v213;
      }

      v209 = v209[v212];
    }

    while (v209);
LABEL_370:
    v215 = v194;
    if (v208 != v196)
    {
      v215 = v208[6];
    }

    v216 = *(v137 + 1);
    if (v216 == v215)
    {
      goto LABEL_386;
    }

    if (v197 == 1)
    {
      while (1)
      {
        while (1)
        {
          v218 = v195;
          v219 = *(v195 + 8);
          if (v219 == 1)
          {
            break;
          }

          if (v219 <= 1)
          {
            goto LABEL_382;
          }

LABEL_376:
          v195 = *v195;
          if (!*v218)
          {
            v196 = v218;
            goto LABEL_404;
          }
        }

        v220 = *(v195 + 10);
        if (v220 > v198)
        {
          goto LABEL_376;
        }

        if (v220 >= v198)
        {
          *(v195 + 6) = v216;
          goto LABEL_408;
        }

LABEL_382:
        v195 = *(v195 + 1);
        if (!v195)
        {
          v196 = v218 + 1;
          goto LABEL_404;
        }
      }
    }

    v217 = *(v195 + 8);
    if (v197 == v217)
    {
      goto LABEL_407;
    }

    while (v197 >= v217)
    {
      if (v217 >= v197)
      {
        goto LABEL_407;
      }

      v224 = *(v195 + 1);
      if (!v224)
      {
        v196 = v195 + 8;
        goto LABEL_403;
      }

LABEL_395:
      v217 = *(v224 + 8);
      v195 = v224;
      if (v197 == v217)
      {
        v224[6] = v216;
        goto LABEL_408;
      }
    }

    v224 = *v195;
    if (*v195)
    {
      goto LABEL_395;
    }

    v196 = v195;
LABEL_403:
    v218 = v195;
LABEL_404:
    v195 = operator new(0x38uLL);
    v225 = *(v193 + 64);
    *(v195 + 10) = *(v193 + 72);
    *(v195 + 4) = v225;
    *(v195 + 6) = 0;
    *v195 = 0;
    *(v195 + 1) = 0;
    *(v195 + 2) = v218;
    *v196 = v195;
    v226 = **(v194 + 3);
    if (v226)
    {
      *(v194 + 3) = v226;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v194 + 4), v195);
    ++*(v194 + 5);
LABEL_407:
    *(v195 + 6) = v216;
LABEL_408:
    v227 = *v137;
    v136 = *(v137 + 1);
    *(v227 + 8) = v136;
    *v136 = v227;
    --*(v194 + 2);
    v228 = *(v137 + 3);
    if (v228)
    {
      if (atomic_fetch_add(v228 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v228 + 16))(v228);
        if (atomic_fetch_add(v228 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v228 + 24))(v228);
        }
      }
    }

    operator delete(v137);
    v132 = v746;
LABEL_321:
    v188 = v136 != **v132 && v138 >= ++v187;
    v137 = v136;
  }

  while (v188);
LABEL_413:
  v132[2] = v136;
  v229 = operator new(0x50uLL);
  *(v229 + 1) = 0;
  *(v229 + 2) = 0;
  v229[24] = 1;
  *(v229 + 7) = 1;
  *v229 = &unk_2A1E24BD8;
  v230 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v230, v825);
  v230[3] = 0;
  v231 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v230[3] = *(&v826 + 1);
    if (v231)
    {
      *(v230 + 2) = v827;
      v230[6] = v828;
    }

    else
    {
      (*v231)(&v827, v230 + 32, 0);
    }
  }

  *(v229 + 5) = 0;
  *(v229 + 4) = v230;
  v235 = operator new(0x18uLL);
  v235[1] = 0x100000001;
  *v235 = &unk_2A1E24C80;
  v235[2] = v230;
  *(v229 + 5) = v235;
  *(v229 + 6) = v746[3];
  v236 = v746[4];
  *(v229 + 7) = v236;
  if (v236)
  {
    atomic_fetch_add_explicit(v236 + 2, 1u, memory_order_relaxed);
  }

  *(v229 + 16) = 0;
  v229[68] = 0;
  object = v229;
  v835 = 0;
  v237 = operator new(0x18uLL);
  *(v237 + 1) = 0x100000001;
  *v237 = &unk_2A1E24CE0;
  *(v237 + 2) = v229;
  v835 = v237;
  v238 = **v746;
  v239 = operator new(0x20uLL);
  v240 = (v238 + 32);
  v239[2] = v229;
  v239[3] = v237;
  atomic_fetch_add_explicit(v237 + 2, 1u, memory_order_relaxed);
  v241 = *v238;
  *(v241 + 8) = v239;
  *v239 = v241;
  *v238 = v239;
  v239[1] = v238;
  ++*(v238 + 2);
  v242 = *(v238 + 4);
  if (v242)
  {
    v243 = v238 + 32;
    v244 = *(v238 + 4);
    do
    {
      v245 = *(v244 + 32);
      v246 = v245 == 2;
      v207 = v245 < 2;
      v247 = v245 < 2;
      if (!v207)
      {
        v243 = v244;
      }

      if (v246)
      {
        v243 = v244;
      }

      v244 = *(v244 + 8 * v247);
    }

    while (v244);
    if (v243 == v240 || *(v243 + 32) != 2)
    {
      v248 = *(v242 + 8);
      while (v248 != 2)
      {
        if (v248 < 3)
        {
          v249 = v242[1];
          if (!v249)
          {
            v240 = v242 + 1;
            goto LABEL_441;
          }
        }

        else
        {
          v249 = *v242;
          v240 = v242;
          if (!*v242)
          {
            goto LABEL_441;
          }
        }

        v248 = *(v249 + 8);
        v242 = v249;
      }
    }
  }

  else
  {
    v242 = (v238 + 32);
LABEL_441:
    v250 = operator new(0x38uLL);
    v250[4] = 0xAAAAAA0000000002;
    *(v250 + 10) = -1431655766;
    v250[6] = v239;
    *v250 = 0;
    v250[1] = 0;
    v250[2] = v242;
    *v240 = v250;
    v251 = **(v238 + 3);
    if (v251)
    {
      *(v238 + 3) = v251;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v238 + 4), v250);
    ++*(v238 + 5);
    v229 = object;
  }

  v252 = v744;
  *(v229 + 16) = 2;
  *(v229 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v237 + 3, 1u, memory_order_relaxed);
  *&v762 = v229;
  *(&v762 + 1) = v237;
  atomic_fetch_add_explicit(v237 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v237 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v237 + 24))(v237);
  }

  v253 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v253 + 16))(v253);
      if (atomic_fetch_add(v253 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v253 + 24))(v253);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v254 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v715 = __p + 16 * v848;
      do
      {
        v716 = *(v715 - 1);
        if (v716)
        {
          if (atomic_fetch_add(v716 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v716 + 16))(v716);
            if (atomic_fetch_add(v716 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v716 + 24))(v716);
            }
          }
        }

        v715 -= 16;
      }

      while (v715 > v254);
    }

    v252 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v255 = v825[0];
  if (v825[0])
  {
    v256 = v825[1];
    v257 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v256 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v256);
      }

      while (v256 != v255);
      v257 = v825[0];
    }

    v825[1] = v255;
    operator delete(v257);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  if (atomic_fetch_add(&v742->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v258 = v738;
    if (!v738)
    {
      goto LABEL_471;
    }

LABEL_470:
    _Block_release(v258);
  }

  else
  {
    (v742->__on_zero_shared)(v742);
    std::__shared_weak_count::__release_weak(v742);
    v258 = v738;
    if (v738)
    {
      goto LABEL_470;
    }
  }

LABEL_471:
  v259 = operator new(0x20uLL);
  v259[1] = v762;
  v260 = *(v252 + 20);
  v743 = (v252 + 160);
  *v259 = v260;
  *(v259 + 1) = v252 + 160;
  *(v260 + 8) = v259;
  *(v252 + 20) = v259;
  ++*(v252 + 22);
  v261 = *(v252 + 5);
  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS_2cf11CFSharedRefIK14__CFDictionaryEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISF_EENSL_IFvRKNS7_10connectionESD_SE_EEENS7_5mutexEEES3_vJSD_SE_EEEDTcl7connectfp_cvNSI_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSY_S10_E_block_invoke;
  v819 = &__block_descriptor_tmp_378;
  v820 = v252;
  v821 = coex::Module::State::handleCommandDriverStateUpdate_sync;
  v822 = 0;
  v262 = _Block_copy(&v816);
  v755 = v261;
  v263 = *(v252 + 1);
  if (!v263 || (v264 = *v252, (v265 = std::__shared_weak_count::lock(v263)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v266 = v265;
  v267 = *(v252 + 2);
  v823 = v267;
  if (v262)
  {
    v268 = _Block_copy(v262);
  }

  else
  {
    v268 = 0;
  }

  v824 = v268;
  dispatch_retain(v267);
  v826 = 0u;
  *v825 = 0u;
  v829 = v267;
  if (v268)
  {
    v268 = _Block_copy(v268);
  }

  v830 = v268;
  dispatch_retain(v267);
  object = v267;
  v735 = v262;
  v739 = v266;
  if (!v268)
  {
    v835 = 0;
    dispatch_retain(v267);
    goto LABEL_487;
  }

  v269 = _Block_copy(v268);
  v835 = v269;
  dispatch_retain(v267);
  if (!v269)
  {
LABEL_487:
    dispatch_retain(v267);
    v831 = 0;
    goto LABEL_488;
  }

  v270 = _Block_copy(v269);
  dispatch_retain(v267);
  v831 = 0;
  if (!v270)
  {
LABEL_488:
    dispatch_retain(v267);
    v727 = 0;
    v275 = 1;
LABEL_489:
    dispatch_retain(v267);
    v747 = 0;
    v276 = 1;
LABEL_490:
    dispatch_retain(v267);
    v272 = 0;
    v277 = 1;
LABEL_491:
    dispatch_retain(v267);
    v273 = 0;
    v832 = v267;
    v278 = 1;
    goto LABEL_492;
  }

  v271 = _Block_copy(v270);
  dispatch_retain(v267);
  v727 = v270;
  if (!v271)
  {
    v275 = 0;
    goto LABEL_489;
  }

  v272 = _Block_copy(v271);
  dispatch_retain(v267);
  v747 = v271;
  if (!v272)
  {
    v275 = 0;
    v276 = 0;
    goto LABEL_490;
  }

  v273 = _Block_copy(v272);
  dispatch_retain(v267);
  if (!v273)
  {
    v275 = 0;
    v276 = 0;
    v277 = 0;
    goto LABEL_491;
  }

  v274 = _Block_copy(v273);
  dispatch_retain(v267);
  v832 = v267;
  if (v274)
  {
    v275 = 0;
    v276 = 0;
    v277 = 0;
    v278 = 0;
    v833 = _Block_copy(v274);
    dispatch_retain(v267);
    dispatch_release(v267);
    _Block_release(v274);
    goto LABEL_493;
  }

  v275 = 0;
  v276 = 0;
  v277 = 0;
  v278 = 0;
LABEL_492:
  v833 = 0;
  dispatch_retain(v267);
  dispatch_release(v267);
LABEL_493:
  dispatch_release(v267);
  if ((v278 & 1) == 0)
  {
    _Block_release(v273);
  }

  dispatch_release(v267);
  if ((v277 & 1) == 0)
  {
    _Block_release(v272);
  }

  v831 = boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>)::stored_vtable;
  dispatch_release(v267);
  if ((v276 & 1) == 0)
  {
    _Block_release(v747);
  }

  dispatch_release(v267);
  if ((v275 & 1) == 0)
  {
    _Block_release(v727);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(&block, &v831);
  boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(&v831, &v826 + 8);
  boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v279 = operator new(0x18uLL);
  *v279 = &unk_2A1E24EF0;
  v279[1] = v264;
  v279[2] = v739;
  atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v280 = operator new(0x18uLL);
  *v280 = &unk_2A1E24EF0;
  v280[1] = v264;
  v280[2] = v739;
  atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v280;
  LODWORD(block) = 2;
  v281 = v825[1];
  if (v825[1] < v826)
  {
    v282 = operator new(0x18uLL);
    *v282 = &unk_2A1E24EF0;
    v282[1] = v264;
    v282[2] = v739;
    atomic_fetch_add_explicit(&v739->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v281[1] = v282;
    *v281 = 2;
    v825[1] = v281 + 3;
    goto LABEL_516;
  }

  v383 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v384 = block ^ (block >> 31);
  v825[1] = v383;
  if (v384 == 2)
  {
    v280 = *(&block + 1);
    if (*(&block + 1))
    {
LABEL_516:
      (*(*v280 + 8))(v280);
    }
  }

  else if (v384 == 1)
  {
    v385 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_708;
    }
  }

  else
  {
    v385 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_708:
      (*(*v385 + 24))(v385);
    }
  }

  (*(*v279 + 8))(v279);
  std::__shared_weak_count::__release_weak(v739);
  v283 = *(v755 + 96);
  *&v284 = 0xAAAAAAAAAAAAAAAALL;
  *(&v284 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v284;
  v844 = v284;
  v843 = v284;
  v842 = v284;
  v841 = v284;
  v840 = v284;
  v839 = v284;
  *v838 = v284;
  v837 = v284;
  block = v284;
  v285 = v283[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v285;
  pthread_mutex_lock(v285);
  v286 = v283[1];
  v748 = v283;
  if (v286 && atomic_load_explicit(v286 + 2, memory_order_acquire) == 1)
  {
    v287 = **v283;
    v288 = v283[2];
    v289 = 1;
    if (v288 != v287)
    {
      goto LABEL_607;
    }

    goto LABEL_606;
  }

  v290 = operator new(0x20uLL);
  v291 = *v283;
  v292 = **v283;
  v728 = v290;
  v293 = operator new(0x40uLL);
  v294 = v293;
  *v293 = v293;
  v293[1] = v293;
  v293[2] = 0;
  v295 = *(v292 + 1);
  if (v295 != v292)
  {
    v296 = 0;
    v297 = v293;
    do
    {
      v298 = operator new(0x20uLL);
      v298[2] = *(v295 + 2);
      v299 = *(v295 + 3);
      v298[3] = v299;
      if (v299)
      {
        atomic_fetch_add_explicit((v299 + 8), 1u, memory_order_relaxed);
        v297 = *v294;
        v296 = v294[2];
      }

      *v298 = v297;
      v298[1] = v294;
      v297[1] = v298;
      *v294 = v298;
      v294[2] = ++v296;
      v295 = *(v295 + 1);
      v297 = v298;
    }

    while (v295 != v292);
  }

  v723 = v291;
  v294[3] = 0;
  v294[4] = 0;
  v300 = v294 + 4;
  v294[5] = 0;
  *(v294 + 48) = *(v292 + 48);
  v756 = (v294 + 3);
  v294[3] = v294 + 4;
  v301 = *(v292 + 3);
  v302 = (v292 + 32);
  if (v301 != (v292 + 32))
  {
    do
    {
      v315 = *(v301 + 8);
      v316 = *v756;
      v317 = *v300;
      v318 = v294 + 4;
      if (*v756 != v300)
      {
        v319 = *v300;
        v320 = v294 + 4;
        if (v317)
        {
          do
          {
            v318 = v319;
            v319 = v319[1];
          }

          while (v319);
        }

        else
        {
          do
          {
            v318 = v320[2];
            v203 = *v318 == v320;
            v320 = v318;
          }

          while (v203);
        }

        v321 = *(v301 + 10);
        v322 = *(v318 + 8);
        if (v322 == v315)
        {
          if (v315 != 1)
          {
            goto LABEL_572;
          }

          if (*(v318 + 10) >= v321)
          {
            v323 = *v300;
            v324 = v294 + 4;
            v325 = v294 + 4;
            if (v317)
            {
              goto LABEL_576;
            }

LABEL_583:
            v329 = operator new(0x38uLL);
            v330 = *(v301 + 2);
            v329[6] = v301[6];
            *(v329 + 2) = v330;
            *v329 = 0;
            v329[1] = 0;
            v329[2] = v325;
            *v324 = v329;
            if (*v316)
            {
              *v756 = *v316;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v294[4], v329);
            ++v294[5];
            goto LABEL_586;
          }
        }

        else if (v322 >= v315)
        {
LABEL_572:
          v324 = v294 + 4;
          v325 = v294 + 4;
          if (!v317)
          {
            goto LABEL_583;
          }

          v323 = *v300;
          if (v315 != 1)
          {
            v326 = *(v317 + 8);
            v325 = *v300;
            while (v315 != v326)
            {
              if (v315 < v326)
              {
                v333 = *v325;
                v324 = v325;
                if (!*v325)
                {
                  goto LABEL_583;
                }
              }

              else
              {
                if (v326 >= v315)
                {
                  goto LABEL_586;
                }

                v333 = v325[1];
                if (!v333)
                {
                  goto LABEL_582;
                }
              }

              v326 = *(v333 + 32);
              v325 = v333;
            }

            goto LABEL_586;
          }

          while (1)
          {
LABEL_576:
            v325 = v323;
            v327 = *(v323 + 8);
            if (v327 == 1)
            {
              v328 = *(v323 + 10);
              if (v328 > v321)
              {
                goto LABEL_575;
              }

              if (v328 >= v321)
              {
                goto LABEL_586;
              }
            }

            else if (v327 > 1)
            {
LABEL_575:
              v323 = *v323;
              v324 = v325;
              if (!*v325)
              {
                goto LABEL_583;
              }

              continue;
            }

            v323 = v323[1];
            if (!v323)
            {
LABEL_582:
              v324 = v325 + 1;
              goto LABEL_583;
            }
          }
        }
      }

      if (v317)
      {
        v325 = v318;
      }

      else
      {
        v325 = v294 + 4;
      }

      if (v317)
      {
        v324 = v318 + 1;
      }

      else
      {
        v324 = v294 + 4;
      }

      if (!*v324)
      {
        goto LABEL_583;
      }

LABEL_586:
      v331 = v301[1];
      if (v331)
      {
        do
        {
          v332 = v331;
          v331 = *v331;
        }

        while (v331);
      }

      else
      {
        do
        {
          v332 = v301[2];
          v203 = *v332 == v301;
          v301 = v332;
        }

        while (!v203);
      }

      v301 = v332;
    }

    while (v332 != v302);
  }

  *(v294 + 56) = *(v292 + 56);
  v303 = *(v292 + 3);
  if (v303 != v302)
  {
    v304 = v294[3];
    v305 = v294[1];
    do
    {
      v304[6] = v305;
      v306 = v292;
      if (v303 != v302)
      {
        v306 = v303[6];
      }

      v307 = v303[1];
      v308 = v307;
      v309 = v303;
      if (v307)
      {
        do
        {
          v310 = v308;
          v308 = *v308;
        }

        while (v308);
      }

      else
      {
        do
        {
          v310 = v309[2];
          v203 = *v310 == v309;
          v309 = v310;
        }

        while (!v203);
      }

      v311 = v292;
      if (v310 != v302)
      {
        v311 = v310[6];
      }

      while (v306 != v311)
      {
        v306 = *(v306 + 1);
        v305 = *(v305 + 8);
      }

      if (v307)
      {
        do
        {
          v312 = v307;
          v307 = *v307;
        }

        while (v307);
      }

      else
      {
        do
        {
          v312 = v303[2];
          v203 = *v312 == v303;
          v303 = v312;
        }

        while (!v203);
      }

      v313 = v304[1];
      if (v313)
      {
        do
        {
          v314 = v313;
          v313 = *v313;
        }

        while (v313);
      }

      else
      {
        do
        {
          v314 = v304[2];
          v203 = *v314 == v304;
          v304 = v314;
        }

        while (!v203);
      }

      v303 = v312;
      v304 = v314;
    }

    while (v312 != v302);
  }

  *v728 = v294;
  v728[1] = 0;
  v334 = operator new(0x18uLL);
  *(v334 + 1) = 0x100000001;
  *v334 = &unk_2A1E25000;
  *(v334 + 2) = v294;
  v728[1] = v334;
  v728[2] = v723[2];
  v335 = v723[3];
  v728[3] = v335;
  if (v335)
  {
    atomic_fetch_add_explicit(v335 + 2, 1u, memory_order_relaxed);
  }

  v831 = v728;
  v832 = 0;
  v336 = operator new(0x18uLL);
  v283 = v748;
  v336[1] = 0x100000001;
  *v336 = &unk_2A1E24FA0;
  v336[2] = v728;
  v337 = v748[1];
  v831 = *v748;
  *v748 = v728;
  v748[1] = v336;
  v832 = v337;
  if (v337)
  {
    if (atomic_fetch_add(v337 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v337 + 16))(v337);
      if (atomic_fetch_add(v337 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v337 + 24))(v337);
      }
    }
  }

  v287 = **v748;
  v289 = -1;
LABEL_606:
  v288 = *(v287 + 1);
  if (v287 == v288)
  {
    goto LABEL_701;
  }

LABEL_607:
  v338 = 0;
  while (2)
  {
    v340 = *(v288 + 2);
    v341 = *(v340 + 32);
    if (v341)
    {
      for (j = *v341; j != v341[1]; j += 24)
      {
        if ((*j ^ (*j >> 31)) > 1)
        {
          if ((*(**(j + 8) + 24))(*(j + 8)))
          {
            goto LABEL_623;
          }
        }

        else
        {
          v343 = *(j + 16);
          if (!v343 || !atomic_load_explicit((v343 + 8), memory_order_acquire))
          {
LABEL_623:
            if (*(v340 + 24) == 1)
            {
              *(v340 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v340, &block);
            }

            break;
          }
        }
      }
    }

    v344 = *(v288 + 2);
    if (*(v344 + 24))
    {
      v287 = *(v288 + 1);
      goto LABEL_609;
    }

    v345 = **v283;
    v347 = (v345 + 32);
    v346 = *(v345 + 4);
    if (!v346)
    {
      if (*(v345 + 10) != v288)
      {
        goto LABEL_696;
      }

      v367 = *(v288 + 1);
      v369 = (v345 + 32);
      v350 = (v345 + 32);
      if (v367 != v345)
      {
        goto LABEL_692;
      }

      goto LABEL_674;
    }

    v348 = *(v344 + 64);
    v349 = *(v344 + 72);
    v350 = (v345 + 32);
    v351 = *(v345 + 4);
    if (v348 == 1)
    {
      v350 = (v345 + 32);
      v352 = *(v345 + 4);
      do
      {
        while (1)
        {
          v357 = *(v352 + 32);
          v358 = v357 < 1;
          if (v357 == 1)
          {
            v358 = *(v352 + 40) < v349;
          }

          if (!v358)
          {
            break;
          }

          v352 = *(v352 + 8);
          if (!v352)
          {
            goto LABEL_642;
          }
        }

        v350 = v352;
        v352 = *v352;
      }

      while (v352);
    }

    else
    {
      do
      {
        v353 = *(v351 + 32);
        v354 = v353 == v348;
        v207 = v353 < v348;
        v355 = 8 * (v353 < v348);
        if (v207)
        {
          v356 = v350;
        }

        else
        {
          v356 = v351;
        }

        if (v354)
        {
          v355 = 0;
          v350 = v351;
        }

        else
        {
          v350 = v356;
        }

        v351 = *(v351 + v355);
      }

      while (v351);
    }

LABEL_642:
    if (v350[6] != v288)
    {
      goto LABEL_696;
    }

    v359 = (v345 + 32);
    v360 = *(v345 + 4);
    if (v348 == 1)
    {
      while (1)
      {
        v365 = *(v360 + 8);
        if (v365 == 1)
        {
          if (v349 < *(v360 + 10))
          {
            goto LABEL_657;
          }

LABEL_652:
          v360 = v360[1];
          if (!v360)
          {
            goto LABEL_658;
          }
        }

        else
        {
          if (v365 <= 1)
          {
            goto LABEL_652;
          }

LABEL_657:
          v359 = v360;
          v360 = *v360;
          if (!v360)
          {
            goto LABEL_658;
          }
        }
      }
    }

    do
    {
      v361 = *(v360 + 8);
      v362 = v348 == v361;
      v207 = v348 < v361;
      v363 = v348 >= v361;
      if (v207)
      {
        v364 = v360;
      }

      else
      {
        v364 = v359;
      }

      if (v362)
      {
        v363 = 1;
      }

      else
      {
        v359 = v364;
      }

      v360 = v360[v363];
    }

    while (v360);
LABEL_658:
    v366 = v345;
    if (v359 != v347)
    {
      v366 = v359[6];
    }

    v367 = *(v288 + 1);
    if (v367 == v366)
    {
LABEL_674:
      v372 = v350[1];
      v373 = v350;
      if (v372)
      {
        do
        {
          v374 = v372;
          v372 = *v372;
        }

        while (v372);
      }

      else
      {
        do
        {
          v374 = v373[2];
          v203 = *v374 == v373;
          v373 = v374;
        }

        while (!v203);
      }

      if (*(v345 + 3) == v350)
      {
        *(v345 + 3) = v374;
      }

      --*(v345 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v346, v350);
      operator delete(v350);
      goto LABEL_696;
    }

    if (v348 == 1)
    {
      while (1)
      {
        while (1)
        {
          v369 = v346;
          v370 = *(v346 + 8);
          if (v370 == 1)
          {
            break;
          }

          if (v370 <= 1)
          {
            goto LABEL_670;
          }

LABEL_664:
          v346 = *v346;
          if (!*v369)
          {
            v347 = v369;
            goto LABEL_692;
          }
        }

        v371 = *(v346 + 10);
        if (v371 > v349)
        {
          goto LABEL_664;
        }

        if (v371 >= v349)
        {
          *(v346 + 6) = v367;
          goto LABEL_696;
        }

LABEL_670:
        v346 = *(v346 + 1);
        if (!v346)
        {
          v347 = v369 + 1;
          goto LABEL_692;
        }
      }
    }

    v368 = *(v346 + 8);
    if (v348 == v368)
    {
      goto LABEL_695;
    }

    while (2)
    {
      if (v348 >= v368)
      {
        if (v368 >= v348)
        {
          goto LABEL_695;
        }

        v375 = *(v346 + 1);
        if (!v375)
        {
          v347 = v346 + 8;
          goto LABEL_691;
        }

        goto LABEL_683;
      }

      v375 = *v346;
      if (*v346)
      {
LABEL_683:
        v368 = *(v375 + 8);
        v346 = v375;
        if (v348 == v368)
        {
          v375[6] = v367;
          goto LABEL_696;
        }

        continue;
      }

      break;
    }

    v347 = v346;
LABEL_691:
    v369 = v346;
LABEL_692:
    v346 = operator new(0x38uLL);
    v376 = *(v344 + 64);
    *(v346 + 10) = *(v344 + 72);
    *(v346 + 4) = v376;
    *(v346 + 6) = 0;
    *v346 = 0;
    *(v346 + 1) = 0;
    *(v346 + 2) = v369;
    *v347 = v346;
    v377 = **(v345 + 3);
    if (v377)
    {
      *(v345 + 3) = v377;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v345 + 4), v346);
    ++*(v345 + 5);
LABEL_695:
    *(v346 + 6) = v367;
LABEL_696:
    v378 = *v288;
    v287 = *(v288 + 1);
    *(v378 + 8) = v287;
    *v287 = v378;
    --*(v345 + 2);
    v379 = *(v288 + 3);
    if (v379)
    {
      if (atomic_fetch_add(v379 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v379 + 16))(v379);
        if (atomic_fetch_add(v379 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v379 + 24))(v379);
        }
      }
    }

    operator delete(v288);
    v283 = v748;
LABEL_609:
    v339 = v287 != **v283 && v289 >= ++v338;
    v288 = v287;
    if (v339)
    {
      continue;
    }

    break;
  }

LABEL_701:
  v283[2] = v287;
  v380 = operator new(0x50uLL);
  *(v380 + 1) = 0;
  *(v380 + 2) = 0;
  v380[24] = 1;
  *(v380 + 7) = 1;
  *v380 = &unk_2A1E25060;
  v381 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v381, v825);
  v381[3] = 0;
  v382 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v381[3] = *(&v826 + 1);
    if (v382)
    {
      *(v381 + 2) = v827;
      v381[6] = v828;
    }

    else
    {
      (*v382)(&v827, v381 + 32, 0);
    }
  }

  *(v380 + 5) = 0;
  *(v380 + 4) = v381;
  v386 = operator new(0x18uLL);
  v386[1] = 0x100000001;
  *v386 = &unk_2A1E250B8;
  v386[2] = v381;
  *(v380 + 5) = v386;
  *(v380 + 6) = v748[3];
  v387 = v748[4];
  *(v380 + 7) = v387;
  if (v387)
  {
    atomic_fetch_add_explicit(v387 + 2, 1u, memory_order_relaxed);
  }

  *(v380 + 16) = 0;
  v380[68] = 0;
  object = v380;
  v835 = 0;
  v388 = operator new(0x18uLL);
  *(v388 + 1) = 0x100000001;
  *v388 = &unk_2A1E25118;
  *(v388 + 2) = v380;
  v835 = v388;
  v389 = **v748;
  v390 = operator new(0x20uLL);
  v391 = (v389 + 32);
  v390[2] = v380;
  v390[3] = v388;
  atomic_fetch_add_explicit(v388 + 2, 1u, memory_order_relaxed);
  v392 = *v389;
  *(v392 + 8) = v390;
  *v390 = v392;
  *v389 = v390;
  v390[1] = v389;
  ++*(v389 + 2);
  v393 = *(v389 + 4);
  if (v393)
  {
    v394 = v389 + 32;
    v395 = *(v389 + 4);
    do
    {
      v396 = *(v395 + 32);
      v397 = v396 == 2;
      v207 = v396 < 2;
      v398 = v396 < 2;
      if (!v207)
      {
        v394 = v395;
      }

      if (v397)
      {
        v394 = v395;
      }

      v395 = *(v395 + 8 * v398);
    }

    while (v395);
    if (v394 == v391 || *(v394 + 32) != 2)
    {
      v399 = *(v393 + 8);
      while (v399 != 2)
      {
        if (v399 < 3)
        {
          v400 = v393[1];
          if (!v400)
          {
            v391 = v393 + 1;
            goto LABEL_729;
          }
        }

        else
        {
          v400 = *v393;
          v391 = v393;
          if (!*v393)
          {
            goto LABEL_729;
          }
        }

        v399 = *(v400 + 8);
        v393 = v400;
      }
    }
  }

  else
  {
    v393 = (v389 + 32);
LABEL_729:
    v401 = operator new(0x38uLL);
    v401[4] = 0xAAAAAA0000000002;
    *(v401 + 10) = -1431655766;
    v401[6] = v390;
    *v401 = 0;
    v401[1] = 0;
    v401[2] = v393;
    *v391 = v401;
    v402 = **(v389 + 3);
    if (v402)
    {
      *(v389 + 3) = v402;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v389 + 4), v401);
    ++*(v389 + 5);
    v380 = object;
  }

  v403 = v744;
  *(v380 + 16) = 2;
  *(v380 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v388 + 3, 1u, memory_order_relaxed);
  *&v763 = v380;
  *(&v763 + 1) = v388;
  atomic_fetch_add_explicit(v388 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v388 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v388 + 24))(v388);
  }

  v404 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v404 + 16))(v404);
      if (atomic_fetch_add(v404 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v404 + 24))(v404);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v405 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v717 = __p + 16 * v848;
      do
      {
        v718 = *(v717 - 1);
        if (v718)
        {
          if (atomic_fetch_add(v718 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v718 + 16))(v718);
            if (atomic_fetch_add(v718 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v718 + 24))(v718);
            }
          }
        }

        v717 -= 16;
      }

      while (v717 > v405);
    }

    v403 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v406 = v825[0];
  if (v825[0])
  {
    v407 = v825[1];
    v408 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v407 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v407);
      }

      while (v407 != v406);
      v408 = v825[0];
    }

    v825[1] = v406;
    operator delete(v408);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  v409 = v761;
  if (!atomic_fetch_add(&v739->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v739->__on_zero_shared)(v739);
    std::__shared_weak_count::__release_weak(v739);
    v410 = v735;
    if (!v735)
    {
      goto LABEL_759;
    }

    goto LABEL_758;
  }

  v410 = v735;
  if (v735)
  {
LABEL_758:
    _Block_release(v410);
  }

LABEL_759:
  v411 = operator new(0x20uLL);
  v411[1] = v763;
  v412 = *(v403 + 20);
  *v411 = v412;
  *(v411 + 1) = v743;
  *(v412 + 8) = v411;
  *(v403 + 20) = v411;
  ++*(v403 + 22);
  v413 = *(v403 + 18);
  if (!v413)
  {
    goto LABEL_1337;
  }

  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISA_EENSG_IFvRKNS7_10connectionES9_EEENS7_5mutexEEES3_vJS9_EEEDTcl7connectfp_cvNSD_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FST_SV_E_block_invoke;
  v819 = &__block_descriptor_tmp_384;
  v820 = v403;
  v821 = coex::Module::State::handleDesenseCommandDriverStarted_sync;
  v822 = 0;
  v414 = _Block_copy(&v816);
  v757 = v413;
  v415 = *(v403 + 1);
  if (!v415 || (v416 = *v403, (v417 = std::__shared_weak_count::lock(v415)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v418 = v417;
  v419 = *(v403 + 2);
  v823 = v419;
  if (v414)
  {
    v420 = _Block_copy(v414);
  }

  else
  {
    v420 = 0;
  }

  v824 = v420;
  dispatch_retain(v419);
  v826 = 0u;
  *v825 = 0u;
  v829 = v419;
  if (v420)
  {
    v420 = _Block_copy(v420);
  }

  v830 = v420;
  dispatch_retain(v419);
  object = v419;
  v736 = v414;
  v740 = v418;
  if (!v420)
  {
    v835 = 0;
    dispatch_retain(v419);
    goto LABEL_776;
  }

  v421 = _Block_copy(v420);
  v835 = v421;
  dispatch_retain(v419);
  if (!v421)
  {
LABEL_776:
    dispatch_retain(v419);
    v831 = 0;
    goto LABEL_777;
  }

  v422 = _Block_copy(v421);
  dispatch_retain(v419);
  v831 = 0;
  if (!v422)
  {
LABEL_777:
    dispatch_retain(v419);
    v729 = 0;
    v427 = 1;
LABEL_778:
    dispatch_retain(v419);
    v749 = 0;
    v428 = 1;
LABEL_779:
    dispatch_retain(v419);
    v424 = 0;
    v429 = 1;
LABEL_780:
    dispatch_retain(v419);
    v425 = 0;
    v832 = v419;
    v430 = 1;
    goto LABEL_781;
  }

  v423 = _Block_copy(v422);
  dispatch_retain(v419);
  v729 = v422;
  if (!v423)
  {
    v427 = 0;
    goto LABEL_778;
  }

  v424 = _Block_copy(v423);
  dispatch_retain(v419);
  v749 = v423;
  if (!v424)
  {
    v427 = 0;
    v428 = 0;
    goto LABEL_779;
  }

  v425 = _Block_copy(v424);
  dispatch_retain(v419);
  if (!v425)
  {
    v427 = 0;
    v428 = 0;
    v429 = 0;
    goto LABEL_780;
  }

  v426 = _Block_copy(v425);
  dispatch_retain(v419);
  v832 = v419;
  if (v426)
  {
    v427 = 0;
    v428 = 0;
    v429 = 0;
    v430 = 0;
    v833 = _Block_copy(v426);
    dispatch_retain(v419);
    dispatch_release(v419);
    _Block_release(v426);
    goto LABEL_782;
  }

  v427 = 0;
  v428 = 0;
  v429 = 0;
  v430 = 0;
LABEL_781:
  v833 = 0;
  dispatch_retain(v419);
  dispatch_release(v419);
LABEL_782:
  dispatch_release(v419);
  if ((v430 & 1) == 0)
  {
    _Block_release(v425);
  }

  dispatch_release(v419);
  if ((v429 & 1) == 0)
  {
    _Block_release(v424);
  }

  v831 = boost::function1<void,coex::SubId>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>)::stored_vtable;
  dispatch_release(v419);
  if ((v428 & 1) == 0)
  {
    _Block_release(v749);
  }

  dispatch_release(v419);
  if ((v427 & 1) == 0)
  {
    _Block_release(v729);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function1<void,coex::SubId>::move_assign(&block, &v831);
  boost::function1<void,coex::SubId>::move_assign(&v831, &v826 + 8);
  boost::function1<void,coex::SubId>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v431 = operator new(0x18uLL);
  *v431 = &unk_2A1E24EF0;
  v431[1] = v416;
  v431[2] = v740;
  atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v432 = operator new(0x18uLL);
  *v432 = &unk_2A1E24EF0;
  v432[1] = v416;
  v432[2] = v740;
  atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v432;
  LODWORD(block) = 2;
  v433 = v825[1];
  if (v825[1] < v826)
  {
    v434 = operator new(0x18uLL);
    *v434 = &unk_2A1E24EF0;
    v434[1] = v416;
    v434[2] = v740;
    atomic_fetch_add_explicit(&v740->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v433[1] = v434;
    *v433 = 2;
    v825[1] = v433 + 3;
    goto LABEL_805;
  }

  v535 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v536 = block ^ (block >> 31);
  v825[1] = v535;
  if (v536 == 2)
  {
    v432 = *(&block + 1);
    if (*(&block + 1))
    {
LABEL_805:
      (*(*v432 + 8))(v432);
    }
  }

  else if (v536 == 1)
  {
    v537 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_997;
    }
  }

  else
  {
    v537 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_997:
      (*(*v537 + 24))(v537);
    }
  }

  (*(*v431 + 8))(v431);
  std::__shared_weak_count::__release_weak(v740);
  v435 = *(v757 + 56);
  *&v436 = 0xAAAAAAAAAAAAAAAALL;
  *(&v436 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v436;
  v844 = v436;
  v843 = v436;
  v842 = v436;
  v841 = v436;
  v840 = v436;
  v839 = v436;
  *v838 = v436;
  v837 = v436;
  block = v436;
  v437 = v435[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v437;
  pthread_mutex_lock(v437);
  v438 = v435[1];
  v750 = v435;
  if (v438 && atomic_load_explicit(v438 + 2, memory_order_acquire) == 1)
  {
    v439 = **v435;
    v440 = v435[2];
    v441 = 1;
    if (v440 != v439)
    {
      goto LABEL_896;
    }

    goto LABEL_895;
  }

  v442 = operator new(0x20uLL);
  v443 = *v435;
  v444 = *v443;
  v730 = v442;
  v445 = operator new(0x40uLL);
  v446 = v445;
  *v445 = v445;
  v445[1] = v445;
  v445[2] = 0;
  v447 = *(v444 + 1);
  if (v447 != v444)
  {
    v448 = 0;
    v449 = v445;
    do
    {
      v450 = operator new(0x20uLL);
      v450[2] = *(v447 + 2);
      v451 = *(v447 + 3);
      v450[3] = v451;
      if (v451)
      {
        atomic_fetch_add_explicit((v451 + 8), 1u, memory_order_relaxed);
        v449 = *v446;
        v448 = v446[2];
      }

      *v450 = v449;
      v450[1] = v446;
      v449[1] = v450;
      *v446 = v450;
      v446[2] = ++v448;
      v447 = *(v447 + 1);
      v449 = v450;
    }

    while (v447 != v444);
  }

  v724 = v443;
  v446[3] = 0;
  v446[4] = 0;
  v452 = v446 + 4;
  v446[5] = 0;
  *(v446 + 48) = *(v444 + 48);
  v758 = (v446 + 3);
  v446[3] = v446 + 4;
  v453 = *(v444 + 3);
  v454 = (v444 + 32);
  if (v453 != (v444 + 32))
  {
    do
    {
      v467 = *(v453 + 8);
      v468 = *v758;
      v469 = *v452;
      v470 = v446 + 4;
      if (*v758 != v452)
      {
        v471 = *v452;
        v472 = v446 + 4;
        if (v469)
        {
          do
          {
            v470 = v471;
            v471 = v471[1];
          }

          while (v471);
        }

        else
        {
          do
          {
            v470 = v472[2];
            v203 = *v470 == v472;
            v472 = v470;
          }

          while (v203);
        }

        v473 = *(v453 + 10);
        v474 = *(v470 + 8);
        if (v474 == v467)
        {
          if (v467 != 1)
          {
            goto LABEL_861;
          }

          if (*(v470 + 10) >= v473)
          {
            v475 = *v452;
            v476 = v446 + 4;
            v477 = v446 + 4;
            if (v469)
            {
              goto LABEL_865;
            }

LABEL_872:
            v481 = operator new(0x38uLL);
            v482 = *(v453 + 2);
            v481[6] = v453[6];
            *(v481 + 2) = v482;
            *v481 = 0;
            v481[1] = 0;
            v481[2] = v477;
            *v476 = v481;
            if (*v468)
            {
              *v758 = *v468;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v446[4], v481);
            ++v446[5];
            goto LABEL_875;
          }
        }

        else if (v474 >= v467)
        {
LABEL_861:
          v476 = v446 + 4;
          v477 = v446 + 4;
          if (!v469)
          {
            goto LABEL_872;
          }

          v475 = *v452;
          if (v467 != 1)
          {
            v478 = *(v469 + 8);
            v477 = *v452;
            while (v467 != v478)
            {
              if (v467 < v478)
              {
                v485 = *v477;
                v476 = v477;
                if (!*v477)
                {
                  goto LABEL_872;
                }
              }

              else
              {
                if (v478 >= v467)
                {
                  goto LABEL_875;
                }

                v485 = v477[1];
                if (!v485)
                {
                  goto LABEL_871;
                }
              }

              v478 = *(v485 + 32);
              v477 = v485;
            }

            goto LABEL_875;
          }

          while (1)
          {
LABEL_865:
            v477 = v475;
            v479 = *(v475 + 8);
            if (v479 == 1)
            {
              v480 = *(v475 + 10);
              if (v480 > v473)
              {
                goto LABEL_864;
              }

              if (v480 >= v473)
              {
                goto LABEL_875;
              }
            }

            else if (v479 > 1)
            {
LABEL_864:
              v475 = *v475;
              v476 = v477;
              if (!*v477)
              {
                goto LABEL_872;
              }

              continue;
            }

            v475 = v475[1];
            if (!v475)
            {
LABEL_871:
              v476 = v477 + 1;
              goto LABEL_872;
            }
          }
        }
      }

      if (v469)
      {
        v477 = v470;
      }

      else
      {
        v477 = v446 + 4;
      }

      if (v469)
      {
        v476 = v470 + 1;
      }

      else
      {
        v476 = v446 + 4;
      }

      if (!*v476)
      {
        goto LABEL_872;
      }

LABEL_875:
      v483 = v453[1];
      if (v483)
      {
        do
        {
          v484 = v483;
          v483 = *v483;
        }

        while (v483);
      }

      else
      {
        do
        {
          v484 = v453[2];
          v203 = *v484 == v453;
          v453 = v484;
        }

        while (!v203);
      }

      v453 = v484;
    }

    while (v484 != v454);
  }

  *(v446 + 56) = *(v444 + 56);
  v455 = *(v444 + 3);
  if (v455 != v454)
  {
    v456 = v446[3];
    v457 = v446[1];
    do
    {
      v456[6] = v457;
      v458 = v444;
      if (v455 != v454)
      {
        v458 = v455[6];
      }

      v459 = v455[1];
      v460 = v459;
      v461 = v455;
      if (v459)
      {
        do
        {
          v462 = v460;
          v460 = *v460;
        }

        while (v460);
      }

      else
      {
        do
        {
          v462 = v461[2];
          v203 = *v462 == v461;
          v461 = v462;
        }

        while (!v203);
      }

      v463 = v444;
      if (v462 != v454)
      {
        v463 = v462[6];
      }

      while (v458 != v463)
      {
        v458 = *(v458 + 1);
        v457 = *(v457 + 8);
      }

      if (v459)
      {
        do
        {
          v464 = v459;
          v459 = *v459;
        }

        while (v459);
      }

      else
      {
        do
        {
          v464 = v455[2];
          v203 = *v464 == v455;
          v455 = v464;
        }

        while (!v203);
      }

      v465 = v456[1];
      if (v465)
      {
        do
        {
          v466 = v465;
          v465 = *v465;
        }

        while (v465);
      }

      else
      {
        do
        {
          v466 = v456[2];
          v203 = *v466 == v456;
          v456 = v466;
        }

        while (!v203);
      }

      v455 = v464;
      v456 = v466;
    }

    while (v464 != v454);
  }

  *v730 = v446;
  v730[1] = 0;
  v486 = operator new(0x18uLL);
  *(v486 + 1) = 0x100000001;
  *v486 = &unk_2A1E25218;
  *(v486 + 2) = v446;
  v730[1] = v486;
  v730[2] = v724[2];
  v487 = v724[3];
  v730[3] = v487;
  if (v487)
  {
    atomic_fetch_add_explicit(v487 + 2, 1u, memory_order_relaxed);
  }

  v831 = v730;
  v832 = 0;
  v488 = operator new(0x18uLL);
  v435 = v750;
  v488[1] = 0x100000001;
  *v488 = &unk_2A1E251B8;
  v488[2] = v730;
  v489 = v750[1];
  v831 = *v750;
  *v750 = v730;
  v750[1] = v488;
  v832 = v489;
  if (v489)
  {
    if (atomic_fetch_add(v489 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v489 + 16))(v489);
      if (atomic_fetch_add(v489 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v489 + 24))(v489);
      }
    }
  }

  v439 = **v750;
  v441 = -1;
LABEL_895:
  v440 = *(v439 + 1);
  if (v439 == v440)
  {
    goto LABEL_990;
  }

LABEL_896:
  v490 = 0;
  while (2)
  {
    v492 = *(v440 + 2);
    v493 = *(v492 + 32);
    if (v493)
    {
      for (k = *v493; k != v493[1]; k += 24)
      {
        if ((*k ^ (*k >> 31)) > 1)
        {
          if ((*(**(k + 8) + 24))(*(k + 8)))
          {
            goto LABEL_912;
          }
        }

        else
        {
          v495 = *(k + 16);
          if (!v495 || !atomic_load_explicit((v495 + 8), memory_order_acquire))
          {
LABEL_912:
            if (*(v492 + 24) == 1)
            {
              *(v492 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v492, &block);
            }

            break;
          }
        }
      }
    }

    v496 = *(v440 + 2);
    if (*(v496 + 24))
    {
      v439 = *(v440 + 1);
      goto LABEL_898;
    }

    v497 = **v435;
    v499 = (v497 + 32);
    v498 = *(v497 + 4);
    if (!v498)
    {
      if (*(v497 + 10) != v440)
      {
        goto LABEL_985;
      }

      v519 = *(v440 + 1);
      v521 = (v497 + 32);
      v502 = (v497 + 32);
      if (v519 != v497)
      {
        goto LABEL_981;
      }

      goto LABEL_963;
    }

    v500 = *(v496 + 64);
    v501 = *(v496 + 72);
    v502 = (v497 + 32);
    v503 = *(v497 + 4);
    if (v500 == 1)
    {
      v502 = (v497 + 32);
      v504 = *(v497 + 4);
      do
      {
        while (1)
        {
          v509 = *(v504 + 32);
          v510 = v509 < 1;
          if (v509 == 1)
          {
            v510 = *(v504 + 40) < v501;
          }

          if (!v510)
          {
            break;
          }

          v504 = *(v504 + 8);
          if (!v504)
          {
            goto LABEL_931;
          }
        }

        v502 = v504;
        v504 = *v504;
      }

      while (v504);
    }

    else
    {
      do
      {
        v505 = *(v503 + 32);
        v506 = v505 == v500;
        v207 = v505 < v500;
        v507 = 8 * (v505 < v500);
        if (v207)
        {
          v508 = v502;
        }

        else
        {
          v508 = v503;
        }

        if (v506)
        {
          v507 = 0;
          v502 = v503;
        }

        else
        {
          v502 = v508;
        }

        v503 = *(v503 + v507);
      }

      while (v503);
    }

LABEL_931:
    if (v502[6] != v440)
    {
      goto LABEL_985;
    }

    v511 = (v497 + 32);
    v512 = *(v497 + 4);
    if (v500 == 1)
    {
      while (1)
      {
        v517 = *(v512 + 8);
        if (v517 == 1)
        {
          if (v501 < *(v512 + 10))
          {
            goto LABEL_946;
          }

LABEL_941:
          v512 = v512[1];
          if (!v512)
          {
            goto LABEL_947;
          }
        }

        else
        {
          if (v517 <= 1)
          {
            goto LABEL_941;
          }

LABEL_946:
          v511 = v512;
          v512 = *v512;
          if (!v512)
          {
            goto LABEL_947;
          }
        }
      }
    }

    do
    {
      v513 = *(v512 + 8);
      v514 = v500 == v513;
      v207 = v500 < v513;
      v515 = v500 >= v513;
      if (v207)
      {
        v516 = v512;
      }

      else
      {
        v516 = v511;
      }

      if (v514)
      {
        v515 = 1;
      }

      else
      {
        v511 = v516;
      }

      v512 = v512[v515];
    }

    while (v512);
LABEL_947:
    v518 = v497;
    if (v511 != v499)
    {
      v518 = v511[6];
    }

    v519 = *(v440 + 1);
    if (v519 == v518)
    {
LABEL_963:
      v524 = v502[1];
      v525 = v502;
      if (v524)
      {
        do
        {
          v526 = v524;
          v524 = *v524;
        }

        while (v524);
      }

      else
      {
        do
        {
          v526 = v525[2];
          v203 = *v526 == v525;
          v525 = v526;
        }

        while (!v203);
      }

      if (*(v497 + 3) == v502)
      {
        *(v497 + 3) = v526;
      }

      --*(v497 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v498, v502);
      operator delete(v502);
      goto LABEL_985;
    }

    if (v500 == 1)
    {
      while (1)
      {
        while (1)
        {
          v521 = v498;
          v522 = *(v498 + 8);
          if (v522 == 1)
          {
            break;
          }

          if (v522 <= 1)
          {
            goto LABEL_959;
          }

LABEL_953:
          v498 = *v498;
          if (!*v521)
          {
            v499 = v521;
            goto LABEL_981;
          }
        }

        v523 = *(v498 + 10);
        if (v523 > v501)
        {
          goto LABEL_953;
        }

        if (v523 >= v501)
        {
          *(v498 + 6) = v519;
          goto LABEL_985;
        }

LABEL_959:
        v498 = *(v498 + 1);
        if (!v498)
        {
          v499 = v521 + 1;
          goto LABEL_981;
        }
      }
    }

    v520 = *(v498 + 8);
    if (v500 == v520)
    {
      goto LABEL_984;
    }

    while (2)
    {
      if (v500 >= v520)
      {
        if (v520 >= v500)
        {
          goto LABEL_984;
        }

        v527 = *(v498 + 1);
        if (!v527)
        {
          v499 = v498 + 8;
          goto LABEL_980;
        }

        goto LABEL_972;
      }

      v527 = *v498;
      if (*v498)
      {
LABEL_972:
        v520 = *(v527 + 8);
        v498 = v527;
        if (v500 == v520)
        {
          v527[6] = v519;
          goto LABEL_985;
        }

        continue;
      }

      break;
    }

    v499 = v498;
LABEL_980:
    v521 = v498;
LABEL_981:
    v498 = operator new(0x38uLL);
    v528 = *(v496 + 64);
    *(v498 + 10) = *(v496 + 72);
    *(v498 + 4) = v528;
    *(v498 + 6) = 0;
    *v498 = 0;
    *(v498 + 1) = 0;
    *(v498 + 2) = v521;
    *v499 = v498;
    v529 = **(v497 + 3);
    if (v529)
    {
      *(v497 + 3) = v529;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v497 + 4), v498);
    ++*(v497 + 5);
LABEL_984:
    *(v498 + 6) = v519;
LABEL_985:
    v530 = *v440;
    v439 = *(v440 + 1);
    *(v530 + 8) = v439;
    *v439 = v530;
    --*(v497 + 2);
    v531 = *(v440 + 3);
    if (v531)
    {
      if (atomic_fetch_add(v531 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v531 + 16))(v531);
        if (atomic_fetch_add(v531 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v531 + 24))(v531);
        }
      }
    }

    operator delete(v440);
    v435 = v750;
LABEL_898:
    v491 = v439 != **v435 && v441 >= ++v490;
    v440 = v439;
    if (v491)
    {
      continue;
    }

    break;
  }

LABEL_990:
  v435[2] = v439;
  v532 = operator new(0x50uLL);
  *(v532 + 1) = 0;
  *(v532 + 2) = 0;
  v532[24] = 1;
  *(v532 + 7) = 1;
  *v532 = &unk_2A1E25278;
  v533 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v533, v825);
  v533[3] = 0;
  v534 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v533[3] = *(&v826 + 1);
    if (v534)
    {
      *(v533 + 2) = v827;
      v533[6] = v828;
    }

    else
    {
      (*v534)(&v827, v533 + 32, 0);
    }
  }

  *(v532 + 5) = 0;
  *(v532 + 4) = v533;
  v538 = operator new(0x18uLL);
  v538[1] = 0x100000001;
  *v538 = &unk_2A1E252D0;
  v538[2] = v533;
  *(v532 + 5) = v538;
  *(v532 + 6) = v750[3];
  v539 = v750[4];
  *(v532 + 7) = v539;
  if (v539)
  {
    atomic_fetch_add_explicit(v539 + 2, 1u, memory_order_relaxed);
  }

  *(v532 + 16) = 0;
  v532[68] = 0;
  object = v532;
  v835 = 0;
  v540 = operator new(0x18uLL);
  *(v540 + 1) = 0x100000001;
  *v540 = &unk_2A1E25330;
  *(v540 + 2) = v532;
  v835 = v540;
  v541 = **v750;
  v542 = operator new(0x20uLL);
  v543 = (v541 + 32);
  v542[2] = v532;
  v542[3] = v540;
  atomic_fetch_add_explicit(v540 + 2, 1u, memory_order_relaxed);
  v544 = *v541;
  *(v544 + 8) = v542;
  *v542 = v544;
  *v541 = v542;
  v542[1] = v541;
  ++*(v541 + 2);
  v545 = *(v541 + 4);
  if (v545)
  {
    v546 = v541 + 32;
    v547 = *(v541 + 4);
    do
    {
      v548 = *(v547 + 32);
      v549 = v548 == 2;
      v207 = v548 < 2;
      v550 = v548 < 2;
      if (!v207)
      {
        v546 = v547;
      }

      if (v549)
      {
        v546 = v547;
      }

      v547 = *(v547 + 8 * v550);
    }

    while (v547);
    if (v546 == v543 || *(v546 + 32) != 2)
    {
      v551 = *(v545 + 8);
      while (v551 != 2)
      {
        if (v551 < 3)
        {
          v552 = v545[1];
          if (!v552)
          {
            v543 = v545 + 1;
            goto LABEL_1018;
          }
        }

        else
        {
          v552 = *v545;
          v543 = v545;
          if (!*v545)
          {
            goto LABEL_1018;
          }
        }

        v551 = *(v552 + 8);
        v545 = v552;
      }
    }
  }

  else
  {
    v545 = (v541 + 32);
LABEL_1018:
    v553 = operator new(0x38uLL);
    v553[4] = 0xAAAAAA0000000002;
    *(v553 + 10) = -1431655766;
    v553[6] = v542;
    *v553 = 0;
    v553[1] = 0;
    v553[2] = v545;
    *v543 = v553;
    v554 = **(v541 + 3);
    if (v554)
    {
      *(v541 + 3) = v554;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v541 + 4), v553);
    ++*(v541 + 5);
    v532 = object;
  }

  v555 = v744;
  *(v532 + 16) = 2;
  *(v532 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v540 + 3, 1u, memory_order_relaxed);
  *&v764 = v532;
  *(&v764 + 1) = v540;
  atomic_fetch_add_explicit(v540 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v540 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v540 + 24))(v540);
  }

  v556 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v556 + 16))(v556);
      if (atomic_fetch_add(v556 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v556 + 24))(v556);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v557 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v719 = __p + 16 * v848;
      do
      {
        v720 = *(v719 - 1);
        if (v720)
        {
          if (atomic_fetch_add(v720 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v720 + 16))(v720);
            if (atomic_fetch_add(v720 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v720 + 24))(v720);
            }
          }
        }

        v719 -= 16;
      }

      while (v719 > v557);
    }

    v555 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v558 = v825[0];
  if (v825[0])
  {
    v559 = v825[1];
    v560 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v559 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v559);
      }

      while (v559 != v558);
      v560 = v825[0];
    }

    v825[1] = v558;
    operator delete(v560);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  if (atomic_fetch_add(&v740->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v561 = v736;
    if (!v736)
    {
      goto LABEL_1048;
    }

LABEL_1047:
    _Block_release(v561);
  }

  else
  {
    (v740->__on_zero_shared)(v740);
    std::__shared_weak_count::__release_weak(v740);
    v561 = v736;
    if (v736)
    {
      goto LABEL_1047;
    }
  }

LABEL_1048:
  v562 = operator new(0x20uLL);
  v562[1] = v764;
  v563 = *(v555 + 20);
  *v562 = v563;
  *(v562 + 1) = v743;
  *(v563 + 8) = v562;
  *(v555 + 20) = v562;
  ++*(v555 + 22);
  v564 = *(v555 + 18);
  v816 = MEMORY[0x29EDCA5F8];
  v817 = 0x40000000;
  v818 = ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNSt3__13mapIPKcNS9_4listINS9_4pairIyjEENS9_9allocatorISF_EEEENS9_4lessISC_EENSG_INSE_IKSC_SI_EEEEEENS1_5SubIdEENS7_19optional_last_valueIvEEiNSJ_IiEENS6_8functionISQ_EENSU_IFvRKNS7_10connectionESO_SP_EEENS7_5mutexEEES3_vJSO_SP_EEEDTcl7connectfp_cvNS9_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FS17_S19_E_block_invoke;
  v819 = &__block_descriptor_tmp_391;
  v820 = v555;
  v821 = coex::Module::State::handleDesenseFrequencyReport_sync;
  v822 = 0;
  v565 = _Block_copy(&v816);
  v759 = v564;
  v566 = *(v555 + 1);
  if (!v566 || (v567 = *v555, (v568 = std::__shared_weak_count::lock(v566)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v569 = v568;
  v570 = *(v555 + 2);
  v823 = v570;
  if (v565)
  {
    v571 = _Block_copy(v565);
  }

  else
  {
    v571 = 0;
  }

  v824 = v571;
  dispatch_retain(v570);
  v826 = 0u;
  *v825 = 0u;
  v829 = v570;
  if (v571)
  {
    v571 = _Block_copy(v571);
  }

  v830 = v571;
  dispatch_retain(v570);
  object = v570;
  v737 = v565;
  v741 = v569;
  if (!v571)
  {
    v835 = 0;
    dispatch_retain(v570);
    goto LABEL_1064;
  }

  v572 = _Block_copy(v571);
  v835 = v572;
  dispatch_retain(v570);
  if (!v572)
  {
LABEL_1064:
    dispatch_retain(v570);
    v831 = 0;
    goto LABEL_1065;
  }

  v573 = _Block_copy(v572);
  dispatch_retain(v570);
  v831 = 0;
  if (!v573)
  {
LABEL_1065:
    dispatch_retain(v570);
    v731 = 0;
    v578 = 1;
LABEL_1066:
    dispatch_retain(v570);
    v751 = 0;
    v579 = 1;
LABEL_1067:
    dispatch_retain(v570);
    v575 = 0;
    v580 = 1;
LABEL_1068:
    dispatch_retain(v570);
    v576 = 0;
    v832 = v570;
    v581 = 1;
    goto LABEL_1069;
  }

  v574 = _Block_copy(v573);
  dispatch_retain(v570);
  v731 = v573;
  if (!v574)
  {
    v578 = 0;
    goto LABEL_1066;
  }

  v575 = _Block_copy(v574);
  dispatch_retain(v570);
  v751 = v574;
  if (!v575)
  {
    v578 = 0;
    v579 = 0;
    goto LABEL_1067;
  }

  v576 = _Block_copy(v575);
  dispatch_retain(v570);
  if (!v576)
  {
    v578 = 0;
    v579 = 0;
    v580 = 0;
    goto LABEL_1068;
  }

  v577 = _Block_copy(v576);
  dispatch_retain(v570);
  v832 = v570;
  if (v577)
  {
    v578 = 0;
    v579 = 0;
    v580 = 0;
    v581 = 0;
    v833 = _Block_copy(v577);
    dispatch_retain(v570);
    dispatch_release(v570);
    _Block_release(v577);
    goto LABEL_1070;
  }

  v578 = 0;
  v579 = 0;
  v580 = 0;
  v581 = 0;
LABEL_1069:
  v833 = 0;
  dispatch_retain(v570);
  dispatch_release(v570);
LABEL_1070:
  dispatch_release(v570);
  if ((v581 & 1) == 0)
  {
    _Block_release(v576);
  }

  dispatch_release(v570);
  if ((v580 & 1) == 0)
  {
    _Block_release(v575);
  }

  v831 = boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>)::stored_vtable;
  dispatch_release(v570);
  if ((v579 & 1) == 0)
  {
    _Block_release(v751);
  }

  dispatch_release(v570);
  if ((v578 & 1) == 0)
  {
    _Block_release(v731);
  }

  *(&v837 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v837 = 0xAAAAAAAAAAAAAAAALL;
  *(&block + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&block = 0;
  boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(&block, &v831);
  boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(&v831, &v826 + 8);
  boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(&v826 + 8, &block);
  if (block && (block & 1) == 0 && *block)
  {
    (*block)(&block + 8, &block + 8, 2);
  }

  if (v831)
  {
    if ((v831 & 1) == 0 && *v831)
    {
      (*v831)(&v832, &v832, 2u);
    }

    v831 = 0;
  }

  dispatch_release(object);
  if (v835)
  {
    _Block_release(v835);
  }

  dispatch_release(v829);
  if (v830)
  {
    _Block_release(v830);
  }

  atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v582 = operator new(0x18uLL);
  *v582 = &unk_2A1E24EF0;
  v582[1] = v567;
  v582[2] = v741;
  atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v583 = operator new(0x18uLL);
  *v583 = &unk_2A1E24EF0;
  v583[1] = v567;
  v583[2] = v741;
  atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(&block + 1) = v583;
  LODWORD(block) = 2;
  v584 = v825[1];
  if (v825[1] < v826)
  {
    v585 = operator new(0x18uLL);
    *v585 = &unk_2A1E24EF0;
    v585[1] = v567;
    v585[2] = v741;
    atomic_fetch_add_explicit(&v741->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v584[1] = v585;
    *v584 = 2;
    v825[1] = v584 + 3;
    goto LABEL_1093;
  }

  v686 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v825, &block);
  v687 = block ^ (block >> 31);
  v825[1] = v686;
  if (v687 == 2)
  {
    v583 = *(&block + 1);
    if (*(&block + 1))
    {
LABEL_1093:
      (*(*v583 + 8))(v583);
    }
  }

  else if (v687 == 1)
  {
    v688 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_1285;
    }
  }

  else
  {
    v688 = v837;
    if (v837 && atomic_fetch_add((v837 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_1285:
      (*(*v688 + 24))(v688);
    }
  }

  (*(*v582 + 8))(v582);
  std::__shared_weak_count::__release_weak(v741);
  v586 = *(v759 + 80);
  *&v587 = 0xAAAAAAAAAAAAAAAALL;
  *(&v587 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v845 = v587;
  v844 = v587;
  v843 = v587;
  v842 = v587;
  v841 = v587;
  v840 = v587;
  v839 = v587;
  *v838 = v587;
  v837 = v587;
  block = v587;
  v588 = v586[3];
  v846 = 10;
  __p = &block;
  v848 = 0;
  v849 = v588;
  pthread_mutex_lock(v588);
  v589 = v586[1];
  v752 = v586;
  if (v589 && atomic_load_explicit(v589 + 2, memory_order_acquire) == 1)
  {
    v590 = **v586;
    v591 = v586[2];
    v592 = 1;
    if (v591 != v590)
    {
      goto LABEL_1184;
    }

    goto LABEL_1183;
  }

  v593 = operator new(0x20uLL);
  v594 = *v586;
  v595 = **v586;
  v732 = v593;
  v596 = operator new(0x40uLL);
  v597 = v596;
  *v596 = v596;
  v596[1] = v596;
  v596[2] = 0;
  v598 = *(v595 + 1);
  if (v598 != v595)
  {
    v599 = 0;
    v600 = v596;
    do
    {
      v601 = operator new(0x20uLL);
      v601[2] = *(v598 + 2);
      v602 = *(v598 + 3);
      v601[3] = v602;
      if (v602)
      {
        atomic_fetch_add_explicit((v602 + 8), 1u, memory_order_relaxed);
        v600 = *v597;
        v599 = v597[2];
      }

      *v601 = v600;
      v601[1] = v597;
      v600[1] = v601;
      *v597 = v601;
      v597[2] = ++v599;
      v598 = *(v598 + 1);
      v600 = v601;
    }

    while (v598 != v595);
  }

  v725 = v594;
  v597[3] = 0;
  v597[4] = 0;
  v603 = v597 + 4;
  v597[5] = 0;
  *(v597 + 48) = *(v595 + 48);
  v760 = (v597 + 3);
  v597[3] = v597 + 4;
  v604 = *(v595 + 3);
  v605 = (v595 + 32);
  if (v604 != (v595 + 32))
  {
    do
    {
      v618 = *(v604 + 8);
      v619 = *v760;
      v620 = *v603;
      v621 = v597 + 4;
      if (*v760 != v603)
      {
        v622 = *v603;
        v623 = v597 + 4;
        if (v620)
        {
          do
          {
            v621 = v622;
            v622 = v622[1];
          }

          while (v622);
        }

        else
        {
          do
          {
            v621 = v623[2];
            v203 = *v621 == v623;
            v623 = v621;
          }

          while (v203);
        }

        v624 = *(v604 + 10);
        v625 = *(v621 + 8);
        if (v625 == v618)
        {
          if (v618 != 1)
          {
            goto LABEL_1149;
          }

          if (*(v621 + 10) >= v624)
          {
            v626 = *v603;
            v627 = v597 + 4;
            v628 = v597 + 4;
            if (v620)
            {
              goto LABEL_1153;
            }

LABEL_1160:
            v632 = operator new(0x38uLL);
            v633 = *(v604 + 2);
            v632[6] = v604[6];
            *(v632 + 2) = v633;
            *v632 = 0;
            v632[1] = 0;
            v632[2] = v628;
            *v627 = v632;
            if (*v619)
            {
              *v760 = *v619;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v597[4], v632);
            ++v597[5];
            goto LABEL_1163;
          }
        }

        else if (v625 >= v618)
        {
LABEL_1149:
          v627 = v597 + 4;
          v628 = v597 + 4;
          if (!v620)
          {
            goto LABEL_1160;
          }

          v626 = *v603;
          if (v618 != 1)
          {
            v629 = *(v620 + 8);
            v628 = *v603;
            while (v618 != v629)
            {
              if (v618 < v629)
              {
                v636 = *v628;
                v627 = v628;
                if (!*v628)
                {
                  goto LABEL_1160;
                }
              }

              else
              {
                if (v629 >= v618)
                {
                  goto LABEL_1163;
                }

                v636 = v628[1];
                if (!v636)
                {
                  goto LABEL_1159;
                }
              }

              v629 = *(v636 + 32);
              v628 = v636;
            }

            goto LABEL_1163;
          }

          while (1)
          {
LABEL_1153:
            v628 = v626;
            v630 = *(v626 + 8);
            if (v630 == 1)
            {
              v631 = *(v626 + 10);
              if (v631 > v624)
              {
                goto LABEL_1152;
              }

              if (v631 >= v624)
              {
                goto LABEL_1163;
              }
            }

            else if (v630 > 1)
            {
LABEL_1152:
              v626 = *v626;
              v627 = v628;
              if (!*v628)
              {
                goto LABEL_1160;
              }

              continue;
            }

            v626 = v626[1];
            if (!v626)
            {
LABEL_1159:
              v627 = v628 + 1;
              goto LABEL_1160;
            }
          }
        }
      }

      if (v620)
      {
        v628 = v621;
      }

      else
      {
        v628 = v597 + 4;
      }

      if (v620)
      {
        v627 = v621 + 1;
      }

      else
      {
        v627 = v597 + 4;
      }

      if (!*v627)
      {
        goto LABEL_1160;
      }

LABEL_1163:
      v634 = v604[1];
      if (v634)
      {
        do
        {
          v635 = v634;
          v634 = *v634;
        }

        while (v634);
      }

      else
      {
        do
        {
          v635 = v604[2];
          v203 = *v635 == v604;
          v604 = v635;
        }

        while (!v203);
      }

      v604 = v635;
    }

    while (v635 != v605);
  }

  *(v597 + 56) = *(v595 + 56);
  v606 = *(v595 + 3);
  if (v606 != v605)
  {
    v607 = v597[3];
    v608 = v597[1];
    do
    {
      v607[6] = v608;
      v609 = v595;
      if (v606 != v605)
      {
        v609 = v606[6];
      }

      v610 = v606[1];
      v611 = v610;
      v612 = v606;
      if (v610)
      {
        do
        {
          v613 = v611;
          v611 = *v611;
        }

        while (v611);
      }

      else
      {
        do
        {
          v613 = v612[2];
          v203 = *v613 == v612;
          v612 = v613;
        }

        while (!v203);
      }

      v614 = v595;
      if (v613 != v605)
      {
        v614 = v613[6];
      }

      while (v609 != v614)
      {
        v609 = *(v609 + 1);
        v608 = *(v608 + 8);
      }

      if (v610)
      {
        do
        {
          v615 = v610;
          v610 = *v610;
        }

        while (v610);
      }

      else
      {
        do
        {
          v615 = v606[2];
          v203 = *v615 == v606;
          v606 = v615;
        }

        while (!v203);
      }

      v616 = v607[1];
      if (v616)
      {
        do
        {
          v617 = v616;
          v616 = *v616;
        }

        while (v616);
      }

      else
      {
        do
        {
          v617 = v607[2];
          v203 = *v617 == v607;
          v607 = v617;
        }

        while (!v203);
      }

      v606 = v615;
      v607 = v617;
    }

    while (v615 != v605);
  }

  *v732 = v597;
  v732[1] = 0;
  v637 = operator new(0x18uLL);
  *(v637 + 1) = 0x100000001;
  *v637 = &unk_2A1E25430;
  *(v637 + 2) = v597;
  v732[1] = v637;
  v732[2] = v725[2];
  v638 = v725[3];
  v732[3] = v638;
  if (v638)
  {
    atomic_fetch_add_explicit(v638 + 2, 1u, memory_order_relaxed);
  }

  v831 = v732;
  v832 = 0;
  v639 = operator new(0x18uLL);
  v586 = v752;
  v639[1] = 0x100000001;
  *v639 = &unk_2A1E253D0;
  v639[2] = v732;
  v640 = v752[1];
  v831 = *v752;
  *v752 = v732;
  v752[1] = v639;
  v832 = v640;
  if (v640)
  {
    if (atomic_fetch_add(v640 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v640 + 16))(v640);
      if (atomic_fetch_add(v640 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v640 + 24))(v640);
      }
    }
  }

  v590 = **v752;
  v592 = -1;
LABEL_1183:
  v591 = *(v590 + 1);
  if (v590 == v591)
  {
    goto LABEL_1278;
  }

LABEL_1184:
  v641 = 0;
  while (2)
  {
    v643 = *(v591 + 2);
    v644 = *(v643 + 32);
    if (v644)
    {
      for (m = *v644; m != v644[1]; m += 24)
      {
        if ((*m ^ (*m >> 31)) > 1)
        {
          if ((*(**(m + 8) + 24))(*(m + 8)))
          {
            goto LABEL_1200;
          }
        }

        else
        {
          v646 = *(m + 16);
          if (!v646 || !atomic_load_explicit((v646 + 8), memory_order_acquire))
          {
LABEL_1200:
            if (*(v643 + 24) == 1)
            {
              *(v643 + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v643, &block);
            }

            break;
          }
        }
      }
    }

    v647 = *(v591 + 2);
    if (*(v647 + 24))
    {
      v590 = *(v591 + 1);
      goto LABEL_1186;
    }

    v648 = **v586;
    v650 = (v648 + 32);
    v649 = *(v648 + 4);
    if (!v649)
    {
      if (*(v648 + 10) != v591)
      {
        goto LABEL_1273;
      }

      v670 = *(v591 + 1);
      v672 = (v648 + 32);
      v653 = (v648 + 32);
      if (v670 != v648)
      {
        goto LABEL_1269;
      }

      goto LABEL_1251;
    }

    v651 = *(v647 + 64);
    v652 = *(v647 + 72);
    v653 = (v648 + 32);
    v654 = *(v648 + 4);
    if (v651 == 1)
    {
      v653 = (v648 + 32);
      v655 = *(v648 + 4);
      do
      {
        while (1)
        {
          v660 = *(v655 + 32);
          v661 = v660 < 1;
          if (v660 == 1)
          {
            v661 = *(v655 + 40) < v652;
          }

          if (!v661)
          {
            break;
          }

          v655 = *(v655 + 8);
          if (!v655)
          {
            goto LABEL_1219;
          }
        }

        v653 = v655;
        v655 = *v655;
      }

      while (v655);
    }

    else
    {
      do
      {
        v656 = *(v654 + 32);
        v657 = v656 == v651;
        v207 = v656 < v651;
        v658 = 8 * (v656 < v651);
        if (v207)
        {
          v659 = v653;
        }

        else
        {
          v659 = v654;
        }

        if (v657)
        {
          v658 = 0;
          v653 = v654;
        }

        else
        {
          v653 = v659;
        }

        v654 = *(v654 + v658);
      }

      while (v654);
    }

LABEL_1219:
    if (v653[6] != v591)
    {
      goto LABEL_1273;
    }

    v662 = (v648 + 32);
    v663 = *(v648 + 4);
    if (v651 == 1)
    {
      while (1)
      {
        v668 = *(v663 + 8);
        if (v668 == 1)
        {
          if (v652 < *(v663 + 10))
          {
            goto LABEL_1234;
          }

LABEL_1229:
          v663 = v663[1];
          if (!v663)
          {
            goto LABEL_1235;
          }
        }

        else
        {
          if (v668 <= 1)
          {
            goto LABEL_1229;
          }

LABEL_1234:
          v662 = v663;
          v663 = *v663;
          if (!v663)
          {
            goto LABEL_1235;
          }
        }
      }
    }

    do
    {
      v664 = *(v663 + 8);
      v665 = v651 == v664;
      v207 = v651 < v664;
      v666 = v651 >= v664;
      if (v207)
      {
        v667 = v663;
      }

      else
      {
        v667 = v662;
      }

      if (v665)
      {
        v666 = 1;
      }

      else
      {
        v662 = v667;
      }

      v663 = v663[v666];
    }

    while (v663);
LABEL_1235:
    v669 = v648;
    if (v662 != v650)
    {
      v669 = v662[6];
    }

    v670 = *(v591 + 1);
    if (v670 == v669)
    {
LABEL_1251:
      v675 = v653[1];
      v676 = v653;
      if (v675)
      {
        do
        {
          v677 = v675;
          v675 = *v675;
        }

        while (v675);
      }

      else
      {
        do
        {
          v677 = v676[2];
          v203 = *v677 == v676;
          v676 = v677;
        }

        while (!v203);
      }

      if (*(v648 + 3) == v653)
      {
        *(v648 + 3) = v677;
      }

      --*(v648 + 5);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v649, v653);
      operator delete(v653);
      goto LABEL_1273;
    }

    if (v651 == 1)
    {
      while (1)
      {
        while (1)
        {
          v672 = v649;
          v673 = *(v649 + 8);
          if (v673 == 1)
          {
            break;
          }

          if (v673 <= 1)
          {
            goto LABEL_1247;
          }

LABEL_1241:
          v649 = *v649;
          if (!*v672)
          {
            v650 = v672;
            goto LABEL_1269;
          }
        }

        v674 = *(v649 + 10);
        if (v674 > v652)
        {
          goto LABEL_1241;
        }

        if (v674 >= v652)
        {
          *(v649 + 6) = v670;
          goto LABEL_1273;
        }

LABEL_1247:
        v649 = *(v649 + 1);
        if (!v649)
        {
          v650 = v672 + 1;
          goto LABEL_1269;
        }
      }
    }

    v671 = *(v649 + 8);
    if (v651 == v671)
    {
      goto LABEL_1272;
    }

    while (2)
    {
      if (v651 >= v671)
      {
        if (v671 >= v651)
        {
          goto LABEL_1272;
        }

        v678 = *(v649 + 1);
        if (!v678)
        {
          v650 = v649 + 8;
          goto LABEL_1268;
        }

        goto LABEL_1260;
      }

      v678 = *v649;
      if (*v649)
      {
LABEL_1260:
        v671 = *(v678 + 8);
        v649 = v678;
        if (v651 == v671)
        {
          v678[6] = v670;
          goto LABEL_1273;
        }

        continue;
      }

      break;
    }

    v650 = v649;
LABEL_1268:
    v672 = v649;
LABEL_1269:
    v649 = operator new(0x38uLL);
    v679 = *(v647 + 64);
    *(v649 + 10) = *(v647 + 72);
    *(v649 + 4) = v679;
    *(v649 + 6) = 0;
    *v649 = 0;
    *(v649 + 1) = 0;
    *(v649 + 2) = v672;
    *v650 = v649;
    v680 = **(v648 + 3);
    if (v680)
    {
      *(v648 + 3) = v680;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v648 + 4), v649);
    ++*(v648 + 5);
LABEL_1272:
    *(v649 + 6) = v670;
LABEL_1273:
    v681 = *v591;
    v590 = *(v591 + 1);
    *(v681 + 8) = v590;
    *v590 = v681;
    --*(v648 + 2);
    v682 = *(v591 + 3);
    if (v682)
    {
      if (atomic_fetch_add(v682 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v682 + 16))(v682);
        if (atomic_fetch_add(v682 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v682 + 24))(v682);
        }
      }
    }

    operator delete(v591);
    v586 = v752;
LABEL_1186:
    v642 = v590 != **v586 && v592 >= ++v641;
    v591 = v590;
    if (v642)
    {
      continue;
    }

    break;
  }

LABEL_1278:
  v586[2] = v590;
  v683 = operator new(0x50uLL);
  *(v683 + 1) = 0;
  *(v683 + 2) = 0;
  v683[24] = 1;
  *(v683 + 7) = 1;
  *v683 = &unk_2A1E25490;
  v684 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v684, v825);
  v684[3] = 0;
  v685 = *(&v826 + 1);
  if (*(&v826 + 1))
  {
    v684[3] = *(&v826 + 1);
    if (v685)
    {
      *(v684 + 2) = v827;
      v684[6] = v828;
    }

    else
    {
      (*v685)(&v827, v684 + 32, 0);
    }
  }

  *(v683 + 5) = 0;
  *(v683 + 4) = v684;
  v689 = operator new(0x18uLL);
  v689[1] = 0x100000001;
  *v689 = &unk_2A1E254E8;
  v689[2] = v684;
  *(v683 + 5) = v689;
  *(v683 + 6) = v752[3];
  v690 = v752[4];
  *(v683 + 7) = v690;
  if (v690)
  {
    atomic_fetch_add_explicit(v690 + 2, 1u, memory_order_relaxed);
  }

  *(v683 + 16) = 0;
  v683[68] = 0;
  object = v683;
  v835 = 0;
  v691 = operator new(0x18uLL);
  *(v691 + 1) = 0x100000001;
  *v691 = &unk_2A1E25548;
  *(v691 + 2) = v683;
  v835 = v691;
  v692 = **v752;
  v693 = operator new(0x20uLL);
  v694 = (v692 + 32);
  v693[2] = v683;
  v693[3] = v691;
  atomic_fetch_add_explicit(v691 + 2, 1u, memory_order_relaxed);
  v695 = *v692;
  *(v695 + 8) = v693;
  *v693 = v695;
  *v692 = v693;
  v693[1] = v692;
  ++*(v692 + 2);
  v696 = *(v692 + 4);
  if (v696)
  {
    v697 = v692 + 32;
    v698 = *(v692 + 4);
    do
    {
      v699 = *(v698 + 32);
      v700 = v699 == 2;
      v207 = v699 < 2;
      v701 = v699 < 2;
      if (!v207)
      {
        v697 = v698;
      }

      if (v700)
      {
        v697 = v698;
      }

      v698 = *(v698 + 8 * v701);
    }

    while (v698);
    if (v697 == v694 || *(v697 + 32) != 2)
    {
      v702 = *(v696 + 8);
      while (v702 != 2)
      {
        if (v702 < 3)
        {
          v703 = v696[1];
          if (!v703)
          {
            v694 = v696 + 1;
            goto LABEL_1306;
          }
        }

        else
        {
          v703 = *v696;
          v694 = v696;
          if (!*v696)
          {
            goto LABEL_1306;
          }
        }

        v702 = *(v703 + 8);
        v696 = v703;
      }
    }
  }

  else
  {
    v696 = (v692 + 32);
LABEL_1306:
    v704 = operator new(0x38uLL);
    v704[4] = 0xAAAAAA0000000002;
    *(v704 + 10) = -1431655766;
    v704[6] = v693;
    *v704 = 0;
    v704[1] = 0;
    v704[2] = v696;
    *v694 = v704;
    v705 = **(v692 + 3);
    if (v705)
    {
      *(v692 + 3) = v705;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v692 + 4), v704);
    ++*(v692 + 5);
    v683 = object;
  }

  v403 = v744;
  *(v683 + 16) = 2;
  *(v683 + 68) = 0xAAAAAAAAAAAAAA00;
  atomic_fetch_add_explicit(v691 + 3, 1u, memory_order_relaxed);
  *&v765 = v683;
  *(&v765 + 1) = v691;
  atomic_fetch_add_explicit(v691 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v691 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v691 + 24))(v691);
  }

  v706 = v835;
  if (v835)
  {
    if (atomic_fetch_add(v835 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v706 + 16))(v706);
      if (atomic_fetch_add(v706 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v706 + 24))(v706);
      }
    }
  }

  pthread_mutex_unlock(v849);
  v707 = __p;
  if (__p)
  {
    if (v848 > 0)
    {
      v721 = __p + 16 * v848;
      do
      {
        v722 = *(v721 - 1);
        if (v722)
        {
          if (atomic_fetch_add(v722 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v722 + 16))(v722);
            if (atomic_fetch_add(v722 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v722 + 24))(v722);
            }
          }
        }

        v721 -= 16;
      }

      while (v721 > v707);
    }

    v403 = v744;
    if (v846 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v826 + 1))
  {
    if ((BYTE8(v826) & 1) == 0 && **(&v826 + 1))
    {
      (**(&v826 + 1))(&v827, &v827, 2);
    }

    *(&v826 + 1) = 0;
  }

  v708 = v825[0];
  if (v825[0])
  {
    v709 = v825[1];
    v710 = v825[0];
    if (v825[1] != v825[0])
    {
      do
      {
        v709 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v709);
      }

      while (v709 != v708);
      v710 = v825[0];
    }

    v825[1] = v708;
    operator delete(v710);
  }

  dispatch_release(v823);
  if (v824)
  {
    _Block_release(v824);
  }

  v409 = v761;
  if (!atomic_fetch_add(&v741->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v741->__on_zero_shared)(v741);
    std::__shared_weak_count::__release_weak(v741);
    v711 = v737;
    if (!v737)
    {
      goto LABEL_1336;
    }

    goto LABEL_1335;
  }

  v711 = v737;
  if (v737)
  {
LABEL_1335:
    _Block_release(v711);
  }

LABEL_1336:
  v712 = operator new(0x20uLL);
  v712[1] = v765;
  v713 = *(v403 + 20);
  *v712 = v713;
  *(v712 + 1) = v743;
  *(v713 + 8) = v712;
  *(v403 + 20) = v712;
  ++*(v403 + 22);
LABEL_1337:
  coex::Module::State::setIndications_sync(v403);
  if (v767)
  {
    std::__shared_weak_count::__release_weak(v767);
  }

  if (v769)
  {
    std::__shared_weak_count::__release_weak(v769);
  }

  if (v771)
  {
    std::__shared_weak_count::__release_weak(v771);
  }

  if (v773)
  {
    std::__shared_weak_count::__release_weak(v773);
  }

  if (v775)
  {
    std::__shared_weak_count::__release_weak(v775);
  }

  if (v777)
  {
    std::__shared_weak_count::__release_weak(v777);
  }

  if (v779)
  {
    std::__shared_weak_count::__release_weak(v779);
  }

  if (v781)
  {
    std::__shared_weak_count::__release_weak(v781);
  }

  if (v783)
  {
    std::__shared_weak_count::__release_weak(v783);
  }

  if (v785)
  {
    std::__shared_weak_count::__release_weak(v785);
  }

  if (v787)
  {
    std::__shared_weak_count::__release_weak(v787);
  }

  if (v789)
  {
    std::__shared_weak_count::__release_weak(v789);
  }

  if (v791)
  {
    std::__shared_weak_count::__release_weak(v791);
  }

  if (v793)
  {
    std::__shared_weak_count::__release_weak(v793);
  }

  if (v795)
  {
    std::__shared_weak_count::__release_weak(v795);
  }

  if (v797)
  {
    std::__shared_weak_count::__release_weak(v797);
  }

  if (v799)
  {
    std::__shared_weak_count::__release_weak(v799);
  }

  if (v801)
  {
    std::__shared_weak_count::__release_weak(v801);
  }

  if (v803)
  {
    std::__shared_weak_count::__release_weak(v803);
  }

  if (v805)
  {
    std::__shared_weak_count::__release_weak(v805);
  }

  if (v807)
  {
    std::__shared_weak_count::__release_weak(v807);
  }

  if (v809)
  {
    std::__shared_weak_count::__release_weak(v809);
  }

  if (v811)
  {
    std::__shared_weak_count::__release_weak(v811);
  }

  if (v813)
  {
    std::__shared_weak_count::__release_weak(v813);
  }

  if (v815)
  {
    std::__shared_weak_count::__release_weak(v815);
  }

  std::__shared_weak_count::__release_weak(v409);
  v714 = *MEMORY[0x29EDCA608];
}