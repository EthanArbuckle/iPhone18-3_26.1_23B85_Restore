void sub_297013E90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2970136A8);
    }

    JUMPOUT(0x2970136B0);
  }

  _Unwind_Resume(a1);
}

void prop::file::get<std::string>(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(__p, 170, sizeof(__p));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v28, 0, sizeof(v28));
    v12 = &v28;
    *(&v28.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    v12 = operator new(v11);
    v28.__r_.__value_.__l.__size_ = v6 + 1;
    v28.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    v28.__r_.__value_.__r.__words[0] = v12;
  }

  v13 = *a1;
  if (v5 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  memmove(v12, v14, v6);
LABEL_15:
  *&v12[v6] = 46;
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = std::string::append(&v28, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  __p[2] = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v20 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  for (; v21 != v20; v21 = (v21 + 1))
  {
    *v21 = __tolower(*v21);
  }

  memset(a4, 170, sizeof(std::string));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a3, *(a3 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v30 = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E26558;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v23;
    *(&xmmword_2A18B7520 + 1) = v22;
    if (!v24)
    {
      v28.__r_.__value_.__r.__words[0] = v23;
      v28.__r_.__value_.__l.__size_ = v22;
      goto LABEL_41;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A18B7520 + 1);
  v23 = xmmword_2A18B7520;
  *&v28.__r_.__value_.__l.__data_ = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_41:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v30, v25);
  v26 = (**v23)(v23, v30);
  if (v26)
  {
    ctu::cf::assign();
    CFRelease(v26);
  }

  MEMORY[0x29C26B130](&v30);
  size = v28.__r_.__value_.__l.__size_;
  if (!v28.__r_.__value_.__l.__size_ || atomic_fetch_add((v28.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_50;
  }

  (size->__on_zero_shared)(size);
  std::__shared_weak_count::__release_weak(size);
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_50:
    operator delete(__p[0]);
  }
}

void sub_297014264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a22);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrI19QMITransportServiceEE(uint64_t result, uint64_t a2)
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

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || v6 < 0xFFFFFFFF80000000 || v6 > 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_29701456C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t RouterIPCController::wake(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2970147D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char *_ZNKSt3__110__function6__funcIZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_E3__7NS_9allocatorIS5_EEFvbEE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A1E31CA0;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(v2 + 4) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(v2 + 4);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a1 + 40);
  *(v2 + 5) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  return v2;
}

BOOL prop::tracesettings::enabled(prop::tracesettings *this, const char *a2)
{
  v30 = 0;
  if (*MEMORY[0x29EDBE710] == this)
  {
    v6 = strlen(this);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_63:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v6 | 7) + 1;
      }

      p_dst = operator new(v15);
      v28 = v7;
      v29 = v15 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v29) = v6;
      p_dst = &__dst;
      if (!v6)
      {
LABEL_38:
        *(p_dst + v7) = 0;
        v16 = *MEMORY[0x29EDBE590];
        v17 = strlen(*MEMORY[0x29EDBE590]);
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v18 = v17;
        if (v17 >= 0x17)
        {
          if ((v17 | 7) == 0x17)
          {
            v20 = 25;
          }

          else
          {
            v20 = (v17 | 7) + 1;
          }

          v19 = operator new(v20);
          v25 = v18;
          v26 = v20 | 0x8000000000000000;
          v24 = v19;
        }

        else
        {
          HIBYTE(v26) = v17;
          v19 = &v24;
          if (!v17)
          {
LABEL_47:
            *(v19 + v18) = 0;
            memset(&__p, 0, sizeof(__p));
            if (prop::get(&__dst, &v24, &__p))
            {
              v31 = -1431655766;
              v21 = util::convert<int>(&__p, &v31, 0);
              if (v31)
              {
                v22 = 1;
              }

              else
              {
                v22 = v21 ^ 1;
              }

              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_55:
                if (SHIBYTE(v26) < 0)
                {
                  operator delete(v24);
                  if ((SHIBYTE(v29) & 0x80000000) == 0)
                  {
LABEL_57:
                    if (!v21)
                    {
                      return v30;
                    }

                    return v22;
                  }
                }

                else if ((SHIBYTE(v29) & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

                operator delete(__dst);
                if (!v21)
                {
                  return v30;
                }

                return v22;
              }
            }

            else
            {
              v21 = 0;
              v22 = 1;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_55;
              }
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            goto LABEL_55;
          }
        }

        memmove(v19, v16, v18);
        goto LABEL_47;
      }
    }

    memcpy(p_dst, this, v7);
    goto LABEL_38;
  }

  v3 = strlen(this);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_63;
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v3 | 7) + 1;
    }

    v5 = operator new(v9);
    v28 = v4;
    v29 = v9 | 0x8000000000000000;
    __dst = v5;
    goto LABEL_14;
  }

  HIBYTE(v29) = v3;
  v5 = &__dst;
  if (v3)
  {
LABEL_14:
    memcpy(v5, this, v4);
  }

  *(v5 + v4) = 0;
  v10 = *MEMORY[0x29EDBE6E0];
  v11 = strlen(*MEMORY[0x29EDBE6E0]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    v25 = v12;
    v26 = v14 | 0x8000000000000000;
    v24 = v13;
    goto LABEL_23;
  }

  HIBYTE(v26) = v11;
  v13 = &v24;
  if (v11)
  {
LABEL_23:
    memmove(v13, v10, v12);
  }

  *(v13 + v12) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::get(&__dst, &v24, &__p))
  {
    util::convert<BOOL>(&__p, &v30, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_28:
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_32;
      }

      return v30;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v24);
  if (SHIBYTE(v29) < 0)
  {
LABEL_32:
    operator delete(__dst);
  }

  return v30;
}

void sub_297014BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void TraceManager::runOnHelper_sync(void *a1, const char *a2, uint64_t a3, unsigned int a4, char a5, xpc_object_t *a6, NSObject **a7, void **a8)
{
  v13 = a2;
  v56 = *MEMORY[0x29EDCA608];
  if ((a5 & 1) == 0 && !prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) && !prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v15) && !prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v16))
  {
    goto LABEL_70;
  }

  v17 = a1[13];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = abm::helper::asString();
    *&buf[12] = 2080;
    *&buf[14] = a3;
    _os_log_impl(&dword_296FF7000, v17, OS_LOG_TYPE_DEFAULT, "#I Running helper action: %s:%s", buf, 0x16u);
  }

  memset(buf, 170, 16);
  abm::HelperClient::create(buf, "tracing.helper", v18);
  v19 = MEMORY[0x29C26CE60](*a6);
  v20 = MEMORY[0x29EDCAA00];
  if (v19 != MEMORY[0x29EDCAA00])
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    if (v21 || (v21 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v21) == v20)
      {
        xpc_retain(v21);
        v22 = v21;
      }

      else
      {
        v22 = xpc_null_create();
      }
    }

    else
    {
      v22 = xpc_null_create();
      v21 = 0;
    }

    xpc_release(v21);
    v23 = xpc_null_create();
    v24 = *a6;
    *a6 = v22;
    xpc_release(v24);
    xpc_release(v23);
  }

  if (a4)
  {
    v25 = xpc_int64_create(a4);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a6, *MEMORY[0x29EDBD2D8], v25);
    v26 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v26);
  }

  if (!*a8 || !a8[1])
  {
    v28 = a1[10];
    if (!v28 || (v29 = a1[9], (v30 = std::__shared_weak_count::lock(v28)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v31 = v30;
    p_shared_weak_owners = &v30->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v31);
    }

    v50 = 0xAAAAAAAAAAAAAAAALL;
    v51 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN12TraceManager16runOnHelper_syncEN3abm6helper6TaskIDEPKcjbN3xpc4dictEN8dispatch13group_sessionENS7_8callbackIU13block_pointerFvN12TelephonyXPC6ResultES6_EEE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_65_2;
    aBlock[4] = a1;
    aBlock[5] = v29;
    v44 = v31;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v33 = *a7;
    group = v33;
    if (v33)
    {
      dispatch_retain(v33);
      dispatch_group_enter(group);
    }

    v46 = *buf;
    v47 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v49 = v13;
    v48 = a3;
    v34 = _Block_copy(aBlock);
    v35 = a1[11];
    if (v35)
    {
      dispatch_retain(v35);
    }

    v50 = v34;
    v51 = v35;
    v42 = *a6;
    if (*a6)
    {
      xpc_retain(*a6);
      if (v34)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v42 = xpc_null_create();
      if (v34)
      {
LABEL_36:
        v40 = _Block_copy(v34);
        object = v35;
        if (!v35)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v40 = 0;
    object = v35;
    if (!v35)
    {
LABEL_38:
      abm::HelperClient::perform();
      if (object)
      {
        dispatch_release(object);
      }

      if (v40)
      {
        _Block_release(v40);
      }

      xpc_release(v42);
      if (v35)
      {
        dispatch_release(v35);
      }

      if (v34)
      {
        _Block_release(v34);
      }

      v36 = v47;
      if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }

      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }

      std::__shared_weak_count::__release_weak(v31);
      v37 = *&buf[8];
      if (*&buf[8])
      {
        goto LABEL_68;
      }

      goto LABEL_70;
    }

LABEL_37:
    dispatch_retain(v35);
    goto LABEL_38;
  }

  v54 = *a6;
  if (!v54)
  {
    v54 = xpc_null_create();
    v27 = *a8;
    if (!*a8)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  xpc_retain(v54);
  v27 = *a8;
  if (*a8)
  {
LABEL_60:
    v27 = _Block_copy(v27);
  }

LABEL_61:
  v38 = a8[1];
  v52 = v27;
  v53 = v38;
  if (v38)
  {
    dispatch_retain(v38);
  }

  abm::HelperClient::perform();
  if (v53)
  {
    dispatch_release(v53);
  }

  if (v52)
  {
    _Block_release(v52);
  }

  xpc_release(v54);
  v54 = 0;
  v37 = *&buf[8];
  if (*&buf[8])
  {
LABEL_68:
    if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }

LABEL_70:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_29701518C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, dispatch_group_t group, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

BOOL prop::get(char *a1, char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBFC60]) && strcasecmp(v6, *MEMORY[0x29EDBFC58]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {
                          v20 = *MEMORY[0x29EDCA608];

                          return prop::tracesettings::get(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A18B7930;
                          if (os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v21 = a1;
                            }

                            else
                            {
                              v21 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v22 = a2;
                            }

                            else
                            {
                              v22 = *a2;
                            }

                            v24 = 136315394;
                            v25 = v21;
                            v26 = 2080;
                            v27 = v22;
                            _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "get: Invalid domain; domain='%s' key='%s'", &v24, 0x16u);
                            v23 = *MEMORY[0x29EDCA608];
                          }

                          else
                          {
                            v8 = *MEMORY[0x29EDCA608];
                          }

                          return 0;
                        }
                      }

                      goto LABEL_34;
                    }

                    goto LABEL_61;
                  }

                  goto LABEL_58;
                }

                goto LABEL_55;
              }

              goto LABEL_52;
            }

            goto LABEL_49;
          }

          goto LABEL_46;
        }

        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBFC60]) && strcasecmp(a1, *MEMORY[0x29EDBFC58]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_34:
                    v10 = *MEMORY[0x29EDCA608];

                    return prop::tailspin::get(a2, a3);
                  }

