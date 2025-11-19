void qmi::ClientRouter::addLocal<char const*,qmi::ServiceType,dispatch::queue const&,char const(&)[13],std::weak_ptr<desense::CommandDriver>,std::shared_ptr<BBServerConnection> const&>(int a1, int a2, char *__s, unsigned __int8 *a4, NSObject **a5, uint64_t *a6, uint64_t *a7)
{
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v12;
  v38 = v12;
  v13 = strlen(__s);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v13 | 7) + 1;
    }

    v15 = operator new(v24);
    __dst[1] = v14;
    v37 = v24 | 0x8000000000000000;
    __dst[0] = v15;
  }

  else
  {
    HIBYTE(v37) = v13;
    v15 = __dst;
    if (!v13)
    {
      LOBYTE(__dst[0]) = 0;
      v16 = *a4;
      v17 = *a5;
      object = v17;
      if (!v17)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  memcpy(v15, __s, v14);
  *(v14 + v15) = 0;
  v25 = *a4;
  v17 = *a5;
  object = v17;
  if (v17)
  {
LABEL_5:
    dispatch_retain(v17);
  }

LABEL_6:
  v34 = 12;
  v32 = 0;
  strcpy(__p, "registration");
  v31 = 0;
  v18 = a6[1];
  if (!v18)
  {
    *a6 = 0;
    a6[1] = 0;
    goto LABEL_21;
  }

  v19 = std::__shared_weak_count::lock(v18);
  if (!v19)
  {
    v31 = 0;
    v32 = 0;
    v23 = a6[1];
    *a6 = 0;
    a6[1] = 0;
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v20 = v19;
  v21 = *a6;
  atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = v21;
  v32 = v19;
  v22 = a6[1];
  *a6 = 0;
  a6[1] = 0;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (!atomic_fetch_add(v20 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v20 + 16))(v20);
    v23 = v20;
LABEL_20:
    std::__shared_weak_count::__release_weak(v23);
  }

LABEL_21:
  v26 = a7[1];
  v29 = *a7;
  v30 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__dst[0]);
  }

  v27[0] = 0;
  v27[1] = 0;
  v28 = v39;
  v39 = 0uLL;
  qmi::ClientRouter::addClient();
  qmi::Client::~Client(v27);
  qmi::ClientRouter::get();
  qmi::Client::~Client(&v38);
}

void sub_296F229F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::Client::~Client(va);
  _Unwind_Resume(a1);
}

void sub_296F22A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, dispatch_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a14);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      v31 = object;
      if (!object)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  v31 = object;
  if (!object)
  {
LABEL_4:
    if (a30 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  dispatch_release(v31);
  if (a30 < 0)
  {
LABEL_5:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

void qmi::ClientRouter::add<char const*,qmi::ServiceType,dispatch::queue const&,char const(&)[13],std::weak_ptr<desense::CommandDriver>>(int a1, int a2, char *__s, unsigned __int8 *a4, NSObject **a5, uint64_t *a6)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v10;
  v34 = v10;
  v11 = strlen(__s);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v11 | 7) + 1;
    }

    v13 = operator new(v22);
    __dst[1] = v12;
    v32 = v22 | 0x8000000000000000;
    __dst[0] = v13;
  }

  else
  {
    HIBYTE(v32) = v11;
    v13 = __dst;
    if (!v11)
    {
      LOBYTE(__dst[0]) = 0;
      v14 = *a4;
      v15 = *a5;
      object = v15;
      if (!v15)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  memcpy(v13, __s, v12);
  *(v12 + v13) = 0;
  v23 = *a4;
  v15 = *a5;
  object = v15;
  if (v15)
  {
LABEL_5:
    dispatch_retain(v15);
  }

LABEL_6:
  v29 = 12;
  v27 = 0;
  strcpy(__p, "registration");
  v26 = 0;
  v16 = a6[1];
  if (!v16)
  {
    *a6 = 0;
    a6[1] = 0;
    goto LABEL_21;
  }

  v17 = std::__shared_weak_count::lock(v16);
  if (!v17)
  {
    v26 = 0;
    v27 = 0;
    v21 = a6[1];
    *a6 = 0;
    a6[1] = 0;
    if (!v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = v17;
  v19 = *a6;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v26 = v19;
  v27 = v17;
  v20 = a6[1];
  *a6 = 0;
  a6[1] = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  if (!atomic_fetch_add(v18 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v18 + 16))(v18);
    v21 = v18;
LABEL_20:
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_21:
  qmi::Client::createWithQueue();
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = v34;
  v34 = 0uLL;
  qmi::ClientRouter::addClient();
  qmi::Client::~Client(v24);
  qmi::ClientRouter::get();
  qmi::Client::~Client(&v33);
}

void sub_296F22CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  qmi::Client::~Client(va);
  _Unwind_Resume(a1);
}

void sub_296F22CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, dispatch_object_t object, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      v29 = object;
      if (!object)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  v29 = object;
  if (!object)
  {
LABEL_4:
    if (a28 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  dispatch_release(v29);
  if (a28 < 0)
  {
LABEL_5:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

void *_ZNKSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E17EB8;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E17EB8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEEclEOS8_(uint64_t a1, int *a2)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Binding started for type %d", buf, 8u);
  }

  desense::QMICommandDriver::bindSubscription_sync(v2, v3);
  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Desense started for type %d", buf, 8u);
  }

  v6 = *(v2 + 56);
  if (v3 == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v3 == 1)
  {
    v7 = 0;
  }

  v43 = v7;
  v41 = 0;
  v42 = 0;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v8;
  v56 = v8;
  v53 = v8;
  v54 = v8;
  v51 = v8;
  v52 = v8;
  v49 = v8;
  v50 = v8;
  *buf = v8;
  v48 = v8;
  v9 = *(v6 + 24);
  __p[0] = 10;
  __p[1] = buf;
  v58[0] = 0;
  v58[1] = v9;
  pthread_mutex_lock(v9);
  v10 = *(v6 + 8);
  if (!v10)
  {
    v12 = *v6;
    goto LABEL_22;
  }

  explicit = atomic_load_explicit(v10 + 2, memory_order_acquire);
  v12 = *v6;
  if (explicit == 1)
  {
    v13 = *v12;
    v14 = *(v6 + 16);
    if (v14 == *v12)
    {
      v14 = *(v13 + 8);
      *&v44 = v14;
      if (v13 == v14)
      {
LABEL_19:
        *(v6 + 16) = v14;
        goto LABEL_20;
      }
    }

    else
    {
      *&v44 = *(v6 + 16);
    }

    v15 = v14[2];
    if (*(v15 + 24))
    {
      v14 = v14[1];
    }

    else
    {
      v14 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::erase(v13, (v15 + 64), &v44);
      v12 = *v6;
    }

    goto LABEL_19;
  }

LABEL_20:
  v10 = *(v6 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 2, 1u, memory_order_relaxed);
  }

LABEL_22:
  v16 = v42;
  v41 = v12;
  v42 = v10;
  if (v16)
  {
    if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v16 + 16))(v16);
      if (atomic_fetch_add(v16 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v16 + 24))(v16);
      }
    }
  }

  pthread_mutex_unlock(v58[1]);
  v17 = __p[1];
  if (__p[1])
  {
    if (v58[0] > 0)
    {
      v33 = __p[1] + 16 * v58[0];
      do
      {
        v34 = *(v33 - 1);
        if (v34)
        {
          if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v34 + 16))(v34);
            if (atomic_fetch_add(v34 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v34 + 24))(v34);
            }
          }
        }

        v33 -= 16;
      }

      while (v33 > v17);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v18;
  v61 = v18;
  *v58 = v18;
  v59 = v18;
  v56 = v18;
  *__p = v18;
  v54 = v18;
  v55 = v18;
  v52 = v18;
  v53 = v18;
  v50 = v18;
  v51 = v18;
  v48 = v18;
  v49 = v18;
  *buf = v18;
  buf[0] = 0;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v63 = 10;
  v64 = &buf[8];
  v65 = 0;
  v67 = 0;
  v68 = 0;
  v66 = &v43;
  v19 = v41;
  v20 = *v41;
  v38 = buf;
  v39 = v6;
  v40 = v20;
  *&v36 = *(v20 + 8);
  *(&v36 + 1) = v20;
  *&v37 = buf;
  *(&v37 + 1) = v20;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v36);
  v35[0] = *v19;
  v35[1] = v35[0];
  v35[2] = buf;
  v35[3] = v35[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(v35);
  v44 = v36;
  v45 = v37;
  v21 = v35[0];
  v22 = v36;
  if (v36 == v35[0])
  {
    if (HIDWORD(v67) <= v67)
    {
      goto LABEL_50;
    }

LABEL_49:
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(v39, v40);
    goto LABEL_50;
  }

  v23 = v45;
  if ((*v45 & 1) == 0)
  {
    v24 = *(*(v36 + 16) + 32);
    v25 = *(v24 + 24);
    if (!v25)
    {
      std::runtime_error::runtime_error(&v46, "call to empty boost::function");
      v46.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v46);
    }

    (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(v24 + 32, **(v45 + 272));
    if ((*v23 & 1) == 0)
    {
      *v23 = 1;
    }
  }

  *&v44 = *(v22 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v44);
  v26 = v45;
  if (*v45 == 1)
  {
    *v45 = 0;
  }

  for (i = v44; v44 != v21; i = v44)
  {
    v28 = *(*(i + 16) + 32);
    v29 = *(v28 + 24);
    if (!v29)
    {
      std::runtime_error::runtime_error(&v46, "call to empty boost::function");
      v46.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v46);
    }

    (*((v29 & 0xFFFFFFFFFFFFFFFELL) + 8))(v28 + 32, **(v26 + 272));
    if ((*v26 & 1) == 0)
    {
      *v26 = 1;
    }

    *&v44 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v44);
    v26 = v45;
    if (*v45 == 1)
    {
      *v45 = 0;
    }
  }

  if (*(v38 + 71) > *(v38 + 70))
  {
    goto LABEL_49;
  }

