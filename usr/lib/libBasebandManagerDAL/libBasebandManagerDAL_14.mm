void sub_29732D694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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
      v9 = MEMORY[0x29C26F9F0](*a2);
      v10 = MEMORY[0x29EDCAA40];
      if (v9 == MEMORY[0x29EDCAA40])
      {
        v13 = *a3;
        if (v13 && MEMORY[0x29C26F9F0](v13) == MEMORY[0x29EDCAA00])
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
          if (MEMORY[0x29C26F9F0](v11) == MEMORY[0x29EDCAA00])
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

      v19 = MEMORY[0x29C26F9F0](*a2) == v10 ? 0 : -534716416;
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

void sub_29732DA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v46) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v65 = v9;
  v66 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v61 = &__block_descriptor_tmp_236_0;
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

void sub_29732E2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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
        v10 = MEMORY[0x29C26F9F0](*a2);
        v11 = MEMORY[0x29EDCAA40];
        if (v10 == MEMORY[0x29EDCAA40])
        {
          v12 = *a3;
          if (v12 && MEMORY[0x29C26F9F0](v12) == MEMORY[0x29EDCAA00])
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

        if (MEMORY[0x29C26F9F0](*a2) == v11)
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

void sub_29732E590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v46) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v65 = v9;
  v66 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_29732EDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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
        v10 = MEMORY[0x29C26F9F0](*a2);
        v11 = MEMORY[0x29EDCAA40];
        if (v10 == MEMORY[0x29EDCAA40])
        {
          v12 = *a3;
          if (v12 && MEMORY[0x29C26F9F0](v12) == MEMORY[0x29EDCAA00])
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

        if (MEMORY[0x29C26F9F0](*a2) == v11)
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

void sub_29732F090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  xpc_release(v11);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v46) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v65 = v9;
  v66 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_29732F8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

  if (MEMORY[0x29C26F9F0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = MEMORY[0x29C26F9F0](*a3);
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

  if (MEMORY[0x29C26F9F0](*a2) == v12)
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

void sub_29732FC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v54) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v73[0] = v9;
  v73[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_error_impl(&dword_297288000, v34, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
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

void sub_297330538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
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
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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

void sub_2973308A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v59) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v85[0] = v9;
  v85[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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
      _os_log_error_impl(&dword_297288000, v33, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
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
      _os_log_impl(&dword_297288000, v38, OS_LOG_TYPE_DEFAULT, "#I RF Self Test in FTM requested", object, 2u);
    }

    goto LABEL_67;
  }

  if (v39)
  {
    LOWORD(object[0]) = 0;
    _os_log_impl(&dword_297288000, v38, OS_LOG_TYPE_DEFAULT, "#I RF Self Test in AST2 mode requested", object, 2u);
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
    _os_log_error_impl(&dword_297288000, v62, OS_LOG_TYPE_ERROR, "Ticket was not provided", object, 2u);
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

void sub_297331398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
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
            _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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

void sub_297331784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5 && MEMORY[0x29C26F9F0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v54) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v81[0] = v9;
  v81[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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
      _os_log_error_impl(&dword_297288000, v37, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
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
    _os_log_error_impl(&dword_297288000, v42, OS_LOG_TYPE_ERROR, "Ticket was not provided", object, 2u);
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

void sub_297332258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
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
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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

void sub_297332628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v48) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_297332E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, xpc_object_t __p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v53) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v75[0] = v9;
  v75[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_2973338F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, char a12, xpc_object_t object, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *aBlock, char a24, uint64_t a25, char a26)
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
            _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "%@", object, 0xCu);
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
              _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Get Antenna Port Info: %@", object, 0xCu);
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

void sub_297333CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v53) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v72[0] = v9;
  v72[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_2973345AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
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
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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

void sub_297334920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v53) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v72[0] = v9;
  v72[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_297335238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
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
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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

void sub_2973355AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
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
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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
                      if (MEMORY[0x29C26F9F0](v46) == MEMORY[0x29EDCAA00])
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
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
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

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v65 = v9;
  v66 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_297335DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb13_E4__16NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb13_ENK4__16clEv_block_invoke(void *a1, void *a2, void *a3)
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

  if (MEMORY[0x29C26F9F0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = MEMORY[0x29C26F9F0](*a3);
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

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE9C8], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
  }

  if (MEMORY[0x29C26F9F0](*a2) == v12)
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

void sub_297336150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E390A8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E390A8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E390A8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E390A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2] || MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCAA00])
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_297336630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11RadioModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11RadioModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11RadioModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11RadioModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v34 = *a1;
  v1 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v34[2], *MEMORY[0x29EDBEAF8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, *MEMORY[0x29EDBEFC0], v3);
  xpc_release(object[0]);
  v4 = *MEMORY[0x29EDBEFB8];
  v5 = strlen(*MEMORY[0x29EDBEFB8]);
  v6 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v5 == SHIBYTE(__s1[2]))
    {
      v7 = memcmp(__s1, v4, v5);
      if (!v7)
      {
        goto LABEL_27;
      }
    }