LABEL_61:
                  v19 = *MEMORY[0x29EDCA608];

                  return prop::profile::get(a2, a3);
                }

LABEL_58:
                v18 = *MEMORY[0x29EDCA608];

                return prop::systemlogs::get(a2, a3);
              }

LABEL_55:
              v17 = *MEMORY[0x29EDCA608];

              return prop::logfilter::get(a2, a3);
            }

LABEL_52:
            v16 = *MEMORY[0x29EDCA608];

            return prop::ttr::get(a2, a3);
          }

LABEL_49:
          v15 = *MEMORY[0x29EDCA608];

          return prop::compression::get(a2, a3);
        }

LABEL_46:
        v14 = *MEMORY[0x29EDCA608];

        return prop::bbipc::get(a2, a3);
      }

LABEL_40:
      v12 = *MEMORY[0x29EDCA608];

      return prop::ipc::get(a2, a3);
    }

LABEL_43:
    v13 = *MEMORY[0x29EDCA608];

    return prop::coredump::get(a2, a3);
  }

  v11 = *MEMORY[0x29EDCA608];

  return prop::bbtrace::get(a2, a3);
}

void _ZNSt3__110__function6__funcIZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_E3__7NS_9allocatorIS5_EEFvbEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = __p[4];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

uint64_t util::convert<BOOL>(const std::string *a1, BOOL *a2, int a3)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a1->__r_.__value_.__r.__words[0];
    if (strcasecmp(a1->__r_.__value_.__l.__data_, "false") && strcasecmp(v6, "off") && strcasecmp(v6, "no"))
    {
      if (!strcasecmp(v6, "true") || !strcasecmp(v6, "on") || !strcasecmp(v6, "yes") || !strcasecmp(v6, "full") || !strcasecmp(v6, "streaming") || !strcasecmp(v6, "lite"))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_28:
    v10 = 0;
LABEL_30:
    *a2 = v10;
    return 1;
  }

  if (!strcasecmp(a1, "false") || !strcasecmp(a1, "off") || !strcasecmp(a1, "no"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(a1, "true"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "on"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "yes"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "full"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "streaming"))
  {
    goto LABEL_29;
  }

  v6 = a1;
  if (!strcasecmp(a1, "lite"))
  {
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v6, "background"))
  {
LABEL_29:
    v10 = 1;
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v7 = std::stol(a1, &__idx, a3);
  result = 0;
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v10 = v7 != 0;
  if (__idx == size && v7 < 2)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_297015C00(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

BOOL prop::ipc::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8E8];
  v5 = strlen(*MEMORY[0x29EDBF8E8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297015D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL defaults::ipc::get(char *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(v6, *MEMORY[0x29EDBE6E8]);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10 = capabilities::ipc::defaultPCIBinaryTraceHistorySizeMB(v5);
      std::to_string(&v22, v10);
      goto LABEL_13;
    }

LABEL_10:
    v11 = capabilities::ipc::supportsPCI(v4);
    if (v11)
    {
      LODWORD(v11) = capabilities::trace::enabledByDefault(v11);
    }

    std::to_string(&v22, v11);
    goto LABEL_13;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
  v6 = a1;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = strcasecmp(v6, "BufferCount");
  if (!v7)
  {
    v8 = capabilities::ipc::supportsPCI(v7);
    if (v8)
    {
      v9 = capabilities::ipc::defaultPCIBinaryTraceBufferCount(v8);
      std::to_string(&v22, v9);
LABEL_13:
      *v21 = v22.__r_.__value_.__l.__size_;
      v12 = v22.__r_.__value_.__r.__words[0];
      *&v21[7] = *(&v22.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v21;
      *(a2 + 15) = *&v21[7];
      *(a2 + 23) = v13;
      result = 1;
      v15 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v16 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
LABEL_19:
      v17 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v16 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  v18 = *MEMORY[0x29EDBF8E8];
  if (a1[23] >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  LODWORD(v22.__r_.__value_.__l.__data_) = 136315394;
  *(v22.__r_.__value_.__r.__words + 4) = v18;
  WORD2(v22.__r_.__value_.__r.__words[1]) = 2080;
  *(&v22.__r_.__value_.__r.__words[1] + 6) = v19;
  _os_log_error_impl(&dword_296FF7000, v16, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v22, 0x16u);
  result = 0;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297016024(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x297015EB8);
    }

    JUMPOUT(0x297015EC0);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::wake(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(RouterIPCController ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*v2 + 30) == 3 && RouterIPCController::wake_sync(v3);
  v8 = v4;
  v5 = v2[4];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v8);
  v6 = v2[4];
  if (v6 == v2 + 1)
  {
    (*(*v6 + 4))(v6);
    operator delete(v2);
    v7 = a1[2];
    if (!v7)
    {
LABEL_9:
      operator delete(a1);
      return;
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 5))(v6);
    }

    operator delete(v2);
    v7 = a1[2];
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_9;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  operator delete(a1);
}

void sub_2970161D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL RouterIPCController::wake_sync(RouterIPCController *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Waking", &v10, 2u);
  }

  if (*(this + 30) != 3)
  {
    v7 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v10 = 136315906;
    v11 = "ABM ASSERT";
    v12 = 2080;
    v13 = "fState == State::kSleep";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
    v16 = 1024;
    v17 = 221;
    goto LABEL_17;
  }

  v3 = RouterDelegate::wake(*(this + 8));
  if (!v3)
  {
    if (RouterDelegate::hasFatalErrorOccurred(*(this + 8)))
    {
      goto LABEL_14;
    }

    v7 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
LABEL_18:
      __break(1u);
    }

    v10 = 136315906;
    v11 = "ABM ASSERT";
    v12 = 2080;
    v13 = "fRouterDelegate->hasFatalErrorOccurred()";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
    v16 = 1024;
    v17 = 226;
LABEL_17:
    _os_log_fault_impl(&dword_296FF7000, v7, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v10, 0x26u);
    goto LABEL_18;
  }

  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 30);
    if (v5 > 3)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_29EE64648[v5];
    }

    v10 = 136315394;
    v11 = v6;
    v12 = 2080;
    v13 = "kEngaged";
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I IPC state changing from %s -> %s", &v10, 0x16u);
  }

  *(this + 30) = 1;
LABEL_14:
  (*(**(this + 10) + 32))(*(this + 10));
  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL RouterDelegate::wake(RouterDelegate *this)
{
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Waking", v4, 2u);
  }

  return (*(**(*(this + 2) + 24) + 64))(*(*(this + 2) + 24)) == 0;
}

void dispatch::async<void ctu::SharedSynchronizable<FSModule>::execute_wrapped<FSModule::wake(dispatch::group_session)::$_0>(FSModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<FSModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<FSModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  *(v4 + 889) = 0;
  if (v3)
  {
    dispatch_group_leave(v3);
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

void _ZNSt3__110__function6__funcIZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_E3__7NS_9allocatorIS5_EEFvbEEclEOb(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[2])
      {
LABEL_16:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_ENK3__7clEb_block_invoke;
      v12[3] = &__block_descriptor_tmp_163;
      v15 = v4;
      v8 = a1[5];
      v12[4] = v5;
      object = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v9 = a1[4];
      group = v9;
      if (v9)
      {
        dispatch_retain(v9);
        dispatch_group_enter(group);
      }

      v16 = v12;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZNK3ctu20SharedSynchronizableI19QMITransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
      block[3] = &__block_descriptor_tmp_108_0;
      block[4] = v5 + 24;
      block[5] = &v16;
      v10 = *(v5 + 40);
      if (*(v5 + 48))
      {
        dispatch_async_and_wait(v10, block);
        v11 = group;
        if (!group)
        {
LABEL_14:
          if (object)
          {
            dispatch_release(object);
          }

          goto LABEL_16;
        }
      }

      else
      {
        dispatch_sync(v10, block);
        v11 = group;
        if (!group)
        {
          goto LABEL_14;
        }
      }

      dispatch_group_leave(v11);
      if (group)
      {
        dispatch_release(group);
      }

      goto LABEL_14;
    }
  }
}

void ___ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_ENK3__7clEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v3 = *(v1 + 176);
    v4 = (v1 + 184);
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 1174405120;
    v28 = ___ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_ENK3__7clEb_block_invoke_2;
    v29 = &__block_descriptor_tmp_152_0;
    v5 = *(a1 + 40);
    v30 = v1;
    v31 = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    if (v3 != v4)
    {
      do
      {
        v28(v27, (v3 + 4));
        v9 = v3[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v3[2];
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v3 = v10;
      }

      while (v10 != v4);
    }

    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(v1 + 40);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_ENK3__7clEb_block_invoke_153;
    block[3] = &__block_descriptor_tmp_158_1;
    block[4] = v1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    dispatch_group_notify(v7, v8, block);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v31)
    {
      dispatch_release(v31);
    }
  }

  else
  {
    v12 = *(v1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "----------------- Exit Low Power Failure ----------------", buf, 2u);
    }

    *buf = 0;
    v22 = buf;
    v23 = 0x2000000000;
    v24 = 0;
    v13 = *(v1 + 176);
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 0x40000000;
    v17 = ___ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_ENK3__7clEb_block_invoke_159;
    v18 = &unk_29EE654A8;
    v19 = buf;
    v20 = v1;
    if (v13 == (v1 + 184))
    {
      goto LABEL_31;
    }

    do
    {
      v17(v16, (v13 + 4));
      v14 = v13[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v13[2];
          v11 = *v15 == v13;
          v13 = v15;
        }

        while (!v11);
      }

      v13 = v15;
    }

    while (v15 != (v1 + 184));
    if ((v22[24] & 1) == 0)
    {
LABEL_31:
      (*(**(v1 + 64) + 16))(*(v1 + 64), "Exit Low Power Failure", 1);
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_297016A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_297016A88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (!v3)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_release(v3);
  _Unwind_Resume(exception_object);
}