LABEL_50:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(buf);
  v31 = v42;
  if (v42)
  {
    if (atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v31 + 16))(v31);
      if (atomic_fetch_add(v31 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v31 + 24))(v31);
      }
    }
  }

  v32 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F23454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&a29);
  boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&a20);
  _Unwind_Resume(a1);
}

void sub_296F23470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27)
{
  std::runtime_error::~runtime_error(&a27);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v29);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(&v31);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v30);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a23 + 16));
  __cxa_rethrow();
}

void sub_296F234D4(_Unwind_Exception *a1, int a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v4);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(&v6);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v5);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F234A4);
}

void sub_296F23508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&a29);
  boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&a20);
  _Unwind_Resume(a1);
}

void sub_296F2352C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__0NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN7desense16QMICommandDriver4initEvEUb_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN7desense16QMICommandDriver4initEvEUb_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN7desense16QMICommandDriver4initEvEUb_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7desense16QMICommandDriver4initEvEUb_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
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

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
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

void sub_296F23F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296F23F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
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
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E17F98;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E17F38;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
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

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296F247FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
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

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(uint64_t a1)
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

void sub_296F251EC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

void *_ZNKSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E18008;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEE7__cloneEPNS0_6__baseIS9_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E18008;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEEclEOS8_(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Client stopped for type %d", v6, 8u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t _ZNKSt3__110__function6__funcIZZN7desense16QMICommandDriver4initEvEUb_E3__1NS_9allocatorIS4_EEFvN3qmi16SubscriptionTypeEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN7desense16QMICommandDriver4initEvEUb_E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN7desense16QMICommandDriver4initEvEUb_E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN7desense16QMICommandDriver4initEvEUb_E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN7desense16QMICommandDriver4initEvEUb_E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZNKSt3__110__function6__funcIZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3__4EEvtOT_EUlNS2_16SubscriptionTypeERK13QMIServiceMsgE_NS_9allocatorISE_EEFvSA_SD_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E18088;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3__4EEvtOT_EUlNS2_16SubscriptionTypeERK13QMIServiceMsgE_NS_9allocatorISE_EEFvSA_SD_EE7__cloneEPNS0_6__baseISH_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E18088;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3__4EEvtOT_EUlNS2_16SubscriptionTypeERK13QMIServiceMsgE_NS_9allocatorISE_EEFvSA_SD_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3$_4EEvtOT_EUlNS_16SubscriptionTypeERK13QMIServiceMsgE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3$_4EEvtOT_EUlNS_16SubscriptionTypeERK13QMIServiceMsgE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3$_4EEvtOT_EUlNS_16SubscriptionTypeERK13QMIServiceMsgE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3qmi12ClientRouter13setIndHandlerIZZN7desense16QMICommandDriver4initEvEUb_E3$_4EEvtOT_EUlNS_16SubscriptionTypeERK13QMIServiceMsgE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<void ()(qmi::SubscriptionType,QMIServiceMsg const&)>::~function(uint64_t a1)
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

void ctu::SharedSynchronizable<desense::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7desense13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E18110;
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

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7desense13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c52_ZTSNSt3__110shared_ptrIKN7desense13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::abm::FrequencyRegistering>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<nas::tlv::abm::FrequencyRegistering>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E18168;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZZN7desense16QMICommandDriver26registerFrequencyReportingEN4coex5SubIdEEUb0_E3__6EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *v2;
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = v3[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = v4;
      v10 = 2080;
      v11 = qmi::asString();
      _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#N Could not register with stop report: 0x%x (%s)", v9, 0x12u);
    }

    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    *(v2 + 8);
    v7 = *(*v3 + 16);
    v8 = *MEMORY[0x29EDCA608];

    v7();
  }
}

uint64_t __copy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZZN7desense16QMICommandDriver26registerFrequencyReportingEN4coex5SubIdEEUb0_E3__6EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZZN7desense16QMICommandDriver26registerFrequencyReportingEN4coex5SubIdEEUb0_E3__6EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN7desense16QMICommandDriver26registerFrequencyReportingEN4coex5SubIdEEUb0_E3__6NS_9allocatorIS5_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E181D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKNS_12ResponseBaseEEEOS1_U13block_pointerFvT_E_block_invoke_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  cast_message_type<qmi::ResponseBase const&>::cast(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_296F25AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::abm::FrequencyReporting>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<nas::tlv::abm::FrequencyReporting>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E18238;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN7desense16QMICommandDriver25setFrequencyReportingModeEN4coex5SubIdENS3_22FrequencyReportingModeEE3__1EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = *(a2 + 4);
  v6 = *(*v3 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 67109378;
      *&buf[4] = v5;
      LOWORD(v18) = 2080;
      *(&v18 + 2) = qmi::asString();
      _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#N Could not set frequency reporting mode: 0x%x (%s)", buf, 0x12u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = v3[2];
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEFAULT, "#I Received frequency report response for slot %d", buf, 8u);
    }

    v9 = v3[2];
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (v9 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = *(a2 + 8);
    *buf = *a2;
    *&v18 = v12;
    v13 = *(a2 + 16);
    *(&v18 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    qmi::MessageBase::validateMsgId(buf);
    v15 = *buf;
    v16 = v18;
    if (*(&v18 + 1))
    {
      atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    qmi::MessageBase::validateMsgId(&v15);
    qmi::MessageBase::~MessageBase(buf);
    desense::QMICommandDriver::processFrequencyInd_sync(v4, v11, &v15);
    qmi::MessageBase::~MessageBase(&v15);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_296F25D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F25D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  qmi::MessageBase::~MessageBase(va);
  qmi::MessageBase::~MessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F25D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c129_ZTSNSt3__110shared_ptrIZN7desense16QMICommandDriver25setFrequencyReportingModeEN4coex5SubIdENS1_22FrequencyReportingModeEE3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c129_ZTSNSt3__110shared_ptrIZN7desense16QMICommandDriver25setFrequencyReportingModeEN4coex5SubIdENS1_22FrequencyReportingModeEE3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<desense::QMICommandDriver::setFrequencyReportingMode(coex::SubId,desense::FrequencyReportingMode)::$_1,std::allocator<desense::QMICommandDriver::setFrequencyReportingMode(coex::SubId,desense::FrequencyReportingMode)::$_1>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E182A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<nas::tlv::abm::SubType>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<nas::tlv::abm::SubType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E18308;
  return result;
}

void ___ZNO3qmi12ClientRouter9SendProxy8callbackIZN7desense16QMICommandDriver21bindSubscription_syncENS_16SubscriptionTypeEE3__0EEOS1_OT__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a2 + 4) && (v3 = *(a1 + 32), v4 = v3[8], v5 = *(*v3 + 40), os_log_type_enabled(v5, OS_LOG_TYPE_ERROR)))
  {
    v7 = qmi::asString();
    v8 = *(a2 + 4);
    v10[0] = 67109634;
    v10[1] = v4;
    v11 = 2080;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    _os_log_error_impl(&dword_296ECF000, v5, OS_LOG_TYPE_ERROR, "Error binding subscription to type %d : %s (0x%x)", v10, 0x18u);
    v9 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

uint64_t __copy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZN7desense16QMICommandDriver21bindSubscription_syncEN3qmi16SubscriptionTypeEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c107_ZTSNSt3__110shared_ptrIZN7desense16QMICommandDriver21bindSubscription_syncEN3qmi16SubscriptionTypeEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<desense::QMICommandDriver::bindSubscription_sync(qmi::SubscriptionType)::$_0,std::allocator<desense::QMICommandDriver::bindSubscription_sync(qmi::SubscriptionType)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E18370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3nas3abm16BindSubscription8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F261BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
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

uint64_t boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 292) > *(*result + 288))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v75 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[8] = v4;
  v70[9] = v4;
  v70[6] = v4;
  v70[7] = v4;
  v70[4] = v4;
  v70[5] = v4;
  v70[2] = v4;
  v70[3] = v4;
  v70[0] = v4;
  v70[1] = v4;
  v5 = a1[3];
  v71 = 10;
  __p = v70;
  v73 = 0;
  v74 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v66 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v64 = v3;
    v65 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v67 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
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
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v66 = v11;
      v66[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E18420;
      v52[2] = v11;
      v66[1] = v52;
      v66[2] = v65[2];
      v53 = v65[3];
      v66[3] = v53;
      v3 = v64;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v68 = v66;
      v69 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E183C0;
      v54[2] = v66;
      v55 = *v64;
      v56 = v64[1];
      *v64 = v66;
      v64[1] = v54;
      v68 = v55;
      v69 = v56;
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

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v67;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v67 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v67 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v68 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v68 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v68);
      v57 = **v3;
      v68 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v74);
  v60 = __p;
  if (__p)
  {
    if (v73 > 0)
    {
      v62 = __p + 16 * v73;
      do
      {
        v63 = *(v62 - 1);
        if (v63)
        {
          if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v63 + 16))(v63);
            if (atomic_fetch_add(v63 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 24))(v63);
            }
          }
        }

        v62 -= 16;
      }

      while (v62 > v60);
    }

    if (v71 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v61 = *MEMORY[0x29EDCA608];
}