LABEL_11:
    v8 = *MEMORY[0x29EDBF210];
    v9 = strlen(*MEMORY[0x29EDBF210]);
    if ((v6 & 0x80000000) != 0)
    {
      if (v9 == __s1[1])
      {
        if (v9 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], v8, v9))
        {
          goto LABEL_25;
        }
      }
    }

    else if (v9 == v6 && !memcmp(__s1, v8, v9))
    {
      goto LABEL_25;
    }

    v10 = *MEMORY[0x29EDBF4A0];
    v11 = strlen(*MEMORY[0x29EDBF4A0]);
    if ((v6 & 0x80000000) != 0)
    {
      if (v11 != __s1[1])
      {
        goto LABEL_66;
      }

      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], v10, v11))
      {
        goto LABEL_66;
      }
    }

    else if (v11 != v6 || memcmp(__s1, v10, v11))
    {
      goto LABEL_66;
    }

LABEL_25:
    v12 = *(v1 + 216);
    if (v12)
    {
      ctu::iokit::Controller::stopBatteryInfoNotifications(v12);
    }

    else
    {
      v26 = *(v1 + 104);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LOWORD(object[0]) = 0;
        _os_log_error_impl(&dword_297288000, v26, OS_LOG_TYPE_ERROR, "Invalid fIOKitController", object, 2u);
        if (SHIBYTE(__s1[2]) < 0)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }
    }

LABEL_66:
    if (SHIBYTE(__s1[2]) < 0)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  if (v5 != __s1[1])
  {
    goto LABEL_11;
  }

  if (v5 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v7 = memcmp(__s1[0], v4, v5);
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_27:
  v13 = capabilities::radio::supportsBasebandStateController(v7);
  if (v13)
  {
    RadioModule::getResetProperties_sync(v1);
  }

  v14 = capabilities::abs::supportsBatteryInfoMonitoring(v13);
  if (v14)
  {
    *(v1 + 232) = 0;
    *(v1 + 234) = 0;
    RadioModule::monitorBatteryInfo_sync(v1);
  }

  RadioModule::setRegion_sync(v14);
  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 0x40000000;
  object[2] = ___ZZZN11RadioModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_271;
  object[4] = v1;
  v15 = _Block_copy(object);
  v40 = v15;
  RadioModule::getVersion_sync(v1, &v40);
  if (v15)
  {
    _Block_release(v15);
  }

  v17 = capabilities::abs::supportsCalibrationQuery(v16);
  if (v17)
  {
    if (*(v1 + 136) == 3)
    {
      RadioModule::queryFactoryCalibrationStatus_sync(v1);
    }

    if (*(v1 + 144) == 2)
    {
      RadioModule::queryRFCalibrationStatus_sync(v1);
    }
  }

  v18 = capabilities::abs::supportsFieldTestConfig(v17);
  if (v18)
  {
    RadioModule::queryFieldTestConfig_sync(v1);
  }

  if (!capabilities::abs::supportsResetSPMIEvent(v18))
  {
    goto LABEL_66;
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v19 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v20 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v42, v19);
    v21 = v42;
    v42 = 0uLL;
    v22 = *(&off_2A1399388 + 1);
    off_2A1399388 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v23 = *(&v42 + 1);
    if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v20 = off_2A1399388;
  }

  v24 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v20 + 16))(&v35, v20);
  v37 = 0;
  v38 = 0;
  if (v36)
  {
    v38 = std::__shared_weak_count::lock(v36);
    if (v38)
    {
      v37 = v35;
    }

    if (v36)
    {
      std::__shared_weak_count::__release_weak(v36);
    }
  }

  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v37)
  {
    (*(*v37 + 344))(v37);
  }

  v25 = v38;
  if (!v38 || atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_71:
    operator delete(__s1[0]);
    v27 = v34;
    if (v34)
    {
      goto LABEL_72;
    }

LABEL_68:
    v28 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_76;
  }

LABEL_67:
  v27 = v34;
  if (!v34)
  {
    goto LABEL_68;
  }

LABEL_72:
  xpc_release(v27[2]);
  v27[2] = 0;
  v29 = v27[1];
  if (v29)
  {
    dispatch_group_leave(v29);
    v30 = v27[1];
    if (v30)
    {
      dispatch_release(v30);
    }
  }

  operator delete(v27);
  v28 = a1;
  if (a1)
  {
LABEL_76:
    v31 = v28[2];
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v32 = v28;
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      operator delete(v32);
    }

    else
    {
      operator delete(v28);
    }
  }
}