uint64_t ___ZZZN19QMITransportService12exitLowPowerEN8dispatch13group_sessionEEUb1_ENK3__7clEb_block_invoke_2(uint64_t a1, QMux *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    QMux::getName(__p, a2);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315394;
    v12 = "operator()_block_invoke_2";
    v13 = 2080;
    v14 = v5;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Power up %s", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 40);
  result = QMux::enterPowerMode();
  v8 = *MEMORY[0x29EDCA608];
  return result;
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

void dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (a1)
  {
    v1 = ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(a1);

    operator delete(v1);
  }
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  if ((v2 - 1) <= 1)
  {
    v3 = *(v1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "LowPower";
      if (v2 != 2)
      {
        v4 = "Throttled";
      }

      *buf = 136315394;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = "Throttled";
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", buf, 0x16u);
    }

    *(v1 + 48) = 1;
    data::TransportService::State::startLimitTimer_sync(v1);
  }

  v5 = *(v1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Exited Low Power", buf, 2u);
  }

  if (!*(v1 + 80))
  {
    v7 = *(v1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Listening for UI events", buf, 2u);
    }

    pthread_mutex_lock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
    v8 = off_2A18B7250;
    if (!off_2A18B7250)
    {
      memset(buf, 170, 16);
      v9 = operator new(0x40uLL);
      sys::UIObserver::UIObserver(v9);
      std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(buf, v9);
      v10 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v11 = *(&off_2A18B7250 + 1);
      off_2A18B7250 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v8 = off_2A18B7250;
    }

    v16 = *(&off_2A18B7250 + 1);
    if (*(&off_2A18B7250 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B7250 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
    sys::UIObserver::observe(v8, 1, &v17);
    v13 = v17;
    v17 = 0uLL;
    v14 = *(v1 + 88);
    *(v1 + 80) = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(&v17 + 1);
    if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_297016FB0(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  _Unwind_Resume(a1);
}

void data::TransportService::State::startLimitTimer_sync(data::TransportService::State *this)
{
  if (*(this + 10) == 1)
  {
    v2 = dispatch_time(0, 1000000000 * *(this + 11) + 500000000);
    v3 = *(this + 12);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }

      v5 = *(this + 4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", buf, 2u);
      }
    }

    v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 2));
    v7 = *(this + 12);
    *(this + 12) = v6;
    if (v7)
    {
      dispatch_release(v7);
      v6 = *(this + 12);
    }

    dispatch_source_set_timer(v6, v2, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v8 = *(this + 1);
    if (!v8 || (v9 = *this, (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

    v13 = *(this + 12);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN4data16TransportService5State20startLimitTimer_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_50;
    handler[4] = this;
    handler[5] = v9;
    v16 = v11;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v13, handler);
    dispatch_activate(*(this + 12));
    v14 = *(this + 4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEFAULT, "#I Limit timer started", buf, 2u);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    std::__shared_weak_count::__release_weak(v11);
  }
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
  aBlock[3] = &__block_descriptor_tmp_6_5;
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
  v14->__vftable = &unk_2A1E2D898;
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
  v16[3] = &__block_descriptor_tmp_8_3;
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

void sub_297017474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
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
  block[3] = &unk_2A1E2D858;
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

void __destroy_helper_block_e8_40c58_ZTSNSt3__110shared_ptrIKN4data16TransportService5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

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
  v7[3] = &__block_descriptor_tmp_42;
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

void sub_2970178B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v14);
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
        v38.__vftable = &unk_2A1E24E88;
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

void sub_297017E20(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x297017E84);
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

void sub_297018748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_2970187CC(void *a1, int a2)
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

  JUMPOUT(0x2970188F0);
}

void sub_2970188C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2970188E8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result ^ (*result >> 31);
  if (v2 == 2)
  {
    (*(**(result + 8) + 16))(&v8);
    *(a2 + 8) = (*(*v8 + 16))(v8);
    *a2 = 1;
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      while (v4)
      {
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 1, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == v4;
        v4 = v5;
        if (v6)
        {
          *(a2 + 8) = *(result + 8);
          *(a2 + 16) = v3;
          *a2 = 0;
          return result;
        }
      }

      v3 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = v3;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_297018A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v7 = &unk_2A1E2B4F8;
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

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E2B4F8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E2B4F8;
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

void ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>::operator()<BOOL>(uint64_t a1, char a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  boost::function<void ()(BOOL)>::function<dispatch::block<void({block_pointer})(BOOL)>>(&v10, &aBlock);
  v5 = operator new(1uLL);
  *v5 = a2;
  v6 = operator new(0x20uLL);
  v7 = v6;
  *v6 = 0;
  v8 = v10;
  if (v10)
  {
    *v6 = v10;
    if (v8)
    {
      *(v6 + 8) = v11;
      *(v6 + 3) = v12;
    }

    else
    {
      (*v8)(&v11, v6 + 8, 0);
    }
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvbEEEb_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  block[4] = v7;
  block[5] = v5;
  dispatch_async(v4, block);
  if (v10)
  {
    if ((v10 & 1) == 0 && *v10)
    {
      (*v10)(&v11, &v11, 2);
    }

    v10 = 0;
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_297018E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void (**a11)(void, void, void))
{
  operator delete(v11);
  boost::function<void ()(BOOL)>::~function(&a11);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void *boost::function<void ()(BOOL)>::function<dispatch::block<void({block_pointer})(BOOL)>>(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  boost::function1<void,BOOL>::function1<dispatch::block<void({block_pointer})(BOOL)>>(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_297018ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void *boost::function1<void,BOOL>::function1<dispatch::block<void({block_pointer})(BOOL)>>(void *a1, void **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_297018F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = boost::detail::function::basic_vtable1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable, &aBlock, (a1 + 8));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    v5 = boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_297018FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::detail::function::basic_vtable1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(uint64_t a1, const void **a2, void **a3)
{
  if (*a2 && (v4 = _Block_copy(*a2), (v5 = v4) != 0))
  {
    v6 = _Block_copy(v4);
    v7 = v6;
    if (v6)
    {
      *a3 = _Block_copy(v6);
      _Block_release(v7);
    }

    else
    {
      *a3 = 0;
    }

    _Block_release(v5);
    return 1;
  }

  else
  {
    *a3 = 0;
    return 1;
  }
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(BOOL)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    boost::detail::function::functor_manager_common<dispatch::block<void({block_pointer})(BOOL)>>::manage_small(a1, a2, a3);
  }
}

void boost::detail::function::functor_manager_common<dispatch::block<void({block_pointer})(BOOL)>>::manage_small(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x800000029722B82FLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029722B82FLL & 0x7FFFFFFFFFFFFFFFLL)))
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
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
        goto LABEL_6;
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
LABEL_6:
        _Block_release(v7);
      }
    }
  }
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
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

void sub_2970195F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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

void __destroy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN3sys10UIObserver6HandleEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvbEEEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v8, "call to empty boost::function");
    v8.__vftable = &unk_2A1E24E88;
    boost::throw_exception<boost::bad_function_call>(&v8);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1, **(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    operator delete(v7);
  }
}

uint64_t ___ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE13connect_eventIN5boost8signals26signalIFvbENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEbEEENS7_5mutexEEES3_vJbEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void data::TransportService::State::handleUILockStateChange_sync(data::TransportService::State *this, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(this + 4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "unlocked";
    if (a2)
    {
      v6 = "locked";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I UI has %s", &v8, 0xCu);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    v5 = *MEMORY[0x29EDCA608];
    return;
  }

  data::TransportService::State::unblockThrottling_sync(this);
  v7 = *MEMORY[0x29EDCA608];
}

void QMITransportService::reportPowerDownMessages_sync(QMITransportService *this)
{
  v2 = xpc_array_create(0, 0);
  v3 = MEMORY[0x29EDCA9E0];
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v2) == v3)
    {
      xpc_retain(v2);
      v4 = v2;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v5 = *(this + 22);
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 1174405120;
  v30 = ___ZN19QMITransportService28reportPowerDownMessages_syncEv_block_invoke;
  v31 = &__block_descriptor_tmp_30_3;
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
    v6 = this + 184;
    if (v5 == this + 184)
    {
      goto LABEL_11;
    }
  }

  else
  {
    object = xpc_null_create();
    v6 = this + 184;
    if (v5 == this + 184)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v30(v29, (v5 + 32));
    v7 = *(v5 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v5 + 2);
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v6);
LABEL_11:
  if (MEMORY[0x29C26CE60](v4) != v3)
  {
    goto LABEL_12;
  }

  if (!xpc_array_get_count(v4))
  {
    goto LABEL_12;
  }

  v10 = *(this + 29);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = std::__shared_weak_count::lock(v10);
  v28 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  v27 = *(this + 28);
  if (!v27)
  {
    goto LABEL_48;
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v12) == MEMORY[0x29EDCAA00])
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
  if (v4)
  {
    xpc_retain(v4);
    v14 = v4;
  }

  else
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, abm::kKeyPowerDownMessageList[0], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = v27;
  v17 = abm::kCommandSetPowerDownMessageList[0];
  v18 = strlen(abm::kCommandSetPowerDownMessageList[0]);
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
    __dst[1] = v19;
    v26 = v21 | 0x8000000000000000;
    __dst[0] = v20;
    goto LABEL_41;
  }

  HIBYTE(v26) = v18;
  v20 = __dst;
  if (v18)
  {
LABEL_41:
    memmove(v20, v17, v19);
  }

  *(v19 + v20) = 0;
  v24 = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v24 = xpc_null_create();
  }

  v23 = 0;
  Service::runCommand(v16, __dst, &v24, &v23);
  xpc_release(v24);
  v24 = 0;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v13);
  v11 = v28;
  if (v28)
  {
LABEL_48:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v11;
      (v11->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v22);
    }
  }

LABEL_12:
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_297019CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t a23)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v24);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a17);
  xpc_release(a23);
  a23 = 0;
  xpc_release(v23);
  _Unwind_Resume(a1);
}

void ___ZN19QMITransportService28reportPowerDownMessages_syncEv_block_invoke(uint64_t a1, QMux *this)
{
  memset(v16, 170, sizeof(v16));
  QMux::getQMIPowerDownMessages(v16, this);
  v3 = v16[0];
  if (v16[0] != &v16[1])
  {
    v4 = MEMORY[0x29EDCAA00];
    do
    {
      v5 = *(v3 + 26);
      v6 = *(v3 + 28);
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7 || (v7 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26CE60](v7) == v4)
        {
          xpc_retain(v7);
          v8 = v7;
        }

        else
        {
          v8 = xpc_null_create();
        }
      }

      else
      {
        v8 = xpc_null_create();
        v7 = 0;
      }

      xpc_release(v7);
      v9 = xpc_int64_create(v5);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, abm::kKeyPowerDownMessageQMISvc[0], v9);
      v10 = xpc_null_create();
      xpc_release(v9);
      xpc_release(v10);
      v11 = xpc_int64_create(v6);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, abm::kKeyPowerDownMessageId[0], v11);
      v12 = xpc_null_create();
      xpc_release(v11);
      xpc_release(v12);
      xpc_array_append_value(*(a1 + 32), v8);
      xpc_release(v8);
      v13 = *(v3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v3 + 16);
          v15 = *v14 == v3;
          v3 = v14;
        }

        while (!v15);
      }

      v3 = v14;
    }

    while (v14 != &v16[1]);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v16[1]);
}

