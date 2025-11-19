void sub_296F568E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(v12);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void coredump::CommandDriver::~CommandDriver(coredump::CommandDriver *this)
{
  *this = &unk_2A1E1AB38;
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    *(this + 12) = &unk_2A1E1AF60;
    v3 = *(this + 14);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(this + 12) = &unk_2A1E1AF60;
    v3 = *(this + 14);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
    if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 24))(v3);
    }
  }

LABEL_8:
  *(this + 9) = &unk_2A1E1ADD0;
  v4 = *(this + 11);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 24))(v4);
      }
    }
  }

  *(this + 6) = &unk_2A1E1AB80;
  v5 = *(this + 8);
  if (v5)
  {
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
      if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 24))(v5);
      }
    }
  }

  MEMORY[0x29C268320](this + 40);
  v6 = *(this + 4);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void coredump::QMICommandDriverM20::~QMICommandDriverM20(coredump::QMICommandDriverM20 *this)
{
  *this = &unk_2A1E1A980;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 136));
  coredump::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E1A980;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 136));
  coredump::CommandDriver::~CommandDriver(this);
}

{
  *this = &unk_2A1E1A980;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  qmi::Client::~Client((this + 136));
  coredump::CommandDriver::~CommandDriver(this);
  operator delete(v3);
}

void coredump::QMICommandDriverM20::init(coredump::QMICommandDriverM20 *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN8coredump19QMICommandDriverM204initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_13_1;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN8coredump13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_61_3;
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

void ___ZN8coredump19QMICommandDriverM204initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v44 = 0uLL;
  v2 = *(v1 + 120);
  if (v2)
  {
    Registry::getServerConnection(&buf, v2);
    v44 = buf;
    if (buf)
    {
      v41 = 12;
      v3 = *(v1 + 24);
      v39 = v3;
      strcpy(v40, "coredump.drv");
      if (v3)
      {
        dispatch_retain(v3);
      }

      v38 = 5;
      strcpy(v37, "ssctl");
      v4 = *(v1 + 16);
      if (!v4 || (v5 = *(v1 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v7 = v6;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = std::__shared_weak_count::lock(v6);
        if (v8)
        {
LABEL_9:
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v36 = v8;
LABEL_10:
          std::__shared_weak_count::__release_weak(v7);
          if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v35 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          qmi::Client::createWithQueueLocal();
          v9 = v43;
          v43 = 0uLL;
          v10 = *(v1 + 160);
          *(v1 + 152) = v9;
          if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }

          qmi::Client::~Client(&buf);
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
          }

          if (v36)
          {
            std::__shared_weak_count::__release_weak(v36);
          }

          if (v38 < 0)
          {
            operator delete(v37[0]);
          }

          v11 = v39;
          if (!v39)
          {
            goto LABEL_46;
          }

LABEL_45:
          dispatch_release(v11);
          goto LABEL_46;
        }
      }

      else
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v7);
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      v36 = v8;
      goto LABEL_10;
    }
  }

  v41 = 12;
  strcpy(v40, "coredump.drv");
  v12 = *(v1 + 24);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  v38 = 5;
  strcpy(v37, "ssctl");
  v13 = *(v1 + 16);
  if (!v13 || (v14 = *(v1 + 8), (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v16);
    v17 = std::__shared_weak_count::lock(v16);
    if (v17)
    {
      goto LABEL_33;
    }

LABEL_71:
    v33 = v17;
    goto LABEL_34;
  }

  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_71;
  }

LABEL_33:
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = v17;
LABEL_34:
  std::__shared_weak_count::__release_weak(v16);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  qmi::Client::createWithQueue();
  v18 = v43;
  v43 = 0uLL;
  v19 = *(v1 + 160);
  *(v1 + 152) = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  qmi::Client::~Client(&buf);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v11 = object;
  if (object)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v41 < 0)
  {
    operator delete(v40[0]);
    v20 = *(v1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
LABEL_48:
      v21 = *(v1 + 16);
      if (!v21)
      {
        goto LABEL_60;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v20 = *(v1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }
  }

  LOWORD(buf) = 0;
  _os_log_debug_impl(&dword_296ECF000, v20, OS_LOG_TYPE_DEBUG, "#D initializing", &buf, 2u);
  v21 = *(v1 + 16);
  if (!v21)
  {
LABEL_60:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_49:
  v22 = *(v1 + 8);
  v23 = std::__shared_weak_count::lock(v21);
  if (!v23)
  {
    goto LABEL_60;
  }

  v24 = v23;
  p_shared_weak_owners = &v23->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v24);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  qmi::Client::setHandler();
  v26 = *(v1 + 16);
  if (!v26 || (v27 = *(v1 + 8), (v28 = std::__shared_weak_count::lock(v26)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v29);
    v30 = std::__shared_weak_count::lock(v29);
    if (v30)
    {
      goto LABEL_56;
    }

LABEL_62:
    buf = 0uLL;
    goto LABEL_63;
  }

  v30 = std::__shared_weak_count::lock(v28);
  if (!v30)
  {
    goto LABEL_62;
  }

LABEL_56:
  v31 = v30;
  atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&buf = v27;
  *(&buf + 1) = v30;
  std::__shared_weak_count::__release_weak(v29);
  if (atomic_fetch_add(v31 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_64;
  }

  (*(*v31 + 16))(v31);
  v29 = v31;
LABEL_63:
  std::__shared_weak_count::__release_weak(v29);
LABEL_64:
  qmi::Client::setClientHandle();
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_weak(*(&buf + 1));
  }

  qmi::Client::start((v1 + 136));
  std::__shared_weak_count::__release_weak(v24);
  std::__shared_weak_count::__release_weak(v24);
  std::__shared_weak_count::__release_weak(v24);
  std::__shared_weak_count::__release_weak(v24);
  v32 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    if (!atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }
  }
}

void sub_296F57A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, char a34)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a34);
  v36 = *(v34 - 176);
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
    if ((*(v34 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      v37 = *(v34 - 144);
      if (!v37)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v34 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v34 - 168));
  v37 = *(v34 - 144);
  if (!v37)
  {
LABEL_8:
    if (*(v34 - 113) < 0)
    {
      operator delete(*(v34 - 136));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v34 - 80);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v34 - 80);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v37);
  goto LABEL_8;
}

void ___ZN8coredump19QMICommandDriverM204initEv_block_invoke_2(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *v7 = 0;
          _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D stopped", v7, 2u);
        }

        boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::operator()(*(v3 + 56), 1);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F57C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN8coredump13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN8coredump13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN8coredump19QMICommandDriverM204initEv_block_invoke_4(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *v7 = 0;
          _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D started", v7, 2u);
        }

        boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::operator()(*(v3 + 56), 0);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_296F57DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN8coredump19QMICommandDriverM204initEv_block_invoke_8(void *a1, xpc_object_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v15 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (a1[5])
  {
    v13 = a2;
    if (a2)
    {
      xpc_retain(a2);
      v7 = *(v5 + 40);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2 = xpc_null_create();
      v13 = a2;
      v7 = *(v5 + 40);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }
    }

    xpc::object::to_string(__p, &v13);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315138;
    v17 = v10;
    _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D server error %s", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    a2 = v13;
LABEL_8:
    xpc_release(a2);
    v6 = v15;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_296F57F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, char a13)
{
  xpc_release(object);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_296F57F84(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void coredump::QMICommandDriverM20::fetchPostBootCrashReason(coredump::QMICommandDriverM20 *this)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_25;
  v9[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E1B078;
  block[5] = v3;
  v11 = v5;
  p_shared_owners = &v5->__shared_owners_;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v6, block);
  v8 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

void ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (v1[19])
  {
    v2 = v1[2];
    if (!v2 || (v3 = v1[1], (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v5 = v4;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v5);
    }

    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v6;
    v17[1] = v6;
    qmi::MutableMessageBase::MutableMessageBase(v17);
    v12 = v1 + 17;
    v13 = QMIServiceMsg::create();
    v14 = 25000;
    v15 = 0;
    v16 = 0;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_14;
    v10[3] = &__block_descriptor_tmp_24_3;
    v10[4] = v1;
    v10[5] = v3;
    v11 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v19 = ___ZNO3qmi6Client9SendProxy8callbackIRKN5ssctl3abm16GetFailureReason8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v20 = &unk_29EE5F460;
    v21 = v10;
    v16 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v16)
    {
      _Block_release(v16);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    qmi::MutableMessageBase::~MutableMessageBase(v17);
    std::__shared_weak_count::__release_weak(v5);
    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v8 = v1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(aBlock) = 136315138;
      *(&aBlock + 4) = "fetchPostBootCrashReason_block_invoke";
      _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "%s: No client, bail", &aBlock, 0xCu);
    }

    v9 = *MEMORY[0x29EDCA608];
  }
}

void sub_296F583B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a16);
  qmi::MutableMessageBase::~MutableMessageBase(&a21);
  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

