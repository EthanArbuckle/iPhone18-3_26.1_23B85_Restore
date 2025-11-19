uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SensorID>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::SensorID>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E1BE98;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v21 = 0;
  v4 = a1[6];
  if (v4)
  {
    v21 = std::__shared_weak_count::lock(v4);
    if (!v21)
    {
      goto LABEL_24;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[7];
      if (v7)
      {
        if (a1[8])
        {
          v8 = *(a2 + 4);
          v9 = v8 == 0;
          if (!v8 || (v10 = *(v3 + 40), !os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)) || (*buf = 67109378, v23 = v8, v24 = 2080, v25 = qmi::asString(), _os_log_error_impl(&dword_296ECF000, v10, OS_LOG_TYPE_ERROR, "Error in response with code = 0x%x (%s)", buf, 0x12u), (v7 = a1[7]) != 0) && a1[8])
          {
            v11 = _Block_copy(v7);
            v12 = a1[8];
            if (v12)
            {
              dispatch_retain(v12);
            }

            v13 = v6[2];
            if (!v13 || (v14 = v6[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v16 = v15;
            v17 = operator new(0x18uLL);
            if (v11)
            {
              *v17 = _Block_copy(v11);
              v17[1] = v12;
              if (!v12)
              {
LABEL_15:
                *(v17 + 16) = v9;
                v18 = v6[3];
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                v19 = operator new(0x18uLL);
                *v19 = v17;
                v19[1] = v14;
                v19[2] = v16;
                dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_);
                if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v16->__on_zero_shared)(v16);
                  std::__shared_weak_count::__release_weak(v16);
                }

                if (v12)
                {
                  dispatch_release(v12);
                }

                if (v11)
                {
                  _Block_release(v11);
                }

                goto LABEL_21;
              }
            }

            else
            {
              *v17 = 0;
              v17[1] = v12;
              if (!v12)
              {
                goto LABEL_15;
              }
            }

            dispatch_retain(v12);
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_21:
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_24:
  v20 = *MEMORY[0x29EDCA608];
}

void sub_296F70274(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN7antenna13CommandDriverEE15execute_wrappedIZZNS3_16QMICommandDriver7sendMsgIN3bsp3abm10SensorInfo7RequestEEEvT_NS_8callbackIU13block_pointerFvbN3xpc6objectEEEEjEUb_EUlvE_EEvOSD_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISD_NSP_14default_deleteISD_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v2 = *a1;
  if (!**a1 || !v2[1])
  {
    goto LABEL_16;
  }

  v3 = *(v2 + 16);
  v4 = xpc_null_create();
  if (*v2)
  {
    v5 = _Block_copy(*v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_118;
  if (!v5)
  {
    v12 = v3;
    aBlock = 0;
    object = v4;
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    object = xpc_null_create();
    goto LABEL_11;
  }

  v12 = v3;
  aBlock = _Block_copy(v5);
  object = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  xpc_retain(v4);
LABEL_11:
  dispatch_async(v6, block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(v4);
LABEL_16:
  v7 = v2[1];
  if (v7)
  {
    dispatch_release(v7);
  }

  if (*v2)
  {
    _Block_release(*v2);
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

void *__copy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvbN7antenna7NVItemsEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t coex::QMICommandDriver::create@<X0>(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  coex::QMICommandDriver::QMICommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<coex::QMICommandDriver>::shared_ptr[abi:ne200100]<coex::QMICommandDriver,std::shared_ptr<coex::QMICommandDriver> ctu::SharedSynchronizable<coex::CommandDriver>::make_shared_ptr<coex::QMICommandDriver>(coex::QMICommandDriver*)::{lambda(coex::QMICommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return (*(**a2 + 48))(*a2);
}

void sub_296F705E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::QMICommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v10 = *a2;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coex::CommandDriver::CommandDriver();
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  *(a1 + 136) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v4 = (a1 + 184);
  *a1 = &unk_2A1E1BF30;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  if ((atomic_load_explicit(&qword_2A18A5978, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5978))
  {
    _MergedGlobals_3 = 0;
    __cxa_guard_release(&qword_2A18A5978);
  }

  if ((atomic_load_explicit(&qword_2A18A5980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5980))
  {
    v9 = *MEMORY[0x29EDC8788];
    qword_2A18A5990 = *MEMORY[0x29EDC8790];
    unk_2A18A5998 = v9;
    qword_2A18A59A0 = *MEMORY[0x29EDC8840];
    __cxa_guard_release(&qword_2A18A5980);
  }

  if ((atomic_load_explicit(&qword_2A18A5988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18A5988))
  {
    qword_2A18A59A8 = *MEMORY[0x29EDB8EF8];
    unk_2A18A59B0 = qword_2A18A59A8;
    qword_2A18A59B8 = qword_2A18A59A8;
    __cxa_guard_release(&qword_2A18A5988);
  }

  v5 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    v5 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], &qword_2A18A5990, &qword_2A18A59A8, 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = _MergedGlobals_3;
    _MergedGlobals_3 = v5;
    if (v6)
    {
      CFRelease(v6);
LABEL_13:
      v5 = _MergedGlobals_3;
      if (!_MergedGlobals_3)
      {
        goto LABEL_15;
      }
    }
  }

  CFRetain(v5);
LABEL_15:
  v7 = *v4;
  *v4 = v5;
  if (v7)
  {
    CFRelease(v7);
  }

  return a1;
}

void sub_296F7083C(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v4);
  qmi::Client::~Client(v3);
  coex::CommandDriver::~CommandDriver(v1);
  _Unwind_Resume(a1);
}

void coex::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E1CB00;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
    this[11] = &unk_2A1E1CB48;
    v2 = this[13];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    this[11] = &unk_2A1E1CB48;
    v2 = this[13];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
    if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 24))(v2);
    }
  }

LABEL_8:
  this[8] = &unk_2A1E1CBB8;
  v3 = this[10];
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

  v4 = this[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x29C268320](this + 5);
  v5 = this[4];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = this[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void coex::QMICommandDriver::~QMICommandDriver(coex::QMICommandDriver *this)
{
  *this = &unk_2A1E1BF30;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v5, 2u);
  }

  v3 = *(this + 23);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    CFRelease(v4);
  }

  qmi::Client::~Client((this + 136));
  coex::CommandDriver::~CommandDriver(this);
}

{
  coex::QMICommandDriver::~QMICommandDriver(this);

  operator delete(v1);
}

void coex::QMICommandDriver::init(coex::QMICommandDriver *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_20_1;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4coex13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_447;
  block[4] = this + 8;
  block[5] = &v4;
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

void ___ZN4coex16QMICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v54, *(v1 + 48));
  if (!v54)
  {
    Name = coex::CommandDriver::getName(v1);
    v23 = strlen(Name);
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = v23;
    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v23 | 7) + 1;
      }

      p_dst = operator new(v36);
      v52 = v24;
      v53 = v36 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v53) = v23;
      p_dst = &__dst;
      if (!v23)
      {
        LOBYTE(__dst) = 0;
        v26 = *(v1 + 24);
        v43 = v26;
        if (!v26)
        {
LABEL_44:
          v49 = 4;
          strcpy(v48, "coex");
          v27 = *(v1 + 16);
          if (!v27 || (v28 = *(v1 + 8), (v29 = std::__shared_weak_count::lock(v27)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v30 = v29;
          atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v41 = 0;
            v42 = 0;
            v31 = std::__shared_weak_count::lock(v29);
            if (v31)
            {
LABEL_48:
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v41 = v28;
              v42 = v31;
LABEL_49:
              std::__shared_weak_count::__release_weak(v30);
              if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v31->__on_zero_shared)(v31);
                std::__shared_weak_count::__release_weak(v31);
              }

              qmi::Client::createWithQueue();
              v32 = v58;
              v58 = 0uLL;
              v33 = *(v1 + 160);
              *(v1 + 152) = v32;
              if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }

              qmi::Client::~Client(buf);
              if (v42)
              {
                std::__shared_weak_count::__release_weak(v42);
              }

              if (v49 < 0)
              {
                operator delete(v48[0]);
                v14 = v43;
                if (!v43)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v14 = v43;
                if (!v43)
                {
                  goto LABEL_29;
                }
              }

LABEL_28:
              dispatch_release(v14);
              goto LABEL_29;
            }
          }

          else
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v30);
            v41 = 0;
            v42 = 0;
            v31 = std::__shared_weak_count::lock(v30);
            if (v31)
            {
              goto LABEL_48;
            }
          }

          v41 = 0;
          v42 = v31;
          goto LABEL_49;
        }

LABEL_43:
        dispatch_retain(v26);
        goto LABEL_44;
      }
    }

    memmove(p_dst, Name, v24);
    *(p_dst + v24) = 0;
    v26 = *(v1 + 24);
    v43 = v26;
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v2 = coex::CommandDriver::getName(v1);
  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v3 | 7) + 1;
    }

    v5 = operator new(v35);
    v52 = v4;
    v53 = v35 | 0x8000000000000000;
    __dst = v5;
LABEL_73:
    memmove(v5, v2, v4);
    *(v5 + v4) = 0;
    v6 = *(v1 + 24);
    v50 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIBYTE(v53) = v3;
  v5 = &__dst;
  if (v3)
  {
    goto LABEL_73;
  }

  LOBYTE(__dst) = 0;
  v6 = *(v1 + 24);
  v50 = v6;
  if (v6)
  {
LABEL_6:
    dispatch_retain(v6);
  }

LABEL_7:
  v49 = 4;
  strcpy(v48, "coex");
  v7 = *(v1 + 16);
  if (!v7 || (v8 = *(v1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
    v46 = 0;
    v47 = 0;
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_76:
    v46 = 0;
    v47 = v11;
    goto LABEL_12;
  }

  v46 = 0;
  v47 = 0;
  v11 = std::__shared_weak_count::lock(v9);
  if (!v11)
  {
    goto LABEL_76;
  }

LABEL_11:
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v46 = v8;
  v47 = v11;
LABEL_12:
  std::__shared_weak_count::__release_weak(v10);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v44 = v54;
  v45 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v12 = v58;
  v58 = 0uLL;
  v13 = *(v1 + 160);
  *(v1 + 152) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  qmi::Client::~Client(buf);
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  v14 = v50;
  if (v50)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__dst);
  }

  v15 = *(v1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296ECF000, v15, OS_LOG_TYPE_DEBUG, "#D initializing", buf, 2u);
  }

  v40[25] = MEMORY[0x29EDCA5F8];
  v40[26] = 0x40000000;
  v40[27] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_4;
  v40[28] = &__block_descriptor_tmp_6;
  v40[29] = v1;
  qmi::Client::setHandler();
  v40[20] = MEMORY[0x29EDCA5F8];
  v40[21] = 0x40000000;
  v40[22] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_6;
  v40[23] = &__block_descriptor_tmp_7;
  v40[24] = v1;
  qmi::Client::setHandler();
  v40[15] = MEMORY[0x29EDCA5F8];
  v40[16] = 0x40000000;
  v40[17] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_8;
  v40[18] = &__block_descriptor_tmp_10_1;
  v40[19] = v1;
  qmi::Client::setHandler();
  v40[10] = MEMORY[0x29EDCA5F8];
  v40[11] = 0x40000000;
  v40[12] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_11;
  v40[13] = &__block_descriptor_tmp_13_2;
  v40[14] = v1;
  qmi::Client::setHandler();
  v40[5] = MEMORY[0x29EDCA5F8];
  v40[6] = 0x40000000;
  v40[7] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_2;
  v40[8] = &__block_descriptor_tmp_14_3;
  v40[9] = v1;
  qmi::Client::setHandler();
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v40[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_3;
  v40[3] = &__block_descriptor_tmp_16_1;
  v40[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm9BLERStats10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FF80;
  v59 = v40;
  qmi::Client::setIndHandler();
  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 0x40000000;
  v39[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_4;
  v39[3] = &__block_descriptor_tmp_17_0;
  v39[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm9WWANState10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FFA8;
  v59 = v39;
  qmi::Client::setIndHandler();
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 0x40000000;
  v38[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_5;
  v38[3] = &__block_descriptor_tmp_18_0;
  v38[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm13ConditionFail10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FFD0;
  v59 = v38;
  qmi::Client::setIndHandler();
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 0x40000000;
  v37[2] = ___ZN4coex16QMICommandDriver4initEv_block_invoke_6;
  v37[3] = &__block_descriptor_tmp_19_1;
  v37[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v57 = 0x40000000;
  *&v58 = ___ZNK3qmi6Client13setIndHandlerIRKN4coex3abm16ConditionSuccess10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v58 + 1) = &unk_29EE5FFF8;
  v59 = v37;
  qmi::Client::setIndHandler();
  v16 = *(v1 + 16);
  if (!v16 || (v17 = *(v1 + 8), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v19);
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      goto LABEL_37;
    }

LABEL_61:
    *buf = 0;
    v57 = 0;
    goto LABEL_62;
  }

  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_61;
  }

LABEL_37:
  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *buf = v17;
  v57 = v20;
  std::__shared_weak_count::__release_weak(v19);
  if (atomic_fetch_add(v21 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_63;
  }

  (*(*v21 + 16))(v21);
  v19 = v21;
LABEL_62:
  std::__shared_weak_count::__release_weak(v19);
LABEL_63:
  qmi::Client::setClientHandle();
  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  qmi::Client::start((v1 + 136));
  v34 = v55;
  if (v55)
  {
    if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }
}

void sub_296F71774(_Unwind_Exception *a1)
{
  v3 = *(v1 - 248);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    if ((*(v1 - 177) & 0x80000000) == 0)
    {
LABEL_3:
      v4 = *(v1 - 240);
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 - 177) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 - 200));
  v4 = *(v1 - 240);
  if (!v4)
  {
LABEL_8:
    if (*(v1 - 145) < 0)
    {
      operator delete(*(v1 - 168));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 144);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 - 144);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v4);
  goto LABEL_8;
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D stopped", v2, 2u);
  }
}

uint64_t ___ZN4coex16QMICommandDriver4initEv_block_invoke_6(uint64_t a1)
{
  v63 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D started", &buf, 2u);
  }

  v3 = *(v1 + 72);
  v37 = 0;
  v38 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v4;
  v51 = v4;
  v48 = v4;
  v49 = v4;
  v46 = v4;
  v47 = v4;
  v44 = v4;
  v45 = v4;
  buf = v4;
  v43 = v4;
  v5 = *(v3 + 24);
  *&v52 = 10;
  *(&v52 + 1) = &buf;
  *&v53 = 0;
  *(&v53 + 1) = v5;
  pthread_mutex_lock(v5);
  v6 = *(v3 + 8);
  if (!v6)
  {
    v8 = *v3;
    goto LABEL_15;
  }

  explicit = atomic_load_explicit(v6 + 2, memory_order_acquire);
  v8 = *v3;
  if (explicit == 1)
  {
    v9 = *v8;
    v10 = *(v3 + 16);
    if (v10 == *v8)
    {
      v10 = *(v9 + 8);
      *&v39 = v10;
      if (v9 == v10)
      {
LABEL_12:
        *(v3 + 16) = v10;
        goto LABEL_13;
      }
    }

    else
    {
      *&v39 = *(v3 + 16);
    }

    v11 = v10[2];
    if (*(v11 + 24))
    {
      v10 = v10[1];
    }

    else
    {
      v10 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(v9, (v11 + 64), &v39);
      v8 = *v3;
    }

    goto LABEL_12;
  }

LABEL_13:
  v6 = *(v3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

LABEL_15:
  v12 = v38;
  v37 = v8;
  v38 = v6;
  if (v12)
  {
    if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
      if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v12 + 24))(v12);
      }
    }
  }

  pthread_mutex_unlock(*(&v53 + 1));
  v13 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    if (v53 > 0)
    {
      v29 = *(&v52 + 1) + 16 * v53;
      do
      {
        v30 = *(v29 - 8);
        if (v30)
        {
          if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v30 + 16))(v30);
            if (atomic_fetch_add(v30 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v30 + 24))(v30);
            }
          }
        }

        v29 -= 16;
      }

      while (v29 > v13);
    }

    if (v52 >= 0xB)
    {
      operator delete(*(&v52 + 1));
    }
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61 = v14;
  v56 = v14;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v54 = v14;
  v55 = v14;
  v52 = v14;
  v53 = v14;
  v50 = v14;
  v51 = v14;
  v48 = v14;
  v49 = v14;
  v46 = v14;
  v47 = v14;
  v44 = v14;
  v45 = v14;
  buf = v14;
  v43 = v14;
  LOBYTE(buf) = 0;
  v58 = 10;
  v59 = &buf + 8;
  *(&v61 + 4) = 0;
  v60 = 0;
  v62 = 0;
  v15 = v37;
  v16 = *v37;
  p_buf = &buf;
  v35 = v3;
  v36 = v16;
  *&v32 = *(v16 + 8);
  *(&v32 + 1) = v16;
  *&v33 = &buf;
  *(&v33 + 1) = v16;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v32);
  v31[0] = *v15;
  v31[1] = v31[0];
  v31[2] = &buf;
  v31[3] = v31[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(v31);
  v39 = v32;
  v40 = v33;
  v17 = v31[0];
  v18 = v32;
  if (v32 == v31[0])
  {
    if (DWORD2(v61) <= DWORD1(v61))
    {
      goto LABEL_43;
    }

LABEL_42:
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(v35, v36);
    goto LABEL_43;
  }

  v19 = v40;
  if ((*v40 & 1) == 0)
  {
    v20 = *(*(v32 + 16) + 32);
    v21 = *(v20 + 24);
    if (!v21)
    {
      std::runtime_error::runtime_error(&v41, "call to empty boost::function");
      v41.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v41);
    }

    (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32);
    if ((*v19 & 1) == 0)
    {
      *v19 = 1;
    }
  }

  *&v39 = *(v18 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v39);
  v22 = v40;
  if (*v40 == 1)
  {
    *v40 = 0;
  }

  for (i = v39; v39 != v17; i = v39)
  {
    v24 = *(*(i + 16) + 32);
    v25 = *(v24 + 24);
    if (!v25)
    {
      std::runtime_error::runtime_error(&v41, "call to empty boost::function");
      v41.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v41);
    }

    (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(v24 + 32);
    if ((*v22 & 1) == 0)
    {
      *v22 = 1;
    }

    *&v39 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v39);
    v22 = v40;
    if (*v40 == 1)
    {
      *v40 = 0;
    }
  }

  if (*(p_buf + 70) > *(p_buf + 69))
  {
    goto LABEL_42;
  }

LABEL_43:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&buf);
  v27 = v38;
  if (v38)
  {
    if (atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v27 + 16))(v27);
      if (atomic_fetch_add(v27 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v27 + 24))(v27);
      }
    }
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F71F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27)
{
  std::runtime_error::~runtime_error(&a27);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v29);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&v31);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v30);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a23 + 16));
  __cxa_rethrow();
}