void sub_297019FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  xpc_release(v11);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a11);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void Service::runCommand(uint64_t a1, uint64_t a2, xpc_object_t *a3, const void **a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v9 = std::__shared_weak_count::lock(v5);
  v16[2] = v9;
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = *(a1 + 8);
  v16[1] = v11;
  if (v11)
  {
    v12 = *a3;
    v16[0] = v12;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a4;
      if (*a4)
      {
LABEL_6:
        v14 = _Block_copy(v13);
LABEL_9:
        v15 = v14;
        ServiceManager::runCommand(v11, a2, v16, &v15);
        if (v14)
        {
          _Block_release(v14);
        }

        xpc_release(v12);
        v16[0] = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v16[0] = v12;
      v13 = *a4;
      if (*a4)
      {
        goto LABEL_6;
      }
    }

    v14 = 0;
    goto LABEL_9;
  }

LABEL_12:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_29701A180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v12)
  {
    _Block_release(v12);
  }

  xpc_release(v11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
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

void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E2C7D8;
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

void ___ZN12PowerManager5State10initializeEv_block_invoke_2(void *a1, void **a2, void **a3)
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
      v12[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_3;
      v12[3] = &__block_descriptor_tmp_35_2;
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
          ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v7, v12);
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

void *__copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    xpc_retain(v4);
    result = *(a2 + 48);
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a1 + 40) = xpc_null_create();
  result = *(a2 + 48);
  if (result)
  {
LABEL_5:
    result = _Block_copy(result);
  }

LABEL_6:
  *(a1 + 48) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN12PowerManager5StateEEE(uint64_t result, uint64_t a2)
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

void ___ZN12PowerManager5State10initializeEv_block_invoke_3(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 72);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  PowerStats::setPowerdownMessage(v4, &object);
  xpc_release(object);
  object = 0;
  v5 = xpc_null_create();
  v6 = a1[6];
  v9 = v5;
  v7 = xpc_null_create();
  (*(v6 + 16))(v6, 0, &v9);
  xpc_release(v9);
  xpc_release(v7);
}

void sub_29701A5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void PowerStats::setPowerdownMessage(uint64_t a1, xpc_object_t *a2)
{
  theArray = 0xAAAAAAAAAAAAAAAALL;
  value = xpc_dictionary_get_value(*a2, abm::kKeyPowerDownMessageList[0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(cf, &object, v4);
  v5 = cf[0];
  if (cf[0])
  {
    v6 = CFGetTypeID(cf[0]);
    if (v6 == CFArrayGetTypeID())
    {
      theArray = v5;
      CFRetain(v5);
      v7 = cf[0];
      if (!cf[0])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v5 = 0;
  theArray = 0;
  v7 = cf[0];
  if (cf[0])
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  xpc_release(object);
  v8 = 0;
  v9 = (a1 + 48);
  while (1)
  {
    Count = CFArrayGetCount(v5);
    v5 = theArray;
    if (Count <= v8)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    v12 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      goto LABEL_13;
    }

    cf[0] = 0xAAAAAAAAAAAAAAAALL;
    cf[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 == CFDictionaryGetTypeID())
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    ctu::cf::dict_adapter::dict_adapter(cf, v14);
    ctu::cf::MakeCFString::MakeCFString(&object, abm::kKeyPowerDownMessageQMISvc[0]);
    Int = ctu::cf::map_adapter::getInt(cf, object);
    MEMORY[0x29C26B130](&object);
    ctu::cf::MakeCFString::MakeCFString(&object, abm::kKeyPowerDownMessageId[0]);
    v16 = ctu::cf::map_adapter::getInt(cf, object);
    MEMORY[0x29C26B130](&object);
    v17 = *v9;
    v18 = (a1 + 48);
    v19 = (a1 + 48);
    if (*v9)
    {
      while (1)
      {
        while (1)
        {
          v19 = v17;
          v20 = *(v17 + 7);
          if (Int == v20)
          {
            break;
          }

          if (Int >= v20)
          {
            if (v20 >= Int)
            {
              v24 = 1;
            }

            else
            {
              v24 = -1;
            }

            if ((v24 & 0x80) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }

LABEL_21:
          v17 = *v19;
          v18 = v19;
          if (!*v19)
          {
            goto LABEL_38;
          }
        }

        v21 = *(v19 + 8);
        if (v16 < v21)
        {
          goto LABEL_21;
        }

        v22 = v21 == v16;
        if (v21 >= v16)
        {
          v23 = 1;
        }

        else
        {
          v23 = -1;
        }

        if (v22)
        {
          v23 = 0;
        }

        if ((v23 & 0x80) == 0)
        {
LABEL_40:
          v25 = v19;
          goto LABEL_12;
        }

LABEL_36:
        v17 = *(v19 + 1);
        if (!v17)
        {
          v18 = v19 + 8;
          break;
        }
      }
    }

LABEL_38:
    v25 = operator new(0x28uLL);
    *(v25 + 28) = Int | (v16 << 32);
    *(v25 + 9) = 0;
    *v25 = 0;
    *(v25 + 1) = 0;
    *(v25 + 2) = v19;
    *v18 = v25;
    v26 = **(a1 + 40);
    if (v26)
    {
      *(a1 + 40) = v26;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 48), v25);
    ++*(a1 + 56);
LABEL_12:
    ++*(v25 + 9);
    MEMORY[0x29C26B180](cf);
LABEL_13:
    ++v8;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN12PowerManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {

    dispatch_release(v6);
  }
}

void ___ZN12PowerManager5State28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEj_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 56))
      {
        if (*(a1 + 72) == 1)
        {
          v5 = v2[25];
          if (v5)
          {
            v6 = v4;
            v7 = v2[4];
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v12 = 134217984;
              v13 = v5;
              _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run; count=%zd", &v12, 0xCu);
            }

            v9 = v2[24];
            v8 = v2 + 24;
            std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v9);
            *v8 = 0;
            v8[1] = 0;
            *(v8 - 1) = v8;
            v4 = v6;
          }
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    dispatch_release(v4);
  }
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
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Client state: %s", buf, 0xCu);
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

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_7(void *a1, uint64_t *a2, const __CFDictionary **a3)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_36;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v38 = v8;
  if (!v8)
  {
    goto LABEL_36;
  }

  if (!a1[5])
  {
    goto LABEL_34;
  }

  v36 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    xdict = v9;
  }

  else
  {
    v10 = xpc_null_create();
    xdict = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C26CE60](v10) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v10);
    goto LABEL_12;
  }

  v11 = xpc_null_create();
LABEL_11:
  xdict = v11;
LABEL_12:
  xpc_release(v10);
  v33[1] = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAALL;
  value = 0;
  v33[0] = 0xAAAAAAAAAAAAAA00;
  valuePtr = 0;
  v12 = *a2;
  if (v12)
  {
    v36 = -534716416;
    v13 = *(v7 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v14 = xpc_string_create("Unknown error");
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
  }

  else
  {
    v16 = *a3;
    if (*a3)
    {
      v30[0] = 0xAAAAAAAAAAAAAAAALL;
      v30[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v30, v16);
      v17 = ctu::cf::map_adapter::copyCFNumberRef(v30, *MEMORY[0x29EDC8BE0]);
      v18 = v17;
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberLongType, &valuePtr);
        CFRelease(v18);
        LODWORD(value) = ctu::cf::map_adapter::getInt(v30, *MEMORY[0x29EDC8C20]);
      }

      v19 = *MEMORY[0x29EDC8BD0];
      ctu::cf::map_adapter::getString();
      *v33 = *buf;
      v34 = v40;
      HIBYTE(v40) = 0;
      buf[0] = 0;
      v20 = xpc_int64_create(valuePtr);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      v21 = xdict;
      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEDA0], v20);
      v22 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v22);
      v23 = xpc_int64_create(value);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      xpc_dictionary_set_value(v21, *MEMORY[0x29EDBF388], v23);
      v24 = xpc_null_create();
      xpc_release(v23);
      xpc_release(v24);
      if (v34 >= 0)
      {
        v25 = v33;
      }

      else
      {
        v25 = v33[0];
      }

      v26 = xpc_string_create(v25);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      xpc_dictionary_set_value(v21, *MEMORY[0x29EDBEEF8], v26);
      v27 = xpc_null_create();
      xpc_release(v26);
      xpc_release(v27);
      MEMORY[0x29C26B180](v30);
    }
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(a1 + 7, &v36, &xdict);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  xpc_release(xdict);
  v8 = v38;
  if (v38)
  {
LABEL_34:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v28 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v28);
    }
  }

LABEL_36:
  v29 = *MEMORY[0x29EDCA608];
}

void sub_29701B158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
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

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, dispatch_qos_class_t a4@<W3>, support::misc::safe_timer **a5@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v10;
  v25 = v10;
  v23[1] = v10;
  v23[2] = v10;
  v23[0] = v10;
  v21 = operator new(0x30uLL);
  v22 = xmmword_2972224B0;
  strcpy(v21, "com.apple.telephony.basebandservices.support");
  v20 = 10;
  strcpy(__p, "safe-timer");
  support::log::client::client(v23, &v21, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v21);
LABEL_3:
  *a5 = 0;
  v11 = operator new(0xD0uLL);
  *v17 = *a1;
  v18 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      v27 = v26;
      (*(*v12 + 24))(v12, v26);
    }

    else
    {
      v27 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  support::misc::safe_timer::safe_timer(v11, v17, a2, 0, v26, a4);
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v11))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v17[0]);
  if (support::misc::safe_timer::init(v11))
  {
LABEL_15:
    *a5 = v11;
    *&v23[0] = &unk_2A1E23498;
    v13 = v25;
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v15 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v16, 2u);
  }

  (*(*v11 + 8))(v11);
  *&v23[0] = &unk_2A1E23498;
  v13 = v25;
  if (v25)
  {
LABEL_16:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_18:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_29701BCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
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

BOOL support::misc::safe_timer::init(support::misc::safe_timer *this)
{
  if (!*(this + 17))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v4 = "error: invalid timeout value";
    v5 = &v9;
    goto LABEL_15;
  }

  if (!*(this + 22))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v8 = 0;
    v4 = "error: invalid timeout callback";
    v5 = &v8;
    goto LABEL_15;
  }

  v1 = *(this + 23);
  if (!v1)
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v7 = 0;
    v4 = "error: failed to create dispatch queue";
    v5 = &v7;
LABEL_15:
    _os_log_error_impl(&dword_296FF7000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    return 0;
  }

  if (*(this + 24))
  {
    dispatch_queue_set_specific(*(this + 23), "CurrentQueue", v1, 0);
    return 1;
  }

  v3 = **(this + 13);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v6 = 0;
    v4 = "error: failed to create dispatch safe_timer object";
    v5 = &v6;
    goto LABEL_15;
  }

  return result;
}