void sub_296F583F0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_14(void *a1, qmi::MessageBase *a2)
{
  v154 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_114;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v112 = v6;
  if (!v6)
  {
    goto LABEL_114;
  }

  if (a1[5])
  {
    v103 = 0;
    v104 = &v103;
    v105 = 0x4002000000;
    v106 = __Block_byref_object_copy__6;
    v107 = __Block_byref_object_dispose__6;
    v108 = &v108;
    v109 = &v108;
    v110 = 0;
    if (*(a2 + 1))
    {
      v7 = *(v5 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296ECF000, v7, OS_LOG_TYPE_ERROR, "Failed: Getting PostBootCrashReason response", buf, 2u);
      }
    }

    else
    {
      v101 = v102;
      v102[0] = MEMORY[0x29EDCA5F8];
      v102[1] = 0x40000000;
      v102[2] = ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_15;
      v102[3] = &unk_29EE5F3A8;
      v102[4] = &v103;
      v102[5] = v5;
      v98[0] = MEMORY[0x29EDCA5F8];
      v98[1] = 0x40000000;
      v99 = ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_18;
      v100 = &unk_29EE5F3D0;
      TlvValue = qmi::MessageBase::findTlvValue(a2);
      v18 = TlvValue;
      if (TlvValue)
      {
        v19 = v17;
        *&v124 = TlvValue;
        memset(buf, 170, 24);
        tlv::parseV<ssctl::tlv::abm::ExtendedErrorMessages>(&v124, v17, buf);
        v20 = v124;
        if (v124)
        {
          v99(v98, buf);
        }

        v21 = *buf;
        if (*buf)
        {
          v22 = *&buf[8];
          v23 = *buf;
          if (*&buf[8] != *buf)
          {
            do
            {
              v24 = *(v22 - 1);
              v22 -= 3;
              if (v24 < 0)
              {
                operator delete(*v22);
              }
            }

            while (v22 != v21);
            v23 = *buf;
          }

          *&buf[8] = v21;
          operator delete(v23);
        }

        if (!v20)
        {
          (*MEMORY[0x29EDC91A8])(*a2, 17, v18, v19);
        }
      }

      v94[0] = MEMORY[0x29EDCA5F8];
      v94[1] = 0x40000000;
      v95 = ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_2;
      v96 = &unk_29EE5F3F8;
      v97 = v102;
      v82 = qmi::MessageBase::findTlvValue(a2);
      v84 = v82;
      if (v82)
      {
        v85 = v83;
        *&v124 = v82;
        memset(buf, 170, 24);
        tlv::parseV<ssctl::tlv::abm::ErrorMessages>(&v124, v83, buf);
        v86 = v124;
        if (v124)
        {
          v95(v94, buf);
        }

        v87 = *buf;
        if (*buf)
        {
          v88 = *&buf[8];
          v89 = *buf;
          if (*&buf[8] != *buf)
          {
            do
            {
              v90 = *(v88 - 1);
              v88 -= 3;
              if (v90 < 0)
              {
                operator delete(*v88);
              }
            }

            while (v88 != v87);
            v89 = *buf;
          }

          *&buf[8] = v87;
          operator delete(v89);
        }

        if (!v86)
        {
          (*MEMORY[0x29EDC91A8])(*a2, 16, v84, v85);
        }
      }
    }

    v8 = v104 + 5;
    v91 = &v91;
    v92 = &v91;
    v93 = 0;
    v9 = v104[6];
    if (v9 == v104 + 5)
    {
      v13 = *(v5 + 80);
      v113 = &v113;
      v114 = &v113;
      i = 0;
    }

    else
    {
      do
      {
        v10 = std::__list_imp<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>::__create_node[abi:ne200100]<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash const&>((v9 + 2));
        v11 = v91;
        *v10 = v91;
        *(v10 + 1) = &v91;
        *(v11 + 1) = v10;
        v91 = v10;
        ++v93;
        v9 = v9[1];
      }

      while (v9 != v8);
      v12 = v92;
      v13 = *(v5 + 80);
      v113 = &v113;
      v114 = &v113;
      for (i = 0; v12 != &v91; v12 = v12[1])
      {
        v14 = std::__list_imp<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>::__create_node[abi:ne200100]<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash const&>((v12 + 2));
        v15 = v113;
        *v14 = v113;
        *(v14 + 1) = &v113;
        *(v15 + 1) = v14;
        v113 = v14;
        ++i;
      }
    }

    v122 = 0;
    v123 = 0;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v140 = v25;
    v141 = v25;
    v138 = v25;
    v139 = v25;
    v136 = v25;
    v137 = v25;
    v134 = v25;
    v135 = v25;
    *buf = v25;
    *&buf[16] = v25;
    v26 = *(v13 + 24);
    *&v142 = 10;
    *(&v142 + 1) = buf;
    *&v143 = 0;
    *(&v143 + 1) = v26;
    pthread_mutex_lock(v26);
    v27 = *(v13 + 8);
    if (v27)
    {
      explicit = atomic_load_explicit(v27 + 2, memory_order_acquire);
      v29 = *v13;
      if (explicit == 1)
      {
        v30 = *v29;
        v31 = *(v13 + 16);
        if (v31 == *v29)
        {
          v31 = *(v30 + 8);
        }

        *&v124 = v31;
        if (v30 != v31)
        {
          v32 = v31[2];
          if (*(v32 + 24))
          {
            v31 = v31[1];
          }

          else
          {
            v31 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::erase(v30, (v32 + 64), &v124);
            v29 = *v13;
          }
        }

        *(v13 + 16) = v31;
      }

      v27 = *(v13 + 8);
      if (v27)
      {
        atomic_fetch_add_explicit(v27 + 2, 1u, memory_order_relaxed);
      }
    }

    else
    {
      v29 = *v13;
    }

    v33 = v123;
    v122 = v29;
    v123 = v27;
    if (v33)
    {
      if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v33 + 16))(v33);
        if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v33 + 24))(v33);
        }
      }
    }

    pthread_mutex_unlock(*(&v143 + 1));
    v34 = *(&v142 + 1);
    if (*(&v142 + 1))
    {
      if (v143 > 0)
      {
        v80 = *(&v142 + 1) + 16 * v143;
        do
        {
          v81 = *(v80 - 8);
          if (v81)
          {
            if (atomic_fetch_add(v81 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v81 + 16))(v81);
              if (atomic_fetch_add(v81 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v81 + 24))(v81);
              }
            }
          }

          v80 -= 16;
        }

        while (v80 > v34);
      }

      if (v142 >= 0xB)
      {
        operator delete(*(&v142 + 1));
      }
    }

    *&v35 = 0xAAAAAAAAAAAAAAAALL;
    *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v145 = v35;
    v146 = v35;
    v143 = v35;
    v144 = v35;
    v141 = v35;
    v142 = v35;
    v139 = v35;
    v140 = v35;
    v137 = v35;
    v138 = v35;
    v135 = v35;
    v136 = v35;
    *&buf[16] = v35;
    v134 = v35;
    *buf = v35;
    buf[0] = 0;
    v147 = 0xAAAAAAAAAAAAAAAALL;
    v148 = 10;
    v149 = &buf[8];
    v150 = 0;
    v153 = 0;
    v151 = &v113;
    v152 = 0;
    v36 = v122;
    v37 = *v122;
    v119 = buf;
    v120 = v13;
    v121 = v37;
    *&v117 = *(v37 + 8);
    *(&v117 + 1) = v37;
    *&v118 = buf;
    *(&v118 + 1) = v37;
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>::lock_next_callable(&v117);
    v116[0] = *v36;
    v116[1] = v116[0];
    v116[2] = buf;
    v116[3] = v116[0];
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>::lock_next_callable(v116);
    v124 = v117;
    v125 = v118;
    v38 = v116[0];
    v39 = v117;
    if (v117 == v116[0])
    {
      if (HIDWORD(v152) <= v152)
      {
LABEL_83:
        boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>>>::~slot_call_iterator_cache(buf);
        v65 = v123;
        if (v123)
        {
          if (atomic_fetch_add(v123 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v65 + 16))(v65);
            if (atomic_fetch_add(v65 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v65 + 24))(v65);
            }
          }
        }

        if (!i || (v66 = v114, v67 = *(v113 + 1), v68 = *v114, *(v68 + 1) = v67, *v67 = v68, i = 0, v66 == &v113))
        {
LABEL_95:
          if (!v93 || (v70 = v92, v71 = *(v91 + 1), v72 = *v92, *(v72 + 1) = v71, *v71 = v72, v93 = 0, v70 == &v91))
          {
LABEL_103:
            _Block_object_dispose(&v103, 8);
            if (!v110 || (v74 = v109, v75 = *(v108 + 8), v76 = *v109, *(v76 + 8) = v75, *v75 = v76, v110 = 0, v74 == &v108))
            {
LABEL_111:
              v6 = v112;
              if (!v112)
              {
                goto LABEL_114;
              }

              goto LABEL_112;
            }

            while (1)
            {
              v77 = v74[1];
              if (*(v74 + 63) < 0)
              {
                operator delete(v74[5]);
                if ((*(v74 + 39) & 0x80000000) == 0)
                {
                  goto LABEL_107;
                }

LABEL_110:
                operator delete(v74[2]);
                operator delete(v74);
                v74 = v77;
                if (v77 == &v108)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                if (*(v74 + 39) < 0)
                {
                  goto LABEL_110;
                }

LABEL_107:
                operator delete(v74);
                v74 = v77;
                if (v77 == &v108)
                {
                  goto LABEL_111;
                }
              }
            }
          }

          while (1)
          {
            v73 = v70[1];
            if (*(v70 + 63) < 0)
            {
              operator delete(v70[5]);
              if ((*(v70 + 39) & 0x80000000) == 0)
              {
                goto LABEL_99;
              }

LABEL_102:
              operator delete(v70[2]);
              operator delete(v70);
              v70 = v73;
              if (v73 == &v91)
              {
                goto LABEL_103;
              }
            }

            else
            {
              if (*(v70 + 39) < 0)
              {
                goto LABEL_102;
              }

LABEL_99:
              operator delete(v70);
              v70 = v73;
              if (v73 == &v91)
              {
                goto LABEL_103;
              }
            }
          }
        }

        while (1)
        {
          v69 = v66[1];
          if (*(v66 + 63) < 0)
          {
            operator delete(v66[5]);
            if ((*(v66 + 39) & 0x80000000) == 0)
            {
              goto LABEL_91;
            }

LABEL_94:
            operator delete(v66[2]);
            operator delete(v66);
            v66 = v69;
            if (v69 == &v113)
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (*(v66 + 39) < 0)
            {
              goto LABEL_94;
            }

LABEL_91:
            operator delete(v66);
            v66 = v69;
            if (v69 == &v113)
            {
              goto LABEL_95;
            }
          }
        }
      }

LABEL_82:
      boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::force_cleanup_connections(v120, v121);
      goto LABEL_83;
    }

    v40 = v125;
    v41 = *v125;
    while ((v41 & 1) != 0)
    {
LABEL_76:
      *&v124 = *(v39 + 8);
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>::lock_next_callable(&v124);
      v40 = v125;
      if (*v125 == 1)
      {
        *v125 = 0;
      }

      v41 = 0;
      v39 = v124;
      if (v124 == v38)
      {
        if (*(v119 + 71) <= *(v119 + 70))
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }
    }

    v42 = *(v40 + 272);
    v43 = *(*(v39 + 16) + 32);
    v44 = &v126;
    v126 = &v126;
    v127 = &v126;
    v128 = 0;
    v45 = *(v42 + 8);
    if (v45 == v42)
    {
      v46 = 0;
    }

    else
    {
      do
      {
        v58 = operator new(0x48uLL);
        v44 = v58;
        *v58 = 0;
        *(v58 + 1) = 0;
        if (*(v45 + 39) < 0)
        {
          std::string::__init_copy_ctor_external((v58 + 16), *(v45 + 16), *(v45 + 24));
        }

        else
        {
          v59 = *(v45 + 16);
          *(v58 + 4) = *(v45 + 32);
          *(v58 + 1) = v59;
        }

        if (*(v45 + 63) < 0)
        {
          std::string::__init_copy_ctor_external((v44 + 5), *(v45 + 40), *(v45 + 48));
        }

        else
        {
          v56 = *(v45 + 40);
          v44[7] = *(v45 + 56);
          *(v44 + 5) = v56;
        }

        v44[8] = *(v45 + 64);
        v57 = v126;
        *v44 = v126;
        v44[1] = &v126;
        v57[1] = v44;
        v46 = v128 + 1;
        v126 = v44;
        ++v128;
        v45 = *(v45 + 8);
      }

      while (v45 != v42);
    }

    v47 = *(v43 + 24);
    if (!v47)
    {
      std::runtime_error::runtime_error(&v132, "call to empty boost::function");
      v132.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v132);
    }

    v48 = *((v47 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v129 = &v129;
    v130 = &v129;
    v131 = 0;
    if (v46)
    {
      v49 = v127;
      v50 = v44[1];
      v51 = *v127;
      *(v51 + 8) = v50;
      *v50 = v51;
      v52 = v129;
      v129[1] = v49;
      *v49 = v52;
      v44[1] = &v129;
      v128 = 0;
      v129 = v44;
      v131 = v46;
    }

    v48(v43 + 32, &v129);
    if (!v131 || (v53 = v130, v54 = v129[1], v55 = *v130, *(v55 + 8) = v54, *v54 = v55, v131 = 0, v53 == &v129))
    {
LABEL_66:
      if (!v128 || (v61 = v127, v62 = v126[1], v63 = *v127, *(v63 + 8) = v62, *v62 = v63, v128 = 0, v61 == &v126))
      {
LABEL_74:
        if ((*v40 & 1) == 0)
        {
          *v40 = 1;
        }

        goto LABEL_76;
      }

      while (1)
      {
        v64 = v61[1];
        if (*(v61 + 63) < 0)
        {
          operator delete(v61[5]);
          if ((*(v61 + 39) & 0x80000000) == 0)
          {
            goto LABEL_70;
          }

LABEL_73:
          operator delete(v61[2]);
          operator delete(v61);
          v61 = v64;
          if (v64 == &v126)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (*(v61 + 39) < 0)
          {
            goto LABEL_73;
          }

LABEL_70:
          operator delete(v61);
          v61 = v64;
          if (v64 == &v126)
          {
            goto LABEL_74;
          }
        }
      }
    }

    while (1)
    {
      v60 = v53[1];
      if (*(v53 + 63) < 0)
      {
        operator delete(v53[5]);
        if ((*(v53 + 39) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

LABEL_65:
        operator delete(v53[2]);
        operator delete(v53);
        v53 = v60;
        if (v60 == &v129)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (*(v53 + 39) < 0)
        {
          goto LABEL_65;
        }

LABEL_62:
        operator delete(v53);
        v53 = v60;
        if (v60 == &v129)
        {
          goto LABEL_66;
        }
      }
    }
  }

LABEL_112:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v78 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v78);
  }

LABEL_114:
  v79 = *MEMORY[0x29EDCA608];
}

void sub_296F5910C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_296F591C4(uint64_t a1, ...)
{
  va_start(va, a1);
  std::__list_imp<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>::clear(va);
  JUMPOUT(0x296F591D0);
}