void sub_296F71F90(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v4);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&v6);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v5);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F71F60);
}

void sub_296F71FD8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296F72004);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_8(uint64_t a1, xpc_object_t object)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (object)
  {
    v3 = object;
    xpc_retain(object);
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = xpc_null_create();
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  v6 = MEMORY[0x29C269360](v3);
  memset(__dst, 170, sizeof(__dst));
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
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

    v9 = operator new(v10);
    __dst[1] = v8;
    __dst[2] = (v10 | 0x8000000000000000);
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(__dst[2]) = v7;
    v9 = __dst;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  memcpy(v9, v6, v8);
LABEL_15:
  *(v8 + v9) = 0;
  free(v6);
  v11 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v11 = __dst[0];
  }

  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_296ECF000, v4, OS_LOG_TYPE_ERROR, "server error %s", buf, 0xCu);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_5:
  xpc_release(v3);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_296F721A8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_11(uint64_t a1, char *object)
{
  v3 = *(a1 + 32);
  *(v3 + 168) = 1;
  var18.gr_name = object;
  if (object)
  {
    dispatch_retain(object);
  }

  coex::QMICommandDriver::updateIndications_sync(v3, &var18);
  if (object)
  {

    dispatch_release(object);
  }
}

void sub_296F72250(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_3(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v19 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v18 = Mutable;
    v19 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    v18 = 0;
  }

  v26 = 0;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 1174405120;
  v22 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTETransportBlockCountENS_3abm9BLERStats10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v23 = &__block_descriptor_tmp_353_0;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v25 = *MEMORY[0x29EDC8698];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 4);
    v27 = *v9;
    v22(&v20, &v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v17[1] = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  v26 = 0;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 1174405120;
  v22 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm32LTETransportBlockCountErrorCountENS_3abm9BLERStats10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v23 = &__block_descriptor_tmp_357_0;
  cf = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  v25 = *MEMORY[0x29EDC8980];
  v10 = qmi::MessageBase::findTlvValue(a2);
  v12 = v10;
  if (v10)
  {
    tlv::throwIfNotEnoughBytes(v10, v10 + v11, 4);
    v27 = *v12;
    v22(&v20, &v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v20 = 0;
  v13 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v14 = v13;
  if (v13)
  {
    v20 = v13;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v13, *MEMORY[0x29EDC8788], v19);
  if (v14 && (v15 = CFGetTypeID(v14), v15 == CFDictionaryGetTypeID()))
  {
    v17[0] = v14;
    CFRetain(v14);
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v17[0] = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, v17, 0);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

void sub_296F72550(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 17, v2, v3);
  JUMPOUT(0x296F72450);
}

void sub_296F7258C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 16, v2, v3);
  JUMPOUT(0x296F72384);
}

void sub_296F725C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void sub_296F725E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_6(uint64_t a1, qmi::MessageBase *a2)
{
  v27[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v20 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v19 = Mutable;
    v20 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    v19 = 0;
  }

  v26 = 0;
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 1174405120;
  v22 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm26TxPowerLimitEnforceSuccessENS_3abm16ConditionSuccess10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v23 = &__block_descriptor_tmp_445;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v25 = *MEMORY[0x29EDC8848];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    v10 = v8;
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 8);
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v11 = *v9;
    }

    else
    {
      v11 = 0;
    }

    v27[0] = v11;
    v22(v21, v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v21[0] = 0;
  v12 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = v12;
  if (v12)
  {
    v21[0] = v12;
  }

  v14 = v20;
  ctu::cf::insert<__CFString const*,__CFDictionary *>(v12, *MEMORY[0x29EDC8840], v20);
  if (v13 && (v15 = CFGetTypeID(v13), v15 == CFDictionaryGetTypeID()))
  {
    v18 = v13;
    CFRetain(v13);
    v16 = v13;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, &v18, 0);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
    v14 = v20;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v17 = *MEMORY[0x29EDCA608];
}

void sub_296F728BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void coex::CommandDriver::Callback::~Callback(coex::CommandDriver::Callback *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*this)
  {
    _Block_release(*this);
  }
}

void coex::QMICommandDriver::get(uint64_t a1, const void **a2, int a3, uint64_t a4)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4coex16QMICommandDriver3getEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v10[3] = &__block_descriptor_tmp_24_4;
  v7 = *a2;
  v10[4] = a1;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v14 = a3;
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver3getEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v10 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = *(a1 + 56);
    v8 = v6;
    v9 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v7 = *(a1 + 56);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  coex::QMICommandDriver::get_sync(v3, &v10, v4, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_296F72B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  coex::CommandDriver::Callback::~Callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::get_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v12, *a2);
  if (!ctu::cf::map_adapter::getBool(v12, *MEMORY[0x29EDC88B8]))
  {
    return MEMORY[0x29C268420](v12);
  }

  if (!*a4)
  {
    v7 = 0;
    v8 = *(a4 + 8);
    v10 = 0;
    v11 = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = _Block_copy(*a4);
  v8 = *(a4 + 8);
  v10 = v7;
  v11 = v8;
  if (v8)
  {
LABEL_4:
    dispatch_retain(v8);
  }

LABEL_5:
  coex::QMICommandDriver::getScanFreqBandFilter_sync(a1, a3, &v10);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  return MEMORY[0x29C268420](v12);
}

void sub_296F72C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  coex::CommandDriver::Callback::~Callback(&a9);
  MEMORY[0x29C268420](&a11);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::poll(uint64_t a1, const void **a2, int a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4coex16QMICommandDriver4pollEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdE_block_invoke;
  v6[3] = &__block_descriptor_tmp_25_0;
  v5 = *a2;
  v6[4] = a1;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v8 = a3;
  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver4pollEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  coex::QMICommandDriver::poll_sync(v2, &v3);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_296F72D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::poll_sync(coex::QMICommandDriver *a1, const __CFDictionary **a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v17 = *a2;
    *buf = 138412290;
    *&buf[4] = v17;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Polling for: %@", buf, 0xCu);
  }

  memset(buf, 170, 16);
  ctu::cf::dict_adapter::dict_adapter(buf, *a2);
  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC8728]))
  {
    coex::QMICommandDriver::pollWWANState_sync(a1);
  }

  v19 = -1431655766;
  v5 = (**buf)(buf, *MEMORY[0x29EDC87D8]);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    v9 = v7 == CFNumberGetTypeID() ? ctu::cf::assign(&v19, v6, v8) : 0;
    CFRelease(v6);
    if (v9)
    {
      coex::QMICommandDriver::pollWLANScanState_sync(a1, v19);
    }
  }

  v18 = -1431655766;
  v10 = (**buf)(buf, *MEMORY[0x29EDC8950]);
  v11 = v10;
  if (v10)
  {
    v12 = CFGetTypeID(v10);
    v14 = v12 == CFNumberGetTypeID() ? ctu::cf::assign(&v18, v11, v13) : 0;
    CFRelease(v11);
    if (v14)
    {
      coex::QMICommandDriver::pollWLANConnState_sync(a1, v18);
    }
  }

  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC86B8]))
  {
    coex::QMICommandDriver::pollPolicy_sync(a1);
  }

  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC8780]))
  {
    coex::QMICommandDriver::pollLinkQuality_sync(a1);
  }

  result = MEMORY[0x29C268420](buf);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