void support::log::client::~client(support::log::client *this)
{
  *this = &unk_2A1E23498;
  v1 = *(this + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1E23498;
  v1 = *(this + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, dispatch_qos_class_t a5@<W4>, support::misc::safe_timer **a6@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v12;
  v27 = v12;
  v25[1] = v12;
  v25[2] = v12;
  v25[0] = v12;
  v23 = operator new(0x30uLL);
  v24 = xmmword_2972224B0;
  strcpy(v23, "com.apple.telephony.basebandservices.support");
  v22 = 10;
  strcpy(__p, "safe-timer");
  support::log::client::client(v25, &v23, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v23);
LABEL_3:
  *a6 = 0;
  v13 = operator new(0xD0uLL);
  *v19 = *a1;
  v20 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v14 = *(a4 + 24);
  if (v14)
  {
    if (v14 == a4)
    {
      v29 = v28;
      (*(*v14 + 24))(v14, v28);
    }

    else
    {
      v29 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  support::misc::safe_timer::safe_timer(v13, v19, a2, a3, v28, a5);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v13))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v19[0]);
  if (support::misc::safe_timer::init(v13))
  {
LABEL_15:
    *a6 = v13;
    *&v25[0] = &unk_2A1E23498;
    v15 = v27;
    if (!v27)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v17 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_296FF7000, v17, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v18, 2u);
  }

  (*(*v13 + 8))(v13);
  *&v25[0] = &unk_2A1E23498;
  v15 = v27;
  if (v27)
  {
LABEL_16:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_18:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_29701C390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::misc::safe_timer::safe_timer(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5, dispatch_qos_class_t a6)
{
  *a1 = &unk_2A1E23468;
  v11 = a1 + 8;
  *(&v30.__r_.__value_.__s + 23) = 11;
  strcpy(&v30, "safe-timer.");
  v12 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = std::string::append(&v30, a2, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *(v11 + 16) = *(&v14->__r_.__value_.__l + 2);
  *v11 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v30.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v30.__r_.__value_.__r.__words[1] = xmmword_2972224C0;
  strcpy(v30.__r_.__value_.__l.__data_, "com.apple.telephony.baseband.");
  v16 = *(a1 + 31);
  if (v16 >= 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(a1 + 8);
  }

  if (v16 >= 0)
  {
    v18 = *(a1 + 31);
  }

  else
  {
    v18 = *(a1 + 16);
  }

  v19 = std::string::append(&v30, v17, v18);
  v20 = (a1 + 32);
  v21 = *&v19->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&v19->__r_.__value_.__l + 2);
  *(a1 + 32) = v21;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v28 = operator new(0x30uLL);
  v29 = xmmword_2972224B0;
  strcpy(v28, "com.apple.telephony.basebandservices.support");
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *v11;
  }

  support::log::client::client((a1 + 56), &v28, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_19:
      *(a1 + 136) = a3;
      *(a1 + 144) = a4;
      v22 = a5 + 24;
      v23 = *(a5 + 24);
      if (v23)
      {
        goto LABEL_20;
      }

LABEL_24:
      v22 = a1 + 176;
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v28);
  *(a1 + 136) = a3;
  *(a1 + 144) = a4;
  v22 = a5 + 24;
  v23 = *(a5 + 24);
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (v23 != a5)
  {
    *(a1 + 176) = v23;
LABEL_25:
    *v22 = 0;
    goto LABEL_27;
  }

  *(a1 + 176) = a1 + 152;
  (*(**v22 + 24))();
LABEL_27:
  if (*(a1 + 55) < 0)
  {
    v20 = *v20;
  }

  v24 = dispatch_queue_attr_make_with_qos_class(0, a6, 0);
  v25 = dispatch_queue_create(v20, v24);
  *(a1 + 184) = v25;
  *(a1 + 192) = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v25);
  *(a1 + 200) = 0;
  return a1;
}

void sub_29701C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v27 + 55) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v27 + 55) & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v27 + 31) < 0)
    {
      operator delete(*v29);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(*v28);
  goto LABEL_6;
}

void sub_29701C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x29701C750);
  }

  JUMPOUT(0x29701C754);
}

void support::misc::safe_timer::start_sync(support::misc::safe_timer *this)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = **(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 200) != 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = this;
    v10 = **(this + 13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (v9 + 8);
      if (*(v9 + 31) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "error: '%s' already active", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v28, "'");
    v15 = *(v9 + 1);
    v14 = v9 + 8;
    v13 = v15;
    v16 = v14[23];
    if (v16 >= 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v16 >= 0)
    {
      v18 = v14[23];
    }

    else
    {
      v18 = *(v14 + 1);
    }

    v19 = std::string::append(&v28, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v26, "' already active");
    if ((v27 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v22 = v27;
    }

    else
    {
      v22 = v26[1];
    }

    v23 = std::string::append(&v29, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v31 = v23->__r_.__value_.__r.__words[2];
    *buf = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C26BBF0](exception, buf);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *buf = 0;
  _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "starting...", buf, 2u);
  if (*(this + 200) == 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  dispatch_assert_queue_V2(*(this + 23));
  v3 = *(this + 24);
  v4 = dispatch_time(0, 1000000 * *(this + 17));
  v5 = *(this + 18);
  if (v5)
  {
    v6 = 1000000 * v5;
  }

  else
  {
    v6 = -1;
  }

  dispatch_source_set_timer(v3, v4, v6, 0x1388uLL);
  v7 = *(this + 24);
  if (*(this + 200))
  {
    dispatch_resume(v7);
  }

  else
  {
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___ZN7support4misc10safe_timer10start_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp;
    handler[4] = this;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(this + 24));
  }

  *(this + 100) = 1;
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29701CA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if (a26 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v32);
    _Unwind_Resume(a1);
  }

LABEL_10:
  if (!v33)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t ___ZN7support4misc10safe_timer10start_syncEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 200) != 1)
  {
    return result;
  }

  v2 = **(v1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "fired", v5, 2u);
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
LABEL_4:
      dispatch_assert_queue_V2(*(v1 + 184));
      if (*(v1 + 200) == 1)
      {
        v3 = **(v1 + 104);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
        }

        dispatch_suspend(*(v1 + 192));
        *(v1 + 200) = 2;
      }
    }
  }

  else
  {
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
      goto LABEL_4;
    }
  }

  v4 = *(v1 + 176);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4);
}

void support::misc::safe_timer::stop_sync(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[23]);
  if (*(this + 200) == 1)
  {
    isa = this[13]->isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296FF7000, isa, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(this[24]);
    *(this + 200) = 2;
  }
}

void support::misc::safe_timer::start(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {

    support::misc::safe_timer::start_sync(this);
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = this;
    dispatch_sync(v2, block);
  }
}

void support::misc::safe_timer::stop(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {
    dispatch_assert_queue_V2(v2);
    if (*(this + 200) == 1)
    {
      v3 = **(this + 13);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer4stopEv_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = this;
    dispatch_sync(v2, block);
  }
}

void ___ZN7support4misc10safe_timer4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 184));
  if (*(v1 + 200) == 1)
  {
    v2 = **(v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }
}

void support::misc::safe_timer::restart(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {
    dispatch_assert_queue_V2(v2);
    if (*(this + 200) == 1)
    {
      v3 = **(this + 13);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }

    v4 = *(this + 23);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer7restartEv_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    block[4] = this;
    dispatch_async(v4, block);
  }

  else
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = ___ZN7support4misc10safe_timer7restartEv_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_11;
    v5[4] = this;
    dispatch_sync(v2, v5);
  }
}

void ___ZN7support4misc10safe_timer7restartEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 184));
  if (*(v1 + 200) == 1)
  {
    v2 = **(v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }

  support::misc::safe_timer::start_sync(v1);
}

uint64_t support::misc::safe_timer::has_fired(support::misc::safe_timer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 23);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v4[3] = &unk_29EE635F0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t support::misc::safe_timer::has_started(support::misc::safe_timer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 23);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK7support4misc10safe_timer11has_startedEv_block_invoke;
  v4[3] = &unk_29EE63618;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void support::misc::safe_timer::~safe_timer(support::misc::safe_timer *this)
{
  *this = &unk_2A1E23468;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (*(this + 23))
  {
    support::misc::safe_timer::stop(this);
    v2 = *(this + 23);
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 0x40000000;
    v7[2] = ___ZN7support4misc10safe_timerD2Ev_block_invoke;
    v7[3] = &unk_29EE63640;
    v7[4] = &v8;
    v7[5] = this;
    dispatch_sync(v2, v7);
  }

  v3 = *(this + 24);
  if (v3)
  {
    if (*(v9 + 24))
    {
      dispatch_source_cancel(v3);
      if (*(v9 + 24) == 2)
      {
        dispatch_resume(*(this + 24));
      }
    }

    else
    {
      dispatch_activate(v3);
      dispatch_source_cancel(*(this + 24));
    }

    dispatch_release(*(this + 24));
  }

  v4 = *(this + 23);
  if (v4)
  {
    dispatch_release(v4);
  }

  _Block_object_dispose(&v8, 8);
  v5 = *(this + 22);
  if (v5 == (this + 152))
  {
    (*(*v5 + 32))(v5);
    *(this + 7) = &unk_2A1E23498;
    v6 = *(this + 15);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 7) = &unk_2A1E23498;
    v6 = *(this + 15);
    if (!v6)
    {
LABEL_18:
      if ((*(this + 55) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if ((*(this + 55) & 0x80000000) == 0)
  {
LABEL_19:
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(*(this + 1));
    return;
  }

LABEL_22:
  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_23;
  }
}

{
  support::misc::safe_timer::~safe_timer(this);

  operator delete(v1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE63538, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_296FF7000);
  }

  return result;
}

const char *asString(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kEventHandlers";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kCommandHandlers";
  }
}

const char *asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EE63680[a1];
  }
}

uint64_t ABMServiceManager::getScaledTimeoutSec(Registry **this, uint64_t a2)
{
  ScaledTime = 1000000 * a2;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  }

  v3 = v6;
  if (v6 && !atomic_fetch_add((v6 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getBootstrapTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 12000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getStartTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 30000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getDefaultShutdownTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 5000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getShutdownTimeoutSec(Registry **a1, int a2)
{
  if (a2 == 1)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v10, a1[18]);
    if (v10)
    {
      ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
      v7 = v11;
      if (!v11)
      {
        return ScaledTime / 1000000;
      }
    }

    else
    {
      ScaledTime = 15000000;
      v7 = v11;
      if (!v11)
      {
        return ScaledTime / 1000000;
      }
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = ScaledTime;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      ScaledTime = v9;
    }

    return ScaledTime / 1000000;
  }

  if (a2)
  {
    v8 = *(*a1 + 10);

    return v8();
  }

  else
  {
    v3 = 30000000;
    if (config::hw::watch(a1) && ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild()))
    {
      v3 = 120000000;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v10, a1[18]);
    if (v10)
    {
      v3 = ctu::AdaptiveTimerService::getScaledTime();
    }

    v4 = v11;
    if (v11)
    {
      if (!atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    return v3 / 1000000;
  }
}

uint64_t ABMServiceManager::ABMServiceManager(uint64_t a1, void *a2)
{
  *a1 = &unk_2A1E234C8;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony.abm", "service.mgr");
  ctu::SharedLoggable<ServiceManager,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v4, "service.mgr", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v7);
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 136) = 1;
  *a1 = &unk_2A1E234C8;
  v5 = a2[1];
  *(a1 + 144) = *a2;
  *(a1 + 152) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

{
  *a1 = &unk_2A1E234C8;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony.abm", "service.mgr");
  ctu::SharedLoggable<ServiceManager,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v4, "service.mgr", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v7);
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 136) = 1;
  *a1 = &unk_2A1E234C8;
  v5 = a2[1];
  *(a1 + 144) = *a2;
  *(a1 + 152) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