char *std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[63] < 0)
        {
          operator delete(*(v2 + 5));
          if (v2[39] < 0)
          {
LABEL_9:
            operator delete(*(v2 + 2));
          }
        }

        else if (v2[39] < 0)
        {
          goto LABEL_9;
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_15(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    v4 = *a2;
    v3 = a2[1];
  }

  v5 = *(a1 + 40);
  v31 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[14] = v6;
  v30[15] = v6;
  v30[12] = v6;
  v30[13] = v6;
  v30[10] = v6;
  v30[11] = v6;
  v30[8] = v6;
  v30[9] = v6;
  v30[6] = v6;
  v30[7] = v6;
  v30[4] = v6;
  v30[5] = v6;
  v30[2] = v6;
  v30[3] = v6;
  v30[0] = v6;
  v30[1] = v6;
  v29[2] = v6;
  v29[3] = v6;
  v29[0] = v6;
  v29[1] = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  if (!ETLEFCopyCrashLocationDetailsM20())
  {
    v13 = *(v5 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18[0]) = 0;
      _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "Failed to parse failure reason string", v18, 2u);
      v14 = *MEMORY[0x29EDCA608];
      return;
    }

    goto LABEL_23;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  *v18 = 0u;
  memset(__p, 0, sizeof(__p));
  std::string::__assign_external(v18, v30 + 4, 0x100uLL);
  std::string::__assign_external(&__p[1], v29 + 4, 0x40uLL);
  LODWORD(v20) = v25;
  v7 = *(v5 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v18;
    if (SHIBYTE(__p[0]) < 0)
    {
      v8 = v18[0];
    }

    *buf = 136446210;
    v22 = v8;
    _os_log_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEFAULT, "#I Crash Reason: %{public}s", buf, 0xCu);
    v7 = *(v5 + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (SHIBYTE(__p[3]) >= 0)
    {
      v9 = &__p[1];
    }

    else
    {
      v9 = __p[1];
    }

    *buf = 136446466;
    v22 = v9;
    v23 = 1024;
    v24 = v20;
    _os_log_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEFAULT, "#I Crash File: %{public}s, Crash line: %d", buf, 0x12u);
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = operator new(0x48uLL);
  v12 = v11;
  *v11 = 0;
  *(v11 + 1) = 0;
  if (SHIBYTE(__p[0]) < 0)
  {
    std::string::__init_copy_ctor_external((v11 + 16), v18[0], v18[1]);
  }

  else
  {
    *(v11 + 1) = *v18;
    *(v11 + 4) = __p[0];
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    std::string::__init_copy_ctor_external((v12 + 40), __p[1], __p[2]);
  }

  else
  {
    *(v12 + 40) = *&__p[1];
    *(v12 + 7) = __p[3];
  }

  *(v12 + 8) = v20;
  *(v12 + 1) = v10 + 40;
  v15 = *(v10 + 40);
  *v12 = v15;
  *(v15 + 8) = v12;
  *(v10 + 40) = v12;
  ++*(v10 + 56);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    operator delete(v18[0]);
    v17 = *MEMORY[0x29EDCA608];
    return;
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296F5958C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 39) < 0)
  {
    operator delete(*(v9 + 16));
  }

  operator delete(v9);
  std::pair<std::string,std::string>::~pair(&a9);
  _Unwind_Resume(a1);
}

void ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_18(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *(a1 + 32);
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
      }

      else
      {
        v6 = *v2;
        __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
        *&__p.__r_.__value_.__l.__data_ = v6;
      }

      (*(v5 + 16))(v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v2 = (v2 + 24);
    }

    while (v2 != v3);
  }
}

void sub_296F59678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8coredump19QMICommandDriverM2024fetchPostBootCrashReasonEv_block_invoke_2(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *(a1 + 32);
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
      }

      else
      {
        v6 = *v2;
        __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
        *&__p.__r_.__value_.__l.__data_ = v6;
      }

      (*(v5 + 16))(v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v2 = (v2 + 24);
    }

    while (v2 != v3);
  }
}

void sub_296F59734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void coredump::QMICommandDriverM20::crashBaseband(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "crashBaseband";
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I %s: Deprecated", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void coredump::QMICommandDriverM20::getCoreDumpEnabledStatus(coredump::QMICommandDriverM20 *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "getCoreDumpEnabledStatus";
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I %s:Deprecated", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

uint64_t coredump::QMICommandDriverM20::setCoreDumpEnabledStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "setCoreDumpEnabledStatus";
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Deprecated", &v7, 0xCu);
  }

  result = (*(*a3 + 16))();
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void *boost::signals2::signal<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E1ADD0;
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

{
  *result = &unk_2A1E1ADD0;
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

void *boost::signals2::signal<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E1AB80;
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

{
  *result = &unk_2A1E1AB80;
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

void *ctu::SharedSynchronizable<coredump::CommandDriver>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void boost::signals2::signal<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E1AB80;
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

uint64_t boost::signals2::signal<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = operator new(0x20uLL);
      v8 = v4[3];
      v7[2] = v4[2];
      v7[3] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
        v6 = *a1;
        v5 = *(a1 + 16);
      }

      *v7 = v6;
      v7[1] = a1;
      v6[1] = v7;
      *a1 = v7;
      *(a1 + 16) = ++v5;
      v4 = v4[1];
      v6 = v7;
    }

    while (v4 != a2);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  v45 = (a1 + 24);
  *(a1 + 24) = a1 + 32;
  v10 = *(a2 + 24);
  v11 = (a2 + 32);
  if (v10 != (a2 + 32))
  {
    do
    {
      v25 = *(v10 + 8);
      v26 = *v45;
      v27 = *v9;
      v28 = (a1 + 32);
      if (*v45 != v9)
      {
        v29 = *v9;
        v30 = (a1 + 32);
        if (v27)
        {
          do
          {
            v28 = v29;
            v29 = v29[1];
          }

          while (v29);
        }

        else
        {
          do
          {
            v28 = v30[2];
            v20 = *v28 == v30;
            v30 = v28;
          }

          while (v20);
        }

        v31 = *(v10 + 10);
        v32 = *(v28 + 8);
        if (v32 == v25)
        {
          if (v25 != 1)
          {
            goto LABEL_52;
          }

          if (*(v28 + 10) >= v31)
          {
            v33 = *v9;
            v34 = (a1 + 32);
            v35 = (a1 + 32);
            if (v27)
            {
              goto LABEL_56;
            }

LABEL_63:
            v39 = operator new(0x38uLL);
            v40 = *(v10 + 2);
            v39[6] = v10[6];
            *(v39 + 2) = v40;
            *v39 = 0;
            v39[1] = 0;
            v39[2] = v35;
            *v34 = v39;
            if (*v26)
            {
              *v45 = *v26;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v39);
            ++*(a1 + 40);
            goto LABEL_66;
          }
        }

        else if (v32 >= v25)
        {
LABEL_52:
          v34 = (a1 + 32);
          v35 = (a1 + 32);
          if (!v27)
          {
            goto LABEL_63;
          }

          v33 = *v9;
          if (v25 != 1)
          {
            v36 = *(v27 + 8);
            v35 = *v9;
            while (v25 != v36)
            {
              if (v25 < v36)
              {
                v43 = *v35;
                v34 = v35;
                if (!*v35)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v36 >= v25)
                {
                  goto LABEL_66;
                }

                v43 = v35[1];
                if (!v43)
                {
                  goto LABEL_62;
                }
              }

              v36 = *(v43 + 32);
              v35 = v43;
            }

            goto LABEL_66;
          }

          while (1)
          {
LABEL_56:
            v35 = v33;
            v37 = *(v33 + 8);
            if (v37 == 1)
            {
              v38 = *(v33 + 10);
              if (v38 > v31)
              {
                goto LABEL_55;
              }

              if (v38 >= v31)
              {
                goto LABEL_66;
              }
            }

            else if (v37 > 1)
            {
LABEL_55:
              v33 = *v33;
              v34 = v35;
              if (!*v35)
              {
                goto LABEL_63;
              }

              continue;
            }

            v33 = v33[1];
            if (!v33)
            {
LABEL_62:
              v34 = v35 + 1;
              goto LABEL_63;
            }
          }
        }
      }

      if (v27)
      {
        v35 = v28;
      }

      else
      {
        v35 = (a1 + 32);
      }

      if (v27)
      {
        v34 = v28 + 1;
      }

      else
      {
        v34 = (a1 + 32);
      }

      if (!*v34)
      {
        goto LABEL_63;
      }

LABEL_66:
      v41 = v10[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v10[2];
          v20 = *v42 == v10;
          v10 = v42;
        }

        while (!v20);
      }

      v10 = v42;
    }

    while (v42 != v11);
  }

  *(a1 + 56) = *(a2 + 56);
  v12 = *(a2 + 24);
  if (v12 != v11)
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 8);
    do
    {
      v13[6] = v14;
      v15 = a2;
      if (v12 != v11)
      {
        v15 = v12[6];
      }

      v16 = v12[1];
      v17 = v16;
      v18 = v12;
      if (v16)
      {
        do
        {
          v19 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v19 = v18[2];
          v20 = *v19 == v18;
          v18 = v19;
        }

        while (!v20);
      }

      v21 = a2;
      if (v19 != v11)
      {
        v21 = v19[6];
      }

      while (v15 != v21)
      {
        v15 = *(v15 + 8);
        v14 = *(v14 + 8);
      }

      if (v16)
      {
        do
        {
          v22 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v22 = v12[2];
          v20 = *v22 == v12;
          v12 = v22;
        }

        while (!v20);
      }

      v23 = v13[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v13[2];
          v20 = *v24 == v13;
          v13 = v24;
        }

        while (!v20);
      }

      v12 = v22;
      v13 = v24;
    }

    while (v22 != v11);
  }

  return a1;
}

void sub_296F5A270(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v2);
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E1ABF0;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296F5A37C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
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

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E1AC50;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296F5A6F8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete(v1);
  }

  __cxa_rethrow();
}

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E1ACB0;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296F5A8DC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
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

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E1AD10;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296F5ADAC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::mutex>(v1);
  __cxa_rethrow();
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

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>>::dispose(uint64_t a1)
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

void boost::signals2::signal<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E1ADD0;
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

uint64_t boost::signals2::signal<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = operator new(0x20uLL);
      v8 = v4[3];
      v7[2] = v4[2];
      v7[3] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
        v6 = *a1;
        v5 = *(a1 + 16);
      }

      *v7 = v6;
      v7[1] = a1;
      v6[1] = v7;
      *a1 = v7;
      *(a1 + 16) = ++v5;
      v4 = v4[1];
      v6 = v7;
    }

    while (v4 != a2);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9 = (a1 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  v45 = (a1 + 24);
  *(a1 + 24) = a1 + 32;
  v10 = *(a2 + 24);
  v11 = (a2 + 32);
  if (v10 != (a2 + 32))
  {
    do
    {
      v25 = *(v10 + 8);
      v26 = *v45;
      v27 = *v9;
      v28 = (a1 + 32);
      if (*v45 != v9)
      {
        v29 = *v9;
        v30 = (a1 + 32);
        if (v27)
        {
          do
          {
            v28 = v29;
            v29 = v29[1];
          }

          while (v29);
        }

        else
        {
          do
          {
            v28 = v30[2];
            v20 = *v28 == v30;
            v30 = v28;
          }

          while (v20);
        }

        v31 = *(v10 + 10);
        v32 = *(v28 + 8);
        if (v32 == v25)
        {
          if (v25 != 1)
          {
            goto LABEL_52;
          }

          if (*(v28 + 10) >= v31)
          {
            v33 = *v9;
            v34 = (a1 + 32);
            v35 = (a1 + 32);
            if (v27)
            {
              goto LABEL_56;
            }

LABEL_63:
            v39 = operator new(0x38uLL);
            v40 = *(v10 + 2);
            v39[6] = v10[6];
            *(v39 + 2) = v40;
            *v39 = 0;
            v39[1] = 0;
            v39[2] = v35;
            *v34 = v39;
            if (*v26)
            {
              *v45 = *v26;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v39);
            ++*(a1 + 40);
            goto LABEL_66;
          }
        }

        else if (v32 >= v25)
        {
LABEL_52:
          v34 = (a1 + 32);
          v35 = (a1 + 32);
          if (!v27)
          {
            goto LABEL_63;
          }

          v33 = *v9;
          if (v25 != 1)
          {
            v36 = *(v27 + 8);
            v35 = *v9;
            while (v25 != v36)
            {
              if (v25 < v36)
              {
                v43 = *v35;
                v34 = v35;
                if (!*v35)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v36 >= v25)
                {
                  goto LABEL_66;
                }

                v43 = v35[1];
                if (!v43)
                {
                  goto LABEL_62;
                }
              }

              v36 = *(v43 + 32);
              v35 = v43;
            }

            goto LABEL_66;
          }

          while (1)
          {
LABEL_56:
            v35 = v33;
            v37 = *(v33 + 8);
            if (v37 == 1)
            {
              v38 = *(v33 + 10);
              if (v38 > v31)
              {
                goto LABEL_55;
              }

              if (v38 >= v31)
              {
                goto LABEL_66;
              }
            }

            else if (v37 > 1)
            {
LABEL_55:
              v33 = *v33;
              v34 = v35;
              if (!*v35)
              {
                goto LABEL_63;
              }

              continue;
            }

            v33 = v33[1];
            if (!v33)
            {
LABEL_62:
              v34 = v35 + 1;
              goto LABEL_63;
            }
          }
        }
      }

      if (v27)
      {
        v35 = v28;
      }

      else
      {
        v35 = (a1 + 32);
      }

      if (v27)
      {
        v34 = v28 + 1;
      }

      else
      {
        v34 = (a1 + 32);
      }

      if (!*v34)
      {
        goto LABEL_63;
      }

LABEL_66:
      v41 = v10[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v10[2];
          v20 = *v42 == v10;
          v10 = v42;
        }

        while (!v20);
      }

      v10 = v42;
    }

    while (v42 != v11);
  }

  *(a1 + 56) = *(a2 + 56);
  v12 = *(a2 + 24);
  if (v12 != v11)
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 8);
    do
    {
      v13[6] = v14;
      v15 = a2;
      if (v12 != v11)
      {
        v15 = v12[6];
      }

      v16 = v12[1];
      v17 = v16;
      v18 = v12;
      if (v16)
      {
        do
        {
          v19 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v19 = v18[2];
          v20 = *v19 == v18;
          v18 = v19;
        }

        while (!v20);
      }

      v21 = a2;
      if (v19 != v11)
      {
        v21 = v19[6];
      }

      while (v15 != v21)
      {
        v15 = *(v15 + 8);
        v14 = *(v14 + 8);
      }

      if (v16)
      {
        do
        {
          v22 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v22 = v12[2];
          v20 = *v22 == v12;
          v12 = v22;
        }

        while (!v20);
      }

      v23 = v13[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v13[2];
          v20 = *v24 == v13;
          v13 = v24;
        }

        while (!v20);
      }

      v12 = v22;
      v13 = v24;
    }

    while (v22 != v11);
  }

  return a1;
}