void sub_297336CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (*(v19 - 49) < 0)
  {
    operator delete(*(v19 - 72));
  }

  std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void ___ZZZN11RadioModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(uint64_t a1, size_t *a2)
{
  v2 = a2;
  v82 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = (v3 + 112);
  if ((v3 + 112) == a2)
  {
    goto LABEL_10;
  }

  if (*(v3 + 135) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v7 = v2[1];
    }

    v4 = std::string::__assign_no_alias<false>(v4, a2, v7);
LABEL_10:
    isHardwareModelChanged = sys::isHardwareModelChanged(v4);
    if (isHardwareModelChanged)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    v9 = std::string::__assign_no_alias<true>(v4, *a2, a2[1]);
    isHardwareModelChanged = sys::isHardwareModelChanged(v9);
    if (isHardwareModelChanged)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 128) = a2[2];
    *v4 = v5;
    isHardwareModelChanged = sys::isHardwareModelChanged(v4);
    if (isHardwareModelChanged)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  isHardwareModelChanged = sys::isFWVersionChanged(v2);
  if (!isHardwareModelChanged)
  {
    isHardwareModelChanged = sys::isOSVersionChanged(isHardwareModelChanged);
    if (!isHardwareModelChanged)
    {
      v8 = *MEMORY[0x29EDB8ED8];
      goto LABEL_78;
    }
  }