double ABMServiceManager::create@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = operator new(0xA0uLL);
  v5 = v4;
  v7 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E234C8;
  ctu::OsLogContext::OsLogContext(v10, "com.apple.telephony.abm", "service.mgr");
  ctu::SharedLoggable<ServiceManager,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>((v5 + 8), "service.mgr", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v10);
  *(v5 + 128) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 136) = 1;
  *v5 = &unk_2A1E234C8;
  *(v5 + 144) = v7;
  *(v5 + 152) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ABMServiceManager>::shared_ptr[abi:ne200100]<ABMServiceManager,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1},0>(v9, v5);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  ABMServiceManager::initialize(v9[0]);
  result = *v9;
  *a2 = *v9;
  return result;
}

void sub_29701E14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29701E174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  ctu::OsLogContext::~OsLogContext(&a13);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v13);
  _Unwind_Resume(a1);
}

void sub_29701E198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void ABMServiceManager::initialize(ABMServiceManager *this)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(buf, v2);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18B7390;
  }

  v21 = v3;
  v22 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (!v3)
  {
    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Unable to access CommandDriverFactory. BasebandManager registry will not be set in command drivers!", buf, 2u);
      v8 = *(this + 2);
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

LABEL_19:
    v8 = *(this + 2);
    if (!v8)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v7 = *(this + 19);
  v19 = *(this + 18);
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CommandDriverFactory::setRegistry();
  if (!v20 || atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v8 = *(this + 2);
  if (!v8)
  {
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_20:
  v10 = *(this + 1);
  v11 = std::__shared_weak_count::lock(v8);
  if (!v11)
  {
    goto LABEL_36;
  }

  v16 = v10;
  v17 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v11;
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v12);
  }

  PowerManager::create(&v16, buf);
  v18 = *buf;
  memset(buf, 0, sizeof(buf));
  ServiceManager::init(this, &v18);
  v13 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v15 = v22;
  if (v22)
  {
    if (!atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }
}

void sub_29701E5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_29701E5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v15 - 48);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void ABMServiceManager::registerGlobalServices(ABMServiceManager *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager22registerGlobalServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ABMServiceManager::registerDynamicServices(ABMServiceManager *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager23registerDynamicServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void ABMServiceManager::~ABMServiceManager(ABMServiceManager *this)
{
  *this = &unk_2A1E234C8;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  ServiceManager::~ServiceManager(this);
}

{
  *this = &unk_2A1E234C8;
  v1 = *(this + 19);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    ServiceManager::~ServiceManager(this);
  }

  else
  {
    ServiceManager::~ServiceManager(this);
  }

  operator delete(v2);
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy(uint64_t a1)
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

atomic_ullong *std::shared_ptr<ABMServiceManager>::shared_ptr[abi:ne200100]<ABMServiceManager,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E23550;
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

void sub_29701EAA4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1}::operator() const(ABMServiceManager*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ABMServiceManager *,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager *)#1},std::allocator<ABMServiceManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ABMServiceManager *,std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager *)#1},std::allocator<ABMServiceManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI14ServiceManagerE15make_shared_ptrI17ABMServiceManagerEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<ABMServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ABMServiceManager>(ABMServiceManager*)::{lambda(ABMServiceManager*)#1}::operator() const(ABMServiceManager*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager22registerGlobalServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    goto LABEL_45;
  }

  v4 = *(v2 + 8);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = operator new(0xA8uLL);
  *&v29 = v4;
  *(&v29 + 1) = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  LogTracker::LogTracker(v7, &v29);
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<LogTracker>::shared_ptr[abi:ne200100]<LogTracker,std::shared_ptr<LogTracker> ctu::SharedSynchronizable<LogTracker>::make_shared_ptr<LogTracker>(LogTracker*)::{lambda(LogTracker*)#1},0>(&v28, v7);
  std::__shared_weak_count::__release_weak(v6);
  if (v28)
  {
    v29 = v28;
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 64), &v29);
    v8 = *(&v29 + 1);
    if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *(&v28 + 1);
  if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v6);
  v10 = *(v2 + 16);
  if (!v10)
  {
    goto LABEL_45;
  }

  v11 = *(v2 + 8);
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_45;
  }

  v25 = v11;
  v26 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v12;
    (v12->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v13);
  }

  NetworkingModule::create(&v25, &v27);
  if (v27)
  {
    v29 = v27;
    if (*(&v27 + 1))
    {
      atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 64), &v29);
    v14 = *(&v29 + 1);
    if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  v15 = *(&v27 + 1);
  if (*(&v27 + 1) && !atomic_fetch_add((*(&v27 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v16 = *(v2 + 16);
  if (!v16 || (v17 = *(v2 + 8), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
LABEL_45:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v17;
  v23 = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v18;
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v19);
  }

  CPMSModule::create(&v22, &v24);
  if (v24)
  {
    v29 = v24;
    if (*(&v24 + 1))
    {
      atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 64), &v29);
    v20 = *(&v29 + 1);
    if (*(&v29 + 1) && !atomic_fetch_add((*(&v29 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  v21 = *(&v24 + 1);
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_29701F0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v17 - 48);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
LABEL_3:
    a1[1] = v5;
    return;
  }

  v6 = (v4 - *a1) >> 4;
  if ((v6 + 1) >> 60)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v7 = v3 - *a1;
  v8 = v7 >> 3;
  if (v7 >> 3 <= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    if (v9 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = a2;
    v11 = operator new(16 * v9);
    a2 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[16 * v6];
  v13 = &v11[16 * v9];
  v14 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v15 = *a1;
  v16 = a1[1] - *a1;
  v17 = &v12[-v16];
  *v12 = v14;
  v5 = v12 + 16;
  memcpy(v17, v15, v16);
  *a1 = v17;
  a1[1] = v5;
  a1[2] = v13;
  if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  a1[1] = v5;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void ___ZNK3ctu20SharedSynchronizableI14ServiceManagerE20execute_wrapped_syncIZN17ABMServiceManager23registerDynamicServicesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    goto LABEL_220;
  }

  v4 = *(v2 + 8);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_220;
  }

  v134 = v4;
  v135 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v5;
    (v5->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(v2 + 152);
  v132 = *(v2 + 144);
  v133 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TransportModule::create(&v134, &v132, &v136);
  if (v136)
  {
    v137 = v136;
    if (*(&v136 + 1))
    {
      atomic_fetch_add_explicit((*(&v136 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v8 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *(&v136 + 1);
  if (*(&v136 + 1) && !atomic_fetch_add((*(&v136 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v135)
  {
    std::__shared_weak_count::__release_weak(v135);
  }

  v11 = *(v2 + 16);
  if (!v11)
  {
    goto LABEL_220;
  }

  v12 = *(v2 + 8);
  v13 = std::__shared_weak_count::lock(v11);
  if (!v13)
  {
    goto LABEL_220;
  }

  v129 = v12;
  v130 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v13;
    (v13->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v14);
  }

  RadioModule::create(&v129, &v131);
  if (v131)
  {
    v137 = v131;
    if (*(&v131 + 1))
    {
      atomic_fetch_add_explicit((*(&v131 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v15 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v16 = *(&v131 + 1);
  if (*(&v131 + 1) && !atomic_fetch_add((*(&v131 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v130)
  {
    std::__shared_weak_count::__release_weak(v130);
  }

  v17 = *(v2 + 16);
  if (!v17)
  {
    goto LABEL_220;
  }

  v18 = *(v2 + 8);
  v19 = std::__shared_weak_count::lock(v17);
  if (!v19)
  {
    goto LABEL_220;
  }

  v20 = v19;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = operator new(0x78uLL);
  *&v137 = v18;
  *(&v137 + 1) = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  Simulator::Simulator(v21, &v137);
  *&v128 = 0xAAAAAAAAAAAAAAAALL;
  *(&v128 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<Simulator>::shared_ptr[abi:ne200100]<Simulator,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1},0>(&v128, v21);
  std::__shared_weak_count::__release_weak(v20);
  if (v128)
  {
    v137 = v128;
    if (*(&v128 + 1))
    {
      atomic_fetch_add_explicit((*(&v128 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v22 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  v23 = *(&v128 + 1);
  if (*(&v128 + 1) && !atomic_fetch_add((*(&v128 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::__shared_weak_count::__release_weak(v20);
  v24 = *(v2 + 16);
  if (!v24)
  {
    goto LABEL_220;
  }

  v25 = *(v2 + 8);
  v26 = std::__shared_weak_count::lock(v24);
  if (!v26)
  {
    goto LABEL_220;
  }

  v125 = v25;
  v126 = v26;
  atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v27 = v26;
    (v26->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v27);
  }

  TraceManager::create(&v125, &v127);
  if (v127)
  {
    v137 = v127;
    if (*(&v127 + 1))
    {
      atomic_fetch_add_explicit((*(&v127 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v28 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  v29 = *(&v127 + 1);
  if (*(&v127 + 1) && !atomic_fetch_add((*(&v127 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v126)
  {
    std::__shared_weak_count::__release_weak(v126);
  }

  v30 = *(v2 + 16);
  if (!v30)
  {
    goto LABEL_220;
  }

  v31 = *(v2 + 8);
  v32 = std::__shared_weak_count::lock(v30);
  if (!v32)
  {
    goto LABEL_220;
  }

  v122 = v31;
  v123 = v32;
  atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v33 = v32;
    (v32->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v33);
  }

  AWDModule::create(&v122, &v124);
  if (v124)
  {
    v137 = v124;
    if (*(&v124 + 1))
    {
      atomic_fetch_add_explicit((*(&v124 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v34 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }

  v35 = *(&v124 + 1);
  if (*(&v124 + 1) && !atomic_fetch_add((*(&v124 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v123)
  {
    std::__shared_weak_count::__release_weak(v123);
  }

  v36 = *(v2 + 16);
  if (!v36 || (v37 = *(v2 + 8), (v38 = std::__shared_weak_count::lock(v36)) == 0))
  {
LABEL_220:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v119 = v37;
  v120 = v38;
  atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v39 = v38;
    (v38->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v39);
  }

  StatsModule::create(&v119, &v121);
  if (v121)
  {
    v137 = v121;
    if (*(&v121 + 1))
    {
      atomic_fetch_add_explicit((*(&v121 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v40 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }
  }

  v41 = *(&v121 + 1);
  if (*(&v121 + 1) && !atomic_fetch_add((*(&v121 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = v120;
  if (v120)
  {
    std::__shared_weak_count::__release_weak(v120);
  }

  v43 = config::hw::watch(v42);
  if ((v43 & 1) == 0)
  {
    v44 = *(v2 + 16);
    if (!v44)
    {
      goto LABEL_220;
    }

    v45 = *(v2 + 8);
    v46 = std::__shared_weak_count::lock(v44);
    if (!v46)
    {
      goto LABEL_220;
    }

    v116 = v45;
    v117 = v46;
    atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v47 = v46;
      (v46->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v47);
    }

    HealthModule::create(&v116, &v118);
    if (v118)
    {
      v137 = v118;
      if (*(&v118 + 1))
      {
        atomic_fetch_add_explicit((*(&v118 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
      v48 = *(&v137 + 1);
      if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v48->__on_zero_shared)(v48);
        std::__shared_weak_count::__release_weak(v48);
      }
    }

    v49 = *(&v118 + 1);
    if (*(&v118 + 1) && !atomic_fetch_add((*(&v118 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v49->__on_zero_shared)(v49);
      std::__shared_weak_count::__release_weak(v49);
    }

    v43 = v117;
    if (v117)
    {
      std::__shared_weak_count::__release_weak(v117);
    }
  }

  capabilities::abs::supportedSARFeatures(v43);
  if (capabilities::abs::operator&())
  {
    v50 = *(v2 + 16);
    if (!v50)
    {
      goto LABEL_220;
    }

    v51 = *(v2 + 8);
    v52 = std::__shared_weak_count::lock(v50);
    if (!v52)
    {
      goto LABEL_220;
    }

    v113 = v51;
    v114 = v52;
    atomic_fetch_add_explicit(&v52->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v53 = v52;
      (v52->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v53);
    }

    AntennaModule::create(&v113, &v115);
    if (v115)
    {
      v137 = v115;
      if (*(&v115 + 1))
      {
        atomic_fetch_add_explicit((*(&v115 + 1) + 8), 1uLL, memory_order_relaxed);
      }

LABEL_126:
      std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
      v58 = *(&v137 + 1);
      if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v58->__on_zero_shared)(v58);
        std::__shared_weak_count::__release_weak(v58);
      }
    }
  }

  else
  {
    v54 = *(v2 + 16);
    if (!v54)
    {
      goto LABEL_220;
    }

    v55 = *(v2 + 8);
    v56 = std::__shared_weak_count::lock(v54);
    if (!v56)
    {
      goto LABEL_220;
    }

    v113 = v55;
    v114 = v56;
    atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v57 = v56;
      (v56->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v57);
    }

    SARModule::create(&v113, &v115);
    if (v115)
    {
      v137 = v115;
      if (*(&v115 + 1))
      {
        atomic_fetch_add_explicit((*(&v115 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_126;
    }
  }

  v59 = *(&v115 + 1);
  if (*(&v115 + 1) && !atomic_fetch_add((*(&v115 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
  }

  if (v114)
  {
    std::__shared_weak_count::__release_weak(v114);
  }

  v60 = *(v2 + 16);
  if (!v60)
  {
    goto LABEL_220;
  }

  v61 = *(v2 + 8);
  v62 = std::__shared_weak_count::lock(v60);
  if (!v62)
  {
    goto LABEL_220;
  }

  v110 = v61;
  v111 = v62;
  atomic_fetch_add_explicit(&v62->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v63 = v62;
    (v62->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v63);
  }

  v64 = *(v2 + 152);
  v108 = *(v2 + 144);
  v109 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  FSModule::create(&v110, &v108, &v112);
  if (v112)
  {
    v137 = v112;
    if (*(&v112 + 1))
    {
      atomic_fetch_add_explicit((*(&v112 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v65 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v65->__on_zero_shared)(v65);
      std::__shared_weak_count::__release_weak(v65);
    }
  }

  v66 = *(&v112 + 1);
  if (*(&v112 + 1) && !atomic_fetch_add((*(&v112 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v66->__on_zero_shared)(v66);
    std::__shared_weak_count::__release_weak(v66);
  }

  v67 = v109;
  if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v67->__on_zero_shared)(v67);
    std::__shared_weak_count::__release_weak(v67);
  }

  if (v111)
  {
    std::__shared_weak_count::__release_weak(v111);
  }

  v68 = *(v2 + 16);
  if (!v68)
  {
    goto LABEL_220;
  }

  v69 = *(v2 + 8);
  v70 = std::__shared_weak_count::lock(v68);
  if (!v70)
  {
    goto LABEL_220;
  }

  v105 = v69;
  v106 = v70;
  atomic_fetch_add_explicit(&v70->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v71 = v70;
    (v70->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v71);
  }

  v72 = *(v2 + 152);
  v103 = *(v2 + 144);
  v104 = v72;
  if (v72)
  {
    atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BootModule::create(&v105, &v103, &v107);
  if (v107)
  {
    v137 = v107;
    if (*(&v107 + 1))
    {
      atomic_fetch_add_explicit((*(&v107 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v73 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v73->__on_zero_shared)(v73);
      std::__shared_weak_count::__release_weak(v73);
    }
  }

  v74 = *(&v107 + 1);
  if (*(&v107 + 1) && !atomic_fetch_add((*(&v107 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v74->__on_zero_shared)(v74);
    std::__shared_weak_count::__release_weak(v74);
  }

  v75 = v104;
  if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v75->__on_zero_shared)(v75);
    std::__shared_weak_count::__release_weak(v75);
  }

  if (v106)
  {
    std::__shared_weak_count::__release_weak(v106);
  }

  v76 = *(v2 + 16);
  if (!v76)
  {
    goto LABEL_220;
  }

  v77 = *(v2 + 8);
  v78 = std::__shared_weak_count::lock(v76);
  if (!v78)
  {
    goto LABEL_220;
  }

  v100 = v77;
  v101 = v78;
  atomic_fetch_add_explicit(&v78->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v79 = v78;
    (v78->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v79);
  }

  DataModule::create(&v100, &v102);
  if (v102)
  {
    v137 = v102;
    if (*(&v102 + 1))
    {
      atomic_fetch_add_explicit((*(&v102 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v80 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v80->__on_zero_shared)(v80);
      std::__shared_weak_count::__release_weak(v80);
    }
  }

  v81 = *(&v102 + 1);
  if (*(&v102 + 1) && !atomic_fetch_add((*(&v102 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  if (v101)
  {
    std::__shared_weak_count::__release_weak(v101);
  }

  v82 = *(v2 + 16);
  if (!v82)
  {
    goto LABEL_220;
  }

  v83 = *(v2 + 8);
  v84 = std::__shared_weak_count::lock(v82);
  if (!v84)
  {
    goto LABEL_220;
  }

  v97 = v83;
  v98 = v84;
  atomic_fetch_add_explicit(&v84->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v85 = v84;
    (v84->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v85);
  }

  AccessoryModule::create(&v97, &v99);
  if (v99)
  {
    v137 = v99;
    if (*(&v99 + 1))
    {
      atomic_fetch_add_explicit((*(&v99 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v86 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v86->__on_zero_shared)(v86);
      std::__shared_weak_count::__release_weak(v86);
    }
  }

  v87 = *(&v99 + 1);
  if (*(&v99 + 1) && !atomic_fetch_add((*(&v99 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v87->__on_zero_shared)(v87);
    std::__shared_weak_count::__release_weak(v87);
  }

  if (v98)
  {
    std::__shared_weak_count::__release_weak(v98);
  }

  v88 = *(v2 + 16);
  if (!v88)
  {
    goto LABEL_220;
  }

  v89 = *(v2 + 8);
  v90 = std::__shared_weak_count::lock(v88);
  if (!v90)
  {
    goto LABEL_220;
  }

  v94 = v89;
  v95 = v90;
  atomic_fetch_add_explicit(&v90->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v91 = v90;
    (v90->__on_zero_shared)(v90);
    std::__shared_weak_count::__release_weak(v91);
  }

  coex::Module::create(&v94, &v96);
  if (v96)
  {
    v137 = v96;
    if (*(&v96 + 1))
    {
      atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    std::vector<std::shared_ptr<Service>>::push_back[abi:ne200100]((v2 + 88), &v137);
    v92 = *(&v137 + 1);
    if (*(&v137 + 1) && !atomic_fetch_add((*(&v137 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v92->__on_zero_shared)(v92);
      std::__shared_weak_count::__release_weak(v92);
    }
  }

  v93 = *(&v96 + 1);
  if (*(&v96 + 1) && !atomic_fetch_add((*(&v96 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v93);
  }

  if (v95)
  {
    std::__shared_weak_count::__release_weak(v95);
  }
}

void sub_29702051C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v42 - 64);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a35);
  if (a34)
  {
    std::__shared_weak_count::__release_weak(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_9()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_10()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_11()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
}

BOOL BasebandStats::initFromDisk(BasebandStats *this)
{
  v23 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__p);
    v3 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v4 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B75C0;
  }

  v6 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  HIBYTE(v22) = 13;
  strcpy(__p, "HealthEventDB");
  os_unfair_lock_lock((v2 + 40));
  Preferences::getPreference<__CFDictionary const*>(v2, __p, &v23);
  os_unfair_lock_unlock((v2 + 40));
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else if (!v6)
  {
LABEL_16:
    v7 = v23;
    if (v23)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  v7 = v23;
  if (!v23)
  {
    return 0;
  }

LABEL_17:
  v20[2] = v7;
  CFRetain(v7);
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v20, v7);
  ctu::cf::MakeCFString::MakeCFString(__p, "KeyBasebandStats");
  v8 = ctu::cf::map_adapter::copyCFDictionaryRef(v20, __p[0]);
  MEMORY[0x29C26B130](__p);
  v19[3] = v8;
  v9 = v8 != 0;
  if (v8)
  {
    v19[2] = v8;
    CFRetain(v8);
    v19[0] = 0xAAAAAAAAAAAAAAAALL;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v19, v8);
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF490]);
    Int = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26B130](__p);
    *(this + 1) = Int;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF4F0]);
    v11 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26B130](__p);
    *(this + 2) = v11;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF2C0]);
    v12 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26B130](__p);
    *(this + 20) = v12;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF2C8]);
    v13 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26B130](__p);
    *(this + 21) = v13;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF408]);
    v14 = ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26B130](__p);
    *(this + 3) = v14;
    ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBEF58]);
    ctu::cf::map_adapter::getInt(v19, __p[0]);
    MEMORY[0x29C26B130](__p);
    *(this + 4) = 0;
    v15 = *MEMORY[0x29EDBF090];
    __p[0] = 0;
    __p[1] = 0;
    v22 = 0;
    ctu::cf::MakeCFString::MakeCFString(&v24, v15);
    ctu::cf::map_adapter::getString();
    MEMORY[0x29C26B130](&v24);
    if (*(this + 111) < 0)
    {
      operator delete(*(this + 11));
      *(this + 88) = 0;
      *(this + 111) = 0;
      if ((v18 & 0x80000000) == 0)
      {
LABEL_20:
        if ((SHIBYTE(v22) & 0x80000000) == 0)
        {
LABEL_21:
          ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF3F8]);
          ctu::cf::map_adapter::getBool(v19, __p[0]);
          MEMORY[0x29C26B130](__p);
          *(this + 64) = 0;
          ctu::cf::MakeCFString::MakeCFString(__p, *MEMORY[0x29EDBF640]);
          ctu::cf::map_adapter::getInt(v19, __p[0]);
          MEMORY[0x29C26B130](__p);
          *(this + 9) = 0;
          MEMORY[0x29C26B180](v19);
          CFRelease(v8);
          CFRelease(v8);
          goto LABEL_22;
        }

LABEL_28:
        operator delete(__p[0]);
        goto LABEL_21;
      }
    }

    else
    {
      *(this + 88) = 0;
      *(this + 111) = 0;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    operator delete(v17);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_22:
  MEMORY[0x29C26B180](v20);
  CFRelease(v7);
  return v9;
}

void sub_297020D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, const void *a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x29C26B130](&__p);
  MEMORY[0x29C26B180](&a12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a15);
  MEMORY[0x29C26B180](&a16);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a20);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
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

void BasebandStats::updateStats(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, __CFDictionary **a3@<X8>)
{
  v6 = *MEMORY[0x29EDBF490];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF490]))
  {
    value = xpc_dictionary_get_value(*a2, v6);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 8) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    if (!*(a1 + 24))
    {
      *(a1 + 24) = *(a1 + 8);
    }
  }

  v8 = *MEMORY[0x29EDBF4F0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF4F0]))
  {
    v9 = xpc_dictionary_get_value(*a2, v8);
    object[0] = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 16) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v10 = *MEMORY[0x29EDBF2C0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF2C0]))
  {
    v11 = xpc_dictionary_get_value(*a2, v10);
    object[0] = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 80) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v12 = *MEMORY[0x29EDBF2C8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF2C8]))
  {
    v13 = xpc_dictionary_get_value(*a2, v12);
    object[0] = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 84) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v14 = *MEMORY[0x29EDBF408];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF408]))
  {
    v15 = xpc_dictionary_get_value(*a2, v14);
    object[0] = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 24) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v16 = *MEMORY[0x29EDBF3F8];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF3F8]))
  {
    v17 = xpc_dictionary_get_value(*a2, v16);
    object[0] = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 64) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v18 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF640]);
    object[0] = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 72) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v19 = *MEMORY[0x29EDBEF58];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEF58]))
  {
    v20 = xpc_dictionary_get_value(*a2, v19);
    object[0] = v20;
    if (v20)
    {
      xpc_retain(v20);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    *(a1 + 32) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  v21 = *MEMORY[0x29EDBF090];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF090]))
  {
    v22 = xpc_dictionary_get_value(*a2, v21);
    v24 = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      v24 = xpc_null_create();
    }

    xpc::dyn_cast_or_default(object, &v24, "", v23);
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    *(a1 + 88) = *object;
    *(a1 + 104) = v26;
    HIBYTE(v26) = 0;
    LOBYTE(object[0]) = 0;
    xpc_release(v24);
  }

  BasebandStats::getCurrentBasebandStats(a1, a3);
}

void BasebandStats::getCurrentBasebandStats(BasebandStats *this@<X0>, __CFDictionary **a2@<X8>)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    ctu::cf::update<char const*,long>(Mutable, *MEMORY[0x29EDBF490], *(this + 1), v4, v6);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBF4F0], *(this + 2), v4, v8);
    ctu::cf::update<char const*,unsigned int>(v7, *MEMORY[0x29EDBF2C0], *(this + 20), v4, v9);
    ctu::cf::update<char const*,unsigned int>(v7, *MEMORY[0x29EDBF2C8], *(this + 21), v4, v10);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBF408], *(this + 3), v4, v11);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBEF58], *(this + 4), v4, v12);
    ctu::cf::update<char const*,BOOL>(v7, *MEMORY[0x29EDBF3F8], *(this + 64), v4, v13);
    ctu::cf::update<char const*,long>(v7, *MEMORY[0x29EDBF640], *(this + 9), v4, v14);
    if (*(this + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *(this + 11), *(this + 12));
    }

    else
    {
      v17 = *(this + 88);
    }

    ctu::cf::update<char const*,std::string>(v7, *MEMORY[0x29EDBF090], &v17, v4, v15);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v16 = CFGetTypeID(v7);
    if (v16 == CFDictionaryGetTypeID())
    {
      *a2 = v7;
      CFRetain(v7);
    }

    else
    {
      *a2 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_2970214BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void BasebandStats::~BasebandStats(void **this)
{
  *this = &unk_2A1E235A0;
  if ((*(this + 111) & 0x80000000) == 0)
  {
    if ((*(this + 63) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[5]);
    return;
  }

  operator delete(this[11]);
  if (*(this + 63) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2A1E235A0;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[5]);
  v2 = this;

LABEL_5:
  operator delete(v2);
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

void SharedData::create_default_global(atomic_ullong *a1@<X8>)
{
  v3 = operator new(0x60uLL);
  __p = v3;
  strcpy(v3, "/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist");
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  v9 = xmmword_297222670;
  *&v10.st_dev = v4;
  if (!stat(v3, &v10) && remove(v3, v5))
  {
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    unlink(p_p);
  }

  v7 = operator new(0x30uLL);
  MEMORY[0x29C26B190](v7, @"com.apple.AppleBasebandManager.data", *MEMORY[0x29EDB8FB0]);
  v7[3] = 0;
  v7[4] = 0;
  *(v7 + 10) = 0;
  std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(a1, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_29702175C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E23600;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 24) = a2;
        *(a2 + 32) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 24) = a2;
      *(a2 + 32) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_2970218C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = MEMORY[0x29C26B1A0](v1);

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297222719)
  {
    if (((v2 & 0x8000000297222719 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297222719))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297222719 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x29C26B1A0](v1);
    operator delete(v4);
    return v2;
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
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

BOOL Preferences::getPreference<__CFDictionary const*>(uint64_t (***a1)(void, uint64_t), const char *a2, void *a3)
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
    v8 = v7 == CFDictionaryGetTypeID();
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

  MEMORY[0x29C26B130](&v11);
  return v9;
}

uint64_t ctu::cf::update<char const*,long>(__CFDictionary *a1, const __CFString **a2, const void *a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongType, &valuePtr);
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

void sub_297021C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297021CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
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

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
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

void sub_297021D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297021DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_297021E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
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

void sub_297021F58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_297021F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

BOOL CommCenterStats::initFromDisk(CommCenterStats *this)
{
  v18 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__p);
    v3 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v4 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B75C0;
  }

  v6 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v17 = 13;
  strcpy(__p, "HealthEventDB");
  os_unfair_lock_lock((v2 + 40));
  Preferences::getPreference<__CFDictionary const*>(v2, __p, &v18);
  os_unfair_lock_unlock((v2 + 40));
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = v18;
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_19:
    ++*(this + 2);
    v9 = 0;
    *(this + 2) = time(0);
    return v9;
  }

  v7 = v18;
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_16:
  v15[4] = v7;
  CFRetain(v7);
  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(__p, v7);
  ctu::cf::MakeCFString::MakeCFString(v15, "KeyCommCenterStats");
  v8 = ctu::cf::map_adapter::copyCFDictionaryRef(__p, v15[0]);
  MEMORY[0x29C26B130](v15);
  v15[3] = v8;
  v9 = v8 != 0;
  if (v8)
  {
    v15[2] = v8;
    CFRetain(v8);
    v15[0] = 0xAAAAAAAAAAAAAAAALL;
    v15[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v15, v8);
    ctu::cf::MakeCFString::MakeCFString(&v19, "KeyCommCenterStatsLaunchCount");
    Int = ctu::cf::map_adapter::getInt(v15, v19);
    v11 = MEMORY[0x29C26B130](&v19);
    *(this + 2) = Int;
    ctu::cf::MakeCFString::MakeCFString(v11, "KeyCommCenterStatsFirstLaunchTime");
    v12 = ctu::cf::map_adapter::getInt(v15, v19);
    v13 = MEMORY[0x29C26B130](&v19);
    *(this + 3) = v12;
    ctu::cf::MakeCFString::MakeCFString(v13, "kKeyStatsCommCenterRegistrationMetricSubmitted");
    LOBYTE(v12) = ctu::cf::map_adapter::getBool(v15, v19);
    MEMORY[0x29C26B130](&v19);
    *(this + 32) = v12;
    ++*(this + 2);
    *(this + 2) = time(0);
    MEMORY[0x29C26B180](v15);
    CFRelease(v8);
    CFRelease(v8);
  }

  else
  {
    ++*(this + 2);
    *(this + 2) = time(0);
  }

  MEMORY[0x29C26B180](__p);
  CFRelease(v7);
  return v9;
}

void sub_297022320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  MEMORY[0x29C26B180](va2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void CommCenterStats::getStats(const void **this@<X0>, __CFDictionary **a2@<X8>)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    *a2 = 0;
    return;
  }

  v7 = *(this + 2);
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, "KeyCommCenterStatsLaunchCount", 0x8000100, v4, v5);
  v8 = valuePtr;
  valuePtr = v7;
  v9 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v11 = v9;
  if (v8 && v9)
  {
    CFDictionaryAddValue(Mutable, v8, v9);
LABEL_7:
    CFRelease(v11);
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }

  ctu::cf::insert<char const*,long>(Mutable, "KeyCommCenterStatsLastLaunchTime", this[2], v4, v10);
  ctu::cf::insert<char const*,long>(Mutable, "KeyCommCenterStatsFirstLaunchTime", this[3], v4, v12);
  ctu::cf::insert<char const*,BOOL>(Mutable, "kKeyStatsCommCenterRegistrationMetricSubmitted", *(this + 32), v4, v13);
  v14 = CFGetTypeID(Mutable);
  if (v14 == CFDictionaryGetTypeID())
  {
    *a2 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    *a2 = 0;
  }

  CFRelease(Mutable);
}

void sub_297022590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  _Unwind_Resume(a1);
}

void CommCenterStats::updateStats(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, __CFDictionary **a3@<X8>)
{
  if (xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLaunchCount"))
  {
    value = xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLaunchCount");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 8) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  if (xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLastLaunchTime"))
  {
    v7 = xpc_dictionary_get_value(*a2, "KeyCommCenterStatsLastLaunchTime");
    object = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 16) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  if (xpc_dictionary_get_value(*a2, "KeyCommCenterStatsFirstLaunchTime"))
  {
    v8 = xpc_dictionary_get_value(*a2, "KeyCommCenterStatsFirstLaunchTime");
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 24) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  if (xpc_dictionary_get_value(*a2, "kKeyStatsCommCenterRegistrationMetricSubmitted"))
  {
    v9 = xpc_dictionary_get_value(*a2, "kKeyStatsCommCenterRegistrationMetricSubmitted");
    object = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a1 + 32) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  CommCenterStats::getStats(a1, a3);
}

void ctu::cf::insert<char const*,long>(__CFDictionary *a1, const __CFString **a2, const void *a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_297022898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_2970228BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<char const*,BOOL>(__CFDictionary *a1, const __CFString **a2, int a3, uint64_t a4, const __CFAllocator *a5)
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
    CFDictionaryAddValue(a1, v7, v9);
  }

  CFRelease(v9);
LABEL_13:
  if (v7)
  {
    CFRelease(v7);
  }

  return v11;
}

void sub_297022980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

char *abm::data::getDataPropertyNameFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C26CE60](*a1) != MEMORY[0x29EDCAA00])
  {
    return "Unknown";
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = xpc::dyn_cast_or_default(&object, 5);
  xpc_release(object);
  if (v3 < 5)
  {
    return off_29EE636B0[v3 & 7];
  }

  else
  {
    return "Unknown";
  }
}