void sub_296F5B8A0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v2);
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E1AE40;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296F5B9AC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
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

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E1AEA0;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296F5BDD4(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
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

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>>::dispose(uint64_t a1)
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

void *boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E1AF60;
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
  *a1 = &unk_2A1E1AF60;
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
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy((a1 + 3), a1[4]);
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

void std::__list_imp<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[63] < 0)
        {
          operator delete(*(v2 + 5));
          if (v2[39] < 0)
          {
LABEL_9:
            operator delete(*(v2 + 2));
          }
        }

        else if (v2[39] < 0)
        {
          goto LABEL_9;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__shared_ptr_pointer<coredump::QMICommandDriverM20 *,std::shared_ptr<coredump::QMICommandDriverM20> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::QMICommandDriverM20>(coredump::QMICommandDriverM20*)::{lambda(coredump::QMICommandDriverM20 *)#1},std::allocator<coredump::QMICommandDriverM20>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<coredump::QMICommandDriverM20 *,std::shared_ptr<coredump::QMICommandDriverM20> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::QMICommandDriverM20>(coredump::QMICommandDriverM20*)::{lambda(coredump::QMICommandDriverM20 *)#1},std::allocator<coredump::QMICommandDriverM20>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_19QMICommandDriverM20EEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<coredump::QMICommandDriverM20> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::QMICommandDriverM20>(coredump::QMICommandDriverM20*)::{lambda(coredump::QMICommandDriverM20*)#1}::operator() const(coredump::QMICommandDriverM20*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::operator()(uint64_t a1, int a2)
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
  v4 = *(a1 + 24);
  __p[0] = 10;
  __p[1] = &v39;
  v50[0] = 0;
  v50[1] = v4;
  pthread_mutex_lock(v4);
  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit(v5 + 2, memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = *(a1 + 16);
    if (v9 == *v7)
    {
      v9 = *(v8 + 8);
      *&v36 = v9;
      if (v8 == v9)
      {
LABEL_10:
        *(a1 + 16) = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v36 = *(a1 + 16);
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v36);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
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
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coredump::CommandDriver::Status>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>::lock_next_callable(&v28);
  v27[0] = *v14;
  v27[1] = v27[0];
  v27[2] = &v39;
  v27[3] = v27[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coredump::CommandDriver::Status>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>::lock_next_callable(v27);
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
    boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::force_cleanup_connections(v31, v32);
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
        v38.__vftable = &unk_2A1E17188;
        boost::throw_exception<boost::bad_function_call>(&v38);
      }

      (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32, **(v18 + 272));
      if ((*v18 & 1) == 0)
      {
        *v18 = 1;
      }
    }

    *&v36 = *(v17 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coredump::CommandDriver::Status>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>::lock_next_callable(&v36);
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
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coredump::CommandDriver::Status>>::~slot_call_iterator_cache(&v39);
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

void sub_296F5D344(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296F5D3A8);
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
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
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coredump::CommandDriver::Status>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 284);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 280);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 288);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 288) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 288);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 288) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 288);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 288) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296F5DD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296F5DD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[8] = v4;
  v22[9] = v4;
  v22[6] = v4;
  v22[7] = v4;
  v22[4] = v4;
  v22[5] = v4;
  v22[2] = v4;
  v22[3] = v4;
  v22[0] = v4;
  v22[1] = v4;
  v5 = *(a1 + 24);
  v23 = 10;
  __p = v22;
  v25 = 0;
  v26 = v5;
  pthread_mutex_lock(v5);
  if (**a1 == a2)
  {
    v6 = *(a1 + 8);
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      v7 = operator new(0x20uLL);
      v8 = *a1;
      v9 = **a1;
      v10 = operator new(0x40uLL);
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>(v10, v7 + 1);
      *(v7 + 2) = v8[2];
      v11 = v8[3];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      v21 = v7;
      boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>(v7, &v21 + 1);
      v12 = *a1;
      v13 = *(a1 + 8);
      *a1 = v21;
      *&v21 = v12;
      *(&v21 + 1) = v13;
      if (v13)
      {
        if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v13 + 16))(v13);
          if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v13 + 24))(v13);
          }
        }
      }
    }

    v14 = **a1;
    v15 = *(v14 + 8);
    *&v21 = v15;
    if (v14 != v15)
    {
      do
      {
        while (1)
        {
          v16 = v15[2];
          if ((*(v16 + 24) & 1) == 0)
          {
            break;
          }

          v15 = v15[1];
          *&v21 = v15;
          if (v15 == v14)
          {
            goto LABEL_15;
          }
        }

        v15 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::erase(v14, (v16 + 64), &v21);
        v14 = **a1;
        *&v21 = v15;
      }

      while (v15 != v14);
LABEL_15:
      v15 = v14;
    }

    *(a1 + 16) = v15;
  }

  pthread_mutex_unlock(v26);
  v17 = __p;
  if (__p)
  {
    if (v25 > 0)
    {
      v19 = __p + 16 * v25;
      do
      {
        v20 = *(v19 - 1);
        if (v20)
        {
          if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v20 + 16))(v20);
            if (atomic_fetch_add(v20 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v20 + 24))(v20);
            }
          }
        }

        v19 -= 16;
      }

      while (v19 > v17);
    }

    if (v23 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_296F5E104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coredump::CommandDriver::Status>>::~slot_call_iterator_cache(uint64_t a1)
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

void sub_296F5E350(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

char *std::__list_imp<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>::__create_node[abi:ne200100]<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash const&>(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  v3 = v2;
  *v2 = 0;
  *(v2 + 1) = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v2 + 16), *a1, *(a1 + 8));
  }

  else
  {
    *(v2 + 1) = *a1;
    *(v2 + 4) = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 40), *(a1 + 24), *(a1 + 32));
    *(v3 + 8) = *(a1 + 48);
  }

  else
  {
    *(v3 + 40) = *(a1 + 24);
    v4 = *(a1 + 48);
    *(v3 + 7) = *(a1 + 40);
    *(v3 + 8) = v4;
  }

  return v3;
}

void sub_296F5E434(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
    operator delete(v1);
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 32);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 40) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 32);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = 8 * (v10 < v6);
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
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
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    goto LABEL_59;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43 = v3;
    v44 = v3;
    v41 = v3;
    v42 = v3;
    v39 = v3;
    v40 = v3;
    v37 = v3;
    v38 = v3;
    v35 = v3;
    v36 = v3;
    v33 = v3;
    v34 = v3;
    v4 = *(*a1 + 16);
    *&v43 = 10;
    *(&v43 + 1) = &v33;
    *&v44 = 0;
    *(&v44 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v45, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v45);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v45);
              v11 = 0;
              if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v33);
          }

          v11 = 1;
          if (LODWORD(v45[0]) == SLODWORD(v45[0]) >> 31)
          {
LABEL_15:
            v12 = v45[2];
            if (v45[2])
            {
              if (atomic_fetch_add((v45[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v45[1])
          {
            (*(*v45[1] + 8))(v45[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 284);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 280);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 288);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v33);
      }

      v16 = 0;
      *(v7 + 288) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 288);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v33);
      }

      *(v7 + 288) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v44 + 1) + 32))(*(&v44 + 1));
    v17 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      if (v44 > 0)
      {
        v20 = *(&v43 + 1) + 16 * v44;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v43 >= 0xB)
      {
        operator delete(*(&v43 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        goto LABEL_59;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    goto LABEL_59;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v25;
  v42 = v25;
  v39 = v25;
  v40 = v25;
  v37 = v25;
  v38 = v25;
  v35 = v25;
  v36 = v25;
  v33 = v25;
  v34 = v25;
  v26 = *(v23 + 16);
  *&v43 = 10;
  *(&v43 + 1) = &v33;
  *&v44 = 0;
  *(&v44 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 288);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v33);
  }

  *(v27 + 288) = 0;
  (*(**(&v44 + 1) + 32))(*(&v44 + 1));
  v29 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    if (v44 > 0)
    {
      v31 = *(&v43 + 1) + 16 * v44;
      do
      {
        v32 = *(v31 - 8);
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        v31 -= 16;
      }

      while (v31 > v29);
    }

    if (v43 >= 0xB)
    {
      operator delete(*(&v43 + 1));
    }
  }

LABEL_59:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296F5EDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296F5EDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[8] = v4;
  v22[9] = v4;
  v22[6] = v4;
  v22[7] = v4;
  v22[4] = v4;
  v22[5] = v4;
  v22[2] = v4;
  v22[3] = v4;
  v22[0] = v4;
  v22[1] = v4;
  v5 = *(a1 + 24);
  v23 = 10;
  __p = v22;
  v25 = 0;
  v26 = v5;
  pthread_mutex_lock(v5);
  if (**a1 == a2)
  {
    v6 = *(a1 + 8);
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      v7 = operator new(0x20uLL);
      v8 = *a1;
      v9 = **a1;
      v10 = operator new(0x40uLL);
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>(v10, v7 + 1);
      *(v7 + 2) = v8[2];
      v11 = v8[3];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      v21 = v7;
      boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>(v7, &v21 + 1);
      v12 = *a1;
      v13 = *(a1 + 8);
      *a1 = v21;
      *&v21 = v12;
      *(&v21 + 1) = v13;
      if (v13)
      {
        if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v13 + 16))(v13);
          if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v13 + 24))(v13);
          }
        }
      }
    }

    v14 = **a1;
    v15 = *(v14 + 8);
    *&v21 = v15;
    if (v14 != v15)
    {
      do
      {
        while (1)
        {
          v16 = v15[2];
          if ((*(v16 + 24) & 1) == 0)
          {
            break;
          }

          v15 = v15[1];
          *&v21 = v15;
          if (v15 == v14)
          {
            goto LABEL_15;
          }
        }

        v15 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::erase(v14, (v16 + 64), &v21);
        v14 = **a1;
        *&v21 = v15;
      }

      while (v15 != v14);
LABEL_15:
      v15 = v14;
    }

    *(a1 + 16) = v15;
  }

  pthread_mutex_unlock(v26);
  v17 = __p;
  if (__p)
  {
    if (v25 > 0)
    {
      v19 = __p + 16 * v25;
      do
      {
        v20 = *(v19 - 1);
        if (v20)
        {
          if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v20 + 16))(v20);
            if (atomic_fetch_add(v20 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v20 + 24))(v20);
            }
          }
        }

        v19 -= 16;
      }

      while (v19 > v17);
    }

    if (v23 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_296F5F1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>>>::~slot_call_iterator_cache(uint64_t a1)
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

void sub_296F5F40C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN5ssctl3abm16GetFailureReason8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v5, __p[0]);
    qmi::MessageBase::validateMsgId(v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = *(this + 6);
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v5);
  }

  (*(v2 + 16))(v2, v5);
  qmi::MessageBase::~MessageBase(v5);
}

void sub_296F5F50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN8coredump13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN8coredump13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t antenna::QMICommandDriver::create@<X0>(NSObject **a1@<X0>, uint64_t *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0xC8uLL);
  v7 = *a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a2;
  v9 = a2[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::QMICommandDriver::QMICommandDriver(v6, &object, v11);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<antenna::QMICommandDriver>::shared_ptr[abi:ne200100]<antenna::QMICommandDriver,std::shared_ptr<antenna::QMICommandDriver> ctu::SharedSynchronizable<antenna::CommandDriver>::make_shared_ptr<antenna::QMICommandDriver>(antenna::QMICommandDriver*)::{lambda(antenna::QMICommandDriver*)#1},0>(a3, v6);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return (*(**a3 + 32))();
}

void sub_296F5F74C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (v4)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t antenna::QMICommandDriver::QMICommandDriver(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  object = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::CommandDriver::CommandDriver();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2A1E1B0B8;
  *(a1 + 168) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a1 + 168;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  return a1;
}

void sub_296F5F870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void antenna::QMICommandDriver::~QMICommandDriver(antenna::QMICommandDriver *this)
{
  *this = &unk_2A1E1B0B8;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v11, 2u);
  }

  v4 = *(this + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    _Block_release(v5);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 21));
  qmi::Client::~Client((this + 128));
  *this = &unk_2A1E1B350;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v6 = *(this + 12);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 10);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 7));
  MEMORY[0x29C268320](v2);
  v8 = *(this + 4);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(uint64_t a1)
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