void sub_296F26CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
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

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

uint64_t abm::asString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 7;
  strcpy(a2, "Invalid");
  if (result <= 2)
  {
    *(a2 + 23) = 4;
    *a2 = (result << 16) | 0x52304254;
    *(a2 + 4) = 0;
  }

  return result;
}

{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 7;
  strcpy(a2, "Invalid");
  if (result <= 9)
  {
    if (result)
    {
      if (result == 1)
      {
        *(a2 + 3) = 1667593069;
        *a2 = 1831874609;
      }

      else if (result == 2)
      {
        *(a2 + 23) = 5;
        strcpy(a2, "1msec");
      }
    }

    else
    {
      *(a2 + 23) = 8;
      strcpy(a2, "1000msec");
    }
  }

  else if (result > 11)
  {
    if (result == 12)
    {
      *(a2 + 23) = 9;
      strcpy(a2, "TangierCG");
    }

    else if (result == 13)
    {
      *(a2 + 23) = 3;
      *a2 = 5915974;
    }
  }

  else
  {
    *(a2 + 23) = 9;
    if (result == 10)
    {
      strcpy(a2, "ModemSkin");
    }

    else
    {
      strcpy(a2, "TangierBG");
    }
  }

  return result;
}

uint64_t abm::convertBasebandCPMSPowerBudgetScale(void *a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    v2 = -1;
    if (v1 > 6)
    {
      switch(v1)
      {
        case 7u:
          if (*a1 == 1831874609 && *(a1 + 3) == 1667593069)
          {
            return 1;
          }

          break;
        case 8u:
          if (*a1 == 0x6365736D30303031)
          {
            return 0;
          }

          break;
        case 9u:
          if (*a1 != 0x696B536D65646F4DLL || *(a1 + 8) != 110)
          {
            if (*a1 != 0x42726569676E6154 || *(a1 + 8) != 71)
            {
              v5 = (*a1 ^ 0x43726569676E6154 | *(a1 + 8) ^ 0x47) == 0;
              v2 = 12;
LABEL_69:
              if (!v5)
              {
                return -1;
              }

              return v2;
            }

            return 11;
          }

          return 10;
        default:
          return v2;
      }

      return 255;
    }

    if (v1 != 3)
    {
      if (v1 != 5)
      {
        return v2;
      }

      if (*a1 == 1702063409 && *(a1 + 4) == 99)
      {
        return 2;
      }

      return 255;
    }

LABEL_65:
    v18 = bswap32(*a1 | (*(a1 + 2) << 16));
    v19 = v18 >= 0x46455A00;
    v20 = v18 > 0x46455A00;
    v21 = !v19;
    v5 = v20 == v21;
    v2 = 13;
    goto LABEL_69;
  }

  v6 = a1[1];
  if (v6 <= 7)
  {
    if (v6 == 5)
    {
      if (**a1 == 1702063409 && *(*a1 + 4) == 99)
      {
        return 2;
      }
    }

    else if (v6 == 7 && **a1 == 1831874609 && *(*a1 + 3) == 1667593069)
    {
      return 1;
    }

    goto LABEL_63;
  }

  if (v6 == 8)
  {
    if (**a1 == 0x6365736D30303031)
    {
      return 0;
    }

    goto LABEL_63;
  }

  if (v6 != 9)
  {
LABEL_63:
    if (a1[1] != 3)
    {
      return 255;
    }

    a1 = *a1;
    goto LABEL_65;
  }

  v10 = *a1;
  if (**a1 == 0x696B536D65646F4DLL && *(*a1 + 8) == 110)
  {
    return 10;
  }

  if (*v10 != 0x42726569676E6154 || *(v10 + 8) != 71)
  {
    v13 = *v10;
    v14 = *(v10 + 8);
    if (v13 == 0x43726569676E6154 && v14 == 71)
    {
      return 12;
    }

    goto LABEL_63;
  }

  return 11;
}

uint64_t abm::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
LABEL_6:
      a2[23] = 7;
      strcpy(a2, "Invalid");
      return result;
    }

    a2[23] = 20;
    strcpy(a2, "Non-Emergency-Stewie");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 16;
        strcpy(a2, "Emergency-Stewie");
        return result;
      }

      goto LABEL_6;
    }

    a2[23] = 4;
    strcpy(a2, "None");
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 10;
        strcpy(a2, "24hr_Timer");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 7;
    strcpy(a2, "Profile");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 7;
        strcpy(a2, "ABMtool");
        return result;
      }

LABEL_8:
      a2[23] = 11;
      strcpy(a2, "UnSpecified");
      return result;
    }

    a2[23] = 2;
    strcpy(a2, "UI");
  }

  return result;
}

{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "Last_Used");
  }

  else if (result)
  {
    a2[23] = 11;
    strcpy(a2, "UnSpecified");
  }

  else
  {
    a2[23] = 7;
    strcpy(a2, "Default");
  }

  return result;
}

void radio::QMIRFSCommandDriver::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x98uLL);
  v5 = *a1;
  v6 = a1[1];
  v7 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = 0;
  }

  radio::RFSCommandDriver::RFSCommandDriver();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *v4 = &unk_2A1E18480;
  v4[7] = 0u;
  v4[8] = 0u;
  *(v4 + 36) = 0;
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<radio::QMIRFSCommandDriver>::shared_ptr[abi:ne200100]<radio::QMIRFSCommandDriver,std::shared_ptr<radio::QMIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::QMIRFSCommandDriver>(radio::QMIRFSCommandDriver*)::{lambda(radio::QMIRFSCommandDriver*)#1},0>(a2, v4);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  radio::QMIRFSCommandDriver::init(*a2);
}

void sub_296F27C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t radio::QMIRFSCommandDriver::QMIRFSCommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::RFSCommandDriver::RFSCommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E18480;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return a1;
}

{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::RFSCommandDriver::RFSCommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E18480;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return a1;
}

void radio::QMIRFSCommandDriver::init(radio::QMIRFSCommandDriver *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
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

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_15_1;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_52;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMIRFSCommandDriver::~QMIRFSCommandDriver(radio::QMIRFSCommandDriver *this)
{
  *this = &unk_2A1E18480;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 112));
  radio::RFSCommandDriver::~RFSCommandDriver(this);
}

{
  *this = &unk_2A1E18480;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  qmi::Client::~Client((this + 112));
  radio::RFSCommandDriver::~RFSCommandDriver(this);
}

{
  *this = &unk_2A1E18480;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  qmi::Client::~Client((this + 112));
  radio::RFSCommandDriver::~RFSCommandDriver(this);
  operator delete(v3);
}

void ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v63, *(v2 + 72));
  if (!v63)
  {
    Name = radio::RFSCommandDriver::getName(v2);
    v27 = strlen(Name);
    if (v27 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v28 = v27;
    if (v27 >= 0x17)
    {
      if ((v27 | 7) == 0x17)
      {
        v40 = 25;
      }

      else
      {
        v40 = (v27 | 7) + 1;
      }

      p_dst = operator new(v40);
      v61 = v28;
      v62 = v40 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v62) = v27;
      p_dst = &__dst;
      if (!v27)
      {
        LOBYTE(__dst) = 0;
        v30 = *(v2 + 24);
        v52 = v30;
        if (!v30)
        {
LABEL_46:
          v58 = 5;
          strcpy(__p, "radio");
          v31 = *(v2 + 16);
          if (!v31 || (v32 = *(v2 + 8), (v33 = std::__shared_weak_count::lock(v31)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v34 = v33;
          atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v50 = 0;
            v51 = 0;
            v35 = std::__shared_weak_count::lock(v33);
            if (v35)
            {
LABEL_50:
              atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v50 = v32;
              v51 = v35;
LABEL_51:
              std::__shared_weak_count::__release_weak(v34);
              if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v35->__on_zero_shared)(v35);
                std::__shared_weak_count::__release_weak(v35);
              }

              qmi::Client::createWithQueue();
              v36 = v67;
              v67 = 0uLL;
              v37 = *(v2 + 136);
              *(v2 + 128) = v36;
              if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v37->__on_zero_shared)(v37);
                std::__shared_weak_count::__release_weak(v37);
              }

              qmi::Client::~Client(&v65);
              if (v51)
              {
                std::__shared_weak_count::__release_weak(v51);
              }

              if (v58 < 0)
              {
                operator delete(__p[0]);
                v15 = v52;
                if (!v52)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v15 = v52;
                if (!v52)
                {
                  goto LABEL_29;
                }
              }

LABEL_28:
              dispatch_release(v15);
              goto LABEL_29;
            }
          }

          else
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v34);
            v50 = 0;
            v51 = 0;
            v35 = std::__shared_weak_count::lock(v34);
            if (v35)
            {
              goto LABEL_50;
            }
          }

          v50 = 0;
          v51 = v35;
          goto LABEL_51;
        }

LABEL_45:
        dispatch_retain(v30);
        goto LABEL_46;
      }
    }

    memmove(p_dst, Name, v28);
    *(p_dst + v28) = 0;
    v30 = *(v2 + 24);
    v52 = v30;
    if (!v30)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v3 = radio::RFSCommandDriver::getName(v2);
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
      v39 = 25;
    }

    else
    {
      v39 = (v4 | 7) + 1;
    }

    v6 = operator new(v39);
    v61 = v5;
    v62 = v39 | 0x8000000000000000;
    __dst = v6;