LABEL_15:
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79 = v10;
  v80 = v10;
  v77 = v10;
  v78 = v10;
  v75 = v10;
  v76 = v10;
  config::hw::product(isHardwareModelChanged);
  config::build::version(v11);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, *v2, v2[1]);
  }

  else
  {
    v78 = *v2;
    *&v79 = v2[2];
  }

  Timestamp::Timestamp(&buf);
  Timestamp::asString(v12, 0, 9, &v79 + 8);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, buf.__r_.__value_.__l.__size_);
  pthread_mutex_lock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
  if (!xmmword_2A1399748)
  {
    v14 = operator new(0x30uLL);
    DeviceHistoryDB::DeviceHistoryDB(v14);
    v67.__r_.__value_.__r.__words[0] = v14;
    v13 = operator new(0x20uLL);
    *v13 = &unk_2A1E39118;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = v14;
    v15 = *(&xmmword_2A1399748 + 1);
    *&xmmword_2A1399748 = v14;
    *(&xmmword_2A1399748 + 1) = v13;
    if (!v15)
    {
      buf.__r_.__value_.__r.__words[0] = v14;
      buf.__r_.__value_.__l.__size_ = v13;
      goto LABEL_25;
    }

    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v13 = *(&xmmword_2A1399748 + 1);
  v14 = xmmword_2A1399748;
  *&buf.__r_.__value_.__l.__data_ = xmmword_2A1399748;
  if (*(&xmmword_2A1399748 + 1))
  {
LABEL_25:
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
  _DeviceHistoryItem::_DeviceHistoryItem(&v68, &v75);
  DeviceHistoryDB::addDeviceHistory(v14, &v68);
  if (v74 < 0)
  {
    operator delete(__p);
    if ((v72 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v70 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v71);
  if ((v70 & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v69);
  if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    size = buf.__r_.__value_.__l.__size_;
    if (!buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v68.__r_.__value_.__l.__data_);
  size = buf.__r_.__value_.__l.__size_;
  if (!buf.__r_.__value_.__l.__size_)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

LABEL_38:
  v17 = *(v3 + 104);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  v19 = MEMORY[0x29EDBED38];
  if (v18)
  {
    v20 = *MEMORY[0x29EDBED38];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v20;
    _os_log_impl(&dword_297288000, v17, OS_LOG_TYPE_DEFAULT, "#I Broadcasting %s", &buf, 0xCu);
  }

  memset(&v67, 0, sizeof(v67));
  if (sys::isHardwareModelChanged(v18))
  {
    v21 = MEMORY[0x29EDBF798];
  }

  else
  {
    isFWVersionChanged = sys::isFWVersionChanged(v2);
    v21 = MEMORY[0x29EDBF618];
    if (isFWVersionChanged)
    {
      v21 = MEMORY[0x29EDBF710];
    }
  }

  std::string::__assign_external(&v67, *v21);
  cf = 0;
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    v25 = Mutable;
    std::string::__init_copy_ctor_external(&buf, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
    Mutable = v25;
  }

  else
  {
    buf = v67;
  }

  ctu::cf::insert<char const*,std::string>(Mutable, *v19, &buf, v8, v24);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v26 = *MEMORY[0x29EDBECC0];
  v27 = strlen(*MEMORY[0x29EDBECC0]);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v27 | 7) + 1;
    }

    v29 = operator new(v31);
    __dst[1] = v28;
    v65 = v31 | 0x8000000000000000;
    __dst[0] = v29;
LABEL_60:
    memmove(v29, v26, v28);
    *(v28 + v29) = 0;
    v30 = cf;
    if (!cf)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  HIBYTE(v65) = v27;
  v29 = __dst;
  if (v27)
  {
    goto LABEL_60;
  }

  LOBYTE(__dst[0]) = 0;
  v30 = cf;
  if (!cf)
  {
    goto LABEL_63;
  }

LABEL_61:
  v32 = CFGetTypeID(v30);
  if (v32 == CFDictionaryGetTypeID())
  {
    v63 = v30;
    CFRetain(v30);
    goto LABEL_64;
  }

LABEL_63:
  v63 = 0;
LABEL_64:
  aBlock = 0;
  Service::broadcastEvent(v3, __dst, &v63, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(__dst[0]);
    if (!v30)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v30)
  {
LABEL_72:
    CFRelease(v30);
  }

LABEL_73:
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v80) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SBYTE7(v79) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_85;
    }
  }

  else if ((SHIBYTE(v80) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(*(&v79 + 1));
  if ((SBYTE7(v79) & 0x80000000) == 0)
  {
LABEL_76:
    if ((SHIBYTE(v77) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_86:
    operator delete(*(&v76 + 1));
    if ((SBYTE7(v76) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_87;
  }

LABEL_85:
  operator delete(v78);
  if (SHIBYTE(v77) < 0)
  {
    goto LABEL_86;
  }

LABEL_77:
  if ((SBYTE7(v76) & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_87:
  operator delete(v75);
LABEL_78:
  cf = 0;
  v33 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v35 = v33;
  if (!v33)
  {
    v36 = *(v3 + 104);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v75) = 0;
      _os_log_error_impl(&dword_297288000, v36, OS_LOG_TYPE_ERROR, "Failed to create dictionary to update abm domain preferences", &v75, 2u);
    }

    goto LABEL_154;
  }

  cf = v33;
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, *v2, v2[1]);
  }

  else
  {
    v75 = *v2;
    *&v76 = v2[2];
  }

  v37 = ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEC00], &v75, v8, v34);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
  }

  config::build::version(v37);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEC08], &v75, v8, v38);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_96:
  v39 = operator new(0x28uLL);
  strcpy(v39, "AppleBasebandServices_Manager-1397");
  std::string::__init_copy_ctor_external(&v75, v39, 0x22uLL);
  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBE990], &v75, v8, v40);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
  }

  operator delete(v39);
  config::hw::product(v41);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBE988], &v75, v8, v42);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_105;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_105:
  v43 = getpid();
  std::to_string(&buf, v43);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  v45 = ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBE6A8], &v75, v8, v44);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_112;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_112;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_112:
  capabilities::radio::radioType(&buf, v45);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEC10], &v75, v8, v46);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_119:
  config::hw::getBootArgs(&buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = *&buf.__r_.__value_.__l.__data_;
    *&v76 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v35, *MEMORY[0x29EDBEAB8], &v75, v8, v47);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_126;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_126:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v48 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&v75);
    v49 = v75;
    v75 = 0uLL;
    v50 = *(&off_2A1399498 + 1);
    off_2A1399498 = v49;
    if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v50->__on_zero_shared)(v50);
      std::__shared_weak_count::__release_weak(v50);
    }

    v51 = *(&v75 + 1);
    if (*(&v75 + 1) && !atomic_fetch_add((*(&v75 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    v48 = off_2A1399498;
  }

  buf.__r_.__value_.__r.__words[0] = v48;
  buf.__r_.__value_.__l.__size_ = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v52 = *MEMORY[0x29EDBEA50];
  v53 = strlen(*MEMORY[0x29EDBEA50]);
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v54 = v53;
  if (v53 >= 0x17)
  {
    if ((v53 | 7) == 0x17)
    {
      v56 = 25;
    }

    else
    {
      v56 = (v53 | 7) + 1;
    }

    v55 = operator new(v56);
    *(&v75 + 1) = v54;
    *&v76 = v56 | 0x8000000000000000;
    *&v75 = v55;
  }

  else
  {
    BYTE7(v76) = v53;
    v55 = &v75;
    if (!v53)
    {
      goto LABEL_145;
    }
  }

  memmove(v55, v52, v54);
LABEL_145:
  *(v55 + v54) = 0;
  v57 = cf;
  os_unfair_lock_lock(v48 + 10);
  if ((SBYTE7(v76) & 0x80u) == 0)
  {
    v58 = &v75;
  }

  else
  {
    v58 = v75;
  }

  ctu::cf::MakeCFString::MakeCFString(&v67, v58);
  ctu::cf::plist_adapter::set<__CFArray *>(v48, v57, v67.__r_.__value_.__l.__data_, 1);
  MEMORY[0x29C26DF80](&v67);
  os_unfair_lock_unlock(v48 + 10);
  if (SBYTE7(v76) < 0)
  {
    operator delete(v75);
  }

  v59 = buf.__r_.__value_.__l.__size_;
  if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
    v60 = cf;
    if (!cf)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  v60 = cf;
  if (cf)
  {
LABEL_153:
    CFRelease(v60);
  }

LABEL_154:
  v61 = *MEMORY[0x29EDCA608];
}

void sub_29733798C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  *v1 = &unk_2A1E36788;
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[3];
    v4 = v1[2];
    if (v3 == v2)
    {
LABEL_17:
      v1[3] = v2;
      operator delete(v4);
      goto LABEL_18;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v3 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v3 - 6));
      if ((*(v3 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v5 = v3 - 12;
        if (*(v3 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v3 - 9));
      v5 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
LABEL_14:
        operator delete(*v5);
      }

LABEL_5:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = v1[2];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  MEMORY[0x29C26DE80](v1 + 1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002974322CFLL)
  {
    if (((v2 & 0x80000002974322CFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002974322CFLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002974322CFLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<DeviceHistoryDB>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2A1E36788;
    v3 = v1[2];
    if (!v3)
    {
LABEL_17:
      MEMORY[0x29C26DE80](v1 + 1);
      operator delete(v1);
      return v2;
    }

    v4 = v1[3];
    v5 = v1[2];
    if (v4 == v3)
    {
LABEL_16:
      v1[3] = v3;
      operator delete(v5);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        if ((*(v4 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v4 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v4 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v4 - 6));
      if ((*(v4 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v6 = v4 - 12;
        if (*(v4 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v4 - 9));
      v6 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
LABEL_14:
        operator delete(*v6);
      }

LABEL_5:
      v4 = v6;
      if (v6 == v3)
      {
        v5 = v1[2];
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E39178;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E39178;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E39178;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E39178;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11RadioModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11RadioModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11RadioModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11RadioModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 104);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = (v3 + 112);
    if (*(v3 + 135) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version: %s", buf, 0xCu);
  }

  if (capabilities::abs::supportsCalibrationQuery(v5))
  {
    v7 = *(v3 + 104);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = capabilities::radio::supportsFactoryCalibrationV2(v8) ? radio::asStringV2() : radio::asString();
      v10 = v9;
      radio::RFCalibration_t::toString(buf, (v3 + 144));
      v11 = v19 >= 0 ? buf : *buf;
      *v20 = 136315394;
      v21 = v10;
      v22 = 2080;
      v23 = v11;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I \n--- Factory and RF calibration ---\n%s\n%s\n----------------------------------", v20, 0x16u);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (MEMORY[0x29C26F9F0](*(v3 + 192)) == MEMORY[0x29EDCAA00])
  {
    v12 = *(v3 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, (v3 + 192));
      v13 = v19 >= 0 ? buf : *buf;
      *v20 = 136315138;
      v21 = v13;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband field test config:\n%s", v20, 0xCu);
      if (v19 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v14 = v2[1];
  if (v14)
  {
    dispatch_group_leave(v14);
    v15 = v2[1];
    if (v15)
    {
      dispatch_release(v15);
    }
  }

  operator delete(v2);
  v16 = a1[2];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_2973385CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_200()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_201()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_202()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_203()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_204()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t TraceFilter::determineFilterAction(std::string *a1)
{
  v74 = *MEMORY[0x29EDCA608];
  std::string::__assign_external(a1, *MEMORY[0x29EDBECB0]);
  if (TelephonyUtilIsInternalBuild())
  {
    v66 = -1431655766;
    v2 = *MEMORY[0x29EDBEB40];
    v3 = strlen(*MEMORY[0x29EDBEB40]);
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = v3;
    if (v3 >= 0x17)
    {
      if ((v3 | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (v3 | 7) + 1;
      }

      p_dst = operator new(v8);
      *(&__dst + 1) = v4;
      v69 = v8 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v69) = v3;
      p_dst = &__dst;
      if (!v3)
      {
LABEL_12:
        *(p_dst + v4) = 0;
        memset(&__p, 0, 24);
        if (prop::logfilter::get(&__dst, &__p))
        {
          v9 = util::convert<int>(&__p, &v66, 0);
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v9 = 0;
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        operator delete(*&__p.st_dev);
LABEL_17:
        if (SHIBYTE(v69) < 0)
        {
          operator delete(__dst);
          if (v9)
          {
LABEL_19:
            v10 = v66;
            v67.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
            v67.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
            v67.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
            v11 = *MEMORY[0x29EDBD268];
            v12 = strlen(*MEMORY[0x29EDBD268]);
            if (v12 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v13 = v12;
            if (v12 >= 0x17)
            {
              if ((v12 | 7) == 0x17)
              {
                v22 = 25;
              }

              else
              {
                v22 = (v12 | 7) + 1;
              }

              v14 = operator new(v22);
              *(&__dst + 1) = v13;
              v69 = v22 | 0x8000000000000000;
              *&__dst = v14;
            }

            else
            {
              HIBYTE(v69) = v12;
              v14 = &__dst;
              if (!v12)
              {
                LOBYTE(__dst) = 0;
                v15 = SHIBYTE(v69);
                if ((SHIBYTE(v69) & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_34;
              }
            }

            memmove(v14, v11, v13);
            *(v14 + v13) = 0;
            v15 = SHIBYTE(v69);
            if ((SHIBYTE(v69) & 0x80000000) == 0)
            {
LABEL_23:
              if (!v15)
              {
                goto LABEL_45;
              }

              memset(&__p, 0, 64);
              v16 = statvfs(&__dst, &__p);
              st_ino = __p.st_ino;
              st_rdev = __p.st_rdev;
              if ((v15 & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_36;
            }

LABEL_34:
            if (!*(&__dst + 1))
            {
              operator delete(__dst);
              goto LABEL_45;
            }

            memset(&__p, 0, 64);
            v16 = statvfs(__dst, &__p);
            st_ino = __p.st_ino;
            st_rdev = __p.st_rdev;
            if ((v15 & 0x80000000) == 0)
            {
LABEL_25:
              if (v16)
              {
                goto LABEL_45;
              }

              goto LABEL_37;
            }

LABEL_36:
            v23 = v16;
            operator delete(__dst);
            if (v23)
            {
              goto LABEL_45;
            }

LABEL_37:
            v24 = (st_ino * st_rdev) >> 20;
            if ((v10 & 0x80000000) == 0 && v24 <= v10)
            {
              std::string::__assign_external(&v67, *MEMORY[0x29EDBECA8]);
            }

            if ((atomic_load_explicit(&qword_2A1399E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E00))
            {
              qword_2A1399E08 = 0;
              qword_2A1399E10 = 0;
              __cxa_guard_release(&qword_2A1399E00);
            }

            if (_MergedGlobals_6 != -1)
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
              v25 = qword_2A1399E10;
              if (!os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              goto LABEL_43;
            }

            v25 = qword_2A1399E10;
            if (os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
            {
LABEL_43:
              __p.st_dev = 134217984;
              *&__p.st_mode = v24;
              _os_log_impl(&dword_297288000, v25, OS_LOG_TYPE_DEFAULT, "Free disk space = %lu MB", &__p, 0xCu);
            }

LABEL_45:
            size = v67.__r_.__value_.__l.__size_;
            v19 = v67.__r_.__value_.__r.__words[0];
            v21 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
LABEL_46:
            v65 = -1431655766;
            v26 = *MEMORY[0x29EDBEDE8];
            v27 = strlen(*MEMORY[0x29EDBEDE8]);
            if (v27 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v28 = v27;
            if (v27 >= 0x17)
            {
              if ((v27 | 7) == 0x17)
              {
                v30 = 25;
              }

              else
              {
                v30 = (v27 | 7) + 1;
              }

              v29 = operator new(v30);
              *(&__dst + 1) = v28;
              v69 = v30 | 0x8000000000000000;
              *&__dst = v29;
            }

            else
            {
              HIBYTE(v69) = v27;
              v29 = &__dst;
              if (!v27)
              {
LABEL_55:
                *(v29 + v28) = 0;
                memset(&__p, 0, 24);
                if (prop::logfilter::get(&__dst, &__p))
                {
                  v6 = util::convert<int>(&__p, &v65, 0);
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v6 = 0;
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                operator delete(*&__p.st_dev);
LABEL_60:
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(__dst);
                  if (v6)
                  {
LABEL_62:
                    v31 = v65;
                    memset(&v64, 0, sizeof(v64));
                    if (v65 < 0)
                    {
                      v42 = 0;
                      v41 = 0;
                      v40 = 0;
                      if ((v21 & 0x80u) == 0)
                      {
                        v44 = v21;
                      }

                      else
                      {
                        v44 = size;
                      }

                      if (v44)
                      {
                        goto LABEL_147;
                      }

                      goto LABEL_144;
                    }

                    __dst = 0uLL;
                    v69 = 0;
                    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v32 = off_2A1399498;
                    if (!off_2A1399498)
                    {
                      SharedData::create_default_global(&__p.st_dev);
                      v33 = *&__p.st_dev;
                      *&__p.st_dev = 0;
                      __p.st_ino = 0;
                      v34 = *(&off_2A1399498 + 1);
                      off_2A1399498 = v33;
                      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v34->__on_zero_shared)(v34);
                        std::__shared_weak_count::__release_weak(v34);
                      }

                      v35 = __p.st_ino;
                      if (__p.st_ino && !atomic_fetch_add((__p.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v35->__on_zero_shared)(v35);
                        std::__shared_weak_count::__release_weak(v35);
                      }

                      v32 = off_2A1399498;
                    }

                    v67.__r_.__value_.__r.__words[0] = v32;
                    v67.__r_.__value_.__l.__size_ = *(&off_2A1399498 + 1);
                    if (*(&off_2A1399498 + 1))
                    {
                      atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
                    }

                    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v36 = *MEMORY[0x29EDBD290];
                    v37 = strlen(*MEMORY[0x29EDBD290]);
                    if (v37 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v38 = v37;
                    if (v37 >= 0x17)
                    {
                      v63 = v19;
                      if ((v37 | 7) == 0x17)
                      {
                        v45 = 25;
                      }

                      else
                      {
                        v45 = (v37 | 7) + 1;
                      }

                      p_p = operator new(v45);
                      __p.st_ino = v38;
                      *&__p.st_uid = v45 | 0x8000000000000000;
                      *&__p.st_dev = p_p;
                      v19 = v63;
                    }

                    else
                    {
                      HIBYTE(__p.st_gid) = v37;
                      p_p = &__p;
                      if (!v37)
                      {
LABEL_93:
                        *(&p_p->st_dev + v38) = 0;
                        os_unfair_lock_lock((v32 + 40));
                        if ((__p.st_gid & 0x80000000) == 0)
                        {
                          v46 = &__p;
                        }

                        else
                        {
                          v46 = *&__p.st_dev;
                        }

                        ctu::cf::MakeCFString::MakeCFString(buf, v46);
                        v47 = (**v32)(v32, *buf);
                        if (v47)
                        {
                          ctu::cf::assign();
                          CFRelease(v47);
                        }

                        MEMORY[0x29C26DF80](buf);
                        os_unfair_lock_unlock((v32 + 40));
                        if (SHIBYTE(__p.st_gid) < 0)
                        {
                          operator delete(*&__p.st_dev);
                        }

                        v48 = v67.__r_.__value_.__l.__size_;
                        if (v67.__r_.__value_.__l.__size_ && !atomic_fetch_add((v67.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v48->__on_zero_shared)(v48);
                          std::__shared_weak_count::__release_weak(v48);
                        }

                        v49.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                        v49.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                        *&__p.st_blksize = v49;
                        *__p.st_qspare = v49;
                        __p.st_birthtimespec = v49;
                        *&__p.st_size = v49;
                        __p.st_mtimespec = v49;
                        __p.st_ctimespec = v49;
                        *&__p.st_uid = v49;
                        __p.st_atimespec = v49;
                        *&__p.st_dev = v49;
                        if (v69 >= 0)
                        {
                          v50 = &__dst;
                        }

                        else
                        {
                          v50 = __dst;
                        }

                        if (stat(v50, &__p))
                        {
                          v51 = -1;
                          goto LABEL_134;
                        }

                        if (SHIBYTE(v69) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__p, __dst, *(&__dst + 1));
                        }

                        else
                        {
                          *&__p.st_dev = __dst;
                          *&__p.st_uid = v69;
                        }

                        v52 = *MEMORY[0x29EDBD258];
                        v53 = strlen(*MEMORY[0x29EDBD258]);
                        if (v53 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v54 = v53;
                        if (v53 >= 0x17)
                        {
                          if ((v53 | 7) == 0x17)
                          {
                            v56 = 25;
                          }

                          else
                          {
                            v56 = (v53 | 7) + 1;
                          }

                          v55 = operator new(v56);
                          v67.__r_.__value_.__l.__size_ = v54;
                          v67.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
                          v67.__r_.__value_.__r.__words[0] = v55;
                        }

                        else
                        {
                          *(&v67.__r_.__value_.__s + 23) = v53;
                          v55 = &v67;
                          if (!v53)
                          {
LABEL_120:
                            v55[v54] = 0;
                            NumberOfLogDumps = util::getNumberOfLogDumps(&__p, &v67);
                            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v67.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                              {
LABEL_122:
                                if (NumberOfLogDumps >> 31)
                                {
                                  v51 = -1;
                                }

                                else
                                {
                                  v51 = NumberOfLogDumps;
                                }

                                if (v51 == -1)
                                {
                                  goto LABEL_134;
                                }

LABEL_132:
                                if (v51 >= v31)
                                {
                                  std::string::__assign_external(&v64, *MEMORY[0x29EDBECA8]);
                                  v51 = NumberOfLogDumps;
                                }

LABEL_134:
                                if ((atomic_load_explicit(&qword_2A1399E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E00))
                                {
                                  qword_2A1399E08 = 0;
                                  qword_2A1399E10 = 0;
                                  __cxa_guard_release(&qword_2A1399E00);
                                }

                                if (_MergedGlobals_6 == -1)
                                {
                                  v58 = qword_2A1399E10;
                                  if (!os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_138;
                                  }
                                }

                                else
                                {
                                  dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
                                  v58 = qword_2A1399E10;
                                  if (!os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
                                  {
LABEL_138:
                                    if (SHIBYTE(v69) < 0)
                                    {
                                      operator delete(__dst);
                                    }

                                    v41 = v64.__r_.__value_.__l.__size_;
                                    v40 = v64.__r_.__value_.__r.__words[0];
                                    v42 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
                                    if ((v21 & 0x80u) == 0)
                                    {
                                      v59 = v21;
                                    }

                                    else
                                    {
                                      v59 = size;
                                    }

                                    if (v59)
                                    {
                                      goto LABEL_147;
                                    }

LABEL_144:
                                    if ((v42 & 0x80u) == 0)
                                    {
                                      v41 = v42;
                                    }

                                    if (!v41)
                                    {
LABEL_148:
                                      if ((v42 & 0x80) != 0)
                                      {
                                        operator delete(v40);
                                        if ((v21 & 0x80) == 0)
                                        {
                                          goto LABEL_150;
                                        }
                                      }

                                      else if ((v21 & 0x80) == 0)
                                      {
LABEL_150:
                                        v60 = *MEMORY[0x29EDCA608];
                                        return v6;
                                      }

                                      operator delete(v19);
                                      v62 = *MEMORY[0x29EDCA608];
                                      return v6;
                                    }

LABEL_147:
                                    std::string::__assign_external(a1, *MEMORY[0x29EDBECA8]);
                                    goto LABEL_148;
                                  }
                                }

                                *buf = 67109376;
                                *&buf[4] = v51;
                                v71 = 1024;
                                v72 = v31;
                                _os_log_impl(&dword_297288000, v58, OS_LOG_TYPE_DEFAULT, "Log dump count = %d, max log limit = %d", buf, 0xEu);
                                goto LABEL_138;
                              }
                            }

                            else if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                            {
                              goto LABEL_122;
                            }

                            operator delete(*&__p.st_dev);
                            if (NumberOfLogDumps >> 31)
                            {
                              v51 = -1;
                            }

                            else
                            {
                              v51 = NumberOfLogDumps;
                            }

                            if (v51 == -1)
                            {
                              goto LABEL_134;
                            }

                            goto LABEL_132;
                          }
                        }

                        memmove(v55, v52, v54);
                        goto LABEL_120;
                      }
                    }

                    memmove(p_p, v36, v38);
                    goto LABEL_93;
                  }
                }

                else if (v6)
                {
                  goto LABEL_62;
                }

                v40 = 0;
                v41 = 0;
                v42 = 0;
                if ((v21 & 0x80u) == 0)
                {
                  v43 = v21;
                }

                else
                {
                  v43 = size;
                }

                if (v43)
                {
                  goto LABEL_147;
                }

                goto LABEL_144;
              }
            }

            memmove(v29, v26, v28);
            goto LABEL_55;
          }
        }

        else if (v9)
        {
          goto LABEL_19;
        }

        v19 = 0;
        size = 0;
        v21 = 0;
        goto LABEL_46;
      }
    }

    memmove(p_dst, v2, v4);
    goto LABEL_12;
  }

  v6 = 1;
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_297339150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL16sGetOsLogContextv_block_invoke_3()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "trace.filter");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *PowerManager::PowerManager(void *a1, uint64_t *a2)
{
  *a1 = &unk_2A1E39218;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

{
  *a1 = &unk_2A1E39218;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

void sub_2973393CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xE0uLL);
  v5 = v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::State(v4, &v7);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(a2, v5);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_297339478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::init(PowerManager::State *this)
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

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN12PowerManager5State4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_21_3;
  v9[4] = this;
  v9[5] = v3;
  v10 = v5;
  v11 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_23_0;
  block[4] = this;
  block[5] = &v11;
  v7 = *(this + 2);
  if (!*(this + 3))
  {
    dispatch_sync(v7, block);
    v8 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v7, block);
  v8 = v10;
  if (v10)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_2973396AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E39218;
  v8 = (v4 + 1);
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v10, v4 + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  PowerManager::State::init(*v8);
  *a2 = v5;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E395C0;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v5;
  a2[1] = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2973397B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 48))(v10);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void PowerManager::registerForPowerEvents(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    v3 = _Block_copy(*a2);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_30;
  v5[4] = v2;
  if (!v3)
  {
    aBlock = 0;
    ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
    v4 = aBlock;
    if (!aBlock)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
  v4 = aBlock;
  if (aBlock)
  {
LABEL_8:
    _Block_release(v4);
  }

LABEL_9:
  if (v3)
  {
    _Block_release(v3);
  }
}

void PowerManager::createPowerAssertion(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v6 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v7 = dispatch_group_create();
  *a4 = v7;
  v18 = v6;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  v20 = a3;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v8 = v6[1];
  if (!v8 || (v9 = *v6, (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x30uLL);
  *v12 = v18;
  v13 = (v12 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v12[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v14 = group;
  v12[4] = v20;
  v12[5] = v14;
  group = 0;
  v15 = v6[2];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v12;
  v16[1] = v9;
  v16[2] = v11;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_297339B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    dispatch_release(v14);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void PowerManager::releasePowerAssertion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v12 = v2;
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    goto LABEL_6;
  }

  v11 = *a2;
  v12 = v2;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p = v11;
LABEL_6:
  v3 = v2[1];
  if (!v3 || (v4 = *v2, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = v12;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = v2[2];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>(PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1},std::default_delete<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_17:
      operator delete(v11.__r_.__value_.__l.__data_);
      return;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_297339D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PowerManager::initialize(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State10initializeEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_52_0;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::shutdown(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State8shutdownEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_53_0;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::~PowerManager(PowerManager *this)
{
  *this = &unk_2A1E39218;
  v1 = *(this + 2);
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
  *this = &unk_2A1E39218;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void *std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E39288;
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