void antenna::QMICommandDriver::init(antenna::QMICommandDriver *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = (this + 8);
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
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

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN7antenna16QMICommandDriver4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_21_1;
  v9[4] = this;
  v9[5] = v5;
  v10 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped(v4, v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN7antenna16QMICommandDriver4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v131 = 0xAAAAAAAAAAAAAAAALL;
  v132 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v131, *(v2 + 72));
  if (!v131)
  {
    Name = antenna::CommandDriver::getName(v2);
    v13 = strlen(Name);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v13 | 7) + 1;
      }

      p_dst = operator new(v22);
      v126 = v14;
      v127 = v22 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v127) = v13;
      p_dst = &__dst;
      if (!v13)
      {
        LOBYTE(__dst) = 0;
        v16 = *(v2 + 24);
        v119 = v16;
        if (!v16)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    memmove(p_dst, Name, v14);
    *(p_dst + v14) = 0;
    v16 = *(v2 + 24);
    v119 = v16;
    if (!v16)
    {
LABEL_16:
      v123 = 7;
      strcpy(v122, "antenna");
      v118 = 0;
      v17 = a1[6];
      if (v17)
      {
        v18 = std::__shared_weak_count::lock(v17);
        if (v18)
        {
          v19 = v18;
          v20 = a1[5];
          atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v118 = v18;
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v19);
          }
        }

        else
        {
          v118 = 0;
        }
      }

      qmi::Client::createWithQueue();
      v106 = v130;
      v130 = 0uLL;
      v107 = *(v2 + 152);
      *(v2 + 144) = v106;
      if (v107 && !atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v107->__on_zero_shared)(v107);
        std::__shared_weak_count::__release_weak(v107);
      }

      qmi::Client::~Client(&v128);
      if (v118)
      {
        std::__shared_weak_count::__release_weak(v118);
      }

      if (v123 < 0)
      {
        operator delete(v122[0]);
        v25 = v119;
        if (!v119)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v25 = v119;
        if (!v119)
        {
          goto LABEL_47;
        }
      }

LABEL_46:
      dispatch_release(v25);
      goto LABEL_47;
    }

LABEL_15:
    dispatch_retain(v16);
    goto LABEL_16;
  }

  v3 = antenna::CommandDriver::getName(v2);
  v4 = strlen(v3);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v4 | 7) + 1;
    }

    v6 = operator new(v21);
    v126 = v5;
    v127 = v21 | 0x8000000000000000;
    __dst = v6;
  }

  else
  {
    HIBYTE(v127) = v4;
    v6 = &__dst;
    if (!v4)
    {
      LOBYTE(__dst) = 0;
      v7 = *(v2 + 24);
      v124 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  memmove(v6, v3, v5);
  *(v6 + v5) = 0;
  v7 = *(v2 + 24);
  v124 = v7;
  if (v7)
  {
LABEL_6:
    dispatch_retain(v7);
  }

LABEL_7:
  v123 = 7;
  strcpy(v122, "antenna");
  v121 = 0;
  v8 = a1[6];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = a1[5];
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v121 = v9;
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

    else
    {
      v121 = 0;
    }
  }

  v120 = v132;
  if (v132)
  {
    atomic_fetch_add_explicit((v132 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v23 = v130;
  v130 = 0uLL;
  v24 = *(v2 + 152);
  *(v2 + 144) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  qmi::Client::~Client(&v128);
  if (v120 && !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v120->__on_zero_shared)(v120);
    std::__shared_weak_count::__release_weak(v120);
  }

  if (v121)
  {
    std::__shared_weak_count::__release_weak(v121);
  }

  if (v123 < 0)
  {
    operator delete(v122[0]);
  }

  v25 = v124;
  if (v124)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (SHIBYTE(v127) < 0)
  {
    operator delete(__dst);
    v27 = (v2 + 56);
    v26 = *(v2 + 56);
    v28 = "er29EURCoreDumpTraceProtocolCrashENS5_9allocatorISJ_EEEEENS_8functionISN_EEEENS2_5mutexEEEEEEEEE";
    v29 = (v2 + 56);
    v30 = (v2 + 56);
    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v27 = (v2 + 56);
    v26 = *(v2 + 56);
    v28 = "N5boost6detail17sp_counted_impl_pINS_8signals26detail12grouped_listIiNSt3__14lessIiEENS_10shared_ptrINS3_15connection_bodyINS5_4pairINS3_15slot_meta_groupENS_8optionalIiEEEENS2_4slotIFvNS5_4listIN8coredump13CommandDriver29EURCoreDumpTraceProtocolCrashENS5_9allocatorISJ_EEEEENS_8functionISN_EEEENS2_5mutexEEEEEEEEE" + 218;
    v29 = (v2 + 56);
    v30 = (v2 + 56);
    if (!v26)
    {
      goto LABEL_57;
    }
  }

  v31 = v26;
  do
  {
    while (1)
    {
      v30 = v31;
      v32 = *(v31 + 7);
      if (v32 < 2)
      {
        break;
      }

      v31 = *v30;
      v29 = v30;
      if (!*v30)
      {
        goto LABEL_57;
      }
    }

    if (v32)
    {
      *(v30 + 8) = 1;
      v35 = "N5boost6detail17sp_counted_impl_pINS_8signals26detail12grouped_listIiNSt3__14lessIiEENS_10shared_ptrINS3_15connection_bodyINS5_4pairINS3_15slot_meta_groupENS_8optionalIiEEEENS2_4slotIFvNS5_4listIN8coredump13CommandDriver29EURCoreDumpTraceProtocolCrashENS5_9allocatorISJ_EEEEENS_8functionISN_EEEENS2_5mutexEEEEEEEEE" + 218;
      goto LABEL_63;
    }

    v31 = v30[1];
  }

  while (v31);
  v29 = v30 + 1;
LABEL_57:
  v33 = operator new(0x28uLL);
  *(v33 + 28) = *(v28 + 170);
  *v33 = 0;
  v33[1] = 0;
  v33[2] = v30;
  *v29 = v33;
  v34 = **(v2 + 48);
  if (v34)
  {
    *(v2 + 48) = v34;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 56), v33);
  v26 = *(v2 + 56);
  ++*(v2 + 64);
  *(v33 + 8) = 1;
  v35 = "er29EURCoreDumpTraceProtocolCrashENS5_9allocatorISJ_EEEEENS_8functionISN_EEEENS2_5mutexEEEEEEEEE";
  v36 = v27;
  v37 = v27;
  if (v26)
  {
    while (1)
    {
LABEL_63:
      while (1)
      {
        v37 = v26;
        v38 = *(v26 + 7);
        if (v38 < 3)
        {
          break;
        }

        v26 = *v37;
        v36 = v37;
        if (!*v37)
        {
          goto LABEL_67;
        }
      }

      if (v38 == 2)
      {
        break;
      }

      v26 = v37[1];
      if (!v26)
      {
        v36 = v37 + 1;
        goto LABEL_67;
      }
    }

    v39 = v37;
  }

  else
  {
LABEL_67:
    v39 = operator new(0x28uLL);
    *(v39 + 28) = *(v35 + 171);
    *v39 = 0;
    v39[1] = 0;
    v39[2] = v37;
    *v36 = v39;
    v40 = **(v2 + 48);
    if (v40)
    {
      *(v2 + 48) = v40;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 56), v39);
    ++*(v2 + 64);
  }

  *(v39 + 8) = 2;
  v41 = *v27;
  v42 = v27;
  v43 = v27;
  if (*v27)
  {
    v44 = *v27;
    while (1)
    {
      while (1)
      {
        v43 = v44;
        v45 = *(v44 + 7);
        if (v45 < 5)
        {
          break;
        }

        v44 = *v43;
        v42 = v43;
        if (!*v43)
        {
          goto LABEL_78;
        }
      }

      if (v45 == 4)
      {
        break;
      }

      v44 = v43[1];
      if (!v44)
      {
        v42 = v43 + 1;
        goto LABEL_78;
      }
    }

    *(v43 + 8) = 4;
    v48 = v27;
    v49 = v27;
    if (v41)
    {
      goto LABEL_85;
    }

LABEL_89:
    v51 = operator new(0x28uLL);
    *(v51 + 28) = 32;
    *v51 = 0;
    v51[1] = 0;
    v51[2] = v49;
    *v48 = v51;
    v52 = **(v2 + 48);
    if (v52)
    {
      *(v2 + 48) = v52;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 56), v51);
    ++*(v2 + 64);
    *(v51 + 8) = 8;
    v53 = *v27;
    v54 = v27;
    v55 = v27;
    if (!*v27)
    {
      goto LABEL_100;
    }

LABEL_94:
    v56 = v53;
    while (1)
    {
      while (1)
      {
        v55 = v56;
        v57 = *(v56 + 7);
        if (v57 < 0x11)
        {
          break;
        }

        v56 = *v55;
        v54 = v55;
        if (!*v55)
        {
          goto LABEL_100;
        }
      }

      if (v57 == 16)
      {
        break;
      }

      v56 = v55[1];
      if (!v56)
      {
        v54 = v55 + 1;
        goto LABEL_100;
      }
    }

    *(v55 + 8) = 32;
    v60 = v27;
    if (v53)
    {
      goto LABEL_107;
    }

    goto LABEL_111;
  }

LABEL_78:
  v46 = operator new(0x28uLL);
  *(v46 + 28) = 4;
  *v46 = 0;
  v46[1] = 0;
  v46[2] = v43;
  *v42 = v46;
  v47 = **(v2 + 48);
  if (v47)
  {
    *(v2 + 48) = v47;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 56), v46);
  v41 = *(v2 + 56);
  ++*(v2 + 64);
  *(v46 + 8) = 4;
  v48 = v27;
  v49 = v27;
  if (!v41)
  {
    goto LABEL_89;
  }

  while (1)
  {
LABEL_85:
    while (1)
    {
      v49 = v41;
      v50 = *(v41 + 7);
      if (v50 < 0x21)
      {
        break;
      }

      v41 = *v49;
      v48 = v49;
      if (!*v49)
      {
        goto LABEL_89;
      }
    }

    if (v50 == 32)
    {
      break;
    }

    v41 = v49[1];
    if (!v41)
    {
      v48 = v49 + 1;
      goto LABEL_89;
    }
  }

  *(v49 + 8) = 8;
  v53 = *v27;
  v54 = v27;
  v55 = v27;
  if (*v27)
  {
    goto LABEL_94;
  }

LABEL_100:
  v58 = operator new(0x28uLL);
  *(v58 + 28) = 16;
  *v58 = 0;
  v58[1] = 0;
  v58[2] = v55;
  *v54 = v58;
  v59 = **(v2 + 48);
  if (v59)
  {
    *(v2 + 48) = v59;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 56), v58);
  v53 = *(v2 + 56);
  ++*(v2 + 64);
  *(v58 + 8) = 32;
  v60 = v27;
  if (!v53)
  {
LABEL_111:
    v62 = operator new(0x28uLL);
    *(v62 + 28) = 8;
    *v62 = 0;
    v62[1] = 0;
    v62[2] = v60;
    *v27 = v62;
    v63 = **(v2 + 48);
    if (v63)
    {
      *(v2 + 48) = v63;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 56), v62);
    ++*(v2 + 64);
    goto LABEL_115;
  }

  while (1)
  {
LABEL_107:
    while (1)
    {
      v60 = v53;
      v61 = *(v53 + 7);
      if (v61 < 9)
      {
        break;
      }

      v53 = *v60;
      v27 = v60;
      if (!*v60)
      {
        goto LABEL_111;
      }
    }

    if (v61 == 8)
    {
      break;
    }

    v53 = v60[1];
    if (!v53)
    {
      v27 = v60 + 1;
      goto LABEL_111;
    }
  }

  v62 = v60;
LABEL_115:
  *(v62 + 8) = 64;
  v65 = (v2 + 168);
  v64 = *(v2 + 168);
  v66 = (v2 + 168);
  v67 = (v2 + 168);
  if (v64)
  {
    v68 = *(v2 + 168);
    do
    {
      while (1)
      {
        v67 = v68;
        v69 = *(v68 + 7);
        if (v69 < 1)
        {
          break;
        }

        v68 = *v67;
        v66 = v67;
        if (!*v67)
        {
          goto LABEL_122;
        }
      }

      if ((v69 & 0x80000000) == 0)
      {
        *(v67 + 8) = 3;
        goto LABEL_128;
      }

      v68 = v67[1];
    }

    while (v68);
    v66 = v67 + 1;
  }