LABEL_79:
    memmove(v6, v3, v5);
    *(v6 + v5) = 0;
    v7 = *(v2 + 24);
    v59 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIBYTE(v62) = v4;
  v6 = &__dst;
  if (v4)
  {
    goto LABEL_79;
  }

  LOBYTE(__dst) = 0;
  v7 = *(v2 + 24);
  v59 = v7;
  if (v7)
  {
LABEL_6:
    dispatch_retain(v7);
  }

LABEL_7:
  v58 = 5;
  strcpy(__p, "radio");
  v8 = *(v2 + 16);
  if (!v8 || (v9 = *(v2 + 8), (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
    v55 = 0;
    v56 = 0;
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_82:
    v55 = 0;
    v56 = v12;
    goto LABEL_12;
  }

  v55 = 0;
  v56 = 0;
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_82;
  }

LABEL_11:
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v55 = v9;
  v56 = v12;
LABEL_12:
  std::__shared_weak_count::__release_weak(v11);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v53 = v63;
  v54 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v13 = v67;
  v67 = 0uLL;
  v14 = *(v2 + 136);
  *(v2 + 128) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  qmi::Client::~Client(&v65);
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_weak(v56);
  }

  if (v58 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = v59;
  if (v59)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__dst);
  }

  v43 = MEMORY[0x29EDCA5F8];
  v44 = 1174405120;
  v45 = ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke_2;
  v46 = &__block_descriptor_tmp_10;
  v17 = a1[5];
  v16 = a1[6];
  v47 = v2;
  v48 = v17;
  v49 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::Client::setHandler();
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 1174405120;
  v41[2] = ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke_3;
  v41[3] = &__block_descriptor_tmp_12;
  v19 = a1[5];
  v18 = a1[6];
  v41[4] = v2;
  v41[5] = v19;
  v42 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = MEMORY[0x29EDCA5F8];
  v66 = 0x40000000;
  *&v67 = ___ZNK3qmi6Client13setIndHandlerIRKN4mfse3abm9SyncEvent10IndicationEEEvtU13block_pointerFvT_E_block_invoke;
  *(&v67 + 1) = &unk_29EE5E5B8;
  v68 = v41;
  qmi::Client::setIndHandler();
  qmi::Client::setIndShouldWake((v2 + 112));
  v20 = *(v2 + 16);
  if (!v20 || (v21 = *(v2 + 8), (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v23 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v23);
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      goto LABEL_39;
    }

LABEL_63:
    v65 = 0;
    v66 = 0;
    goto LABEL_64;
  }

  v24 = std::__shared_weak_count::lock(v22);
  if (!v24)
  {
    goto LABEL_63;
  }

LABEL_39:
  v25 = v24;
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v65 = v21;
  v66 = v24;
  std::__shared_weak_count::__release_weak(v23);
  if (atomic_fetch_add(v25 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  (*(*v25 + 16))(v25);
  v23 = v25;
LABEL_64:
  std::__shared_weak_count::__release_weak(v23);
LABEL_65:
  qmi::Client::setClientHandle();
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  qmi::Client::start((v2 + 112));
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  v38 = v64;
  if (v64)
  {
    if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }
  }
}

void sub_296F289B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, dispatch_object_t object, char a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_3:
      v38 = object;
      if (!object)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  v38 = object;
  if (!object)
  {
LABEL_8:
    if (*(v36 - 137) < 0)
    {
      operator delete(*(v36 - 160));
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v36 - 136);
      _Unwind_Resume(a1);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v36 - 136);
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v38);
  goto LABEL_8;
}

void ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke_2(void *a1)
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
        *(v3 + 36) = 0;
        radio::QMIRFSCommandDriver::enableIndications_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void radio::QMIRFSCommandDriver::enableIndications_sync(radio::QMIRFSCommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Enabling RFS Sync indication", buf, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v8);
  v4[5] = this + 112;
  v4[6] = QMIServiceMsg::create();
  v5 = 25000;
  v6 = 0;
  aBlock = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN5radio19QMIRFSCommandDriver22enableIndications_syncEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_16_0;
  v4[4] = this;
  *buf = MEMORY[0x29EDCA5F8];
  v10 = 0x40000000;
  v11 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4mfse3abm15EnableSyncEvent8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v12 = &unk_29EE5E600;
  v13 = v4;
  aBlock = _Block_copy(buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v8);
}

void sub_296F28D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_296F28D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN5radio16RFSCommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__18weak_ptrIN5radio16RFSCommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke_3(void *a1, qmi::MessageBase *a2)
{
  v84 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_55;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v49 = v6;
  if (!v6)
  {
    goto LABEL_55;
  }

  v7 = v6;
  if (a1[5])
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = 0;
    v8 = *(v5 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEFAULT, "#I Received RFS Sync indication", buf, 2u);
    }

    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 0x40000000;
    v40 = ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke_4;
    v41 = &unk_29EE5E520;
    v42 = &v44;
    v43 = v5;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v11 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v10, 1);
      buf[0] = *v11 != 0;
      v40(v39, buf);
    }

    v12 = *(v5 + 56);
    v58 = *(v45 + 24);
    v56 = 0;
    v57 = 0;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v70 = v13;
    v71 = v13;
    v68 = v13;
    v69 = v13;
    v66 = v13;
    v67 = v13;
    v64 = v13;
    v65 = v13;
    *buf = v13;
    v63 = v13;
    v14 = *(v12 + 24);
    __p[0] = 10;
    __p[1] = buf;
    v73[0] = 0;
    v73[1] = v14;
    pthread_mutex_lock(v14);
    v15 = *(v12 + 8);
    if (v15)
    {
      explicit = atomic_load_explicit(v15 + 2, memory_order_acquire);
      v17 = *v12;
      if (explicit == 1)
      {
        v18 = *v17;
        v19 = *(v12 + 16);
        if (v19 == *v17)
        {
          v19 = *(v18 + 8);
        }

        *&v59 = v19;
        if (v18 != v19)
        {
          v20 = v19[2];
          if (*(v20 + 24))
          {
            v19 = v19[1];
          }

          else
          {
            v19 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v18, (v20 + 64), &v59);
            v17 = *v12;
          }
        }

        *(v12 + 16) = v19;
      }

      v15 = *(v12 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(v15 + 2, 1u, memory_order_relaxed);
      }
    }

    else
    {
      v17 = *v12;
    }

    v21 = v57;
    v56 = v17;
    v57 = v15;
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

    pthread_mutex_unlock(v73[1]);
    v22 = __p[1];
    if (__p[1])
    {
      if (v73[0] > 0)
      {
        v37 = __p[1] + 16 * v73[0];
        do
        {
          v38 = *(v37 - 1);
          if (v38)
          {
            if (atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v38 + 16))(v38);
              if (atomic_fetch_add(v38 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v38 + 24))(v38);
              }
            }
          }

          v37 -= 16;
        }

        while (v37 > v22);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }

    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v75 = v23;
    v76 = v23;
    *v73 = v23;
    v74 = v23;
    v71 = v23;
    *__p = v23;
    v69 = v23;
    v70 = v23;
    v67 = v23;
    v68 = v23;
    v65 = v23;
    v66 = v23;
    v63 = v23;
    v64 = v23;
    *buf = v23;
    buf[0] = 0;
    v77 = 0xAAAAAAAAAAAAAAAALL;
    v78 = 10;
    v79 = &buf[8];
    v80 = 0;
    v83 = 0;
    v81 = &v58;
    v82 = 0;
    v24 = v56;
    v25 = *v56;
    v53 = buf;
    v54 = v12;
    v55 = v25;
    *&v51 = *(v25 + 8);
    *(&v51 + 1) = v25;
    *&v52 = buf;
    *(&v52 + 1) = v25;
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v51);
    v50[0] = *v24;
    v50[1] = v50[0];
    v50[2] = buf;
    v50[3] = v50[0];
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(v50);
    v59 = v51;
    v60 = v52;
    v26 = v50[0];
    v27 = v51;
    if (v51 == v50[0])
    {
      if (HIDWORD(v82) <= v82)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v28 = v60;
      if ((*v60 & 1) == 0)
      {
        v29 = *(*(v51 + 16) + 32);
        v30 = *(v29 + 24);
        if (!v30)
        {
          std::runtime_error::runtime_error(&v61, "call to empty boost::function");
          v61.__vftable = &unk_2A1E17188;
          boost::throw_exception<boost::bad_function_call>(&v61);
        }

        (*((v30 & 0xFFFFFFFFFFFFFFFELL) + 8))(v29 + 32, **(v60 + 272));
        if ((*v28 & 1) == 0)
        {
          *v28 = 1;
        }
      }

      *&v59 = *(v27 + 8);
      boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v59);
      v31 = v60;
      if (*v60 == 1)
      {
        *v60 = 0;
      }

      for (i = v59; v59 != v26; i = v59)
      {
        v33 = *(*(i + 16) + 32);
        v34 = *(v33 + 24);
        if (!v34)
        {
          std::runtime_error::runtime_error(&v61, "call to empty boost::function");
          v61.__vftable = &unk_2A1E17188;
          boost::throw_exception<boost::bad_function_call>(&v61);
        }

        (*((v34 & 0xFFFFFFFFFFFFFFFELL) + 8))(v33 + 32, **(v31 + 272));
        if ((*v31 & 1) == 0)
        {
          *v31 = 1;
        }

        *&v59 = *(i + 8);
        boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v59);
        v31 = v60;
        if (*v60 == 1)
        {
          *v60 = 0;
        }
      }

      if (*(v53 + 71) <= *(v53 + 70))
      {
        goto LABEL_48;
      }
    }

    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(v54, v55);