CFTypeRef __copy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void coex::QMICommandDriver::setIndications(uint64_t a1, const void **a2, uint64_t a3)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN4coex16QMICommandDriver14setIndicationsEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v8[3] = &__block_descriptor_tmp_28_2;
  v5 = *a2;
  v8[4] = a1;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v8);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver14setIndicationsEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (a1 + 5);
  v4 = (v2 + 176);
  if ((v2 + 176) != a1 + 5)
  {
    v5 = *v3;
    if (*v3)
    {
      CFRetain(*v3);
    }

    v6 = *v4;
    *v4 = v5;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if ((*(v2 + 168) & 1) == 0)
  {
    v7 = a1[6];
    if (v7)
    {
      v8 = _Block_copy(v7);
      v9 = a1[7];
      v10 = v8;
      v11 = v9;
      if (!v9)
      {
LABEL_10:
        coex::QMICommandDriver::setIndications_sync(v2, &v10);
        if (v9)
        {
          dispatch_release(v9);
        }

        if (v8)
        {
          _Block_release(v8);
        }

        return;
      }
    }

    else
    {
      v8 = 0;
      v9 = a1[7];
      v10 = 0;
      v11 = v9;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    dispatch_retain(v9);
    goto LABEL_10;
  }
}

uint64_t coex::QMICommandDriver::setWLANState_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v79 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v28 = *a2;
    *buf = 138412290;
    *&buf[4] = v28;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting WLAN state with: %@", buf, 0xCu);
  }

  v74[0] = 0xAAAAAAAAAAAAAAAALL;
  v74[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v74, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72 = v7;
  v73 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v72);
  v8 = (*v74[0])(v74, *MEMORY[0x29EDC87B0]);
  v9 = v8;
  v10 = "St3__111__lookaheadIcNS_12regex_traitsIcEEEE";
  if (v8)
  {
    v11 = CFGetTypeID(v8);
    TypeID = CFDictionaryGetTypeID();
    CFRelease(v9);
    if (v11 == TypeID)
    {
      memset(buf, 170, sizeof(buf));
      ctu::cf::dict_adapter::dict_adapter(buf, v9);
      v68[0] = MEMORY[0x29EDCA5F8];
      v68[1] = 1174405120;
      v69 = ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
      v70 = &__block_descriptor_tmp_69_6;
      ctu::cf::dict_adapter::dict_adapter(v71, buf);
      v13 = *(&v72 + 1);
      v14 = v73;
      v15 = *(&v72 + 1);
      if (*(&v72 + 1) != v73)
      {
        v15 = *(&v72 + 1);
        while (*(*v15 + 8) != 16)
        {
          if (++v15 == v73)
          {
            goto LABEL_13;
          }
        }
      }

      if (v15 == v73)
      {
LABEL_13:
        v19 = operator new(0x20uLL);
        v19[8] = 16;
        *v19 = &unk_2A1E1D988;
        *(v19 + 12) = 0;
        v18 = v19 + 12;
        *(v19 + 20) = 0;
        if (v14 >= *(&v73 + 1))
        {
          v21 = v14 - v13;
          v22 = (v14 - v13) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v24 = *(&v73 + 1) - v13;
          if ((*(&v73 + 1) - v13) >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          v54 = v19 + 12;
          if (v25)
          {
            if (v25 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v26 = v19;
            v27 = operator new(8 * v25);
            v19 = v26;
            v10 = "NSt3__111__lookaheadIcNS_12regex_traitsIcEEEE" + 1;
          }

          else
          {
            v27 = 0;
          }

          v29 = &v27[8 * v22];
          *v29 = v19;
          v20 = v29 + 8;
          memcpy(v27, v13, v21);
          *(&v72 + 1) = v27;
          *&v73 = v20;
          *(&v73 + 1) = &v27[8 * v25];
          if (v13)
          {
            operator delete(v13);
          }

          v18 = v54;
        }

        else
        {
          *v14 = v19;
          v20 = v14 + 8;
        }

        *&v73 = v20;
      }

      else
      {
        v16 = ***v15;
        if (!v17)
        {
          __cxa_bad_cast();
        }

        v18 = v17 + 12;
      }

      v69(v68, v18);
      MEMORY[0x29C268420](v71);
      MEMORY[0x29C268420](buf);
    }
  }

  v30 = (*v74[0])(v74, *MEMORY[0x29EDC8920]);
  v31 = v30;
  if (v30)
  {
    v32 = CFGetTypeID(v30);
    v33 = CFDictionaryGetTypeID();
    CFRelease(v31);
    if (v32 == v33)
    {
      memset(buf, 170, sizeof(buf));
      ctu::cf::dict_adapter::dict_adapter(buf, v31);
      v64[0] = MEMORY[0x29EDCA5F8];
      v64[1] = *(v10 + 86);
      v65 = ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_70;
      v66 = &__block_descriptor_tmp_73_2;
      ctu::cf::dict_adapter::dict_adapter(v67, buf);
      v34 = *(&v72 + 1);
      v35 = v73;
      v36 = *(&v72 + 1);
      if (*(&v72 + 1) != v73)
      {
        v36 = *(&v72 + 1);
        while (*(*v36 + 8) != 17)
        {
          if (++v36 == v73)
          {
            goto LABEL_40;
          }
        }
      }

      if (v36 == v73)
      {
LABEL_40:
        v40 = operator new(0x38uLL);
        v40[8] = 17;
        *(v40 + 4) = 0;
        v39 = v40 + 16;
        *v40 = &unk_2A1E1D9D8;
        *(v40 + 24) = 0u;
        *(v40 + 40) = 0u;
        if (v35 >= *(&v73 + 1))
        {
          v42 = v35 - v34;
          v43 = (v35 - v34) >> 3;
          v44 = v43 + 1;
          if ((v43 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v45 = *(&v73 + 1) - v34;
          if ((*(&v73 + 1) - v34) >> 2 > v44)
          {
            v44 = v45 >> 2;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF8)
          {
            v46 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v44;
          }

          v55 = v40 + 16;
          if (v46)
          {
            if (v46 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v47 = v40;
            v48 = operator new(8 * v46);
            v40 = v47;
            v10 = "NSt3__111__lookaheadIcNS_12regex_traitsIcEEEE" + 1;
          }

          else
          {
            v48 = 0;
          }

          v49 = &v48[8 * v43];
          *v49 = v40;
          v41 = v49 + 8;
          memcpy(v48, v34, v42);
          *(&v72 + 1) = v48;
          *&v73 = v41;
          *(&v73 + 1) = &v48[8 * v46];
          if (v34)
          {
            operator delete(v34);
          }

          v39 = v55;
        }

        else
        {
          *v35 = v40;
          v41 = v35 + 8;
        }

        *&v73 = v41;
      }

      else
      {
        v37 = ***v36;
        if (!v38)
        {
          __cxa_bad_cast();
        }

        v39 = v38 + 16;
      }

      v65(v64, v39);
      MEMORY[0x29C268420](v67);
      MEMORY[0x29C268420](buf);
    }
  }

  v59 = a1 + 136;
  v60 = QMIServiceMsg::create();
  v61 = 25000;
  v62 = 0;
  aBlock = 0;
  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = *(v10 + 86);
  v56[2] = ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_74;
  v56[3] = &__block_descriptor_tmp_78_0;
  v56[4] = a1;
  v50 = *a3;
  if (*a3)
  {
    v50 = _Block_copy(v50);
  }

  v51 = *(a3 + 8);
  v57 = v50;
  object = v51;
  if (v51)
  {
    dispatch_retain(v51);
  }

  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  v76 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm12SetWLANState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v77 = &unk_29EE60108;
  v78 = v56;
  aBlock = _Block_copy(buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v57)
  {
    _Block_release(v57);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v72);
  result = MEMORY[0x29C268420](v74);
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F73960(_Unwind_Exception *a1)
{
  MEMORY[0x29C268420](v1 - 144);
  qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
  MEMORY[0x29C268420](v1 - 160);
  _Unwind_Resume(a1);
}

void sub_296F739B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  coex::CommandDriver::Callback::~Callback((v10 + 40));
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase((v11 - 192));
  MEMORY[0x29C268420](v11 - 160);
  _Unwind_Resume(a1);
}

void sub_296F73A10(_Unwind_Exception *a1)
{
  qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
  MEMORY[0x29C268420](v1 - 160);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::setBLER_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v77 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v28 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v28;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting BLER with: %@", &aBlock, 0xCu);
  }

  v72[0] = 0xAAAAAAAAAAAAAAAALL;
  v72[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = ctu::cf::dict_adapter::dict_adapter(v72, *a2);
  Bool = ctu::cf::map_adapter::getBool(v7, *MEMORY[0x29EDC8AE0]);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (Bool)
  {
    v70 = v9;
    v71 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v70);
    v66[0] = MEMORY[0x29EDCA5F8];
    v66[1] = 1174405120;
    v67 = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
    v68 = &__block_descriptor_tmp_227;
    ctu::cf::dict_adapter::dict_adapter(v69, v72);
    v10 = *(&v70 + 1);
    v11 = v71;
    v12 = *(&v70 + 1);
    if (*(&v70 + 1) != v71)
    {
      v12 = *(&v70 + 1);
      while (*(*v12 + 8) != 1)
      {
        if (++v12 == v71)
        {
          goto LABEL_22;
        }
      }
    }

    if (v12 == v71)
    {
LABEL_22:
      v18 = operator new(0x10uLL);
      v18[8] = 1;
      *v18 = &unk_2A1E1E068;
      *(v18 + 3) = 0;
      v17 = v18 + 12;
      if (v11 >= *(&v71 + 1))
      {
        v20 = v11 - v10;
        v21 = (v11 - v10) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v23 = *(&v71 + 1) - v10;
        if ((*(&v71 + 1) - v10) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = v18;
          v26 = v18 + 12;
          v27 = operator new(8 * v24);
          v18 = v25;
        }

        else
        {
          v26 = v18 + 12;
          v27 = 0;
        }

        v29 = &v27[8 * v21];
        *v29 = v18;
        v19 = v29 + 8;
        memcpy(v27, v10, v20);
        *(&v70 + 1) = v27;
        *&v71 = v19;
        *(&v71 + 1) = &v27[8 * v24];
        if (v10)
        {
          operator delete(v10);
        }

        v17 = v26;
      }

      else
      {
        *v11 = v18;
        v19 = v11 + 8;
      }

      *&v71 = v19;
    }

    else
    {
      v15 = ***v12;
      if (!v16)
      {
        __cxa_bad_cast();
      }

      v17 = v16 + 12;
    }

    v67(v66, v17);
    v62[0] = MEMORY[0x29EDCA5F8];
    v62[1] = 1174405120;
    v63 = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_228;
    v64 = &__block_descriptor_tmp_232;
    ctu::cf::dict_adapter::dict_adapter(v65, v72);
    v30 = *(&v70 + 1);
    v31 = v71;
    v32 = *(&v70 + 1);
    if (*(&v70 + 1) != v71)
    {
      v32 = *(&v70 + 1);
      while (*(*v32 + 8) != 2)
      {
        if (++v32 == v71)
        {
          goto LABEL_46;
        }
      }
    }

    if (v32 == v71)
    {
LABEL_46:
      v36 = operator new(0x10uLL);
      v36[8] = 2;
      *v36 = &unk_2A1E1E0B8;
      *(v36 + 3) = 0;
      v35 = v36 + 12;
      if (v31 >= *(&v71 + 1))
      {
        v38 = v31 - v30;
        v39 = (v31 - v30) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v41 = *(&v71 + 1) - v30;
        if ((*(&v71 + 1) - v30) >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          if (v42 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v43 = v36;
          v44 = v36 + 12;
          v45 = operator new(8 * v42);
          v36 = v43;
        }

        else
        {
          v44 = v36 + 12;
          v45 = 0;
        }

        v46 = &v45[8 * v39];
        *v46 = v36;
        v37 = v46 + 8;
        memcpy(v45, v30, v38);
        *(&v70 + 1) = v45;
        *&v71 = v37;
        *(&v71 + 1) = &v45[8 * v42];
        if (v30)
        {
          operator delete(v30);
        }

        v35 = v44;
      }

      else
      {
        *v31 = v36;
        v37 = v31 + 8;
      }

      *&v71 = v37;
    }

    else
    {
      v33 = ***v32;
      if (!v34)
      {
        __cxa_bad_cast();
      }

      v35 = v34 + 12;
    }

    v63(v62, v35);
    v57 = a1 + 136;
    v58 = QMIServiceMsg::create();
    v59 = 25000;
    v60 = 0;
    v61 = 0;
    v54[0] = MEMORY[0x29EDCA5F8];
    v54[1] = 1174405120;
    v54[2] = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_233;
    v54[3] = &__block_descriptor_tmp_237;
    v54[4] = a1;
    v47 = *a3;
    if (*a3)
    {
      v47 = _Block_copy(v47);
    }

    v48 = *(a3 + 8);
    v55 = v47;
    v56 = v48;
    if (v48)
    {
      dispatch_retain(v48);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v74 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9BLERStart8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v75 = &unk_29EE60158;
    v76 = v54;
    v61 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v61)
    {
      _Block_release(v61);
    }

    if (v56)
    {
      dispatch_release(v56);
    }

    if (v55)
    {
      _Block_release(v55);
    }

    MEMORY[0x29C268420](v65);
    MEMORY[0x29C268420](v69);
  }

  else
  {
    v70 = v9;
    v71 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v70);
    v57 = a1 + 136;
    v58 = QMIServiceMsg::create();
    v59 = 25000;
    v60 = 0;
    v61 = 0;
    v51[0] = MEMORY[0x29EDCA5F8];
    v51[1] = 1174405120;
    v51[2] = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_238;
    v51[3] = &__block_descriptor_tmp_242;
    v51[4] = a1;
    v13 = *a3;
    if (*a3)
    {
      v13 = _Block_copy(v13);
    }

    v14 = *(a3 + 8);
    v52 = v13;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v74 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8BLERStop8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v75 = &unk_29EE60180;
    v76 = v51;
    v61 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v61)
    {
      _Block_release(v61);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v52)
    {
      _Block_release(v52);
    }
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v70);
  result = MEMORY[0x29C268420](v72);
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F74158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setSINR_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v56 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v28 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v28;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting SINR with: %@", &aBlock, 0xCu);
  }

  v51[0] = 0xAAAAAAAAAAAAAAAALL;
  v51[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = ctu::cf::dict_adapter::dict_adapter(v51, *a2);
  Bool = ctu::cf::map_adapter::getBool(v7, *MEMORY[0x29EDC8AE0]);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (Bool)
  {
    v49 = v9;
    v50 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v49);
    v45[0] = MEMORY[0x29EDCA5F8];
    v45[1] = 1174405120;
    v46 = ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
    v47 = &__block_descriptor_tmp_246;
    ctu::cf::dict_adapter::dict_adapter(v48, v51);
    v10 = *(&v49 + 1);
    v11 = v50;
    v12 = *(&v49 + 1);
    if (*(&v49 + 1) != v50)
    {
      v12 = *(&v49 + 1);
      while (*(*v12 + 8) != 1)
      {
        if (++v12 == v50)
        {
          goto LABEL_22;
        }
      }
    }

    if (v12 == v50)
    {
LABEL_22:
      v18 = operator new(0x10uLL);
      v18[8] = 1;
      *v18 = &unk_2A1E1E108;
      *(v18 + 3) = 0;
      v17 = (v18 + 12);
      if (v11 >= *(&v50 + 1))
      {
        v20 = v11 - v10;
        v21 = (v11 - v10) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v23 = *(&v50 + 1) - v10;
        if ((*(&v50 + 1) - v10) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          if (v24 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = v18;
          v26 = (v18 + 12);
          v27 = operator new(8 * v24);
          v18 = v25;
        }

        else
        {
          v26 = (v18 + 12);
          v27 = 0;
        }

        v29 = &v27[8 * v21];
        *v29 = v18;
        v19 = v29 + 8;
        memcpy(v27, v10, v20);
        *(&v49 + 1) = v27;
        *&v50 = v19;
        *(&v50 + 1) = &v27[8 * v24];
        if (v10)
        {
          operator delete(v10);
        }

        v17 = v26;
      }

      else
      {
        *v11 = v18;
        v19 = v11 + 8;
      }

      *&v50 = v19;
    }

    else
    {
      v15 = ***v12;
      if (!v16)
      {
        __cxa_bad_cast();
      }

      v17 = (v16 + 12);
    }

    v46(v45, v17);
    v40 = a1 + 136;
    v41 = QMIServiceMsg::create();
    v42 = 25000;
    v43 = 0;
    v44 = 0;
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 1174405120;
    v37[2] = ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_247;
    v37[3] = &__block_descriptor_tmp_251;
    v37[4] = a1;
    v30 = *a3;
    if (*a3)
    {
      v30 = _Block_copy(v30);
    }

    v31 = *(a3 + 8);
    v38 = v30;
    v39 = v31;
    if (v31)
    {
      dispatch_retain(v31);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v53 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SINRStart8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v54 = &unk_29EE601A8;
    v55 = v37;
    v44 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v44)
    {
      _Block_release(v44);
    }

    if (v39)
    {
      dispatch_release(v39);
    }

    if (v38)
    {
      _Block_release(v38);
    }

    MEMORY[0x29C268420](v48);
  }

  else
  {
    v49 = v9;
    v50 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v49);
    v40 = a1 + 136;
    v41 = QMIServiceMsg::create();
    v42 = 25000;
    v43 = 0;
    v44 = 0;
    v34[0] = MEMORY[0x29EDCA5F8];
    v34[1] = 1174405120;
    v34[2] = ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_252;
    v34[3] = &__block_descriptor_tmp_256;
    v34[4] = a1;
    v13 = *a3;
    if (*a3)
    {
      v13 = _Block_copy(v13);
    }

    v14 = *(a3 + 8);
    v35 = v13;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v53 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8SINRStop8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v54 = &unk_29EE601D0;
    v55 = v34;
    v44 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v44)
    {
      _Block_release(v44);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v35)
    {
      _Block_release(v35);
    }
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v49);
  result = MEMORY[0x29C268420](v51);
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F747B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setBandFilterInfo_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v66 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v39 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v39;
    _os_log_debug_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEBUG, "#D Setting Band filter info with: %@", &aBlock, 0xCu);
  }

  v61[0] = 0xAAAAAAAAAAAAAAAALL;
  v61[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = ctu::cf::dict_adapter::dict_adapter(v61, *a2);
  v10 = ctu::cf::map_adapter::copyCFArrayRef(v9, *MEMORY[0x29EDC86C8]);
  v11 = v10;
  if (v10)
  {
    v60 = v10;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v58 = v12;
    v59 = v12;
    qmi::MutableMessageBase::MutableMessageBase(&v58);
    v54[0] = MEMORY[0x29EDCA5F8];
    v54[1] = 1174405120;
    v55 = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
    v56 = &__block_descriptor_tmp_262;
    cf = v11;
    CFRetain(v11);
    v41 = a4;
    v13 = *(&v58 + 1);
    v14 = v59;
    v15 = *(&v58 + 1);
    if (*(&v58 + 1) != v59)
    {
      v15 = *(&v58 + 1);
      while (*(*v15 + 8) != 16)
      {
        if (++v15 == v59)
        {
          goto LABEL_12;
        }
      }
    }

    if (v15 == v59)
    {
LABEL_12:
      v19 = operator new(0x28uLL);
      v19[8] = 16;
      *v19 = &unk_2A1E1E298;
      *(v19 + 2) = 0;
      v18 = (v19 + 16);
      *(v19 + 3) = 0;
      *(v19 + 4) = 0;
      if (v14 >= *(&v59 + 1))
      {
        v21 = v14 - v13;
        v22 = (v14 - v13) >> 3;
        v23 = v22 + 1;
        if ((v22 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v24 = *(&v59 + 1) - v13;
        if ((*(&v59 + 1) - v13) >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        v40 = (v19 + 16);
        if (v25)
        {
          if (v25 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v26 = v19;
          v27 = operator new(8 * v25);
          v19 = v26;
        }

        else
        {
          v27 = 0;
        }

        v28 = &v27[8 * v22];
        *v28 = v19;
        v20 = v28 + 8;
        memcpy(v27, v13, v21);
        *(&v58 + 1) = v27;
        *&v59 = v20;
        *(&v59 + 1) = &v27[8 * v25];
        if (v13)
        {
          operator delete(v13);
        }

        v18 = v40;
      }

      else
      {
        *v14 = v19;
        v20 = v14 + 8;
      }

      *&v59 = v20;
    }

    else
    {
      v16 = ***v15;
      if (!v17)
      {
        __cxa_bad_cast();
      }

      v18 = (v17 + 16);
    }

    v55(v54, v18);
    v50[0] = MEMORY[0x29EDCA5F8];
    v50[1] = 0x40000000;
    v29 = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_263;
    v51 = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_263;
    v52 = &__block_descriptor_tmp_264;
    v53 = a3;
    v30 = *(&v58 + 1);
    if (*(&v58 + 1) == v59)
    {
      v31 = v41;
    }

    else
    {
      v31 = v41;
      while (*(*v30 + 8) != 17)
      {
        if (++v30 == v59)
        {
          goto LABEL_37;
        }
      }
    }

    if (v30 == v59)
    {
LABEL_37:
      v34 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(&v58, 17);
      v29 = v51;
    }

    else
    {
      v32 = ***v30;
      if (!v33)
      {
        __cxa_bad_cast();
      }

      v34 = v33 + 12;
    }

    v29(v50, v34);
    v45 = a1 + 136;
    v46 = QMIServiceMsg::create();
    v47 = 25000;
    v48 = 0;
    v49 = 0;
    v42[0] = MEMORY[0x29EDCA5F8];
    v42[1] = 1174405120;
    v42[2] = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2;
    v42[3] = &__block_descriptor_tmp_268;
    v42[4] = a1;
    v35 = *v31;
    if (*v31)
    {
      v35 = _Block_copy(v35);
    }

    v36 = *(v31 + 8);
    v43 = v35;
    object = v36;
    if (v36)
    {
      dispatch_retain(v36);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v63 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm17SetBandFilterInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v64 = &unk_29EE60220;
    v65 = v42;
    v49 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v49)
    {
      _Block_release(v49);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v43)
    {
      _Block_release(v43);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v58);
    CFRelease(v11);
  }

  result = MEMORY[0x29C268420](v61);
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F74DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setScanFreqBandFilter_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v65 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v38 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v38;
    _os_log_debug_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEBUG, "#D Setting Scan Frequency Band filter info with: %@", &aBlock, 0xCu);
  }

  v60[0] = 0xAAAAAAAAAAAAAAAALL;
  v60[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = ctu::cf::dict_adapter::dict_adapter(v60, *a2);
  v10 = ctu::cf::map_adapter::copyCFArrayRef(v9, *MEMORY[0x29EDC87F8]);
  v59 = v10;
  if (v10)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v57 = v11;
    v58 = v11;
    qmi::MutableMessageBase::MutableMessageBase(&v57);
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 1174405120;
    v54 = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
    v55 = &__block_descriptor_tmp_271;
    cf = v10;
    CFRetain(v10);
    v40 = a4;
    v12 = *(&v57 + 1);
    v13 = v58;
    v14 = *(&v57 + 1);
    if (*(&v57 + 1) != v58)
    {
      v14 = *(&v57 + 1);
      while (*(*v14 + 8) != 16)
      {
        if (++v14 == v58)
        {
          goto LABEL_12;
        }
      }
    }

    if (v14 == v58)
    {
LABEL_12:
      v18 = operator new(0x28uLL);
      v18[8] = 16;
      *v18 = &unk_2A1E1E2E8;
      *(v18 + 2) = 0;
      v17 = v18 + 16;
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      if (v13 >= *(&v58 + 1))
      {
        v20 = v13 - v12;
        v21 = (v13 - v12) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v23 = *(&v58 + 1) - v12;
        if ((*(&v58 + 1) - v12) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        v39 = v18 + 16;
        if (v24)
        {
          if (v24 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = v18;
          v26 = operator new(8 * v24);
          v18 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = &v26[8 * v21];
        *v27 = v18;
        v19 = v27 + 8;
        memcpy(v26, v12, v20);
        *(&v57 + 1) = v26;
        *&v58 = v19;
        *(&v58 + 1) = &v26[8 * v24];
        if (v12)
        {
          operator delete(v12);
        }

        v17 = v39;
      }

      else
      {
        *v13 = v18;
        v19 = v13 + 8;
      }

      *&v58 = v19;
    }

    else
    {
      v15 = ***v14;
      if (!v16)
      {
        __cxa_bad_cast();
      }

      v17 = v16 + 16;
    }

    v54(v53, v17);
    v49[0] = MEMORY[0x29EDCA5F8];
    v49[1] = 0x40000000;
    v28 = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_272;
    v50 = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_272;
    v51 = &__block_descriptor_tmp_273_0;
    v52 = a3;
    v29 = *(&v57 + 1);
    if (*(&v57 + 1) == v58)
    {
      v30 = v40;
    }

    else
    {
      v30 = v40;
      while (*(*v29 + 8) != 17)
      {
        if (++v29 == v58)
        {
          goto LABEL_37;
        }
      }
    }

    if (v29 == v58)
    {
LABEL_37:
      v33 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(&v57, 17);
      v28 = v50;
    }

    else
    {
      v31 = ***v29;
      if (!v32)
      {
        __cxa_bad_cast();
      }

      v33 = v32 + 12;
    }

    v28(v49, v33);
    v44 = a1 + 136;
    v45 = QMIServiceMsg::create();
    v46 = 25000;
    v47 = 0;
    v48 = 0;
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 1174405120;
    v41[2] = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2;
    v41[3] = &__block_descriptor_tmp_277;
    v41[4] = a1;
    v34 = *v30;
    if (*v30)
    {
      v34 = _Block_copy(v34);
    }

    v35 = *(v30 + 8);
    v42 = v34;
    object = v35;
    if (v35)
    {
      dispatch_retain(v35);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v62 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21SetScanFreqBandFilter8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v63 = &unk_29EE60248;
    v64 = v41;
    v48 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v48)
    {
      _Block_release(v48);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v42)
    {
      _Block_release(v42);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v57);
    CFRelease(v10);
  }

  result = MEMORY[0x29C268420](v60);
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F753A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void coex::QMICommandDriver::setWiFiStatus_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x28uLL);
  v7 = xmmword_296FC0F30;
  strcpy(__p, "Setting WiFi status is not supported");
  CreateError();
  operator delete(__p);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v4 = 0;
  coex::CommandDriver::Callback::operator()(a3, &v5, &v4);
  CFRelease(0xAAAAAAAAAAAAAAAALL);
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_296F7554C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setLAAConfig_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3, uint64_t a4)
{
  v93 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v77 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v77;
    _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Setting LAA config with: %@", &aBlock, 0xCu);
  }

  v88[0] = 0xAAAAAAAAAAAAAAAALL;
  v88[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v88, *a2);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v86 = v8;
  v87 = v8;
  qmi::MutableMessageBase::MutableMessageBase(&v86);
  v9 = *(&v86 + 1);
  v10 = v87;
  v11 = *(&v86 + 1);
  if (*(&v86 + 1) != v87)
  {
    v11 = *(&v86 + 1);
    while (*(*v11 + 8) != 1)
    {
      if (++v11 == v87)
      {
        goto LABEL_11;
      }
    }
  }

  if (v11 == v87)
  {
LABEL_11:
    v15 = operator new(0x10uLL);
    v16 = v15;
    v15[4] = 1;
    *v15 = &unk_2A1E1E158;
    if (v10 >= *(&v87 + 1))
    {
      v18 = v10 - v9;
      v19 = (v10 - v9) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v87 + 1) - v9;
      if ((*(&v87 + 1) - v9) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = operator new(8 * v22);
      }

      else
      {
        v23 = 0;
      }

      v24 = &v23[8 * v19];
      *v24 = v16;
      v17 = v24 + 8;
      memcpy(v23, v9, v18);
      *(&v86 + 1) = v23;
      *&v87 = v17;
      *(&v87 + 1) = &v23[8 * v22];
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v10 = v15;
      v17 = v10 + 8;
    }

    v14 = v16 + 9;
    *&v87 = v17;
  }

  else
  {
    v12 = ***v11;
    if (!v13)
    {
      __cxa_bad_cast();
    }

    v14 = v13 + 9;
  }

  *v14 = ctu::cf::map_adapter::getInt(v88, *MEMORY[0x29EDC8870]);
  v25 = *(&v86 + 1);
  v26 = v87;
  v27 = *(&v86 + 1);
  if (*(&v86 + 1) != v87)
  {
    v27 = *(&v86 + 1);
    while (*(*v27 + 8) != 2)
    {
      if (++v27 == v87)
      {
        goto LABEL_34;
      }
    }
  }

  if (v27 == v87)
  {
LABEL_34:
    v31 = operator new(0x10uLL);
    v32 = v31;
    v31[4] = 2;
    *v31 = &unk_2A1E1E1A8;
    if (v26 >= *(&v87 + 1))
    {
      v34 = v26 - v25;
      v35 = (v26 - v25) >> 3;
      v36 = v35 + 1;
      if ((v35 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v37 = *(&v87 + 1) - v25;
      if ((*(&v87 + 1) - v25) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        if (v38 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v39 = operator new(8 * v38);
      }

      else
      {
        v39 = 0;
      }

      v40 = &v39[8 * v35];
      *v40 = v32;
      v33 = v40 + 8;
      memcpy(v39, v25, v34);
      *(&v86 + 1) = v39;
      *&v87 = v33;
      *(&v87 + 1) = &v39[8 * v38];
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v26 = v31;
      v33 = v26 + 8;
    }

    v30 = v32 + 9;
    *&v87 = v33;
  }

  else
  {
    v28 = ***v27;
    if (!v29)
    {
      __cxa_bad_cast();
    }

    v30 = v29 + 9;
  }

  *v30 = ctu::cf::map_adapter::getInt(v88, *MEMORY[0x29EDC88C8]);
  v41 = *(&v86 + 1);
  v42 = v87;
  v43 = *(&v86 + 1);
  if (*(&v86 + 1) != v87)
  {
    v43 = *(&v86 + 1);
    while (*(*v43 + 8) != 3)
    {
      if (++v43 == v87)
      {
        goto LABEL_57;
      }
    }
  }

  if (v43 == v87)
  {
LABEL_57:
    v47 = operator new(0x10uLL);
    v47[8] = 3;
    *v47 = &unk_2A1E1E1F8;
    *(v47 + 3) = 0;
    v46 = v47 + 12;
    if (v42 >= *(&v87 + 1))
    {
      v49 = v42 - v41;
      v50 = (v42 - v41) >> 3;
      v51 = v50 + 1;
      if ((v50 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v52 = *(&v87 + 1) - v41;
      if ((*(&v87 + 1) - v41) >> 2 > v51)
      {
        v51 = v52 >> 2;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (v53 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v54 = v47;
        v55 = operator new(8 * v53);
        v47 = v54;
      }

      else
      {
        v55 = 0;
      }

      v56 = &v55[8 * v50];
      *v56 = v47;
      v48 = v56 + 8;
      memcpy(v55, v41, v49);
      *(&v86 + 1) = v55;
      *&v87 = v48;
      *(&v87 + 1) = &v55[8 * v53];
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      *v42 = v47;
      v48 = v42 + 8;
    }

    *&v87 = v48;
  }

  else
  {
    v44 = ***v43;
    if (!v45)
    {
      __cxa_bad_cast();
    }

    v46 = v45 + 12;
  }

  *v46 = ctu::cf::map_adapter::getInt(v88, *MEMORY[0x29EDC8838]);
  v57 = *(&v86 + 1);
  v58 = v87;
  v59 = *(&v86 + 1);
  if (*(&v86 + 1) != v87)
  {
    v59 = *(&v86 + 1);
    while (*(*v59 + 8) != 4)
    {
      if (++v59 == v87)
      {
        goto LABEL_80;
      }
    }
  }

  if (v59 == v87)
  {
LABEL_80:
    v63 = operator new(0x10uLL);
    v63[8] = 4;
    *v63 = &unk_2A1E1E248;
    *(v63 + 3) = 0;
    v62 = v63 + 12;
    if (v58 >= *(&v87 + 1))
    {
      v65 = v58 - v57;
      v66 = (v58 - v57) >> 3;
      v67 = v66 + 1;
      if ((v66 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v68 = *(&v87 + 1) - v57;
      if ((*(&v87 + 1) - v57) >> 2 > v67)
      {
        v67 = v68 >> 2;
      }

      if (v68 >= 0x7FFFFFFFFFFFFFF8)
      {
        v69 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v69 = v67;
      }

      if (v69)
      {
        if (v69 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v70 = v63;
        v71 = operator new(8 * v69);
        v63 = v70;
      }

      else
      {
        v71 = 0;
      }

      v72 = &v71[8 * v66];
      *v72 = v63;
      v64 = v72 + 8;
      memcpy(v71, v57, v65);
      *(&v86 + 1) = v71;
      *&v87 = v64;
      *(&v87 + 1) = &v71[8 * v69];
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v58 = v63;
      v64 = v58 + 8;
    }

    *&v87 = v64;
  }

  else
  {
    v60 = ***v59;
    if (!v61)
    {
      __cxa_bad_cast();
    }

    v62 = v61 + 12;
  }

  *v62 = ctu::cf::map_adapter::getInt(v88, *MEMORY[0x29EDC8948]);
  v81 = a1 + 136;
  v82 = QMIServiceMsg::create();
  v83 = 25000;
  v84 = 0;
  v85 = 0;
  v78[0] = MEMORY[0x29EDCA5F8];
  v78[1] = 1174405120;
  v78[2] = ___ZN4coex16QMICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v78[3] = &__block_descriptor_tmp_261;
  v78[4] = a1;
  v73 = *a4;
  if (*a4)
  {
    v73 = _Block_copy(v73);
  }

  v74 = *(a4 + 8);
  v79 = v73;
  object = v74;
  if (v74)
  {
    dispatch_retain(v74);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v90 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm15SetLaaParamsReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v91 = &unk_29EE601F8;
  v92 = v78;
  v85 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v85)
  {
    _Block_release(v85);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v79)
  {
    _Block_release(v79);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v86);
  result = MEMORY[0x29C268420](v88);
  v76 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F75DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setTimeShareConfig_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v154 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v134 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v134;
    _os_log_debug_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEBUG, "#D Setting Time share config with: %@", &aBlock, 0xCu);
  }

  v149[0] = 0xAAAAAAAAAAAAAAAALL;
  v149[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v149, *a2);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v147 = v6;
  v148 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v147);
  v7 = *(&v147 + 1);
  if (*(&v147 + 1) != v148)
  {
    while (*(*v7 + 8) != 1)
    {
      if (++v7 == v148)
      {
        goto LABEL_10;
      }
    }
  }

  if (v7 == v148)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v147, 1);
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 9;
  }

  *v10 = ctu::cf::map_adapter::getBool(v149, *MEMORY[0x29EDC8928]);
  v11 = *(&v147 + 1);
  if (*(&v147 + 1) != v148)
  {
    while (*(*v11 + 8) != 16)
    {
      if (++v11 == v148)
      {
        goto LABEL_18;
      }
    }
  }

  if (v11 == v148)
  {
LABEL_18:
    v14 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(&v147, 16);
  }

  else
  {
    v12 = ***v11;
    if (!v13)
    {
      __cxa_bad_cast();
    }

    v14 = v13 + 12;
  }

  *v14 = ctu::cf::map_adapter::getInt(v149, *MEMORY[0x29EDC8960]);
  v15 = *(&v147 + 1);
  v16 = v148;
  v17 = *(&v147 + 1);
  v135 = a1;
  if (*(&v147 + 1) != v148)
  {
    v17 = *(&v147 + 1);
    while (*(*v17 + 8) != 18)
    {
      if (++v17 == v148)
      {
        goto LABEL_27;
      }
    }
  }

  if (v17 == v148)
  {
LABEL_27:
    v21 = operator new(0x18uLL);
    v21[8] = 18;
    *v21 = &unk_2A1E1E3B8;
    *(v21 + 2) = 0;
    v20 = v21 + 16;
    if (v16 >= *(&v148 + 1))
    {
      v23 = v16 - v15;
      v24 = (v16 - v15) >> 3;
      v25 = v24 + 1;
      if ((v24 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v26 = *(&v148 + 1) - v15;
      if ((*(&v148 + 1) - v15) >> 2 > v25)
      {
        v25 = v26 >> 2;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v28 = v21;
        v29 = operator new(8 * v27);
        v21 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = &v29[8 * v24];
      *v30 = v21;
      v22 = v30 + 8;
      memcpy(v29, v15, v23);
      *(&v147 + 1) = v29;
      *&v148 = v22;
      *(&v148 + 1) = &v29[8 * v27];
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v16 = v21;
      v22 = v16 + 8;
    }

    *&v148 = v22;
  }

  else
  {
    v18 = ***v17;
    if (!v19)
    {
      __cxa_bad_cast();
    }

    v20 = v19 + 16;
  }

  *v20 = ctu::cf::map_adapter::getInt(v149, *MEMORY[0x29EDC8958]);
  v31 = *(&v147 + 1);
  v32 = v148;
  v33 = *(&v147 + 1);
  if (*(&v147 + 1) != v148)
  {
    v33 = *(&v147 + 1);
    while (*(*v33 + 8) != 19)
    {
      if (++v33 == v148)
      {
        goto LABEL_50;
      }
    }
  }

  if (v33 == v148)
  {
LABEL_50:
    v37 = operator new(0x10uLL);
    v37[8] = 19;
    *v37 = &unk_2A1E1E408;
    *(v37 + 5) = 0;
    v36 = v37 + 10;
    if (v32 >= *(&v148 + 1))
    {
      v39 = v32 - v31;
      v40 = (v32 - v31) >> 3;
      v41 = v40 + 1;
      if ((v40 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v42 = *(&v148 + 1) - v31;
      if ((*(&v148 + 1) - v31) >> 2 > v41)
      {
        v41 = v42 >> 2;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        if (v43 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v44 = v37;
        v45 = operator new(8 * v43);
        v37 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = &v45[8 * v40];
      *v46 = v37;
      v38 = v46 + 8;
      memcpy(v45, v31, v39);
      *(&v147 + 1) = v45;
      *&v148 = v38;
      *(&v148 + 1) = &v45[8 * v43];
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      *v32 = v37;
      v38 = v32 + 8;
    }

    *&v148 = v38;
  }

  else
  {
    v34 = ***v33;
    if (!v35)
    {
      __cxa_bad_cast();
    }

    v36 = v35 + 10;
  }

  *v36 = ctu::cf::map_adapter::getInt(v149, *MEMORY[0x29EDC8A40]);
  v47 = *(&v147 + 1);
  v48 = v148;
  v49 = *(&v147 + 1);
  if (*(&v147 + 1) != v148)
  {
    v49 = *(&v147 + 1);
    while (*(*v49 + 8) != 20)
    {
      if (++v49 == v148)
      {
        goto LABEL_73;
      }
    }
  }

  if (v49 == v148)
  {
LABEL_73:
    v53 = operator new(0x10uLL);
    v53[8] = 20;
    *v53 = &unk_2A1E1E458;
    *(v53 + 5) = 0;
    v52 = v53 + 10;
    if (v48 >= *(&v148 + 1))
    {
      v55 = v48 - v47;
      v56 = (v48 - v47) >> 3;
      v57 = v56 + 1;
      if ((v56 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v58 = *(&v148 + 1) - v47;
      if ((*(&v148 + 1) - v47) >> 2 > v57)
      {
        v57 = v58 >> 2;
      }

      if (v58 >= 0x7FFFFFFFFFFFFFF8)
      {
        v59 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v59 = v57;
      }

      if (v59)
      {
        if (v59 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v60 = v53;
        v61 = operator new(8 * v59);
        v53 = v60;
      }

      else
      {
        v61 = 0;
      }

      v62 = &v61[8 * v56];
      *v62 = v53;
      v54 = v62 + 8;
      memcpy(v61, v47, v55);
      *(&v147 + 1) = v61;
      *&v148 = v54;
      *(&v148 + 1) = &v61[8 * v59];
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v48 = v53;
      v54 = v48 + 8;
    }

    *&v148 = v54;
  }

  else
  {
    v50 = ***v49;
    if (!v51)
    {
      __cxa_bad_cast();
    }

    v52 = v51 + 10;
  }

  *v52 = ctu::cf::map_adapter::getInt(v149, *MEMORY[0x29EDC8A60]);
  v64 = *(&v147 + 1);
  v63 = v148;
  v65 = *(&v147 + 1);
  if (*(&v147 + 1) != v148)
  {
    v65 = *(&v147 + 1);
    while (*(*v65 + 8) != 21)
    {
      if (++v65 == v148)
      {
        goto LABEL_96;
      }
    }
  }

  if (v65 == v148)
  {
LABEL_96:
    v69 = operator new(0x10uLL);
    v70 = v69;
    v69[4] = 21;
    *v69 = &unk_2A1E1E4A8;
    if (v63 >= *(&v148 + 1))
    {
      v72 = v63 - v64;
      v73 = (v63 - v64) >> 3;
      v74 = v73 + 1;
      if ((v73 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v75 = *(&v148 + 1) - v64;
      if ((*(&v148 + 1) - v64) >> 2 > v74)
      {
        v74 = v75 >> 2;
      }

      if (v75 >= 0x7FFFFFFFFFFFFFF8)
      {
        v76 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v76 = v74;
      }

      if (v76)
      {
        if (v76 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v77 = operator new(8 * v76);
      }

      else
      {
        v77 = 0;
      }

      v78 = &v77[8 * v73];
      *v78 = v70;
      v71 = v78 + 8;
      memcpy(v77, v64, v72);
      *(&v147 + 1) = v77;
      *&v148 = v71;
      *(&v148 + 1) = &v77[8 * v76];
      if (v64)
      {
        operator delete(v64);
      }
    }

    else
    {
      *v63 = v69;
      v71 = v63 + 8;
    }

    v68 = v70 + 9;
    *&v148 = v71;
  }

  else
  {
    v66 = ***v65;
    if (!v67)
    {
      __cxa_bad_cast();
    }

    v68 = v67 + 9;
  }

  *v68 = ctu::cf::map_adapter::getInt(v149, *MEMORY[0x29EDC8AB0]);
  theArray = 0xAAAAAAAAAAAAAAAALL;
  v79 = ctu::cf::map_adapter::copyCFArrayRef(v149, *MEMORY[0x29EDC8AC8]);
  theArray = v79;
  v80 = v135;
  if (!v79)
  {
    v85 = 0;
    goto LABEL_181;
  }

  Count = CFArrayGetCount(v79);
  if (Count >= 1)
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v137 = *MEMORY[0x29EDC8778];
    v86 = *MEMORY[0x29EDC8658];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v82);
      v89 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        goto LABEL_116;
      }

      v90 = CFGetTypeID(ValueAtIndex);
      if (v90 != CFDictionaryGetTypeID())
      {
        goto LABEL_116;
      }

      cf = v89;
      CFRetain(v89);
      *&aBlock = 0xAAAAAAAAAAAAAAAALL;
      *(&aBlock + 1) = 0xAAAAAAAAAAAAAAAALL;
      v91 = ctu::cf::dict_adapter::dict_adapter(&aBlock, v89);
      Int = ctu::cf::map_adapter::getInt(v91, v137);
      v93 = ctu::cf::map_adapter::getInt(&aBlock, v86);
      v94 = v93;
      if (v83 >= v84)
      {
        break;
      }

      *v83++ = Int | (v93 << 32);
      MEMORY[0x29C268420](&aBlock);
      v87 = cf;
      if (cf)
      {
        goto LABEL_115;
      }

LABEL_116:
      if (Count == ++v82)
      {
        goto LABEL_136;
      }
    }

    v95 = v83 - v85;
    v96 = v83 - v85;
    v97 = v96 + 1;
    if ((v96 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if ((v84 - v85) >> 2 > v97)
    {
      v97 = (v84 - v85) >> 2;
    }

    if ((v84 - v85) >= 0x7FFFFFFFFFFFFFF8)
    {
      v98 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v98 = v97;
    }

    if (v98)
    {
      if (v98 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v99 = operator new(8 * v98);
    }

    else
    {
      v99 = 0;
    }

    v100 = &v99[8 * v96];
    v84 = &v99[8 * v98];
    *v100 = Int | (v94 << 32);
    v83 = v100 + 1;
    memcpy(v99, v85, v95);
    if (v85)
    {
      operator delete(v85);
    }

    v85 = v99;
    MEMORY[0x29C268420](&aBlock);
    v87 = cf;
    if (!cf)
    {
      goto LABEL_116;
    }

LABEL_115:
    CFRelease(v87);
    goto LABEL_116;
  }

  v85 = 0;
  v83 = 0;
LABEL_136:
  v101 = *(&v147 + 1);
  v102 = v148;
  v103 = *(&v147 + 1);
  if (*(&v147 + 1) != v148)
  {
    v103 = *(&v147 + 1);
    while (*(*v103 + 8) != 17)
    {
      if (++v103 == v148)
      {
        goto LABEL_150;
      }
    }
  }

  if (v103 == v148)
  {
LABEL_150:
    v114 = operator new(0x28uLL);
    v114[8] = 17;
    *v114 = &unk_2A1E1E4F8;
    *(v114 + 2) = 0;
    v106 = v114 + 16;
    *(v114 + 3) = 0;
    *(v114 + 4) = 0;
    if (v102 >= *(&v148 + 1))
    {
      v116 = v102 - v101;
      v117 = (v102 - v101) >> 3;
      v118 = v117 + 1;
      if ((v117 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v119 = *(&v148 + 1) - v101;
      if ((*(&v148 + 1) - v101) >> 2 > v118)
      {
        v118 = v119 >> 2;
      }

      if (v119 >= 0x7FFFFFFFFFFFFFF8)
      {
        v120 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v120 = v118;
      }

      if (v120)
      {
        if (v120 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v121 = v114;
        v122 = operator new(8 * v120);
        v114 = v121;
      }

      else
      {
        v122 = 0;
      }

      v124 = &v122[8 * v117];
      *v124 = v114;
      v115 = v124 + 8;
      memcpy(v122, v101, v116);
      *(&v147 + 1) = v122;
      *&v148 = v115;
      *(&v148 + 1) = &v122[8 * v120];
      if (v101)
      {
        operator delete(v101);
      }
    }

    else
    {
      *v102 = v114;
      v115 = v102 + 8;
    }

    *&v148 = v115;
    v107 = v83 - v85;
    v108 = *(v106 + 2);
    v109 = *v106;
    if (v108 - *v106 >= (v83 - v85))
    {
LABEL_144:
      v110 = *(v106 + 1);
      v111 = v110 - v109;
      if (v110 - v109 >= v107)
      {
        if (v83 != v85)
        {
          v123 = v109;
          memmove(v109, v85, v107);
          v109 = v123;
        }

        v113 = &v109[v107];
      }

      else
      {
        v112 = (v85 + v111);
        if (v110 != v109)
        {
          memmove(v109, v85, v111);
          v110 = *(v106 + 1);
        }

        if (v83 != v112)
        {
          memmove(v110, v112, v83 - v112);
        }

        v113 = &v110[v83 - v112];
      }

      goto LABEL_180;
    }
  }

  else
  {
    v104 = ***v103;
    if (!v105)
    {
      __cxa_bad_cast();
    }

    v106 = (v105 + 2);
    v107 = v83 - v85;
    v108 = v105[4];
    v109 = v105[2];
    if (v108 - v109 >= (v83 - v85))
    {
      goto LABEL_144;
    }
  }

  v125 = v107 >> 3;
  if (v109)
  {
    *(v106 + 1) = v109;
    operator delete(v109);
    v108 = 0;
    *v106 = 0;
    *(v106 + 1) = 0;
    *(v106 + 2) = 0;
  }

  if (v125 >> 61)
  {
    goto LABEL_198;
  }

  v126 = v108 >> 2;
  if (v108 >> 2 <= v125)
  {
    v126 = v107 >> 3;
  }

  v127 = v108 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v126;
  if (v127 >> 61)
  {
LABEL_198:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v128 = operator new(8 * v127);
  v129 = v128;
  *v106 = v128;
  *(v106 + 1) = v128;
  *(v106 + 2) = &v128[8 * v127];
  if (v83 != v85)
  {
    memcpy(v128, v85, v107);
  }

  v113 = &v129[v107];
LABEL_180:
  *(v106 + 1) = v113;
  v80 = v135;
LABEL_181:
  cf = (v80 + 136);
  v142 = QMIServiceMsg::create();
  v143 = 25000;
  v144 = 0;
  v145 = 0;
  v138[0] = MEMORY[0x29EDCA5F8];
  v138[1] = 1174405120;
  v138[2] = ___ZN4coex16QMICommandDriver23setTimeShareConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v138[3] = &__block_descriptor_tmp_286;
  v138[4] = v80;
  v130 = *a3;
  if (*a3)
  {
    v130 = _Block_copy(v130);
  }

  v131 = *(a3 + 8);
  v139 = v130;
  object = v131;
  if (v131)
  {
    dispatch_retain(v131);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v151 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm18ConfigTimeShareReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v152 = &unk_29EE60298;
  v153 = v138;
  v145 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v145)
  {
    _Block_release(v145);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v139)
  {
    _Block_release(v139);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v85)
  {
    operator delete(v85);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v147);
  result = MEMORY[0x29C268420](v149);
  v133 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F76CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setWCI2TxAntMap_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v104 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v82 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v82;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Setting Tx antenna map with: %@", &aBlock, 0xCu);
  }

  v99[0] = 0xAAAAAAAAAAAAAAAALL;
  v99[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v99, *a2);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v97 = v5;
  v98 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v97);
  v6 = *(&v97 + 1);
  if (*(&v97 + 1) != v98)
  {
    while (*(*v6 + 8) != 1)
    {
      if (++v6 == v98)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v98)
  {
LABEL_10:
    v9 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v97, 1);
  }

  else
  {
    v7 = ***v6;
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 9;
  }

  v83 = a2;
  *v9 = ctu::cf::map_adapter::getBool(v99, *MEMORY[0x29EDC8850]);
  v11 = *(&v97 + 1);
  v10 = v98;
  v12 = *(&v97 + 1);
  if (*(&v97 + 1) != v98)
  {
    v12 = *(&v97 + 1);
    while (*(*v12 + 8) != 17)
    {
      if (++v12 == v98)
      {
        goto LABEL_19;
      }
    }
  }

  if (v12 == v98)
  {
LABEL_19:
    v16 = operator new(0x10uLL);
    v17 = v16;
    v16[4] = 17;
    *v16 = &unk_2A1E1E548;
    if (v10 >= *(&v98 + 1))
    {
      v19 = v10 - v11;
      v20 = (v10 - v11) >> 3;
      v21 = v20 + 1;
      if ((v20 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v22 = *(&v98 + 1) - v11;
      if ((*(&v98 + 1) - v11) >> 2 > v21)
      {
        v21 = v22 >> 2;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (v23 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v24 = operator new(8 * v23);
      }

      else
      {
        v24 = 0;
      }

      v25 = &v24[8 * v20];
      *v25 = v17;
      v18 = v25 + 8;
      memcpy(v24, v11, v19);
      *(&v97 + 1) = v24;
      *&v98 = v18;
      *(&v98 + 1) = &v24[8 * v23];
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v10 = v16;
      v18 = v10 + 8;
    }

    v15 = v17 + 9;
    *&v98 = v18;
  }

  else
  {
    v13 = ***v12;
    if (!v14)
    {
      __cxa_bad_cast();
    }

    v15 = v14 + 9;
  }

  *v15 = ctu::cf::map_adapter::getInt(v99, *MEMORY[0x29EDC8938]);
  v26 = ctu::cf::map_adapter::copyCFArrayRef(v99, *MEMORY[0x29EDC8A20]);
  v96 = v26;
  theArray = v26;
  if (v26)
  {
    v28 = *(&v97 + 1);
    v27 = v98;
    v29 = *(&v97 + 1);
    if (*(&v97 + 1) != v98)
    {
      v29 = *(&v97 + 1);
      while (*(*v29 + 8) != 16)
      {
        if (++v29 == v98)
        {
          goto LABEL_43;
        }
      }
    }

    if (v29 == v98)
    {
LABEL_43:
      v34 = operator new(0x28uLL);
      v34[8] = 16;
      *v34 = &unk_2A1E1E598;
      *(v34 + 2) = 0;
      v32 = v34 + 16;
      *(v34 + 3) = 0;
      *(v34 + 4) = 0;
      if (v27 >= *(&v98 + 1))
      {
        v36 = v27 - v28;
        v37 = (v27 - v28) >> 3;
        v38 = v37 + 1;
        if ((v37 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v39 = *(&v98 + 1) - v28;
        if ((*(&v98 + 1) - v28) >> 2 > v38)
        {
          v38 = v39 >> 2;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          if (v40 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v41 = v34;
          v42 = operator new(8 * v40);
          v34 = v41;
        }

        else
        {
          v42 = 0;
        }

        v43 = &v42[8 * v37];
        *v43 = v34;
        v35 = v43 + 8;
        memcpy(v42, v28, v36);
        *(&v97 + 1) = v42;
        *&v98 = v35;
        *(&v98 + 1) = &v42[8 * v40];
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v27 = v34;
        v35 = v27 + 8;
      }

      v33 = theArray;
      *&v98 = v35;
    }

    else
    {
      v30 = ***v29;
      if (!v31)
      {
        __cxa_bad_cast();
      }

      v32 = v31 + 16;
      v33 = v26;
    }

    Count = CFArrayGetCount(v33);
    v26 = theArray;
    if (Count >= 1)
    {
      v45 = 0;
      v86 = *MEMORY[0x29EDC8A18];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v26, v45);
        v48 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v49 = CFGetTypeID(ValueAtIndex);
          if (v49 == CFDictionaryGetTypeID())
          {
            v91 = v48;
            CFRetain(v48);
            *&aBlock = 0xAAAAAAAAAAAAAAAALL;
            *(&aBlock + 1) = 0xAAAAAAAAAAAAAAAALL;
            v50 = ctu::cf::dict_adapter::dict_adapter(&aBlock, v48);
            Int = ctu::cf::map_adapter::getInt(v50, v86);
            v52 = Int;
            v54 = *(v32 + 1);
            v53 = *(v32 + 2);
            if (v54 < v53)
            {
              *v54 = Int;
              v46 = (v54 + 1);
            }

            else
            {
              v55 = *v32;
              v56 = &v54[-*v32];
              v57 = v56 + 1;
              if ((v56 + 1) < 0)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v58 = v53 - v55;
              if (2 * v58 > v57)
              {
                v57 = 2 * v58;
              }

              if (v58 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v59 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v57;
              }

              if (v59)
              {
                v60 = operator new(v59);
              }

              else
              {
                v60 = 0;
              }

              v60[v56] = v52;
              v46 = &v60[v56 + 1];
              memcpy(v60, v55, v56);
              *v32 = v60;
              *(v32 + 1) = v46;
              *(v32 + 2) = &v60[v59];
              if (v55)
              {
                operator delete(v55);
              }
            }

            *(v32 + 1) = v46;
            MEMORY[0x29C268420](&aBlock);
            CFRelease(v48);
            v26 = theArray;
          }
        }

        ++v45;
      }

      while (Count != v45);
    }
  }

  v61 = *MEMORY[0x29EDC8A50];
  if (CFDictionaryContainsKey(*v83, *MEMORY[0x29EDC8A50]))
  {
    v63 = *(&v97 + 1);
    v62 = v98;
    v64 = *(&v97 + 1);
    if (*(&v97 + 1) != v98)
    {
      v64 = *(&v97 + 1);
      while (*(*v64 + 8) != 18)
      {
        if (++v64 == v98)
        {
          goto LABEL_86;
        }
      }
    }

    if (v64 == v98)
    {
LABEL_86:
      v68 = operator new(0x10uLL);
      v69 = v68;
      v68[4] = 18;
      *v68 = &unk_2A1E1E5E8;
      if (v62 >= *(&v98 + 1))
      {
        v71 = v62 - v63;
        v72 = (v62 - v63) >> 3;
        v73 = v72 + 1;
        if ((v72 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v74 = *(&v98 + 1) - v63;
        if ((*(&v98 + 1) - v63) >> 2 > v73)
        {
          v73 = v74 >> 2;
        }

        if (v74 >= 0x7FFFFFFFFFFFFFF8)
        {
          v75 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v75 = v73;
        }

        if (v75)
        {
          if (v75 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v76 = operator new(8 * v75);
        }

        else
        {
          v76 = 0;
        }

        v77 = &v76[8 * v72];
        *v77 = v69;
        v70 = v77 + 8;
        memcpy(v76, v63, v71);
        *(&v97 + 1) = v76;
        *&v98 = v70;
        *(&v98 + 1) = &v76[8 * v75];
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        *v62 = v68;
        v70 = v62 + 8;
      }

      v67 = v69 + 9;
      *&v98 = v70;
    }

    else
    {
      v65 = ***v64;
      if (!v66)
      {
        __cxa_bad_cast();
      }

      v67 = v66 + 9;
    }

    *v67 = ctu::cf::map_adapter::getBool(v99, v61);
    v26 = theArray;
  }

  v91 = (a1 + 136);
  v92 = QMIServiceMsg::create();
  v93 = 25000;
  v94 = 0;
  v95 = 0;
  v88[0] = MEMORY[0x29EDCA5F8];
  v88[1] = 1174405120;
  v88[2] = ___ZN4coex16QMICommandDriver20setWCI2TxAntMap_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v88[3] = &__block_descriptor_tmp_290;
  v88[4] = a1;
  v78 = *a3;
  if (*a3)
  {
    v78 = _Block_copy(v78);
  }

  v79 = *(a3 + 8);
  v89 = v78;
  object = v79;
  if (v79)
  {
    dispatch_retain(v79);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v101 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm15SetWCI2TxAntMap8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v102 = &unk_29EE602C0;
  v103 = v88;
  v95 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v95)
  {
    _Block_release(v95);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v89)
  {
    _Block_release(v89);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v97);
  result = MEMORY[0x29C268420](v99);
  v81 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F776F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setAntBlocking_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v89 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v59 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v59;
    _os_log_debug_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEBUG, "#D Setting Ant blocking with: %@", &aBlock, 0xCu);
  }

  v81[0] = 0xAAAAAAAAAAAAAAAALL;
  v81[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v81, *a2);
  v61 = a1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v79 = v6;
  v80 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v79);
  v7 = ctu::cf::map_adapter::copyCFArrayRef(v81, *MEMORY[0x29EDC89A8]);
  v78 = v7;
  if (v7)
  {
    v8 = *(&v79 + 1);
    v9 = v80;
    v10 = *(&v79 + 1);
    if (*(&v79 + 1) != v80)
    {
      v10 = *(&v79 + 1);
      while (*(*v10 + 8) != 16)
      {
        if (++v10 == v80)
        {
          goto LABEL_12;
        }
      }
    }

    if (v10 == v80)
    {
LABEL_12:
      v13 = operator new(0x28uLL);
      v13[8] = 16;
      *v13 = &unk_2A1E1E638;
      *(v13 + 2) = 0;
      v14 = v13 + 16;
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      if (v9 >= *(&v80 + 1))
      {
        v16 = v13 + 16;
        v17 = v9 - v8;
        v18 = (v9 - v8) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v20 = *(&v80 + 1) - v8;
        if ((*(&v80 + 1) - v8) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        v21 = v20 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v19;
        if (v21)
        {
          if (v21 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v22 = v13;
          v23 = operator new(8 * v21);
          v13 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = &v23[8 * v18];
        *v24 = v13;
        v15 = v24 + 8;
        memcpy(v23, v8, v17);
        *(&v79 + 1) = v23;
        *&v80 = v15;
        *(&v80 + 1) = &v23[8 * v21];
        if (v8)
        {
          operator delete(v8);
        }

        v14 = v16;
      }

      else
      {
        *v9 = v13;
        v15 = v9 + 8;
      }

      v66 = v14;
      *&v80 = v15;
    }

    else
    {
      v11 = ***v10;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v66 = v12 + 16;
    }

    Count = CFArrayGetCount(v7);
    v26 = Count;
    if (Count >= 1)
    {
      v27 = 0;
      v28 = *MEMORY[0x29EDC8818];
      v64 = *MEMORY[0x29EDC8818];
      v65 = *MEMORY[0x29EDC87C0];
      v63 = Count;
      v60 = v7;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v27);
        v30 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v31 = CFGetTypeID(ValueAtIndex);
          if (v31 == CFDictionaryGetTypeID())
          {
            break;
          }
        }

LABEL_31:
        if (++v27 == v26)
        {
          goto LABEL_67;
        }
      }

      v84 = v30;
      CFRetain(v30);
      v73 = 0xAAAAAAAAAAAAAAAALL;
      v74 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v73, v30);
      aBlock = 0xAAAAAAAAAAAAAA00;
      v86 = 0;
      v87 = 0;
      Int = ctu::cf::map_adapter::getInt(&v73, v65);
      LOBYTE(aBlock) = Int;
      v33 = ctu::cf::map_adapter::copyCFArrayRef(&v73, v64);
      v34 = v33;
      v83 = v33;
      v67 = Int;
      if (v33 && (v35 = CFArrayGetCount(v33), v35 >= 1))
      {
        v68 = 0;
        __src = 0;
        v36 = 0;
        for (i = 0; i != v35; ++i)
        {
          v82 = 0;
          v38 = CFArrayGetValueAtIndex(v34, i);
          v39 = v38;
          if (v38)
          {
            v40 = CFGetTypeID(v38);
            if (v40 == CFNumberGetTypeID())
            {
              if (ctu::cf::assign(&v82, v39, v41))
              {
                if (v36 < v68)
                {
                  *v36 = v82;
                  v36 += 4;
                }

                else
                {
                  v42 = v36 - __src;
                  v43 = (v36 - __src) >> 2;
                  v44 = v43 + 1;
                  if ((v43 + 1) >> 62)
                  {
                    v86 = v36;
                    v87 = v68;
                    *(&aBlock + 1) = __src;
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  if ((v68 - __src) >> 1 > v44)
                  {
                    v44 = (v68 - __src) >> 1;
                  }

                  if ((v68 - __src) >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v45 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v45 = v44;
                  }

                  if (v45)
                  {
                    if (v45 >> 62)
                    {
                      v86 = v36;
                      v87 = v68;
                      *(&aBlock + 1) = __src;
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v46 = operator new(4 * v45);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = &v46[4 * v43];
                  v68 = &v46[4 * v45];
                  *v47 = v82;
                  v36 = v47 + 4;
                  memcpy(v46, __src, v42);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v46;
                }
              }
            }
          }
        }

        v86 = v36;
        v87 = v68;
        *(&aBlock + 1) = __src;
        v7 = v60;
        v48 = v66;
        v49 = *(v66 + 1);
        if (v49 >= *(v66 + 2))
        {
LABEL_63:
          *(v48 + 8) = std::vector<coex::tlv::abm::AntBandInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBandInfoSet&>(v48, &aBlock);
          if (!v34)
          {
LABEL_65:
            v26 = v63;
            if (__src)
            {
              v86 = __src;
              operator delete(__src);
            }

            MEMORY[0x29C268420](&v73);
            CFRelease(v30);
            goto LABEL_31;
          }

LABEL_64:
          CFRelease(v34);
          goto LABEL_65;
        }
      }

      else
      {
        v36 = 0;
        __src = 0;
        v48 = v66;
        v49 = *(v66 + 1);
        if (v49 >= *(v66 + 2))
        {
          goto LABEL_63;
        }
      }

      *v49 = v67;
      *(v49 + 8) = 0;
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v51 = v36 - __src;
      v50 = v36 == __src;
      v52 = v48;
      if (!v50)
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v53 = operator new(v51);
        *(v49 + 8) = v53;
        *(v49 + 16) = v53;
        v54 = &v53[v51];
        *(v49 + 24) = &v53[v51];
        memcpy(v53, __src, v51);
        *(v49 + 16) = v54;
      }

      *(v52 + 8) = v49 + 32;
      *(v52 + 8) = v49 + 32;
      if (!v34)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

LABEL_67:
  v73 = v61 + 136;
  v74 = QMIServiceMsg::create();
  v75 = 25000;
  v76 = 0;
  v77 = 0;
  v70[0] = MEMORY[0x29EDCA5F8];
  v70[1] = 1174405120;
  v70[2] = ___ZN4coex16QMICommandDriver19setAntBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v70[3] = &__block_descriptor_tmp_294;
  v70[4] = v61;
  v55 = *a3;
  if (*a3)
  {
    v55 = _Block_copy(v55);
  }

  v56 = *(a3 + 8);
  v71 = v55;
  object = v56;
  if (v56)
  {
    dispatch_retain(v56);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v86 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm17SetAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v87 = &unk_29EE602E8;
  v88 = v70;
  v77 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v77)
  {
    _Block_release(v77);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v71)
  {
    _Block_release(v71);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v79);
  result = MEMORY[0x29C268420](v81);
  v58 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F77EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F77FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 - 120) = a18;
  *(v19 - 136) = a19;
  JUMPOUT(0x296F77FB4);
}

uint64_t coex::QMICommandDriver::setClientAntBlocking_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v113 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v73 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v73;
    _os_log_debug_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEBUG, "#D Setting Ant blocking with: %@", &aBlock, 0xCu);
  }

  v103[0] = 0xAAAAAAAAAAAAAAAALL;
  v103[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v103, *a2);
  v74 = a1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v101 = v6;
  v102 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v101);
  v7 = ctu::cf::map_adapter::copyCFArrayRef(v103, *MEMORY[0x29EDC8AA0]);
  v100 = v7;
  if (v7)
  {
    v8 = *(&v101 + 1);
    v9 = v102;
    v10 = *(&v101 + 1);
    if (*(&v101 + 1) != v102)
    {
      v10 = *(&v101 + 1);
      while (*(*v10 + 8) != 16)
      {
        if (++v10 == v102)
        {
          goto LABEL_12;
        }
      }
    }

    if (v10 == v102)
    {
LABEL_12:
      v14 = operator new(0x28uLL);
      v14[8] = 16;
      *v14 = &unk_2A1E1E6D8;
      *(v14 + 2) = 0;
      v13 = (v14 + 16);
      *(v14 + 3) = 0;
      *(v14 + 4) = 0;
      if (v9 >= *(&v102 + 1))
      {
        v16 = v9 - v8;
        v17 = (v9 - v8) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v19 = *(&v102 + 1) - v8;
        if ((*(&v102 + 1) - v8) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v18;
        if (v20)
        {
          if (v20 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = v14;
          v22 = operator new(8 * v20);
          v14 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v17];
        *v23 = v14;
        v15 = v23 + 8;
        memcpy(v22, v8, v16);
        *(&v101 + 1) = v22;
        *&v102 = v15;
        *(&v102 + 1) = &v22[8 * v20];
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v9 = v14;
        v15 = v9 + 8;
      }

      *&v102 = v15;
    }

    else
    {
      v11 = ***v10;
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12 + 16;
    }

    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v25 = 0;
      v78 = *MEMORY[0x29EDC8898];
      v79 = *MEMORY[0x29EDC8820];
      v76 = *MEMORY[0x29EDC89A8];
      v77 = *MEMORY[0x29EDC89B0];
      v83 = *MEMORY[0x29EDC87C0];
      v81 = v13;
      v82 = *MEMORY[0x29EDC8818];
      v80 = v7;
      do
      {
        v85 = v25;
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v25);
        cf = ValueAtIndex;
        if (ValueAtIndex)
        {
          v28 = CFGetTypeID(ValueAtIndex);
          if (v28 == CFDictionaryGetTypeID())
          {
            v108[2] = cf;
            CFRetain(cf);
            v108[0] = 0xAAAAAAAAAAAAAAAALL;
            v108[1] = 0xAAAAAAAAAAAAAAAALL;
            v29 = ctu::cf::dict_adapter::dict_adapter(v108, cf);
            v110 = 0;
            v111 = 0;
            v112 = 0;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xAAAAAAAAAAAAAA00;
            LODWORD(aBlock) = ctu::cf::map_adapter::getInt(v29, v79);
            BYTE8(aBlock) = ctu::cf::map_adapter::getInt(v108, v78) != 0;
            DWORD1(aBlock) = ctu::cf::map_adapter::getInt(v108, v77);
            v107 = ctu::cf::map_adapter::copyCFArrayRef(v108, v76);
            theArray = v107;
            if (v107)
            {
              v88 = CFArrayGetCount(v107);
              if (v88 >= 1)
              {
                v30 = 0;
                while (1)
                {
                  v31 = CFArrayGetValueAtIndex(theArray, v30);
                  v91 = v31;
                  if (v31)
                  {
                    v32 = CFGetTypeID(v31);
                    if (v32 == CFDictionaryGetTypeID())
                    {
                      break;
                    }
                  }

LABEL_39:
                  if (++v30 == v88)
                  {
                    goto LABEL_76;
                  }
                }

                v106[2] = v91;
                CFRetain(v91);
                v106[0] = 0xAAAAAAAAAAAAAAAALL;
                v106[1] = 0xAAAAAAAAAAAAAAAALL;
                v33 = ctu::cf::dict_adapter::dict_adapter(v106, v91);
                v95 = 0xAAAAAAAAAAAAAA00;
                v97 = 0;
                v98 = 0;
                v96 = 0;
                Int = ctu::cf::map_adapter::getInt(v33, v83);
                LOBYTE(v95) = Int;
                v35 = ctu::cf::map_adapter::copyCFArrayRef(v106, v82);
                v36 = v35;
                v105 = v35;
                v84 = Int;
                if (v35 && (v37 = CFArrayGetCount(v35), v37 >= 1))
                {
                  v38 = 0;
                  v90 = 0;
                  v39 = 0;
                  for (i = 0; i != v37; ++i)
                  {
                    v41 = v38;
                    v104 = 0;
                    v42 = CFArrayGetValueAtIndex(v36, i);
                    v43 = v42;
                    if (v42 && (v44 = CFGetTypeID(v42), v44 == CFNumberGetTypeID()) && ctu::cf::assign(&v104, v43, v45))
                    {
                      v38 = v41;
                      if (v39 >= v90)
                      {
                        v46 = v39;
                        v47 = v39 - v41;
                        v48 = (v47 >> 2) + 1;
                        if (v48 >> 62)
                        {
                          v97 = v46;
                          v98 = v90;
                          v96 = v41;
                          std::vector<std::string>::__throw_length_error[abi:ne200100]();
                        }

                        if ((v90 - v41) >> 1 > v48)
                        {
                          v48 = (v90 - v41) >> 1;
                        }

                        if ((v90 - v41) >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v49 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v49 = v48;
                        }

                        if (v49)
                        {
                          if (v49 >> 62)
                          {
                            v97 = v46;
                            v98 = v90;
                            v96 = v41;
                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          v50 = operator new(4 * v49);
                        }

                        else
                        {
                          v50 = 0;
                        }

                        v51 = &v50[4 * (v47 >> 2)];
                        v90 = &v50[4 * v49];
                        *v51 = v104;
                        v86 = v51 + 4;
                        memcpy(v50, v41, v47);
                        if (v41)
                        {
                          operator delete(v41);
                        }

                        v38 = v50;
                        v39 = v86;
                      }

                      else
                      {
                        *v39 = v104;
                        v39 += 4;
                      }
                    }

                    else
                    {
                      v38 = v41;
                    }
                  }

                  v97 = v39;
                  v98 = v90;
                  v96 = v38;
                  v7 = v80;
                  v52 = v111;
                  if (v111 >= v112)
                  {
LABEL_71:
                    v57 = std::vector<coex::tlv::abm::AntBandInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBandInfoSet&>(&v110, &v95);
                    v13 = v81;
LABEL_72:
                    v111 = v57;
                    if (v36)
                    {
                      CFRelease(v36);
                    }

                    if (v38)
                    {
                      v97 = v38;
                      operator delete(v38);
                    }

                    MEMORY[0x29C268420](v106);
                    CFRelease(v91);
                    goto LABEL_39;
                  }
                }

                else
                {
                  v39 = 0;
                  v38 = 0;
                  v52 = v111;
                  if (v111 >= v112)
                  {
                    goto LABEL_71;
                  }
                }

                *v52 = v84;
                *(v52 + 1) = 0;
                *(v52 + 2) = 0;
                *(v52 + 3) = 0;
                v54 = v39 - v38;
                v53 = v39 == v38;
                v13 = v81;
                if (!v53)
                {
                  if ((v54 & 0x8000000000000000) != 0)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v55 = operator new(v54);
                  *(v52 + 1) = v55;
                  *(v52 + 2) = v55;
                  v56 = &v55[v54];
                  *(v52 + 3) = &v55[v54];
                  memcpy(v55, v38, v54);
                  *(v52 + 2) = v56;
                }

                v57 = v52 + 32;
                goto LABEL_72;
              }
            }

LABEL_76:
            v58 = *(v13 + 8);
            if (v58 >= *(v13 + 16))
            {
              v65 = std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBlockClientInfoSet&>(v13, &aBlock);
              v63 = theArray;
            }

            else
            {
              v59 = aBlock;
              *(v58 + 8) = BYTE8(aBlock);
              *v58 = v59;
              *(v58 + 16) = 0;
              *(v58 + 24) = 0;
              *(v58 + 32) = 0;
              v60 = v110;
              v61 = v111;
              v95 = v58 + 16;
              v96 = 0xAAAAAAAAAAAAAA00;
              v62 = v111 - v110;
              v63 = theArray;
              if (v111 != v110)
              {
                if (v62 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                v64 = operator new(v111 - v110);
                *(v58 + 16) = v64;
                *(v58 + 24) = v64;
                *(v58 + 32) = &v64[v62];
                *(v58 + 24) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>(v58 + 16, v60, v61, v64);
              }

              v65 = (v58 + 40);
              *(v13 + 8) = v58 + 40;
            }

            *(v13 + 8) = v65;
            if (v63)
            {
              CFRelease(v63);
            }

            v66 = v110;
            if (v110)
            {
              v67 = v111;
              v26 = v110;
              if (v111 != v110)
              {
                do
                {
                  v68 = *(v67 - 3);
                  if (v68)
                  {
                    *(v67 - 2) = v68;
                    operator delete(v68);
                  }

                  v67 -= 32;
                }

                while (v67 != v66);
                v26 = v110;
              }

              v111 = v66;
              operator delete(v26);
            }

            MEMORY[0x29C268420](v108);
            CFRelease(cf);
          }
        }

        v25 = v85 + 1;
      }

      while (v85 + 1 != Count);
    }
  }

  v95 = v74 + 136;
  v96 = QMIServiceMsg::create();
  LODWORD(v97) = 25000;
  v98 = 0;
  v99 = 0;
  v92[0] = MEMORY[0x29EDCA5F8];
  v92[1] = 1174405120;
  v92[2] = ___ZN4coex16QMICommandDriver25setClientAntBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v92[3] = &__block_descriptor_tmp_302_0;
  v92[4] = v74;
  v69 = *a3;
  if (*a3)
  {
    v69 = _Block_copy(v69);
  }

  v70 = *(a3 + 8);
  v93 = v69;
  object = v70;
  if (v70)
  {
    dispatch_retain(v70);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v110 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm23SetClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v111 = &unk_29EE60338;
  v112 = v92;
  v99 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v99)
  {
    _Block_release(v99);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v93)
  {
    _Block_release(v93);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v101);
  result = MEMORY[0x29C268420](v103);
  v72 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F7891C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setClientAntBlockingExtended_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v113 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Setting Extended Ant blocking with: %@", &buf, 0xCu);
  }

  v103[0] = 0xAAAAAAAAAAAAAAAALL;
  v103[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v103, *a2);
  v74 = a1;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v101 = v7;
  v102 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v101);
  v8 = ctu::cf::map_adapter::copyCFArrayRef(v103, *MEMORY[0x29EDC8AA0]);
  v100 = v8;
  if (v8)
  {
    v9 = *(&v101 + 1);
    v10 = v102;
    v11 = *(&v101 + 1);
    if (*(&v101 + 1) != v102)
    {
      v11 = *(&v101 + 1);
      while (*(*v11 + 8) != 17)
      {
        if (++v11 == v102)
        {
          goto LABEL_12;
        }
      }
    }

    if (v11 == v102)
    {
LABEL_12:
      v15 = operator new(0x28uLL);
      v15[8] = 17;
      *v15 = &unk_2A1E1E728;
      *(v15 + 2) = 0;
      v14 = (v15 + 16);
      *(v15 + 3) = 0;
      *(v15 + 4) = 0;
      if (v10 >= *(&v102 + 1))
      {
        v17 = v10 - v9;
        v18 = (v10 - v9) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v20 = *(&v102 + 1) - v9;
        if ((*(&v102 + 1) - v9) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        v21 = v20 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v19;
        if (v21)
        {
          if (v21 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v22 = v15;
          v23 = operator new(8 * v21);
          v15 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = &v23[8 * v18];
        *v24 = v15;
        v16 = v24 + 8;
        memcpy(v23, v9, v17);
        *(&v101 + 1) = v23;
        *&v102 = v16;
        *(&v102 + 1) = &v23[8 * v21];
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v10 = v15;
        v16 = v10 + 8;
      }

      *&v102 = v16;
    }

    else
    {
      v12 = ***v11;
      if (!v13)
      {
        __cxa_bad_cast();
      }

      v14 = v13 + 16;
    }

    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v26 = 0;
      v78 = *MEMORY[0x29EDC8898];
      v79 = *MEMORY[0x29EDC8820];
      v76 = *MEMORY[0x29EDC89A8];
      v77 = *MEMORY[0x29EDC89B0];
      v83 = *MEMORY[0x29EDC87C0];
      v81 = v14;
      v82 = *MEMORY[0x29EDC8818];
      v80 = v8;
      do
      {
        v85 = v26;
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v26);
        cf = ValueAtIndex;
        if (ValueAtIndex)
        {
          v29 = CFGetTypeID(ValueAtIndex);
          if (v29 == CFDictionaryGetTypeID())
          {
            v108[2] = cf;
            CFRetain(cf);
            v108[0] = 0xAAAAAAAAAAAAAAAALL;
            v108[1] = 0xAAAAAAAAAAAAAAAALL;
            v30 = ctu::cf::dict_adapter::dict_adapter(v108, cf);
            v110 = 0;
            v111 = 0;
            v112 = 0;
            *&buf = 0;
            *(&buf + 1) = 0xAAAAAAAAAAAAAA00;
            LODWORD(buf) = ctu::cf::map_adapter::getInt(v30, v79);
            BYTE8(buf) = ctu::cf::map_adapter::getInt(v108, v78) != 0;
            DWORD1(buf) = ctu::cf::map_adapter::getInt(v108, v77);
            v107 = ctu::cf::map_adapter::copyCFArrayRef(v108, v76);
            theArray = v107;
            if (v107)
            {
              v88 = CFArrayGetCount(v107);
              if (v88 >= 1)
              {
                v31 = 0;
                while (1)
                {
                  v32 = CFArrayGetValueAtIndex(theArray, v31);
                  v91 = v32;
                  if (v32)
                  {
                    v33 = CFGetTypeID(v32);
                    if (v33 == CFDictionaryGetTypeID())
                    {
                      break;
                    }
                  }

LABEL_39:
                  if (++v31 == v88)
                  {
                    goto LABEL_76;
                  }
                }

                v106[2] = v91;
                CFRetain(v91);
                v106[0] = 0xAAAAAAAAAAAAAAAALL;
                v106[1] = 0xAAAAAAAAAAAAAAAALL;
                v34 = ctu::cf::dict_adapter::dict_adapter(v106, v91);
                v95 = 0xAAAAAAAAAAAAAA00;
                v97 = 0;
                v98 = 0;
                v96 = 0;
                Int = ctu::cf::map_adapter::getInt(v34, v83);
                LOBYTE(v95) = Int;
                v36 = ctu::cf::map_adapter::copyCFArrayRef(v106, v82);
                v37 = v36;
                v105 = v36;
                v84 = Int;
                if (v36 && (v38 = CFArrayGetCount(v36), v38 >= 1))
                {
                  v39 = 0;
                  v90 = 0;
                  v40 = 0;
                  for (i = 0; i != v38; ++i)
                  {
                    v42 = v39;
                    v104 = 0;
                    v43 = CFArrayGetValueAtIndex(v37, i);
                    v44 = v43;
                    if (v43 && (v45 = CFGetTypeID(v43), v45 == CFNumberGetTypeID()) && ctu::cf::assign(&v104, v44, v46))
                    {
                      v39 = v42;
                      if (v40 >= v90)
                      {
                        v47 = v40;
                        v48 = v40 - v42;
                        v49 = (v48 >> 2) + 1;
                        if (v49 >> 62)
                        {
                          v97 = v47;
                          v98 = v90;
                          v96 = v42;
                          std::vector<std::string>::__throw_length_error[abi:ne200100]();
                        }

                        if ((v90 - v42) >> 1 > v49)
                        {
                          v49 = (v90 - v42) >> 1;
                        }

                        if ((v90 - v42) >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v50 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v50 = v49;
                        }

                        if (v50)
                        {
                          if (v50 >> 62)
                          {
                            v97 = v47;
                            v98 = v90;
                            v96 = v42;
                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          v51 = operator new(4 * v50);
                        }

                        else
                        {
                          v51 = 0;
                        }

                        v52 = &v51[4 * (v48 >> 2)];
                        v90 = &v51[4 * v50];
                        *v52 = v104;
                        v86 = v52 + 4;
                        memcpy(v51, v42, v48);
                        if (v42)
                        {
                          operator delete(v42);
                        }

                        v39 = v51;
                        v40 = v86;
                      }

                      else
                      {
                        *v40 = v104;
                        v40 += 4;
                      }
                    }

                    else
                    {
                      v39 = v42;
                    }
                  }

                  v97 = v40;
                  v98 = v90;
                  v96 = v39;
                  v8 = v80;
                  v53 = v111;
                  if (v111 >= v112)
                  {
LABEL_71:
                    v58 = std::vector<coex::tlv::abm::AntBandInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBandInfoSet&>(&v110, &v95);
                    v14 = v81;
LABEL_72:
                    v111 = v58;
                    if (v37)
                    {
                      CFRelease(v37);
                    }

                    if (v39)
                    {
                      v97 = v39;
                      operator delete(v39);
                    }

                    MEMORY[0x29C268420](v106);
                    CFRelease(v91);
                    goto LABEL_39;
                  }
                }

                else
                {
                  v40 = 0;
                  v39 = 0;
                  v53 = v111;
                  if (v111 >= v112)
                  {
                    goto LABEL_71;
                  }
                }

                *v53 = v84;
                *(v53 + 1) = 0;
                *(v53 + 2) = 0;
                *(v53 + 3) = 0;
                v55 = v40 - v39;
                v54 = v40 == v39;
                v14 = v81;
                if (!v54)
                {
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v56 = operator new(v55);
                  *(v53 + 1) = v56;
                  *(v53 + 2) = v56;
                  v57 = &v56[v55];
                  *(v53 + 3) = &v56[v55];
                  memcpy(v56, v39, v55);
                  *(v53 + 2) = v57;
                }

                v58 = v53 + 32;
                goto LABEL_72;
              }
            }

LABEL_76:
            v59 = *(v14 + 8);
            if (v59 >= *(v14 + 16))
            {
              v66 = std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBlockClientInfoSet&>(v14, &buf);
              v64 = theArray;
            }

            else
            {
              v60 = buf;
              *(v59 + 8) = BYTE8(buf);
              *v59 = v60;
              *(v59 + 16) = 0;
              *(v59 + 24) = 0;
              *(v59 + 32) = 0;
              v61 = v110;
              v62 = v111;
              v95 = v59 + 16;
              v96 = 0xAAAAAAAAAAAAAA00;
              v63 = v111 - v110;
              v64 = theArray;
              if (v111 != v110)
              {
                if (v63 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                v65 = operator new(v111 - v110);
                *(v59 + 16) = v65;
                *(v59 + 24) = v65;
                *(v59 + 32) = &v65[v63];
                *(v59 + 24) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>(v59 + 16, v61, v62, v65);
              }

              v66 = (v59 + 40);
              *(v14 + 8) = v59 + 40;
            }

            *(v14 + 8) = v66;
            if (v64)
            {
              CFRelease(v64);
            }

            v67 = v110;
            if (v110)
            {
              v68 = v111;
              v27 = v110;
              if (v111 != v110)
              {
                do
                {
                  v69 = *(v68 - 3);
                  if (v69)
                  {
                    *(v68 - 2) = v69;
                    operator delete(v69);
                  }

                  v68 -= 32;
                }

                while (v68 != v67);
                v27 = v110;
              }

              v111 = v67;
              operator delete(v27);
            }

            MEMORY[0x29C268420](v108);
            CFRelease(cf);
          }
        }

        v26 = v85 + 1;
      }

      while (v85 + 1 != Count);
    }
  }

  v95 = v74 + 136;
  v96 = QMIServiceMsg::create();
  LODWORD(v97) = 25000;
  v98 = 0;
  aBlock = 0;
  v92[0] = MEMORY[0x29EDCA5F8];
  v92[1] = 1174405120;
  v92[2] = ___ZN4coex16QMICommandDriver33setClientAntBlockingExtended_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v92[3] = &__block_descriptor_tmp_306_0;
  v92[4] = v74;
  v70 = *a3;
  if (*a3)
  {
    v70 = _Block_copy(v70);
  }

  v71 = *(a3 + 8);
  v93 = v70;
  object = v71;
  if (v71)
  {
    dispatch_retain(v71);
  }

  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 0x40000000;
  v110 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm23SetClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v111 = &unk_29EE60338;
  v112 = v92;
  aBlock = _Block_copy(&buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v93)
  {
    _Block_release(v93);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v101);
  result = MEMORY[0x29C268420](v103);
  v73 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F793FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setTriggerAntennaBlocking_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v66 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v50 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v50;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting trigger antenna block with  params: %@", &aBlock, 0xCu);
  }

  v61[0] = 0xAAAAAAAAAAAAAAAALL;
  v61[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v61, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59 = v7;
  v60 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v59);
  v8 = *(&v59 + 1);
  if (*(&v59 + 1) != v60)
  {
    while (*(*v8 + 8) != 2)
    {
      if (++v8 == v60)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v60)
  {
LABEL_10:
    v11 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v59, 2);
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  *v11 = ctu::cf::map_adapter::getBool(v61, *MEMORY[0x29EDC8998]);
  v12 = *(&v59 + 1);
  v13 = v60;
  v14 = *(&v59 + 1);
  if (*(&v59 + 1) != v60)
  {
    v14 = *(&v59 + 1);
    while (*(*v14 + 8) != 1)
    {
      if (++v14 == v60)
      {
        goto LABEL_19;
      }
    }
  }

  if (v14 == v60)
  {
LABEL_19:
    v18 = operator new(0x10uLL);
    v18[8] = 1;
    *v18 = &unk_2A1E1E778;
    *(v18 + 3) = 0;
    v17 = v18 + 12;
    if (v13 >= *(&v60 + 1))
    {
      v20 = v13 - v12;
      v21 = (v13 - v12) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v23 = *(&v60 + 1) - v12;
      if ((*(&v60 + 1) - v12) >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = v18;
        v26 = operator new(8 * v24);
        v18 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = &v26[8 * v21];
      *v27 = v18;
      v19 = v27 + 8;
      memcpy(v26, v12, v20);
      *(&v59 + 1) = v26;
      *&v60 = v19;
      *(&v60 + 1) = &v26[8 * v24];
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v13 = v18;
      v19 = v13 + 8;
    }

    *&v60 = v19;
  }

  else
  {
    v15 = ***v14;
    if (!v16)
    {
      __cxa_bad_cast();
    }

    v17 = v16 + 12;
  }

  *v17 = ctu::cf::map_adapter::getInt(v61, *MEMORY[0x29EDC8A08]);
  v28 = *a2;
  v29 = *MEMORY[0x29EDC8A10];
  if (CFDictionaryContainsKey(v28, *MEMORY[0x29EDC8A10]))
  {
    v30 = *(&v59 + 1);
    v31 = v60;
    v32 = *(&v59 + 1);
    if (*(&v59 + 1) != v60)
    {
      v32 = *(&v59 + 1);
      while (*(*v32 + 8) != 16)
      {
        if (++v32 == v60)
        {
          goto LABEL_43;
        }
      }
    }

    if (v32 == v60)
    {
LABEL_43:
      v36 = operator new(0x10uLL);
      v36[8] = 16;
      *v36 = &unk_2A1E1E7C8;
      *(v36 + 3) = 0;
      v35 = v36 + 12;
      if (v31 >= *(&v60 + 1))
      {
        v38 = v31 - v30;
        v39 = (v31 - v30) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v41 = *(&v60 + 1) - v30;
        if ((*(&v60 + 1) - v30) >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          if (v42 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v43 = v36;
          v44 = operator new(8 * v42);
          v36 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = &v44[8 * v39];
        *v45 = v36;
        v37 = v45 + 8;
        memcpy(v44, v30, v38);
        *(&v59 + 1) = v44;
        *&v60 = v37;
        *(&v60 + 1) = &v44[8 * v42];
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v31 = v36;
        v37 = v31 + 8;
      }

      *&v60 = v37;
    }

    else
    {
      v33 = ***v32;
      if (!v34)
      {
        __cxa_bad_cast();
      }

      v35 = v34 + 12;
    }

    *v35 = ctu::cf::map_adapter::getInt(v61, v29);
  }

  v54 = a1 + 136;
  v55 = QMIServiceMsg::create();
  v56 = 25000;
  v57 = 0;
  v58 = 0;
  v51[0] = MEMORY[0x29EDCA5F8];
  v51[1] = 1174405120;
  v51[2] = ___ZN4coex16QMICommandDriver30setTriggerAntennaBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v51[3] = &__block_descriptor_tmp_310;
  v51[4] = a1;
  v46 = *a3;
  if (*a3)
  {
    v46 = _Block_copy(v46);
  }

  v47 = *(a3 + 8);
  v52 = v46;
  object = v47;
  if (v47)
  {
    dispatch_retain(v47);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v63 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm27TriggerClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v64 = &unk_29EE60360;
  v65 = v51;
  v58 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v58)
  {
    _Block_release(v58);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v52)
  {
    _Block_release(v52);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v59);
  result = MEMORY[0x29C268420](v61);
  v49 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F79BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F79C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  MEMORY[0x29C268420](va1);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::setCC1_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v51 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v35 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v35;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting CC1 with: %@", &aBlock, 0xCu);
  }

  v46[0] = 0xAAAAAAAAAAAAAAAALL;
  v46[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v46, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v7;
  v45 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v44);
  v8 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v45)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v45)
  {
LABEL_10:
    v11 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v44, 1);
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  *v11 = ctu::cf::map_adapter::getBool(v46, *MEMORY[0x29EDC8660]);
  v12 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v12 + 8) != 16)
    {
      if (++v12 == v45)
      {
        goto LABEL_18;
      }
    }
  }

  if (v12 == v45)
  {
LABEL_18:
    v15 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(&v44, 16);
  }

  else
  {
    v13 = ***v12;
    if (!v14)
    {
      __cxa_bad_cast();
    }

    v15 = v14 + 12;
  }

  *v15 = ctu::cf::map_adapter::getInt(v46, *MEMORY[0x29EDC8638]);
  v16 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v16 + 8) != 17)
    {
      if (++v16 == v45)
      {
        goto LABEL_26;
      }
    }
  }

  if (v16 == v45)
  {
LABEL_26:
    v19 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::TechInstance>(&v44, 17);
  }

  else
  {
    v17 = ***v16;
    if (!v18)
    {
      __cxa_bad_cast();
    }

    v19 = v18 + 12;
  }

  *v19 = ctu::cf::map_adapter::getInt(v46, *MEMORY[0x29EDC8710]);
  v20 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v20 + 8) != 18)
    {
      if (++v20 == v45)
      {
        goto LABEL_34;
      }
    }
  }

  if (v20 == v45)
  {
LABEL_34:
    v23 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CriticalCarrierId>(&v44);
  }

  else
  {
    v21 = ***v20;
    if (!v22)
    {
      __cxa_bad_cast();
    }

    v23 = v22 + 12;
  }

  *v23 = ctu::cf::map_adapter::getInt(v46, *MEMORY[0x29EDC8668]);
  v24 = *MEMORY[0x29EDC8778];
  if (CFDictionaryContainsKey(*a2, *MEMORY[0x29EDC8778]))
  {
    v25 = *a2;
    v26 = *MEMORY[0x29EDC8658];
    if (CFDictionaryContainsKey(v25, *MEMORY[0x29EDC8658]))
    {
      v27 = *(&v44 + 1);
      if (*(&v44 + 1) != v45)
      {
        while (*(*v27 + 8) != 19)
        {
          if (++v27 == v45)
          {
            goto LABEL_44;
          }
        }
      }

      if (v27 == v45)
      {
LABEL_44:
        v30 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::BandInfo>(&v44);
      }

      else
      {
        v28 = ***v27;
        if (!v29)
        {
          __cxa_bad_cast();
        }

        v30 = v29 + 12;
      }

      *v30 = ctu::cf::map_adapter::getInt(v46, v24);
      *(v30 + 1) = ctu::cf::map_adapter::getInt(v46, v26);
    }
  }

  v39 = a1 + 136;
  v40 = QMIServiceMsg::create();
  v41 = 25000;
  v42 = 0;
  v43 = 0;
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN4coex16QMICommandDriver11setCC1_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v36[3] = &__block_descriptor_tmp_314;
  v36[4] = a1;
  v31 = *a3;
  if (*a3)
  {
    v31 = _Block_copy(v31);
  }

  v32 = *(a3 + 8);
  v37 = v31;
  object = v32;
  if (v32)
  {
    dispatch_retain(v32);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v48 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetCC1Req8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v49 = &unk_29EE60388;
  v50 = v36;
  v43 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v43)
  {
    _Block_release(v43);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v44);
  result = MEMORY[0x29C268420](v46);
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F7A240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setCC2_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v51 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v35 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v35;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting CC2 with: %@", &aBlock, 0xCu);
  }

  v46[0] = 0xAAAAAAAAAAAAAAAALL;
  v46[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v46, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v7;
  v45 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v44);
  v8 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v45)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v45)
  {
LABEL_10:
    v11 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v44, 1);
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  *v11 = ctu::cf::map_adapter::getBool(v46, *MEMORY[0x29EDC8660]);
  v12 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v12 + 8) != 16)
    {
      if (++v12 == v45)
      {
        goto LABEL_18;
      }
    }
  }

  if (v12 == v45)
  {
LABEL_18:
    v15 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(&v44, 16);
  }

  else
  {
    v13 = ***v12;
    if (!v14)
    {
      __cxa_bad_cast();
    }

    v15 = v14 + 12;
  }

  *v15 = ctu::cf::map_adapter::getInt(v46, *MEMORY[0x29EDC8638]);
  v16 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v16 + 8) != 17)
    {
      if (++v16 == v45)
      {
        goto LABEL_26;
      }
    }
  }

  if (v16 == v45)
  {
LABEL_26:
    v19 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::TechInstance>(&v44, 17);
  }

  else
  {
    v17 = ***v16;
    if (!v18)
    {
      __cxa_bad_cast();
    }

    v19 = v18 + 12;
  }

  *v19 = ctu::cf::map_adapter::getInt(v46, *MEMORY[0x29EDC8710]);
  v20 = *(&v44 + 1);
  if (*(&v44 + 1) != v45)
  {
    while (*(*v20 + 8) != 18)
    {
      if (++v20 == v45)
      {
        goto LABEL_34;
      }
    }
  }

  if (v20 == v45)
  {
LABEL_34:
    v23 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CriticalCarrierId>(&v44);
  }

  else
  {
    v21 = ***v20;
    if (!v22)
    {
      __cxa_bad_cast();
    }

    v23 = v22 + 12;
  }

  *v23 = ctu::cf::map_adapter::getInt(v46, *MEMORY[0x29EDC8668]);
  v24 = *MEMORY[0x29EDC8778];
  if (CFDictionaryContainsKey(*a2, *MEMORY[0x29EDC8778]))
  {
    v25 = *a2;
    v26 = *MEMORY[0x29EDC8658];
    if (CFDictionaryContainsKey(v25, *MEMORY[0x29EDC8658]))
    {
      v27 = *(&v44 + 1);
      if (*(&v44 + 1) != v45)
      {
        while (*(*v27 + 8) != 19)
        {
          if (++v27 == v45)
          {
            goto LABEL_44;
          }
        }
      }

      if (v27 == v45)
      {
LABEL_44:
        v30 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::BandInfo>(&v44);
      }

      else
      {
        v28 = ***v27;
        if (!v29)
        {
          __cxa_bad_cast();
        }

        v30 = v29 + 12;
      }

      *v30 = ctu::cf::map_adapter::getInt(v46, v24);
      *(v30 + 1) = ctu::cf::map_adapter::getInt(v46, v26);
    }
  }

  v39 = a1 + 136;
  v40 = QMIServiceMsg::create();
  v41 = 25000;
  v42 = 0;
  v43 = 0;
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN4coex16QMICommandDriver11setCC2_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v36[3] = &__block_descriptor_tmp_318_0;
  v36[4] = a1;
  v31 = *a3;
  if (*a3)
  {
    v31 = _Block_copy(v31);
  }

  v32 = *(a3 + 8);
  v37 = v31;
  object = v32;
  if (v32)
  {
    dispatch_retain(v32);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v48 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetCC2Req8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v49 = &unk_29EE603B0;
  v50 = v36;
  v43 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v43)
  {
    _Block_release(v43);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v44);
  result = MEMORY[0x29C268420](v46);
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F7A8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setLaaGpioThrottle_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v48 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v32 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v32;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting LAA GPIO throttle with: %@", &aBlock, 0xCu);
  }

  v43[0] = 0xAAAAAAAAAAAAAAAALL;
  v43[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v43, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v7;
  v42 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v41);
  v8 = *(&v41 + 1);
  if (*(&v41 + 1) != v42)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v42)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v42)
  {
LABEL_10:
    v11 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v41, 1);
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  *v11 = ctu::cf::map_adapter::getBool(v43, *MEMORY[0x29EDC8908]);
  v12 = *(&v41 + 1);
  v13 = v42;
  v14 = *(&v41 + 1);
  if (*(&v41 + 1) != v42)
  {
    v14 = *(&v41 + 1);
    while (*(*v14 + 8) != 16)
    {
      if (++v14 == v42)
      {
        goto LABEL_19;
      }
    }
  }

  if (v14 == v42)
  {
LABEL_19:
    v18 = operator new(0x10uLL);
    v18[8] = 16;
    *v18 = &unk_2A1E1E8B8;
    *(v18 + 3) = 0;
    v17 = v18 + 12;
    if (v13 >= *(&v42 + 1))
    {
      v20 = v13 - v12;
      v21 = (v13 - v12) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v23 = *(&v42 + 1) - v12;
      if ((*(&v42 + 1) - v12) >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = v18;
        v26 = operator new(8 * v24);
        v18 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = &v26[8 * v21];
      *v27 = v18;
      v19 = v27 + 8;
      memcpy(v26, v12, v20);
      *(&v41 + 1) = v26;
      *&v42 = v19;
      *(&v42 + 1) = &v26[8 * v24];
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v13 = v18;
      v19 = v13 + 8;
    }

    *&v42 = v19;
  }

  else
  {
    v15 = ***v14;
    if (!v16)
    {
      __cxa_bad_cast();
    }

    v17 = v16 + 12;
  }

  *v17 = ctu::cf::map_adapter::getInt(v43, *MEMORY[0x29EDC8A00]);
  v36 = a1 + 136;
  v37 = QMIServiceMsg::create();
  v38 = 25000;
  v39 = 0;
  v40 = 0;
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 1174405120;
  v33[2] = ___ZN4coex16QMICommandDriver23setLaaGpioThrottle_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v33[3] = &__block_descriptor_tmp_322;
  v33[4] = a1;
  v28 = *a3;
  if (*a3)
  {
    v28 = _Block_copy(v28);
  }

  v29 = *(a3 + 8);
  v34 = v28;
  object = v29;
  if (v29)
  {
    dispatch_retain(v29);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v45 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21SetLaaGpioThrottleReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v46 = &unk_29EE603D8;
  v47 = v33;
  v40 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v40)
  {
    _Block_release(v40);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v34)
  {
    _Block_release(v34);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v41);
  result = MEMORY[0x29C268420](v43);
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F7ADA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  MEMORY[0x29C268420](va1);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::setGnssParams_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v64 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v48 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v48;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting Gnss params with: %@", &aBlock, 0xCu);
  }

  v59[0] = 0xAAAAAAAAAAAAAAAALL;
  v59[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v59, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v7;
  v58 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v57);
  v8 = *(&v57 + 1);
  if (*(&v57 + 1) != v58)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v58)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v58)
  {
LABEL_10:
    v11 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v57, 1);
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 9;
  }

  *v11 = ctu::cf::map_adapter::getBool(v59, *MEMORY[0x29EDC86A0]);
  v12 = *(&v57 + 1);
  v13 = v58;
  v14 = *(&v57 + 1);
  if (*(&v57 + 1) != v58)
  {
    v14 = *(&v57 + 1);
    while (*(*v14 + 8) != 16)
    {
      if (++v14 == v58)
      {
        goto LABEL_19;
      }
    }
  }

  if (v14 == v58)
  {
LABEL_19:
    v18 = operator new(0x10uLL);
    v18[8] = 16;
    *v18 = &unk_2A1E1E908;
    *(v18 + 3) = 0;
    v17 = v18 + 12;
    if (v13 >= *(&v58 + 1))
    {
      v20 = v13 - v12;
      v21 = (v13 - v12) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v23 = *(&v58 + 1) - v12;
      if ((*(&v58 + 1) - v12) >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = v18;
        v26 = operator new(8 * v24);
        v18 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = &v26[8 * v21];
      *v27 = v18;
      v19 = v27 + 8;
      memcpy(v26, v12, v20);
      *(&v57 + 1) = v26;
      *&v58 = v19;
      *(&v58 + 1) = &v26[8 * v24];
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v13 = v18;
      v19 = v13 + 8;
    }

    *&v58 = v19;
  }

  else
  {
    v15 = ***v14;
    if (!v16)
    {
      __cxa_bad_cast();
    }

    v17 = v16 + 12;
  }

  *v17 = ctu::cf::map_adapter::getInt(v59, *MEMORY[0x29EDC8618]);
  v28 = *(&v57 + 1);
  v29 = v58;
  v30 = *(&v57 + 1);
  if (*(&v57 + 1) != v58)
  {
    v30 = *(&v57 + 1);
    while (*(*v30 + 8) != 17)
    {
      if (++v30 == v58)
      {
        goto LABEL_42;
      }
    }
  }

  if (v30 == v58)
  {
LABEL_42:
    v34 = operator new(0x10uLL);
    v34[8] = 17;
    *v34 = &unk_2A1E1E958;
    *(v34 + 3) = 0;
    v33 = v34 + 12;
    if (v29 >= *(&v58 + 1))
    {
      v36 = v29 - v28;
      v37 = (v29 - v28) >> 3;
      v38 = v37 + 1;
      if ((v37 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v39 = *(&v58 + 1) - v28;
      if ((*(&v58 + 1) - v28) >> 2 > v38)
      {
        v38 = v39 >> 2;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        v40 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        if (v40 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v41 = v34;
        v42 = operator new(8 * v40);
        v34 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = &v42[8 * v37];
      *v43 = v34;
      v35 = v43 + 8;
      memcpy(v42, v28, v36);
      *(&v57 + 1) = v42;
      *&v58 = v35;
      *(&v58 + 1) = &v42[8 * v40];
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v29 = v34;
      v35 = v29 + 8;
    }

    *&v58 = v35;
  }

  else
  {
    v31 = ***v30;
    if (!v32)
    {
      __cxa_bad_cast();
    }

    v33 = v32 + 12;
  }

  *v33 = ctu::cf::map_adapter::getInt(v59, *MEMORY[0x29EDC86A8]);
  v52 = a1 + 136;
  v53 = QMIServiceMsg::create();
  v54 = 25000;
  v55 = 0;
  v56 = 0;
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 1174405120;
  v49[2] = ___ZN4coex16QMICommandDriver18setGnssParams_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v49[3] = &__block_descriptor_tmp_326;
  v49[4] = a1;
  v44 = *a3;
  if (*a3)
  {
    v44 = _Block_copy(v44);
  }

  v45 = *(a3 + 8);
  v50 = v44;
  object = v45;
  if (v45)
  {
    dispatch_retain(v45);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v61 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm13SetGnssBandId8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v62 = &unk_29EE60400;
  v63 = v49;
  v56 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v56)
  {
    _Block_release(v56);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v50)
  {
    _Block_release(v50);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v57);
  result = MEMORY[0x29C268420](v59);
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F7B42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7B49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  MEMORY[0x29C268420](va1);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::getScanFreqBandFilter_sync(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Getting Scan Frequency Band filter info", aBlock, 2u);
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v7;
  v28 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v27);
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 0x40000000;
  v8 = ___ZN4coex16QMICommandDriver26getScanFreqBandFilter_syncENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v24 = ___ZN4coex16QMICommandDriver26getScanFreqBandFilter_syncENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v25 = &__block_descriptor_tmp_278;
  v26 = a2;
  v9 = *(&v27 + 1);
  if (*(&v27 + 1) != v28)
  {
    while (*(*v9 + 8) != 16)
    {
      if (++v9 == v28)
      {
        goto LABEL_10;
      }
    }
  }

  if (v9 == v28)
  {
LABEL_10:
    v12 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(&v27, 16);
    v8 = v24;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 12;
  }

  v8(v23, v12);
  v18 = a1 + 136;
  v19 = QMIServiceMsg::create();
  v20 = 25000;
  v21 = 0;
  v22 = 0;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN4coex16QMICommandDriver26getScanFreqBandFilter_syncENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2;
  v15[3] = &__block_descriptor_tmp_282;
  v15[4] = a1;
  v13 = *a3;
  if (*a3)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a3 + 8);
  v16 = v13;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21GetScanFreqBandFilter8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60270;
  aBlock[4] = v15;
  v22 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v22)
  {
    _Block_release(v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v27);
}

void sub_296F7B764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  coex::CommandDriver::Callback::~Callback((v27 + 40));
  qmi::Client::SendProxy::~SendProxy(&a17);
  qmi::MutableMessageBase::~MutableMessageBase(&a27);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollWWANState_sync(coex::QMICommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D Polling WWAN state", aBlock, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v8);
  v4[5] = this + 136;
  v4[6] = QMIServiceMsg::create();
  v5 = 25000;
  v6 = 0;
  v7 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4coex16QMICommandDriver18pollWWANState_syncEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_34;
  v4[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm12GetWWANState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60040;
  aBlock[4] = v4;
  v7 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v8);
}

void sub_296F7B904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollWLANScanState_sync(coex::QMICommandDriver *this, int a2)
{
  aBlock[5] = *MEMORY[0x29EDCA608];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(aBlock[0]) = 67109120;
    HIDWORD(aBlock[0]) = a2;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Polling WLAN Scan State on scan %u", aBlock, 8u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v5;
  v34 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v33);
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 0x40000000;
  v6 = ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke;
  v30 = ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke;
  v31 = &__block_descriptor_tmp_36_0;
  v32 = a2;
  v7 = *(&v33 + 1);
  v8 = v34;
  v9 = *(&v33 + 1);
  if (*(&v33 + 1) != v34)
  {
    v9 = *(&v33 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v34)
      {
        goto LABEL_11;
      }
    }
  }

  if (v9 == v34)
  {
LABEL_11:
    v13 = operator new(0x10uLL);
    v13[8] = 1;
    *v13 = &unk_2A1E1D628;
    *(v13 + 3) = 0;
    v12 = v13 + 12;
    if (v8 >= *(&v34 + 1))
    {
      v15 = v8 - v7;
      v16 = (v8 - v7) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v34 + 1) - v7;
      if ((*(&v34 + 1) - v7) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v13;
        v21 = v13 + 12;
        v22 = operator new(8 * v19);
        v13 = v20;
      }

      else
      {
        v21 = v13 + 12;
        v22 = 0;
      }

      v23 = &v22[8 * v16];
      *v23 = v13;
      v14 = v23 + 8;
      memcpy(v22, v7, v15);
      *(&v33 + 1) = v22;
      *&v34 = v14;
      *(&v34 + 1) = &v22[8 * v19];
      if (v7)
      {
        operator delete(v7);
      }

      v12 = v21;
    }

    else
    {
      *v8 = v13;
      v14 = v8 + 8;
    }

    *&v34 = v14;
    v6 = v30;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 12;
  }

  v6(v29, v12);
  v25[5] = this + 136;
  v25[6] = QMIServiceMsg::create();
  v26 = 25000;
  v27 = 0;
  v28 = 0;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 0x40000000;
  v25[2] = ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke_2;
  v25[3] = &__block_descriptor_tmp_38_1;
  v25[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm16GetWLANScanState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60068;
  aBlock[4] = v25;
  v28 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v28)
  {
    _Block_release(v28);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v33);
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296F7BCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F7BD04(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7BD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollWLANConnState_sync(coex::QMICommandDriver *this, int a2)
{
  aBlock[5] = *MEMORY[0x29EDCA608];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(aBlock[0]) = 67109120;
    HIDWORD(aBlock[0]) = a2;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Polling WLAN Connection State on connection %u", aBlock, 8u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v5;
  v34 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v33);
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 0x40000000;
  v6 = ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke;
  v30 = ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke;
  v31 = &__block_descriptor_tmp_40_0;
  v32 = a2;
  v7 = *(&v33 + 1);
  v8 = v34;
  v9 = *(&v33 + 1);
  if (*(&v33 + 1) != v34)
  {
    v9 = *(&v33 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v34)
      {
        goto LABEL_11;
      }
    }
  }

  if (v9 == v34)
  {
LABEL_11:
    v13 = operator new(0x10uLL);
    v13[8] = 1;
    *v13 = &unk_2A1E1D6A8;
    *(v13 + 3) = 0;
    v12 = v13 + 12;
    if (v8 >= *(&v34 + 1))
    {
      v15 = v8 - v7;
      v16 = (v8 - v7) >> 3;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v18 = *(&v34 + 1) - v7;
      if ((*(&v34 + 1) - v7) >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v20 = v13;
        v21 = v13 + 12;
        v22 = operator new(8 * v19);
        v13 = v20;
      }

      else
      {
        v21 = v13 + 12;
        v22 = 0;
      }

      v23 = &v22[8 * v16];
      *v23 = v13;
      v14 = v23 + 8;
      memcpy(v22, v7, v15);
      *(&v33 + 1) = v22;
      *&v34 = v14;
      *(&v34 + 1) = &v22[8 * v19];
      if (v7)
      {
        operator delete(v7);
      }

      v12 = v21;
    }

    else
    {
      *v8 = v13;
      v14 = v8 + 8;
    }

    *&v34 = v14;
    v6 = v30;
  }

  else
  {
    v10 = ***v9;
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 12;
  }

  v6(v29, v12);
  v25[5] = this + 136;
  v25[6] = QMIServiceMsg::create();
  v26 = 25000;
  v27 = 0;
  v28 = 0;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 0x40000000;
  v25[2] = ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke_2;
  v25[3] = &__block_descriptor_tmp_42_0;
  v25[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm16GetWLANConnState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60090;
  aBlock[4] = v25;
  v28 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v28)
  {
    _Block_release(v28);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v33);
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296F7C0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7C0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F7C0FC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7C114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollPolicy_sync(coex::QMICommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D Polling policy", buf, 2u);
  }

  *buf = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    *buf = Mutable;
  }

  v11 = 0;
  v6 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = v6;
  if (v6)
  {
    v11 = v6;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v5, *MEMORY[0x29EDC86B8], v6);
  if (v5 && (v8 = CFGetTypeID(v5), v8 == CFDictionaryGetTypeID()))
  {
    v10 = v5;
    CFRetain(v5);
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(this, &v10, 0);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
    v5 = *buf;
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296F7C294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

void sub_296F7C2B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollLinkQuality_sync(coex::QMICommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D Polling Link Quality", aBlock, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v8);
  v4[5] = this + 136;
  v4[6] = QMIServiceMsg::create();
  v5 = 25000;
  v6 = 0;
  v7 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4coex16QMICommandDriver20pollLinkQuality_syncEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_44_0;
  v4[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8SINRRead8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE600B8;
  aBlock[4] = v4;
  v7 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v8);
}

void sub_296F7C43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver18pollWWANState_syncEv_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v112 = *(a1 + 32);
  cf = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  v146 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v151) = 14;
  strcpy(v150, "Get WWAN State");
  coex::QMICommandDriver::checkError(v112, a2, v150, &v146);
  if (SHIBYTE(v151) < 0)
  {
    operator delete(v150[0]);
    v6 = v146;
    if (v146)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = v146;
    if (v146)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v5, *MEMORY[0x29EDC8670], v6);
      if (v5 && (v7 = CFGetTypeID(v5), v7 == CFDictionaryGetTypeID()))
      {
        v145 = v5;
        CFRetain(v5);
        v8 = v5;
      }

      else
      {
        v8 = 0;
        v145 = 0;
      }

      coex::QMICommandDriver::sendStateUpdate_sync(v112, &v145, 0);
      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_172;
    }
  }

  v144 = 0;
  v9 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = v9;
  if (v9)
  {
    v143 = v9;
    v144 = v9;
    CFRetain(v9);
  }

  else
  {
    v143 = 0;
  }

  v148 = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18LTEBandInformationENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_451;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v154 = *MEMORY[0x29EDC87E8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v13 = TlvValue;
  if (TlvValue)
  {
    v14 = v12;
    v155[0] = TlvValue;
    v149[0] = tlv::parseV<coex::tlv::abm::LTEBandInformation>(v155, v12);
    v149[1] = v15;
    if (v155[0])
    {
      v151(v150, v149);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 16, v13, v14);
    }
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v142 = v10;
    CFRetain(v10);
  }

  else
  {
    v142 = 0;
  }

  v148 = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm17LTETDDInformationENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_454;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v154 = *MEMORY[0x29EDC87D0];
  v16 = qmi::MessageBase::findTlvValue(a2);
  v18 = v16;
  if (v16)
  {
    v19 = v17;
    v155[0] = v16;
    memset(v149, 170, 20);
    tlv::parseV<coex::tlv::abm::LTETDDInformation>(v155, v17, v149);
    if (v155[0])
    {
      v151(v150, v149);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 17, v18, v19);
    }
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v141 = v10;
    CFRetain(v10);
  }

  else
  {
    v141 = 0;
  }

  v149[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12LTEOffPeriodENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_457;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v154 = *MEMORY[0x29EDC86F0];
  v20 = qmi::MessageBase::findTlvValue(a2);
  v28 = v20;
  if (v20)
  {
    tlv::throwIfNotEnoughBytes(v20, v20 + v21, 4);
    LODWORD(v155[0]) = *v28;
    v151(v150, v155);
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v140 = v10;
    CFRetain(v10);
  }

  else
  {
    v140 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTEBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_460;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v29 = *MEMORY[0x29EDC88D0];
  v154 = *MEMORY[0x29EDC88D0];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTEBandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTEBandInformationSet const&)>(a2, v149, v22, v23, v24, v25, v26, v27, v101, v112, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v139 = v10;
    CFRetain(v10);
  }

  else
  {
    v139 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25TDSCDMABandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_463;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v154 = *MEMORY[0x29EDC89D8];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::TDSCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::TDSCDMABandInformationSet const&)>(a2, v149, v30, v31, v32, v33, v34, v35, v102, v113, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v138 = v10;
    CFRetain(v10);
  }

  else
  {
    v138 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21GSMBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_466;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v42 = *MEMORY[0x29EDC88B0];
  v154 = *MEMORY[0x29EDC88B0];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::GSMBandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSMBandInformationSet const&)>(a2, v149, v36, v37, v38, v39, v40, v41, v103, v114, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v137 = v10;
    CFRetain(v10);
  }

  else
  {
    v137 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22ONEXBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_469;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v154 = *MEMORY[0x29EDC8910];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::ONEXBandInformationSet,void({block_pointer}&)(coex::tlv::abm::ONEXBandInformationSet const&)>(a2, v149, v43, v44, v45, v46, v47, v48, v104, v115, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v136 = v10;
    CFRetain(v10);
  }

  else
  {
    v136 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21HDRBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_472;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v154 = *MEMORY[0x29EDC88C0];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::HDRBandInformationSet,void({block_pointer}&)(coex::tlv::abm::HDRBandInformationSet const&)>(a2, v149, v49, v50, v51, v52, v53, v54, v105, v116, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v135 = v10;
    CFRetain(v10);
  }

  else
  {
    v135 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm23WCDMABandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_475;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v61 = *MEMORY[0x29EDC8968];
  v154 = *MEMORY[0x29EDC8968];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMABandInformationSet const&)>(a2, v149, v55, v56, v57, v58, v59, v60, v106, v117, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
    v134 = v10;
    CFRetain(v10);
  }

  else
  {
    v134 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21NGCBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_478;
  v153 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v68 = *MEMORY[0x29EDC88E0];
  v154 = *MEMORY[0x29EDC88E0];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGCBandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCBandInformationSet const&)>(a2, v149, v62, v63, v64, v65, v66, v67, v107, v118, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v5 = cf;
  v133 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24LTECarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_481;
  v153 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v69 = *MEMORY[0x29EDC8988];
  v154 = *MEMORY[0x29EDC8988];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTECarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTECarrierInformationSet const&)>(a2, v149);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v5)
  {
    CFRelease(v5);
    v132 = v5;
    CFRetain(v5);
  }

  else
  {
    v132 = 0;
  }

  v108 = v68;
  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24NGCCarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_484;
  v153 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v70 = *MEMORY[0x29EDC8990];
  v154 = *MEMORY[0x29EDC8990];
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGCCarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCCarrierInformationSet const&)>(a2, v149);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (CFDictionaryGetCount(v10))
  {
    ctu::cf::update<__CFString const*,__CFDictionary *>(v5, *MEMORY[0x29EDC8728], v10);
    if (v5 && (v71 = CFGetTypeID(v5), v71 == CFDictionaryGetTypeID()))
    {
      v131 = v5;
      CFRetain(v5);
      v72 = v5;
    }

    else
    {
      v72 = 0;
      v131 = 0;
    }

    coex::QMICommandDriver::sendStateUpdate_sync(v119, &v131, 0);
    if (v72)
    {
      CFRelease(v72);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v148 = 0;
  v73 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v80 = v73;
  if (v73)
  {
    v148 = v73;
    v130 = v73;
    CFRetain(v73);
  }

  else
  {
    v130 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22GSM2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_487;
  v153 = v80;
  if (v80)
  {
    CFRetain(v80);
  }

  v154 = v42;
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::GSM2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSM2BandInformationSet const&)>(a2, v149, v74, v75, v76, v77, v78, v79, v108, v119, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v80)
  {
    CFRelease(v80);
    v129 = v80;
    CFRetain(v80);
  }

  else
  {
    v129 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24WCDMA2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_490;
  v153 = v80;
  if (v80)
  {
    CFRetain(v80);
  }

  v154 = v61;
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMA2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMA2BandInformationSet const&)>(a2, v149, v81, v82, v83, v84, v85, v86, v109, v120, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v80)
  {
    CFRelease(v80);
    v128 = v80;
    CFRetain(v80);
  }

  else
  {
    v128 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTE2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_493;
  v153 = v80;
  if (v80)
  {
    CFRetain(v80);
  }

  v154 = v29;
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2BandInformationSet const&)>(a2, v149, v87, v88, v89, v90, v91, v92, v110, v121, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  v127 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25LTE2CarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_496;
  v153 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v154 = v69;
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2CarrierInformationSet const&)>(a2, v149);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v5)
  {
    CFRelease(v5);
    v126 = v5;
    CFRetain(v5);
  }

  else
  {
    v126 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22NGC2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_499;
  v153 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v154 = v111;
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2BandInformationSet const&)>(a2, v149, v93, v94, v95, v96, v97, v98, v111, v122, v124);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v5)
  {
    CFRelease(v5);
    v125 = v5;
    CFRetain(v5);
  }

  else
  {
    v125 = 0;
  }

  v155[0] = 0;
  v150[0] = MEMORY[0x29EDCA5F8];
  v150[1] = 1174405120;
  v151 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25NGC2CarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v152 = &__block_descriptor_tmp_502;
  v153 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v154 = v70;
  v149[0] = v150;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2CarrierInformationSet const&)>(a2, v149);
  if (v153)
  {
    CFRelease(v153);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (CFDictionaryGetCount(v80))
  {
    ctu::cf::update<__CFString const*,__CFDictionary *>(v5, *MEMORY[0x29EDC8728], v80);
    if (v5 && (v99 = CFGetTypeID(v5), v99 == CFDictionaryGetTypeID()))
    {
      v124 = v5;
      CFRetain(v5);
      v100 = v5;
    }

    else
    {
      v100 = 0;
      v124 = 0;
    }

    coex::QMICommandDriver::sendStateUpdate_sync(v123, &v124, 1);
    if (v100)
    {
      CFRelease(v100);
    }
  }

  if (v80)
  {
    CFRelease(v80);
  }

LABEL_172:
  if (v146)
  {
    CFRelease(v146);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296F7D2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, const void *a34)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v34 - 192));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a33);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a34);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke_2(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v16 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    v16 = Mutable;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "Get WLAN Scan State");
  coex::QMICommandDriver::checkError(v3, a2, __p, &v15);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v6 = v15;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = v15;
    if (v15)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v5, *MEMORY[0x29EDC8670], v6);
      goto LABEL_19;
    }
  }

  v14[1] = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v20 = 0;
  __p[0] = MEMORY[0x29EDCA5F8];
  __p[1] = 1174405120;
  __p[2] = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12WLANScanInfoENS_3abm16GetWLANScanState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  __p[3] = &__block_descriptor_tmp_510;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v19 = *MEMORY[0x29EDC87D8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    v10 = v8;
    v22 = TlvValue;
    v21[0] = tlv::parseV<coex::tlv::abm::WLANScanInfo>(&v22, v8);
    v21[1] = v11;
    if (v22)
    {
      (__p[2])(__p, v21);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 16, v9, v10);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  CFRelease(v5);
LABEL_19:
  if (v5)
  {
    v12 = CFGetTypeID(v5);
    if (v12 == CFDictionaryGetTypeID())
    {
      v14[0] = v5;
      CFRetain(v5);
      v13 = v5;
      goto LABEL_23;
    }
  }

LABEL_22:
  v13 = 0;
  v14[0] = 0;
LABEL_23:
  coex::QMICommandDriver::sendStateUpdate_sync(v3, v14, 0);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}