LABEL_122:
  v70 = operator new(0x28uLL);
  v70[7] = 0;
  v70[8] = 0;
  *v70 = 0;
  *(v70 + 1) = 0;
  *(v70 + 2) = v67;
  *v66 = v70;
  v71 = **(v2 + 160);
  if (v71)
  {
    *(v2 + 160) = v71;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 168), v70);
  v64 = *(v2 + 168);
  ++*(v2 + 176);
  v70[8] = 3;
  v72 = (v2 + 168);
  v73 = (v2 + 168);
  if (!v64)
  {
LABEL_132:
    v75 = operator new(0x28uLL);
    *(v75 + 28) = *(v28 + 170);
    *v75 = 0;
    v75[1] = 0;
    v75[2] = v73;
    *v72 = v75;
    v76 = **(v2 + 160);
    if (v76)
    {
      *(v2 + 160) = v76;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 168), v75);
    ++*(v2 + 176);
    *(v75 + 8) = 0;
    v77 = *v65;
    v78 = (v2 + 168);
    v79 = (v2 + 168);
    if (!*v65)
    {
      goto LABEL_143;
    }

LABEL_137:
    v80 = v77;
    while (1)
    {
      while (1)
      {
        v79 = v80;
        v81 = *(v80 + 7);
        if (v81 < 3)
        {
          break;
        }

        v80 = *v79;
        v78 = v79;
        if (!*v79)
        {
          goto LABEL_143;
        }
      }

      if (v81 == 2)
      {
        break;
      }

      v80 = v79[1];
      if (!v80)
      {
        v78 = v79 + 1;
        goto LABEL_143;
      }
    }

    *(v79 + 8) = 1;
    v84 = (v2 + 168);
    v85 = (v2 + 168);
    if (v77)
    {
      goto LABEL_150;
    }

    goto LABEL_154;
  }

  while (1)
  {
LABEL_128:
    while (1)
    {
      v73 = v64;
      v74 = *(v64 + 7);
      if (v74 < 2)
      {
        break;
      }

      v64 = *v73;
      v72 = v73;
      if (!*v73)
      {
        goto LABEL_132;
      }
    }

    if (v74 == 1)
    {
      break;
    }

    v64 = v73[1];
    if (!v64)
    {
      v72 = v73 + 1;
      goto LABEL_132;
    }
  }

  *(v73 + 8) = 0;
  v77 = *v65;
  v78 = (v2 + 168);
  v79 = (v2 + 168);
  if (*v65)
  {
    goto LABEL_137;
  }

LABEL_143:
  v82 = operator new(0x28uLL);
  *(v82 + 28) = *(v35 + 171);
  *v82 = 0;
  v82[1] = 0;
  v82[2] = v79;
  *v78 = v82;
  v83 = **(v2 + 160);
  if (v83)
  {
    *(v2 + 160) = v83;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 168), v82);
  v77 = *(v2 + 168);
  ++*(v2 + 176);
  *(v82 + 8) = 1;
  v84 = (v2 + 168);
  v85 = (v2 + 168);
  if (v77)
  {
    while (1)
    {
LABEL_150:
      while (1)
      {
        v85 = v77;
        v86 = *(v77 + 7);
        if (v86 < 4)
        {
          break;
        }

        v77 = *v85;
        v84 = v85;
        if (!*v85)
        {
          goto LABEL_154;
        }
      }

      if (v86 == 3)
      {
        break;
      }

      v77 = v85[1];
      if (!v77)
      {
        v84 = v85 + 1;
        goto LABEL_154;
      }
    }

    *(v85 + 8) = 2;
    v89 = *v65;
    v90 = (v2 + 168);
    if (*v65)
    {
      goto LABEL_161;
    }

    goto LABEL_165;
  }

LABEL_154:
  v87 = operator new(0x28uLL);
  *(v87 + 28) = 3;
  *v87 = 0;
  v87[1] = 0;
  v87[2] = v85;
  *v84 = v87;
  v88 = **(v2 + 160);
  if (v88)
  {
    *(v2 + 160) = v88;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 168), v87);
  ++*(v2 + 176);
  *(v87 + 8) = 2;
  v89 = *v65;
  v90 = (v2 + 168);
  if (!*v65)
  {
LABEL_165:
    v92 = operator new(0x28uLL);
    *(v92 + 28) = 4;
    *v92 = 0;
    v92[1] = 0;
    v92[2] = v90;
    *v65 = v92;
    v93 = **(v2 + 160);
    if (v93)
    {
      *(v2 + 160) = v93;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 168), v92);
    ++*(v2 + 176);
    goto LABEL_169;
  }

  while (1)
  {
LABEL_161:
    while (1)
    {
      v90 = v89;
      v91 = *(v89 + 7);
      if (v91 < 5)
      {
        break;
      }

      v89 = *v90;
      v65 = v90;
      if (!*v90)
      {
        goto LABEL_165;
      }
    }

    if (v91 == 4)
    {
      break;
    }

    v89 = v90[1];
    if (!v89)
    {
      v65 = v90 + 1;
      goto LABEL_165;
    }
  }

  v92 = v90;