LABEL_48:
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(buf);
    v35 = v57;
    if (v57)
    {
      if (atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v35 + 16))(v35);
        if (atomic_fetch_add(v35 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v35 + 24))(v35);
        }
      }
    }

    _Block_object_dispose(&v44, 8);
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_55:
  v36 = *MEMORY[0x29EDCA608];
}

void sub_296F294E8(_Unwind_Exception *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::runtime_error a39)
{
  std::runtime_error::~runtime_error(&a39);
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v43, a2);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(&v45);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v44);
    _Block_object_dispose(&v41, 8);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v42);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a35 + 16));
  __cxa_rethrow();
}

void sub_296F2954C(_Unwind_Exception *a1, uint64_t a2)
{
  __cxa_end_catch();
  if (a2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v6, a2);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(&v8);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v7);
    _Block_object_dispose(&v4, 8);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v5);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F2951CLL);
}

void sub_296F2957C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    (*MEMORY[0x29EDC91A8])(*v2, 16, v3, v4);
    JUMPOUT(0x296F28EF4);
  }

  JUMPOUT(0x296F29614);
}

void sub_296F295D4(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296F29614);
}

void ___ZN5radio19QMIRFSCommandDriver4initEv_block_invoke_4(uint64_t a1, _BYTE *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = *a2;
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Reset after sync: %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void ___ZN5radio19QMIRFSCommandDriver22enableIndications_syncEv_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v2 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEFAULT, "#I Failed to enable RFS Sync indication", v3, 2u);
    }
  }
}

void radio::QMIRFSCommandDriver::sync(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke;
  v14[3] = &__block_descriptor_tmp_32_3;
  v14[4] = a1;
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a3 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[2];
  if (!v7 || (v8 = a1[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  v11 = a1[3];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E18768;
  block[5] = v8;
  v18 = v10;
  p_shared_owners = &v10->__shared_owners_;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v14;
  dispatch_async(v11, block);
  v13 = v18;
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_10:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_11:
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Sending RFS sync request", buf, 2u);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v4;
  v32 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v31);
  v5 = *(&v31 + 1);
  v6 = v32;
  v7 = *(&v31 + 1);
  if (*(&v31 + 1) != v32)
  {
    v7 = *(&v31 + 1);
    while (*(*v7 + 8) != 1)
    {
      if (++v7 == v32)
      {
        goto LABEL_11;
      }
    }
  }

  if (v7 == v32)
  {
LABEL_11:
    v11 = operator new(0x10uLL);
    v11[8] = 1;
    *v11 = &unk_2A1E18708;
    *(v11 + 3) = 0;
    v10 = v11 + 12;
    if (v6 >= *(&v32 + 1))
    {
      v13 = v6 - v5;
      v14 = (v6 - v5) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v16 = *(&v32 + 1) - v5;
      if ((*(&v32 + 1) - v5) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v18 = v11;
        v19 = operator new(8 * v17);
        v11 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * v14];
      *v20 = v11;
      v12 = v20 + 8;
      memcpy(v19, v5, v13);
      *(&v31 + 1) = v19;
      *&v32 = v12;
      *(&v32 + 1) = &v19[8 * v17];
      if (v5)
      {
        operator delete(v5);
      }
    }

    else
    {
      *v6 = v11;
      v12 = v6 + 8;
    }

    *&v32 = v12;
  }

  else
  {
    v8 = ***v7;
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 12;
  }

  *v10 = 0;
  v26 = v2 + 112;
  v27 = QMIServiceMsg::create();
  v28 = 25000;
  v29 = 0;
  aBlock = 0;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 1174405120;
  v23[2] = ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke_2;
  v23[3] = &__block_descriptor_tmp_29_1;
  v23[4] = v2;
  v21 = a1[5];
  if (v21)
  {
    v21 = _Block_copy(v21);
  }

  v22 = a1[6];
  v24 = v21;
  object = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v34 = 0x40000000;
  v35 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4mfse3abm10SyncNoWait8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v36 = &unk_29EE5E628;
  v37 = v23;
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

  if (v24)
  {
    _Block_release(v24);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v31);
}

void sub_296F29C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v8 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F29C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F29CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke_2(void *a1, qmi::MessageBase *a2)
{
  v79 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  v70 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2000000000;
  v69 = 1;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 1;
  v50 = 0;
  v51 = &v50;
  v52 = 0x13002000000;
  v53 = __Block_byref_object_copy__2;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60[7] = v5;
  v60[8] = v5;
  v55 = v5;
  v56[0] = v5;
  v56[1] = v5;
  v56[2] = v5;
  v57 = v5;
  v58 = v5;
  v59 = v5;
  v60[0] = v5;
  v60[1] = v5;
  v60[2] = v5;
  v60[3] = v5;
  v60[4] = v5;
  v60[5] = v5;
  v60[6] = v5;
  v54 = __Block_byref_object_dispose__2;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v55);
  cf = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = Mutable;
  if (!Mutable)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51 + 5, "Failed creating a status dictionary", 35);
    v16 = 0;
    *(v63 + 24) = 0;
    if (!a1[5])
    {
      goto LABEL_59;
    }

LABEL_10:
    if (!a1[6])
    {
      goto LABEL_59;
    }

    if (*(v63 + 24) == 1)
    {
      v18 = v70;
      if (!v70)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v19 = *(v4 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      std::stringbuf::str[abi:ne200100](block, (v51 + 6));
      v33 = SHIBYTE(v72) >= 0 ? block : block[0];
      *buf = 136315138;
      v78 = v33;
      _os_log_error_impl(&dword_296ECF000, v19, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(block[0]);
      }
    }

    v20 = v51;
    v21 = *(v51 + 36);
    if ((v21 & 0x10) != 0)
    {
      v24 = v51[17];
      v25 = v51[12];
      if (v24 < v25)
      {
        v51[17] = v25;
        v24 = v25;
      }

      v26 = v20[11];
      v22 = v24 - v26;
      if (v24 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if ((v21 & 8) == 0)
      {
        v22 = 0;
        HIBYTE(v35) = 0;
        v23 = __dst;
        goto LABEL_29;
      }

      v26 = v51[8];
      v22 = v51[10] - v26;
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_69:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v22 >= 0x17)
    {
      if ((v22 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v22 | 7) + 1;
      }

      v23 = operator new(v27);
      __dst[1] = v22;
      v35 = v27 | 0x8000000000000000;
      __dst[0] = v23;
    }

    else
    {
      HIBYTE(v35) = v22;
      v23 = __dst;
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    memmove(v23, v26, v22);
LABEL_29:
    *(v23 + v22) = 0;
    CreateError();
    v28 = v70;
    v18 = block[0];
    v70 = block[0];
    block[0] = 0;
    if (v28)
    {
      CFRelease(v28);
      if (block[0])
      {
        CFRelease(block[0]);
      }
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst[0]);
      if (!v18)
      {
LABEL_35:
        v16 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v29 = a1[5];
        if (v29)
        {
          v30 = _Block_copy(v29);
        }

        else
        {
          v30 = 0;
        }

        v31 = a1[6];
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        v72 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_0;
        v73 = &__block_descriptor_tmp_58_2;
        if (v30)
        {
          v74 = _Block_copy(v30);
          v75 = v18;
          if (!v18)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v74 = 0;
          v75 = v18;
          if (!v18)
          {
LABEL_45:
            v76 = v16;
            if (v16)
            {
              CFRetain(v16);
            }

            dispatch_async(v31, block);
            if (v76)
            {
              CFRelease(v76);
            }

            if (v75)
            {
              CFRelease(v75);
            }

            if (v74)
            {
              _Block_release(v74);
            }

            if (v30)
            {
              _Block_release(v30);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            goto LABEL_59;
          }
        }

        CFRetain(v18);
        goto LABEL_45;
      }
    }

    else if (!v18)
    {
      goto LABEL_35;
    }

LABEL_34:
    CFRetain(v18);
    goto LABEL_35;
  }

  v48 = v4;
  cf = Mutable;
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 0x40000000;
  v44 = ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke_21;
  v45 = &unk_29EE5E568;
  v46 = &v66;
  v47 = &v62;
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v12 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v10, 4);
    LODWORD(block[0]) = *v12;
    v44(v43, block);
  }

  if (*(a2 + 1))
  {
    v36[0] = MEMORY[0x29EDCA5F8];
    v36[1] = 0x40000000;
    v37 = ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke_24;
    v38 = &unk_29EE5E590;
    v39 = &v66;
    v40 = &v62;
    v41 = &v50;
    v42 = v4;
    v13 = qmi::MessageBase::findTlvValue(a2);
    v15 = v13;
    if (v13)
    {
      tlv::throwIfNotEnoughBytes(v13, v13 + v14, 4);
      LODWORD(block[0]) = *v15;
      v37(v36, block);
    }
  }

  ctu::cf::insert<char const*,BOOL>(v8, *MEMORY[0x29EDC8CD0], *(v63 + 24), v6, v11);
  v16 = cf;
  ctu::cf::insert<char const*,BOOL>(cf, *MEMORY[0x29EDC8CD8], *(v67 + 24), v6, v17);
  if (a1[5])
  {
    goto LABEL_10;
  }

LABEL_59:
  if (v16)
  {
    CFRelease(v16);
  }

  _Block_object_dispose(&v50, 8);
  *&v55 = *MEMORY[0x29EDC9538];
  *(&v56[-1] + *(v55 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v55 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(*(&v57 + 1));
  }

  *(&v55 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v56);
  std::ostream::~ostream();
  MEMORY[0x29C268E60](v60);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  if (v70)
  {
    CFRelease(v70);
  }

  v32 = *MEMORY[0x29EDCA608];
}

void sub_296F2A3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke_21(void *a1, int *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v4 + 144);
    v7 = *a2;
    v13[0] = 67109376;
    v13[1] = v6;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Sync token: Old = %u New = %u", v13, 0xEu);
  }

  v8 = *(v4 + 144);
  v9 = *a2;
  if (v8 == *a2)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = 1;
    v10 = *(v4 + 40);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    v9 = v8;
    if (v11)
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_296ECF000, v10, OS_LOG_TYPE_DEFAULT, "#I Sync token same. Sync is already in progress.", v13, 2u);
      v9 = *a2;
    }
  }

  *(v4 + 144) = v9;
  v12 = *MEMORY[0x29EDCA608];
}

void ___ZN5radio19QMIRFSCommandDriver4syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS3_I9__CFErrorEES6_EEE_block_invoke_24(void *a1, _DWORD *a2)
{
  if (*a2 == 31)
  {
    v2 = a1[7];
    *(*(a1[4] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = 1;
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Nothing to sync", v7, 2u);
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = 0;
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((*(a1[6] + 8) + 40), "Sync response with error [", 26);
    v6 = MEMORY[0x29C268D10](v5, *a2);

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]", 1);
  }
}

void radio::QMIRFSCommandDriver::setStartHandler(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "setStartHandler";
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::QMIRFSCommandDriver::setIndicationHandler(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "setIndicationHandler";
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::QMIRFSCommandDriver::setLPMEnterAction(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "setLPMEnterAction";
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::QMIRFSCommandDriver::setLPMExitAction(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "setLPMExitAction";
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void radio::QMIRFSCommandDriver::checkRFSStatus(radio::QMIRFSCommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "checkRFSStatus";
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

atomic_ullong *std::shared_ptr<radio::QMIRFSCommandDriver>::shared_ptr[abi:ne200100]<radio::QMIRFSCommandDriver,std::shared_ptr<radio::QMIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::QMIRFSCommandDriver>(radio::QMIRFSCommandDriver*)::{lambda(radio::QMIRFSCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E185E0;
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

void sub_296F2AC38(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<radio::QMIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::QMIRFSCommandDriver>(radio::QMIRFSCommandDriver*)::{lambda(radio::QMIRFSCommandDriver*)#1}::operator() const(radio::QMIRFSCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<radio::QMIRFSCommandDriver *,std::shared_ptr<radio::QMIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::QMIRFSCommandDriver>(radio::QMIRFSCommandDriver*)::{lambda(radio::QMIRFSCommandDriver *)#1},std::allocator<radio::QMIRFSCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<radio::QMIRFSCommandDriver *,std::shared_ptr<radio::QMIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::QMIRFSCommandDriver>(radio::QMIRFSCommandDriver*)::{lambda(radio::QMIRFSCommandDriver *)#1},std::allocator<radio::QMIRFSCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19QMIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19QMIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19QMIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19QMIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<radio::QMIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::QMIRFSCommandDriver>(radio::QMIRFSCommandDriver*)::{lambda(radio::QMIRFSCommandDriver*)#1}::operator() const(radio::QMIRFSCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
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

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
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

void sub_296F2B6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296F2B6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
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
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v7, v10, v7 + 1);
      *(v7 + 2) = v8[2];
      v11 = v8[3];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      v21 = v7;
      boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(&v21, v7, &v21 + 1);
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

        v15 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v14, (v16 + 64), &v21);
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

void sub_296F2BAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E18630;
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

void sub_296F2BC04(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
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
  v9 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v10 = *(a2 + 24);
  v11 = (a2 + 32);
  if (v10 != (a2 + 32))
  {
    do
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v12 = std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v34, &v33, v10 + 8);
      if (*v12)
      {
        v13 = *(v10 + 1);
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = operator new(0x38uLL);
        v15 = *(v10 + 2);
        v14[6] = *(v10 + 6);
        *(v14 + 2) = v15;
        v16 = v34;
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v16;
        *v12 = v14;
        v17 = **v9;
        if (v17)
        {
          *v9 = v17;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v14);
        ++*(a1 + 40);
        v13 = *(v10 + 1);
        if (v13)
        {
          do
          {
LABEL_15:
            v18 = v13;
            v13 = *v13;
          }

          while (v13);
          goto LABEL_8;
        }
      }

      do
      {
        v18 = *(v10 + 2);
        v19 = *v18 == v10;
        v10 = v18;
      }

      while (!v19);
LABEL_8:
      v10 = v18;
    }

    while (v18 != v11);
  }

  *(a1 + 56) = *(a2 + 56);
  v20 = *(a2 + 24);
  if (v20 != v11)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 8);
    do
    {
      v21[6] = v22;
      v23 = a2;
      if (v20 != v11)
      {
        v23 = *(v20 + 6);
      }

      v24 = *(v20 + 1);
      v25 = v24;
      v26 = v20;
      if (v24)
      {
        do
        {
          v27 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v27 = *(v26 + 2);
          v19 = *v27 == v26;
          v26 = v27;
        }

        while (!v19);
      }

      v28 = a2;
      if (v27 != v11)
      {
        v28 = *(v27 + 6);
      }

      while (v23 != v28)
      {
        v23 = *(v23 + 8);
        v22 = *(v22 + 8);
      }

      if (v24)
      {
        do
        {
          v29 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v29 = *(v20 + 2);
          v19 = *v29 == v20;
          v20 = v29;
        }

        while (!v19);
      }

      v30 = v21[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v21[2];
          v19 = *v31 == v21;
          v21 = v31;
        }

        while (!v19);
      }

      v20 = v29;
      v21 = v31;
    }

    while (v29 != v11);
  }

  return a1;
}

void sub_296F2C1AC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_8;
  }

  v6 = *a5;
  v7 = *(a2 + 8);
  if (*a5 == v7)
  {
    if (v6 != 1)
    {
LABEL_6:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v8 = a5[2];
    v9 = *(a2 + 10);
    if (v8 >= v9)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_8:
    v11 = *a2;
    if (*a1 == a2)
    {
      v13 = a2;
    }

    else
    {
      if (v11)
      {
        v12 = *a2;
        do
        {
          v13 = v12;
          v12 = v12[1];
        }

        while (v12);
      }

      else
      {
        v17 = a2;
        do
        {
          v13 = v17[2];
          v18 = *v13 == v17;
          v17 = v13;
        }

        while (v18);
      }

      v19 = *(v13 + 8);
      v20 = *a5;
      if (v19 == *a5)
      {
        if (v19 != 1 || *(v13 + 10) >= a5[2])
        {
          goto LABEL_24;
        }
      }

      else if (v19 >= v20)
      {
LABEL_24:
        v21 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        if (v20 != 1)
        {
          while (1)
          {
            v26 = *(v21 + 8);
            v23 = v21;
            if (v20 == v26)
            {
              break;
            }

            if (v20 < v26)
            {
              v21 = *v21;
              v5 = v23;
              if (!*v23)
              {
                break;
              }
            }

            else
            {
              if (v26 >= v20)
              {
                break;
              }

              v5 = v21 + 1;
              v21 = v21[1];
              if (!v21)
              {
                break;
              }
            }
          }

LABEL_40:
          *a3 = v23;
          return v5;
        }

        v22 = a5[2];
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 8);
          if (v24 == 1)
          {
            v25 = *(v23 + 10);
            if (v22 >= v25)
            {
              if (v25 >= v22)
              {
                goto LABEL_40;
              }

              goto LABEL_33;
            }

LABEL_27:
            v21 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_40;
            }
          }

          else
          {
            if (v24 > 1)
            {
              goto LABEL_27;
            }

LABEL_33:
            v5 = v23 + 1;
            v21 = v23[1];
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    if (v11)
    {
      *a3 = v13;
      return v13 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_8;
  }

  if (v7 >= v6)
  {
    goto LABEL_6;
  }

LABEL_15:
  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v27 = a2;
    do
    {
      v16 = v27[2];
      v18 = *v16 == v27;
      v27 = v16;
    }

    while (!v18);
  }

  if (v16 == v5)
  {
    goto LABEL_56;
  }

  v28 = *(v16 + 8);
  if (v6 == v28)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
      if (v29 >= *(v16 + 10))
      {
        v30 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        goto LABEL_61;
      }

      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v6 < v28)
  {
LABEL_56:
    if (v14)
    {
      *a3 = v16;
      return v16;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

LABEL_58:
  v30 = *v5;
  if (*v5)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
LABEL_61:
      v31 = v30;
      while (1)
      {
        v30 = v31;
        v32 = *(v31 + 8);
        if (v32 == 1)
        {
          v33 = *(v30 + 10);
          if (v29 >= v33)
          {
            if (v33 >= v29)
            {
              goto LABEL_72;
            }

            goto LABEL_68;
          }

LABEL_62:
          v31 = *v30;
          v5 = v30;
          if (!*v30)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v32 > 1)
          {
            goto LABEL_62;
          }

LABEL_68:
          v5 = v30 + 1;
          v31 = v30[1];
          if (!v31)
          {
            goto LABEL_72;
          }
        }
      }
    }

    v34 = *(v30 + 8);
    while (v6 != v34)
    {
      if (v6 < v34)
      {
        v35 = *v30;
        v5 = v30;
        if (!*v30)
        {
          break;
        }
      }

      else
      {
        if (v34 >= v6)
        {
          break;
        }

        v5 = v30 + 1;
        v35 = v30[1];
        if (!v35)
        {
          break;
        }
      }

      v34 = *(v35 + 32);
      v30 = v35;
    }
  }

  else
  {
    v30 = a1 + 1;
  }

LABEL_72:
  *a3 = v30;
  return v5;
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E18690;
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

void sub_296F2C784(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
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

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy((v1 + 3), v1[4]);
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

void sub_296F2CBF4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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

void ___ZNK3qmi6Client13setIndHandlerIRKN4mfse3abm9SyncEvent10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v5, __p[0]);
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

void sub_296F2CDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4mfse3abm15EnableSyncEvent8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F2CED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<mfse::tlv::abm::FileSystem>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<mfse::tlv::abm::FileSystem>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1E18708;
  *(result + 3) = *(a1 + 12);
  return result;
}

void ctu::cf::insert<char const*,BOOL>(__CFDictionary *a1, const __CFString **a2, int a3, uint64_t a4, const __CFAllocator *a5)
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

  if (v10)
  {
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    CFDictionaryAddValue(a1, v7, v9);
  }

  CFRelease(v9);
LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_296F2D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

_BYTE *std::stringbuf::str[abi:ne200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 96);
  if ((v3 & 0x10) != 0)
  {
    v4 = *(a2 + 88);
    v5 = *(a2 + 48);
    if (v4 < v5)
    {
      *(a2 + 88) = v5;
      v4 = v5;
    }

    v6 = *(a2 + 40);
    v7 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      __dst[23] = 0;
LABEL_4:
      *__dst = 0;
      return __dst;
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 32) - v6;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_17:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v2[1] = v7;
    v2[2] = v8 | 0x8000000000000000;
    *v2 = v9;
    v2 = v9;
  }

  else
  {
    __dst[23] = v7;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  __dst = memmove(v2, v6, v7);
  *(v2 + v7) = 0;
  return __dst;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN4mfse3abm10SyncNoWait8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
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

void sub_296F2D268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN5radio16RFSCommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN5radio16RFSCommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void cpms::QMICommandDriver::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x70uLL);
  v5 = *a1;
  v6 = a1[1];
  v7 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = 0;
  }

  cpms::CommandDriver::CommandDriver();
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *v4 = &unk_2A1E187A8;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<cpms::QMICommandDriver>::shared_ptr[abi:ne200100]<cpms::QMICommandDriver,std::shared_ptr<cpms::QMICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::QMICommandDriver>(cpms::QMICommandDriver*)::{lambda(cpms::QMICommandDriver*)#1},0>(a2, v4);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  cpms::QMICommandDriver::init(*a2);
}