LABEL_169:
  *(v92 + 8) = 255;
  v94 = a1[6];
  v116 = a1[5];
  v117 = v94;
  if (v94)
  {
    atomic_fetch_add_explicit(&v94->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v95 = a1[6];
  v114 = a1[5];
  v115 = v95;
  if (v95)
  {
    atomic_fetch_add_explicit(&v95->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v96 = a1[6];
  v112 = a1[5];
  v113 = v96;
  if (v96)
  {
    atomic_fetch_add_explicit(&v96->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v97 = a1[6];
  v110 = a1[5];
  v111 = v97;
  if (v97)
  {
    atomic_fetch_add_explicit(&v97->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v98 = a1[6];
  v108 = a1[5];
  v109 = v98;
  if (v98)
  {
    atomic_fetch_add_explicit(&v98->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v99 = *(v2 + 16);
  if (!v99 || (v100 = *(v2 + 8), (v101 = std::__shared_weak_count::lock(v99)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v102 = v101;
  atomic_fetch_add_explicit(&v101->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v128 = 0;
    v129 = 0;
    v103 = std::__shared_weak_count::lock(v101);
    if (v103)
    {
      goto LABEL_183;
    }

LABEL_205:
    v104 = v129;
    v128 = 0;
    v129 = v103;
    if (!v104)
    {
      goto LABEL_185;
    }

    goto LABEL_184;
  }

  (v101->__on_zero_shared)(v101);
  std::__shared_weak_count::__release_weak(v102);
  v128 = 0;
  v129 = 0;
  v103 = std::__shared_weak_count::lock(v102);
  if (!v103)
  {
    goto LABEL_205;
  }

LABEL_183:
  atomic_fetch_add_explicit(&v103->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v104 = v129;
  v128 = v100;
  v129 = v103;
  if (v104)
  {
LABEL_184:
    std::__shared_weak_count::__release_weak(v104);
  }

LABEL_185:
  std::__shared_weak_count::__release_weak(v102);
  if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v103->__on_zero_shared)(v103);
    std::__shared_weak_count::__release_weak(v103);
  }

  qmi::Client::setClientHandle();
  if (v129)
  {
    std::__shared_weak_count::__release_weak(v129);
  }

  qmi::Client::start((v2 + 128));
  if (v109)
  {
    std::__shared_weak_count::__release_weak(v109);
  }

  if (v111)
  {
    std::__shared_weak_count::__release_weak(v111);
  }

  if (v113)
  {
    std::__shared_weak_count::__release_weak(v113);
  }

  if (v115)
  {
    std::__shared_weak_count::__release_weak(v115);
  }

  if (v117)
  {
    std::__shared_weak_count::__release_weak(v117);
  }

  v105 = v132;
  if (v132)
  {
    if (!atomic_fetch_add((v132 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v105->__on_zero_shared)(v105);
      std::__shared_weak_count::__release_weak(v105);
    }
  }
}

void sub_296F60B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a42)
  {
    std::__shared_weak_count::__release_weak(a42);
    if ((*(v42 - 177) & 0x80000000) == 0)
    {
LABEL_3:
      v44 = *(v42 - 240);
      if (!v44)
      {
LABEL_8:
        if (*(v42 - 145) < 0)
        {
          operator delete(*(v42 - 168));
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v42 - 112);
          _Unwind_Resume(a1);
        }

        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v42 - 112);
        _Unwind_Resume(a1);
      }

LABEL_7:
      dispatch_release(v44);
      goto LABEL_8;
    }
  }

  else if ((*(v42 - 177) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v42 - 200));
  v44 = *(v42 - 240);
  if (!v44)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN7antenna16QMICommandDriver4initEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = *(v3 + 88);
        if (v5)
        {
          v6 = v4;
          (*(*v5 + 16))(*(v3 + 88), 0, 4);
          v4 = v6;
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v4;
        (v4->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN7antenna16QMICommandDriver4initEv_block_invoke_3(uint64_t a1)
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

uint64_t __copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN7antenna13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN7antenna16QMICommandDriver4initEv_block_invoke_5(uint64_t a1)
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

void ___ZN7antenna16QMICommandDriver4initEv_block_invoke_14(void *a1, xpc_object_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v19 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  if (a1[5])
  {
    v7 = *(v5 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Server Error!", __p, 2u);
      if (a2)
      {
LABEL_6:
        xpc_retain(a2);
        v8 = *(v5 + 40);
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    a2 = xpc_null_create();
    v8 = *(v5 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = MEMORY[0x29C269360](a2);
    memset(__p, 170, 24);
    v12 = strlen(v11);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
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
      __p[1] = v13;
      __p[2] = (v15 | 0x8000000000000000);
      __p[0] = v14;
    }

    else
    {
      HIBYTE(__p[2]) = v12;
      v14 = __p;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    memcpy(v14, v11, v13);
LABEL_23:
    *(v13 + v14) = 0;
    free(v11);
    v16 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v16 = __p[0];
    }

    *buf = 136315138;
    v21 = v16;
    _os_log_error_impl(&dword_296ECF000, v8, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_10:
    xpc_release(a2);
    v6 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_13:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_296F612A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void antenna::QMICommandDriver::perform(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v8 = *(a3 + 8);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = *(a3 + 8);
  if (v8)
  {
LABEL_4:
    dispatch_retain(v8);
  }

LABEL_5:
  v9 = a1[2];
  if (!v9 || (v10 = a1[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = v5;
  v14 = xpc_null_create();
  v13[1] = a1;
  v13[2] = v7;
  v13[3] = v8;
  v15 = a1[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v13;
  v16[1] = v10;
  v16[2] = v12;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<antenna::CommandDriver>::execute_wrapped<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>(antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0,dispatch_queue_s::default_delete<antenna::QMICommandDriver::perform(xpc::dict,dispatch::callback<void({block_pointer})(BOOL,xpc::object)> &&)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  xpc_release(v14);
}

void *dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::callback(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

void antenna::QMICommandDriver::txPowerCappingEnable_sync(void *a1, xpc_object_t *a2, uint64_t a3)
{
  memset(__p, 170, 24);
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FA8]);
  v57[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v57[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(v57[0]);
  v7 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9050]);
  v57[0] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v57[0] = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default();
  xpc_release(v57[0]);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v9;
  v52 = v9;
  qmi::MutableMessageBase::MutableMessageBase(&v51);
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 0x40000000;
  v10 = ___ZN7antenna16QMICommandDriver25txPowerCappingEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v48 = ___ZN7antenna16QMICommandDriver25txPowerCappingEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v49 = &__block_descriptor_tmp_24_2;
  v50 = v8;
  v11 = *(&v51 + 1);
  v12 = v52;
  v13 = *(&v51 + 1);
  if (*(&v51 + 1) != v52)
  {
    v13 = *(&v51 + 1);
    while (*(*v13 + 8) != 1)
    {
      if (++v13 == v52)
      {
        goto LABEL_15;
      }
    }
  }

  if (v13 == v52)
  {
LABEL_15:
    v17 = operator new(0x10uLL);
    v18 = v17;
    v17[4] = 1;
    *v17 = &unk_2A1E1B428;
    if (v12 >= *(&v52 + 1))
    {
      v20 = v12 - v11;
      v21 = (v12 - v11) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v23 = *(&v52 + 1) - v11;
      if ((*(&v52 + 1) - v11) >> 2 > v22)
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

        v25 = operator new(8 * v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = &v25[8 * v21];
      *v26 = v18;
      v19 = v26 + 8;
      memcpy(v25, v11, v20);
      *(&v51 + 1) = v25;
      *&v52 = v19;
      *(&v52 + 1) = &v25[8 * v24];
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v12 = v17;
      v19 = v12 + 8;
    }

    v16 = v18 + 9;
    *&v52 = v19;
    v10 = v48;
  }

  else
  {
    v14 = ***v13;
    if (!v15)
    {
      goto LABEL_69;
    }

    v16 = v15 + 9;
  }

  v10(v47, v16);
  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9060]))
  {
    goto LABEL_40;
  }

  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 0x40000000;
  v27 = ___ZN7antenna16QMICommandDriver25txPowerCappingEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v44 = ___ZN7antenna16QMICommandDriver25txPowerCappingEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v45 = &__block_descriptor_tmp_26_0;
  v46 = a2;
  v28 = *(&v51 + 1);
  if (*(&v51 + 1) != v52)
  {
    while (*(*v28 + 8) != 16)
    {
      if (++v28 == v52)
      {
        goto LABEL_38;
      }
    }
  }

  if (v28 == v52)
  {
LABEL_38:
    v31 = qmi::MutableMessageBase::createTLV<bsp::tlv::abm::SvcType>(&v51);
    v27 = v44;
    goto LABEL_39;
  }

  v29 = ***v28;
  if (!v30)
  {
LABEL_69:
    __cxa_bad_cast();
  }

  v31 = v30 + 9;
LABEL_39:
  v27(v43, v31);
LABEL_40:
  qmi::MutableMessageBase::MutableMessageBase();
  v32 = *a3;
  if (*a3)
  {
    v32 = _Block_copy(v32);
  }

  v33 = *(a3 + 8);
  aBlock = v32;
  object = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  v34 = a1[2];
  if (!v34 || (v35 = a1[1], (v36 = std::__shared_weak_count::lock(v34)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v37 = v36;
  p_shared_weak_owners = &v36->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v37);
  }

  v57[0] = MEMORY[0x29EDCA5F8];
  v57[1] = 1174405120;
  v57[2] = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm18TxPwr_Limit_Enable7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v57[3] = &__block_descriptor_tmp_114_0;
  v57[4] = a1;
  v57[5] = v35;
  v58 = v37;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v39 = object;
    v59 = _Block_copy(aBlock);
    v60 = object;
    if (!object)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v39 = object;
  v59 = 0;
  v60 = object;
  if (object)
  {
LABEL_50:
    dispatch_retain(v39);
  }

LABEL_51:
  __p[3] = a1 + 16;
  __p[4] = QMIServiceMsg::create();
  v54 = 25000;
  v55 = 0;
  v56 = 0;
  v61[0] = MEMORY[0x29EDCA5F8];
  v61[1] = 0x40000000;
  v61[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v61[3] = &unk_29EE5F878;
  v61[4] = v57;
  v56 = _Block_copy(v61);
  qmi::Client::send();
  if (v56)
  {
    _Block_release(v56);
  }

  if (v60)
  {
    dispatch_release(v60);
  }

  if (v59)
  {
    _Block_release(v59);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_weak(v58);
  }

  std::__shared_weak_count::__release_weak(v37);
  if (v39)
  {
    dispatch_release(v39);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v42);
  qmi::MutableMessageBase::~MutableMessageBase(&v51);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_296F61A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  qmi::Client::SendProxy::~SendProxy(&a36);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v37 + 56);
  v40 = *(v38 - 168);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  std::__shared_weak_count::__release_weak(v36);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a9);
  qmi::MutableMessageBase::~MutableMessageBase(&a11);
  qmi::MutableMessageBase::~MutableMessageBase(&a25);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver25txPowerCappingEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _BYTE *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9060]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void antenna::QMICommandDriver::transmitIndicationRegister_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_32_4;
  v15[4] = a1;
  v15[5] = v5;
  v16 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block = MEMORY[0x29EDCA5F8];
  v18 = 0x40000000;
  v19 = ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm20TxPwrLimitIndication10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  v20 = &unk_29EE5F8A0;
  aBlock = v15;
  qmi::Client::setIndHandler();
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_33;
  v13[3] = &__block_descriptor_tmp_41_1;
  v13[4] = a1;
  v13[5] = v5;
  v14 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  block = MEMORY[0x29EDCA5F8];
  v18 = 0x40000000;
  v19 = ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm16TransmitStateInd10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  v20 = &unk_29EE5F8C8;
  aBlock = v13;
  qmi::Client::setIndHandler();
  v9 = xpc_null_create();
  if (*a2)
  {
    v10 = _Block_copy(*a2);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 8);
  block = MEMORY[0x29EDCA5F8];
  v18 = 1174405120;
  v19 = ___ZNK8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEclIJbS2_EEEvDpT__block_invoke;
  v20 = &__block_descriptor_tmp_118;
  if (v10)
  {
    v12 = _Block_copy(v10);
    v23 = 1;
    aBlock = v12;
    object = v9;
    if (v9)
    {
LABEL_10:
      xpc_retain(v9);
      goto LABEL_13;
    }
  }

  else
  {
    v23 = 1;
    aBlock = 0;
    object = v9;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  object = xpc_null_create();
LABEL_13:
  dispatch_async(v11, &block);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  xpc_release(v9);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_296F61EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    v25 = a23;
    if (!a23)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v23);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v25 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v25);
  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke(void *a1, qmi::MessageBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v16 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v11[0] = MEMORY[0x29EDCA5F8];
        v11[1] = 0x40000000;
        v12 = ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_2;
        v13 = &__block_descriptor_tmp_28_0;
        v14 = v5;
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v10 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 1);
          v17 = *v10;
          v12(v11, &v17);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F62084(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F62014);
}

void sub_296F620B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_2(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  result = antenna::CommandDriver::convertModeToState();
  if (result <= 1)
  {
    result = *(v2 + 88);
    if (result)
    {
      v5 = *(*result + 16);

      return v5();
    }
  }

  return result;
}

void ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_33(void *a1, qmi::MessageBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v32 = v6;
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x2000000000;
        v30 = 0;
        v23 = 0;
        v24 = &v23;
        v25 = 0x2000000000;
        v26 = 4;
        v19[0] = MEMORY[0x29EDCA5F8];
        v19[1] = 0x40000000;
        v20 = ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_2_34;
        v21 = &unk_29EE5F4E8;
        v22 = &v27;
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v10 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 1);
          v33 = *v10;
          v20(v19, &v33);
        }

        v15[0] = MEMORY[0x29EDCA5F8];
        v15[1] = 0x40000000;
        v16 = ___ZN7antenna16QMICommandDriver31transmitIndicationRegister_syncEN8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEE_block_invoke_3;
        v17 = &unk_29EE5F510;
        v18 = &v23;
        v11 = qmi::MessageBase::findTlvValue(a2);
        v13 = v11;
        if (v11)
        {
          tlv::throwIfNotEnoughBytes(v11, v11 + v12, 1);
          v33 = *v13;
          v16(v15, &v33);
        }

        v14 = *(v5 + 88);
        if (v14)
        {
          (*(*v14 + 16))(v14, *(v28 + 6), *(v24 + 6));
        }

        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v27, 8);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_296F62384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v12 - 104);
  _Unwind_Resume(a1);
}

void antenna::QMICommandDriver::transmitIndicationEnable_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9088]);
  aBlock = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    aBlock = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default();
  xpc_release(aBlock);
  memset(__s1, 170, sizeof(__s1));
  v8 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90A0]);
  aBlock = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    aBlock = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(aBlock);
  v9 = *MEMORY[0x29EDC90A8];
  v10 = strlen(*MEMORY[0x29EDC90A8]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v10 == SHIBYTE(__s1[2]) && !memcmp(__s1, v9, v10))
    {
      goto LABEL_33;
    }

LABEL_14:
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v79 = v11;
    v80 = v11;
    qmi::MutableMessageBase::MutableMessageBase(&v79);
    v61[0] = MEMORY[0x29EDCA5F8];
    v61[1] = 0x40000000;
    v12 = ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
    v62 = ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_3;
    v63 = &__block_descriptor_tmp_46;
    v64 = v7;
    v13 = *(&v79 + 1);
    v14 = v80;
    v15 = *(&v79 + 1);
    if (*(&v79 + 1) != v80)
    {
      v15 = *(&v79 + 1);
      while (*(*v15 + 8) != 1)
      {
        if (++v15 == v80)
        {
          goto LABEL_22;
        }
      }
    }

    if (v15 == v80)
    {
LABEL_22:
      v19 = operator new(0x10uLL);
      v20 = v19;
      v19[4] = 1;
      *v19 = &unk_2A1E1B5A8;
      if (v14 >= *(&v80 + 1))
      {
        v22 = v14 - v13;
        v23 = (v14 - v13) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v25 = *(&v80 + 1) - v13;
        if ((*(&v80 + 1) - v13) >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v27 = operator new(8 * v26);
        }

        else
        {
          v27 = 0;
        }

        v39 = &v27[8 * v23];
        *v39 = v20;
        v21 = v39 + 8;
        memcpy(v27, v13, v22);
        *(&v79 + 1) = v27;
        *&v80 = v21;
        *(&v80 + 1) = &v27[8 * v26];
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v14 = v19;
        v21 = v14 + 8;
      }

      v18 = v20 + 9;
      *&v80 = v21;
      v12 = v62;
    }

    else
    {
      v16 = ***v15;
      if (!v17)
      {
        __cxa_bad_cast();
      }

      v18 = v17 + 9;
    }

    v12(v61, v18);
    v91 = a1 + 128;
    v92 = QMIServiceMsg::create();
    LODWORD(v93) = 25000;
    v94 = 0;
    p_aBlock = 0;
    v60[0] = MEMORY[0x29EDCA5F8];
    v60[1] = 0x40000000;
    v60[2] = ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4;
    v60[3] = &__block_descriptor_tmp_47_0;
    v60[4] = a1;
    aBlock = MEMORY[0x29EDCA5F8];
    v83 = 0x40000000;
    v84 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm22TransmitStateIndConfig8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v85 = &unk_29EE5F8F0;
    v86 = v60;
    p_aBlock = _Block_copy(&aBlock);
    qmi::Client::send();
    if (p_aBlock)
    {
      _Block_release(p_aBlock);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v79);
    if (SHIBYTE(__s1[2]) < 0)
    {
      goto LABEL_50;
    }

    return;
  }

  if (v10 != __s1[1])
  {
    goto LABEL_14;
  }

  if (v10 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (memcmp(__s1[0], v9, v10))
  {
    goto LABEL_14;
  }

LABEL_33:
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76 = v28;
  v77 = v28;
  qmi::MutableMessageBase::MutableMessageBase(&v76);
  v72[0] = MEMORY[0x29EDCA5F8];
  v72[1] = 0x40000000;
  v29 = ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v73 = ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
  v74 = &__block_descriptor_tmp_43_0;
  v75 = v7;
  v30 = *(&v76 + 1);
  v31 = v77;
  v32 = *(&v76 + 1);
  if (*(&v76 + 1) != v77)
  {
    v32 = *(&v76 + 1);
    while (*(*v32 + 8) != 1)
    {
      if (++v32 == v77)
      {
        goto LABEL_41;
      }
    }
  }

  if (v32 == v77)
  {
LABEL_41:
    v36 = operator new(0x10uLL);
    v37 = v36;
    v36[4] = 1;
    *v36 = &unk_2A1E1B528;
    if (v31 >= *(&v77 + 1))
    {
      v40 = v31 - v30;
      v41 = (v31 - v30) >> 3;
      v42 = v41 + 1;
      if ((v41 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v43 = *(&v77 + 1) - v30;
      if ((*(&v77 + 1) - v30) >> 2 > v42)
      {
        v42 = v43 >> 2;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (v44 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v45 = operator new(8 * v44);
      }

      else
      {
        v45 = 0;
      }

      v46 = &v45[8 * v41];
      *v46 = v37;
      v38 = v46 + 8;
      memcpy(v45, v30, v40);
      *(&v76 + 1) = v45;
      *&v77 = v38;
      *(&v77 + 1) = &v45[8 * v44];
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v31 = v36;
      v38 = v31 + 8;
    }

    v35 = v37 + 9;
    *&v77 = v38;
    v29 = v73;
  }

  else
  {
    v33 = ***v32;
    if (!v34)
    {
      goto LABEL_107;
    }

    v35 = v34 + 9;
  }

  v29(v72, v35);
  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9060]))
  {
    goto LABEL_75;
  }

  v68[0] = MEMORY[0x29EDCA5F8];
  v68[1] = 0x40000000;
  v47 = ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v69 = ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
  v70 = &__block_descriptor_tmp_44;
  v71 = a2;
  v48 = *(&v76 + 1);
  if (*(&v76 + 1) != v77)
  {
    while (*(*v48 + 8) != 16)
    {
      if (++v48 == v77)
      {
        goto LABEL_73;
      }
    }
  }

  if (v48 == v77)
  {
LABEL_73:
    v51 = qmi::MutableMessageBase::createTLV<bsp::tlv::abm::SvcType>(&v76);
    v47 = v69;
    goto LABEL_74;
  }

  v49 = ***v48;
  if (!v50)
  {
LABEL_107:
    __cxa_bad_cast();
  }

  v51 = v50 + 9;
LABEL_74:
  v47(v68, v51);
LABEL_75:
  qmi::MutableMessageBase::MutableMessageBase();
  v52 = *a3;
  if (*a3)
  {
    v52 = _Block_copy(v52);
  }

  v53 = *(a3 + 8);
  v65 = v52;
  object = v53;
  if (v53)
  {
    dispatch_retain(v53);
  }

  v54 = *(a1 + 16);
  if (!v54 || (v55 = *(a1 + 8), (v56 = std::__shared_weak_count::lock(v54)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v57 = v56;
  p_shared_weak_owners = &v56->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v57);
  }

  aBlock = MEMORY[0x29EDCA5F8];
  v83 = 1174405120;
  v84 = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm25TxPwr_Notification_Enable7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v85 = &__block_descriptor_tmp_122;
  v86 = a1;
  v87 = v55;
  v88 = v57;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (v65)
  {
    v59 = object;
    v89 = _Block_copy(v65);
    v90 = object;
    if (!object)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v59 = object;
  v89 = 0;
  v90 = object;
  if (object)
  {
LABEL_85:
    dispatch_retain(v59);
  }

LABEL_86:
  *&v79 = a1 + 128;
  *(&v79 + 1) = QMIServiceMsg::create();
  LODWORD(v80) = 25000;
  *(&v80 + 1) = 0;
  v81 = 0;
  v91 = MEMORY[0x29EDCA5F8];
  v92 = 0x40000000;
  v93 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
  v94 = &unk_29EE5F878;
  p_aBlock = &aBlock;
  v81 = _Block_copy(&v91);
  qmi::Client::send();
  if (v81)
  {
    _Block_release(v81);
  }

  if (v90)
  {
    dispatch_release(v90);
  }

  if (v89)
  {
    _Block_release(v89);
  }

  if (v88)
  {
    std::__shared_weak_count::__release_weak(v88);
  }

  std::__shared_weak_count::__release_weak(v57);
  if (v59)
  {
    dispatch_release(v59);
  }

  if (v65)
  {
    _Block_release(v65);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v67);
  qmi::MutableMessageBase::~MutableMessageBase(&v76);
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_50:
    operator delete(__s1[0]);
  }
}

void sub_296F62D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  qmi::Client::SendProxy::~SendProxy((v47 - 256));
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v46 + 56);
  v49 = *(v47 - 168);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  std::__shared_weak_count::__release_weak(v45);
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(&a19);
  qmi::MutableMessageBase::~MutableMessageBase(&a21);
  qmi::MutableMessageBase::~MutableMessageBase(&a35);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2(uint64_t a1, _BYTE *a2)
{
  value = xpc_dictionary_get_value(**(a1 + 32), *MEMORY[0x29EDC9060]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *a2 = xpc::dyn_cast_or_default();
  xpc_release(object);
}

void ___ZN7antenna16QMICommandDriver29transmitIndicationEnable_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v2 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_296ECF000, v2, OS_LOG_TYPE_ERROR, "Error configuring transmit state indication", v3, 2u);
    }
  }
}

void antenna::QMICommandDriver::txPowerCapping_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDC8FB0];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC8FB0]))
  {
    value = xpc_dictionary_get_value(*a2, v6);
    v89 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v89 = xpc_null_create();
    }

    v8 = xpc::dyn_cast_or_default();
    xpc_release(v89);
  }

  else
  {
    v8 = 0;
  }

  if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9030]))
  {
    if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9040]))
    {
      return;
    }

    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v82 = v20;
    v83 = v20;
    qmi::MutableMessageBase::MutableMessageBase(&v82);
    if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC90D0]))
    {
LABEL_87:
      qmi::MutableMessageBase::MutableMessageBase();
      v56 = *a3;
      if (*a3)
      {
        v56 = _Block_copy(v56);
      }

      v57 = *(a3 + 8);
      v67 = v56;
      v68 = v57;
      if (v57)
      {
        dispatch_retain(v57);
      }

      v58 = *(a1 + 16);
      if (!v58 || (v59 = *(a1 + 8), (v60 = std::__shared_weak_count::lock(v58)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v61 = v60;
      p_shared_weak_owners = &v60->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v60->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v60->__on_zero_shared)(v60);
        std::__shared_weak_count::__release_weak(v61);
      }

      v89 = MEMORY[0x29EDCA5F8];
      v90 = 1174405120;
      v91 = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm15TxPwr_Start_Cap7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
      v92 = &__block_descriptor_tmp_131_0;
      v93 = a1;
      v94 = v59;
      v95 = v61;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      if (v67)
      {
        v63 = v68;
        v96 = _Block_copy(v67);
        v97 = v68;
        if (!v68)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v63 = v68;
        v96 = 0;
        v97 = v68;
        if (!v68)
        {
LABEL_98:
          v64 = a1 + 128;
          if (v8)
          {
            v84 = v64;
            v85 = QMIServiceMsg::create();
            v87 = 0;
            v88 = 0;
            v86 = v8;
            v98 = MEMORY[0x29EDCA5F8];
            v99 = 0x40000000;
            v100 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
            v101 = &unk_29EE5F878;
            v102 = &v89;
            v88 = _Block_copy(&v98);
            qmi::Client::send();
            v65 = v88;
            if (v88)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v84 = v64;
            v85 = QMIServiceMsg::create();
            v86 = 25000;
            v87 = 0;
            v88 = 0;
            v98 = MEMORY[0x29EDCA5F8];
            v99 = 0x40000000;
            v100 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
            v101 = &unk_29EE5F878;
            v102 = &v89;
            v88 = _Block_copy(&v98);
            qmi::Client::send();
            v65 = v88;
            if (v88)
            {
LABEL_104:
              _Block_release(v65);
            }
          }

          if (v97)
          {
            dispatch_release(v97);
          }

          if (v96)
          {
            _Block_release(v96);
          }

          if (v95)
          {
            std::__shared_weak_count::__release_weak(v95);
          }

          std::__shared_weak_count::__release_weak(v61);
          if (v63)
          {
            dispatch_release(v63);
          }

          if (v67)
          {
            _Block_release(v67);
          }

          v25 = &v69;
          goto LABEL_116;
        }
      }

      dispatch_retain(v63);
      goto LABEL_98;
    }

    v74[0] = MEMORY[0x29EDCA5F8];
    v74[1] = 0x40000000;
    v21 = ___ZN7antenna16QMICommandDriver19txPowerCapping_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v75 = ___ZN7antenna16QMICommandDriver19txPowerCapping_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke;
    v76 = &__block_descriptor_tmp_49_1;
    v77 = a1;
    v78 = a2;
    v22 = *(&v82 + 1);
    v23 = v83;
    v24 = *(&v82 + 1);
    if (*(&v82 + 1) != v83)
    {
      v24 = *(&v82 + 1);
      while (*(*v24 + 8) != 17)
      {
        if (++v24 == v83)
        {
          goto LABEL_47;
        }
      }
    }

    if (v24 == v83)
    {
LABEL_47:
      v29 = operator new(0x10uLL);
      v30 = v29;
      v29[4] = 17;
      *v29 = &unk_2A1E1B628;
      if (v23 >= *(&v83 + 1))
      {
        v32 = v23 - v22;
        v33 = (v23 - v22) >> 3;
        v34 = v33 + 1;
        if ((v33 + 1) >> 61)
        {
          goto LABEL_121;
        }

        v35 = *(&v83 + 1) - v22;
        if ((*(&v83 + 1) - v22) >> 2 > v34)
        {
          v34 = v35 >> 2;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          v66 = v32;
          if (v36 >> 61)
          {
            goto LABEL_122;
          }

          v37 = operator new(8 * v36);
          v32 = v66;
        }

        else
        {
          v37 = 0;
        }

        v38 = &v37[8 * v33];
        *v38 = v30;
        v31 = v38 + 8;
        memcpy(v37, v22, v32);
        *(&v82 + 1) = v37;
        *&v83 = v31;
        *(&v83 + 1) = &v37[8 * v36];
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v23 = v29;
        v31 = v23 + 8;
      }

      v28 = v30 + 9;
      *&v83 = v31;
      v21 = v75;
    }

    else
    {
      v26 = ***v24;
      if (!v27)
      {
        goto LABEL_120;
      }

      v28 = v27 + 9;
    }

    v21(v74, v28);
    if (!xpc_dictionary_get_value(*a2, *MEMORY[0x29EDC9100]))
    {
      goto LABEL_87;
    }

    v70[0] = MEMORY[0x29EDCA5F8];
    v70[1] = 0x40000000;
    v39 = ___ZN7antenna16QMICommandDriver19txPowerCapping_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
    v71 = ___ZN7antenna16QMICommandDriver19txPowerCapping_syncERKN3xpc4dictEN8dispatch8callbackIU13block_pointerFvbNS1_6objectEEEE_block_invoke_2;
    v72 = &__block_descriptor_tmp_51_0;
    v73 = a2;
    v40 = *(&v82 + 1);
    v41 = v83;
    v42 = *(&v82 + 1);
    if (*(&v82 + 1) != v83)
    {
      v42 = *(&v82 + 1);
      while (*(*v42 + 8) != 18)
      {
        if (++v42 == v83)
        {
          goto LABEL_71;
        }
      }
    }

    if (v42 != v83)
    {
      v43 = ***v42;
      if (v44)
      {
        v45 = v44 + 9;
LABEL_86:
        v39(v70, v45);
        goto LABEL_87;
      }

LABEL_120:
      __cxa_bad_cast();
    }

LABEL_71:
    v46 = operator new(0x10uLL);
    v47 = v46;
    v46[4] = 18;
    *v46 = &unk_2A1E1B678;
    if (v41 < *(&v83 + 1))
    {
      *v41 = v46;
      v48 = v41 + 8;
LABEL_85:
      v45 = v47 + 9;
      *&v83 = v48;
      v39 = v71;
      goto LABEL_86;
    }

    v49 = v41 - v40;
    v50 = (v41 - v40) >> 3;
    v51 = v50 + 1;
    if (!((v50 + 1) >> 61))
    {
      v52 = *(&v83 + 1) - v40;
      if ((*(&v83 + 1) - v40) >> 2 > v51)
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

      if (!v53)
      {
        v54 = 0;
LABEL_83:
        v55 = &v54[8 * v50];
        *v55 = v47;
        v48 = v55 + 8;
        memcpy(v54, v40, v49);
        *(&v82 + 1) = v54;
        *&v83 = v48;
        *(&v83 + 1) = &v54[8 * v53];
        if (v40)
        {
          operator delete(v40);
        }

        goto LABEL_85;
      }

      if (!(v53 >> 61))
      {
        v54 = operator new(8 * v53);
        goto LABEL_83;
      }

LABEL_122:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_121:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v9;
  v83 = v9;
  qmi::MutableMessageBase::MutableMessageBase(&v82);
  qmi::MutableMessageBase::MutableMessageBase();
  v10 = *a3;
  if (*a3)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a3 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = *(a1 + 16);
  if (!v12 || (v13 = *(a1 + 8), (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = &v14->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  v89 = MEMORY[0x29EDCA5F8];
  v90 = 1174405120;
  v91 = ___ZN7antenna16QMICommandDriver7sendMsgIN3bsp3abm14TxPwr_Stop_Cap7RequestEEEvT_N8dispatch8callbackIU13block_pointerFvbN3xpc6objectEEEEj_block_invoke;
  v92 = &__block_descriptor_tmp_127_0;
  v93 = a1;
  v94 = v13;
  v95 = v15;
  atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
  if (aBlock)
  {
    v17 = object;
    v96 = _Block_copy(aBlock);
    v97 = object;
    if (!object)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = object;
  v96 = 0;
  v97 = object;
  if (object)
  {
LABEL_18:
    dispatch_retain(v17);
  }

LABEL_19:
  v18 = a1 + 128;
  if (v8)
  {
    v84 = v18;
    v85 = QMIServiceMsg::create();
    v87 = 0;
    v88 = 0;
    v86 = v8;
    v98 = MEMORY[0x29EDCA5F8];
    v99 = 0x40000000;
    v100 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
    v101 = &unk_29EE5F878;
    v102 = &v89;
    v88 = _Block_copy(&v98);
    qmi::Client::send();
    v19 = v88;
    if (v88)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v84 = v18;
    v85 = QMIServiceMsg::create();
    v86 = 25000;
    v87 = 0;
    v88 = 0;
    v98 = MEMORY[0x29EDCA5F8];
    v99 = 0x40000000;
    v100 = ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_1;
    v101 = &unk_29EE5F878;
    v102 = &v89;
    v88 = _Block_copy(&v98);
    qmi::Client::send();
    v19 = v88;
    if (v88)
    {
LABEL_32:
      _Block_release(v19);
    }
  }

  if (v97)
  {
    dispatch_release(v97);
  }

  if (v96)
  {
    _Block_release(v96);
  }

  if (v95)
  {
    std::__shared_weak_count::__release_weak(v95);
  }

  std::__shared_weak_count::__release_weak(v15);
  if (v17)
  {
    dispatch_release(v17);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v25 = &v81;
LABEL_116:
  qmi::MutableMessageBase::~MutableMessageBase(v25);
  qmi::MutableMessageBase::~MutableMessageBase(&v82);
}