void sub_296F2D4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t cpms::QMICommandDriver::QMICommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  cpms::CommandDriver::CommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E187A8;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  cpms::CommandDriver::CommandDriver();
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_2A1E187A8;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void cpms::QMICommandDriver::init(cpms::QMICommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::init(void)::$_0>(cpms::QMICommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<cpms::QMICommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void cpms::QMICommandDriver::~QMICommandDriver(cpms::QMICommandDriver *this)
{
  *this = &unk_2A1E187A8;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v10, 2u);
  }

  v4 = *(this + 13);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    _Block_release(v5);
  }

  qmi::Client::~Client((this + 64));
  *this = &unk_2A1E188B8;
  v6 = *(this + 7);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  MEMORY[0x29C268320](v2);
  v7 = *(this + 4);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  cpms::QMICommandDriver::~QMICommandDriver(this);

  operator delete(v1);
}

uint64_t cpms::QMICommandDriver::checkError@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CFTypeRef *a4@<X8>)
{
  v48 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  if (!*(a2 + 4))
  {
    goto LABEL_33;
  }

  v7 = result;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[7] = v8;
  v44[8] = v8;
  v44[5] = v8;
  v44[6] = v8;
  v44[3] = v8;
  v44[4] = v8;
  v44[1] = v8;
  v44[2] = v8;
  v43 = v8;
  v44[0] = v8;
  *v41 = v8;
  v42 = v8;
  v39 = v8;
  v40 = v8;
  v37 = v8;
  v38 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Failed to ", 10);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; ", 2);
  v15 = *(a2 + 4);
  v16 = qmi::asString();
  v17 = strlen(v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  v18 = *(v7 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if ((BYTE8(v43) & 0x10) != 0)
    {
      v28 = v43;
      if (v43 < *(&v40 + 1))
      {
        *&v43 = *(&v40 + 1);
        v28 = *(&v40 + 1);
      }

      v29 = &v40;
    }

    else
    {
      if ((BYTE8(v43) & 8) == 0)
      {
        v26 = 0;
        HIBYTE(v36) = 0;
        v27 = cf;
        goto LABEL_52;
      }

      v29 = &v38 + 1;
      v28 = *(&v39 + 1);
    }

    v30 = *v29;
    v26 = v28 - *v29;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v26 >= 0x17)
    {
      if ((v26 | 7) == 0x17)
      {
        v31 = 25;
      }

      else
      {
        v31 = (v26 | 7) + 1;
      }

      v27 = operator new(v31);
      cf[1] = v26;
      v36 = v31 | 0x8000000000000000;
      cf[0] = v27;
    }

    else
    {
      HIBYTE(v36) = v28 - *v29;
      v27 = cf;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    memmove(v27, v30, v26);
LABEL_52:
    *(v27 + v26) = 0;
    v32 = cf;
    if (v36 < 0)
    {
      v32 = cf[0];
    }

    *buf = 136315138;
    v47 = v32;
    _os_log_error_impl(&dword_296ECF000, v18, OS_LOG_TYPE_ERROR, "%s: ", buf, 0xCu);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(cf[0]);
    }
  }

  if ((BYTE8(v43) & 0x10) != 0)
  {
    v21 = v43;
    if (v43 < *(&v40 + 1))
    {
      *&v43 = *(&v40 + 1);
      v21 = *(&v40 + 1);
    }

    v22 = v40;
    v19 = v21 - v40;
    if ((v21 - v40) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((BYTE8(v43) & 8) == 0)
    {
      v19 = 0;
      HIBYTE(v34) = 0;
      v20 = __p;
      goto LABEL_23;
    }

    v22 = *(&v38 + 1);
    v19 = *(&v39 + 1) - *(&v38 + 1);
    if (*(&v39 + 1) - *(&v38 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_35:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v20 = operator new(v23);
    __p[1] = v19;
    v34 = v23 | 0x8000000000000000;
    __p[0] = v20;
    goto LABEL_22;
  }

  HIBYTE(v34) = v19;
  v20 = __p;
  if (v19)
  {
LABEL_22:
    memmove(v20, v22, v19);
  }

LABEL_23:
  *(v20 + v19) = 0;
  CreateError();
  if (cf == a4)
  {
    goto LABEL_26;
  }

  v24 = *a4;
  *a4 = cf[0];
  cf[0] = 0;
  if (v24)
  {
    CFRelease(v24);
LABEL_26:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  *&v37 = *MEMORY[0x29EDC9538];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v37 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  *(&v37 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v38);
  std::ostream::~ostream();
  result = MEMORY[0x29C268E60](v44);
LABEL_33:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296F2DD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cpms::QMICommandDriver::sendPowerBudget(void *a1, _OWORD *a2, NSObject **a3)
{
  v20 = 0;
  v21 = 0;
  *&v19 = a1;
  *(&v19 + 1) = &v20;
  if ((&v19 + 8) != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v19 + 1, *a2, a2 + 1);
  }

  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a3[1];
  object[0] = v5;
  object[1] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[2];
  if (!v7 || (v8 = a1[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  v11 = operator new(0x30uLL);
  v12 = v11;
  v13 = v11 + 1;
  *v11 = v19;
  v14 = v20;
  v15 = v21;
  v11[2] = v20;
  v20 = 0;
  v21 = 0;
  v11[3] = v15;
  v16 = v14 + 2;
  if (v15)
  {
    v13 = v16;
  }

  *v13 = v11 + 2;
  *(&v19 + 1) = &v20;
  *(v11 + 2) = *object;
  object[0] = 0;
  object[1] = 0;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v12;
  v18[1] = v8;
  v18[2] = v10;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<cpms::QMICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object[1])
  {
    dispatch_release(object[1]);
  }

  if (object[0])
  {
    _Block_release(object[0]);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v19 + 8, v20);
}

void cpms::QMICommandDriver::registerPowerBudgetIndication(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "virtual void cpms::QMICommandDriver::registerPowerBudgetIndication(PowerBudgetIndicationCallback)";
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I %s not implemented yet", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void cpms::QMICommandDriver::enablePowerBudgetIndication(cpms::QMICommandDriver *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "virtual void cpms::QMICommandDriver::enablePowerBudgetIndication(BOOL, unsigned int)";
    _os_log_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEFAULT, "#I %s not implemented yet", &v3, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void cpms::QMICommandDriver::getCurrentPower(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>(cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,dispatch_queue_s *::default_delete<cpms::QMICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void cpms::QMICommandDriver::queryThermalID(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0>(cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0,std::default_delete<cpms::QMICommandDriver::queryThermalID(dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void cpms::QMICommandDriver::setThermalReportFrequency(void *a1, int a2, int a3, const void **a4, uint64_t a5)
{
  if (*a4)
  {
    v9 = _Block_copy(*a4);
    v10 = *a5;
    if (*a5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = 0;
    v12 = *(a5 + 8);
    if (!v12)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v10 = *a5;
  if (!*a5)
  {
    goto LABEL_10;
  }

LABEL_3:
  v11 = _Block_copy(v10);
  v12 = *(a5 + 8);
  if (v12)
  {
LABEL_4:
    dispatch_retain(v12);
  }

LABEL_5:
  v13 = a1[2];
  if (!v13 || (v14 = a1[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = operator new(0x28uLL);
  *v17 = a1;
  v17[2] = a2;
  v17[3] = a3;
  *(v17 + 2) = v9;
  *(v17 + 3) = v11;
  *(v17 + 4) = v12;
  v18 = a1[3];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<cpms::QMICommandDriver::setThermalReportFrequency(cpms::ThermalReportVersion,unsigned int,dispatch::block<void({block_pointer})(std::vector<abm::ThermalSensorData>)>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);

    std::__shared_weak_count::__release_weak(v16);
  }
}

void cpms::QMICommandDriver::getPowerMitigation(void *a1, uint64_t a2)
{
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = _Block_copy(*a2);
  v5 = *(a2 + 8);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
  }

LABEL_4:
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = v4;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0>(cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0,std::default_delete<cpms::QMICommandDriver::getPowerMitigation(dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t dispatch::callback<void({block_pointer})(BudgetData)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>::~callback(uint64_t a1)
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

atomic_ullong *std::shared_ptr<cpms::QMICommandDriver>::shared_ptr[abi:ne200100]<cpms::QMICommandDriver,std::shared_ptr<cpms::QMICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::QMICommandDriver>(cpms::QMICommandDriver*)::{lambda(cpms::QMICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E18918;
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

void sub_296F2E7F0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<cpms::QMICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::QMICommandDriver>(cpms::QMICommandDriver*)::{lambda(cpms::QMICommandDriver*)#1}::operator() const(cpms::QMICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<cpms::QMICommandDriver *,std::shared_ptr<cpms::QMICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::QMICommandDriver>(cpms::QMICommandDriver*)::{lambda(cpms::QMICommandDriver *)#1},std::allocator<cpms::QMICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<cpms::QMICommandDriver *,std::shared_ptr<cpms::QMICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::QMICommandDriver>(cpms::QMICommandDriver*)::{lambda(cpms::QMICommandDriver *)#1},std::allocator<cpms::QMICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16QMICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<cpms::QMICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::QMICommandDriver>(cpms::QMICommandDriver*)::{lambda(cpms::QMICommandDriver*)#1}::operator() const(cpms::QMICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::QMICommandDriver::init(void)::$_0>(cpms::QMICommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::QMICommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<cpms::QMICommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Init", buf, 2u);
  }

  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getServerConnection(&v64, v2[1].~__shared_weak_count_0);
  if (!v64)
  {
    Name = cpms::CommandDriver::getName(v2);
    v24 = strlen(Name);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v37 = 25;
      }

      else
      {
        v37 = (v24 | 7) + 1;
      }

      p_dst = operator new(v37);
      v51 = v25;
      v52 = v37 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v52) = v24;
      p_dst = &__dst;
      if (!v24)
      {
        LOBYTE(__dst) = 0;
        get_deleter = v2->__get_deleter;
        v59 = get_deleter;
        if (!get_deleter)
        {
LABEL_50:
          HIBYTE(v47) = 3;
          LODWORD(__p) = 7369570;
          on_zero_shared = v2->__on_zero_shared;
          if (!on_zero_shared || (v29 = v2->~__shared_weak_count_0, (v30 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v31 = v30;
          atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v61 = 0;
            v62 = 0;
            v32 = std::__shared_weak_count::lock(v30);
            if (v32)
            {
              goto LABEL_54;
            }
          }

          else
          {
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v31);
            v61 = 0;
            v62 = 0;
            v32 = std::__shared_weak_count::lock(v31);
            if (v32)
            {
LABEL_54:
              atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v33 = v62;
              v61 = v29;
              v62 = v32;
              if (!v33)
              {
LABEL_56:
                std::__shared_weak_count::__release_weak(v31);
                if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v32->__on_zero_shared)(v32);
                  std::__shared_weak_count::__release_weak(v32);
                }

                qmi::Client::createWithQueue();
                v34 = v57;
                v57 = 0uLL;
                v35 = v2[2].~__shared_weak_count_0;
                *&v2[2].~__shared_weak_count = v34;
                if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v35->__on_zero_shared)(v35);
                  std::__shared_weak_count::__release_weak(v35);
                }

                qmi::Client::~Client(buf);
                if (v62)
                {
                  std::__shared_weak_count::__release_weak(v62);
                }

                if (SHIBYTE(v47) < 0)
                {
                  operator delete(__p);
                  v18 = v59;
                  if (!v59)
                  {
                    goto LABEL_32;
                  }
                }

                else
                {
                  v18 = v59;
                  if (!v59)
                  {
                    goto LABEL_32;
                  }
                }

LABEL_31:
                dispatch_release(v18);
                goto LABEL_32;
              }

LABEL_55:
              std::__shared_weak_count::__release_weak(v33);
              goto LABEL_56;
            }
          }

          v33 = v62;
          v61 = 0;
          v62 = v32;
          if (!v33)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_49:
        dispatch_retain(get_deleter);
        goto LABEL_50;
      }
    }

    memmove(p_dst, Name, v25);
    *(p_dst + v25) = 0;
    get_deleter = v2->__get_deleter;
    v59 = get_deleter;
    if (!get_deleter)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v4 = cpms::CommandDriver::getName(v2);
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v5 | 7) + 1;
    }

    v7 = operator new(v36);
    v51 = v6;
    v52 = v36 | 0x8000000000000000;
    __dst = v7;
LABEL_71:
    memmove(v7, v4, v6);
    *(v7 + v6) = 0;
    v8 = v2->__get_deleter;
    v63 = v8;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  HIBYTE(v52) = v5;
  v7 = &__dst;
  if (v5)
  {
    goto LABEL_71;
  }

  LOBYTE(__dst) = 0;
  v8 = v2->__get_deleter;
  v63 = v8;
  if (v8)
  {
LABEL_8:
    dispatch_retain(v8);
  }

LABEL_9:
  HIBYTE(v47) = 3;
  LODWORD(__p) = 7369570;
  v9 = v2->__on_zero_shared;
  if (!v9 || (v10 = v2->~__shared_weak_count_0, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v61 = 0;
    v62 = 0;
    v13 = std::__shared_weak_count::lock(v11);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_74:
    v14 = v62;
    v61 = 0;
    v62 = v13;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v12);
  v61 = 0;
  v62 = 0;
  v13 = std::__shared_weak_count::lock(v12);
  if (!v13)
  {
    goto LABEL_74;
  }

LABEL_13:
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = v62;
  v61 = v10;
  v62 = v13;
  if (v14)
  {
LABEL_14:
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_15:
  std::__shared_weak_count::__release_weak(v12);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v59 = v64;
  v60 = v65;
  if (v65)
  {
    atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::Client::createWithQueueLocal();
  v15 = v57;
  v57 = 0uLL;
  v16 = v2[2].~__shared_weak_count_0;
  *&v2[2].~__shared_weak_count = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  qmi::Client::~Client(buf);
  v17 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
  }

  v18 = v63;
  if (v63)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__dst);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v56 = 0x40000000;
  *&v57 = ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke;
  *(&v57 + 1) = &__block_descriptor_tmp_3;
  v58 = v2;
  qmi::Client::setHandler();
  __dst = MEMORY[0x29EDCA5F8];
  v51 = 0x40000000;
  v52 = ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke_18;
  v53 = &__block_descriptor_tmp_19;
  v54 = v2;
  qmi::Client::setHandler();
  __p = MEMORY[0x29EDCA5F8];
  v46 = 0x40000000;
  v47 = ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke_20;
  v48 = &__block_descriptor_tmp_22;
  v49 = v2;
  qmi::Client::setHandler();
  v40 = MEMORY[0x29EDCA5F8];
  v41 = 0x40000000;
  v42 = ___ZZN4cpms16QMICommandDriver4initEvENK3__0clEv_block_invoke_23;
  v43 = &__block_descriptor_tmp_24_0;
  v44 = v2;
  qmi::Client::setHandler();
  qmi::Client::start(&v2[1].__get_deleter);
  v19 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    _os_log_impl(&dword_296ECF000, v19, OS_LOG_TYPE_DEFAULT, "#I Starting", v39, 2u);
  }

  v20 = v65;
  if (v65 && !atomic_fetch_add((v65 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(v1);
  v21 = a1;
  if (a1)
  {
    v22 = a1[2];
    if (v22)
    {
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
        v21 = a1;
      }
    }

    operator delete(v21);
  }
}