void TelephonyXPC::Client::State::handleMessage_sync(uint64_t a1, uint64_t *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    xpc::dict::to_debug_string(&__p, *a2);
    v24 = SHIBYTE(v32) >= 0 ? &__p : __p;
    *buf = 136315138;
    *&buf[4] = v24;
    _os_log_debug_impl(&dword_26D294000, v4, OS_LOG_TYPE_DEBUG, "#D Message from server: %s", buf, 0xCu);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }
  }

  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(a1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  memset(buf, 170, 16);
  v9 = *a2;
  v29 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v29 = xpc_null_create();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12TelephonyXPC6Client5State18handleMessage_syncEN3xpc4dictE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_69;
  aBlock[4] = a1;
  aBlock[5] = v6;
  v26 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  v27 = v10;
  object = v11;
  TelephonyXPC::Event::create(&v29, &v27, buf);
  if (object)
  {
    dispatch_release(object);
  }

  if (v27)
  {
    _Block_release(v27);
  }

  xpc_release(v29);
  v29 = 0;
  TelephonyXPC::Event::State::name(**buf);
  if (SHIBYTE(v32) < 0)
  {
    if (v31 == 7)
    {
      v14 = *__p != *"invalid" || *(__p + 3) != *"alid";
      operator delete(__p);
      if (!v14)
      {
        goto LABEL_52;
      }
    }

    else
    {
      operator delete(__p);
    }
  }

  else if (SHIBYTE(v32) == 7 && __p == *"invalid" && *(&__p + 3) == *"alid")
  {
    goto LABEL_52;
  }

  v15 = *(a1 + 160);
  TelephonyXPC::Event::State::name(**buf);
  v16 = std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::find<std::string>(v15, &__p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (*(a1 + 160) + 8 != v16)
  {
    v18 = *buf;
    v17 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(v16 + 56);
    if (v19)
    {
      v20 = _Block_copy(v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v16 + 64);
    __p = MEMORY[0x277D85DD0];
    v31 = 1174405120;
    v32 = ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEclIJS5_EEEvDpT__block_invoke;
    v33 = &__block_descriptor_tmp_65;
    if (v20)
    {
      v22 = _Block_copy(v20);
    }

    else
    {
      v22 = 0;
    }

    v34 = v22;
    v35 = v18;
    v36 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v21, &__p);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v34)
    {
      _Block_release(v34);
    }

    if (v20)
    {
      _Block_release(v20);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

LABEL_52:
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v8);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_26D294C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE(uint64_t result, uint64_t a2)
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

void **std::unique_ptr<TelephonyXPC::Event>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(v2);
  }

  return a1;
}

void TelephonyXPC::Event::State::name(TelephonyXPC::Event::State *this)
{
  v1[0] = this;
  v1[1] = "event";
  object = 0xAAAAAAAAAAAAAAAALL;
  xpc::dict::object_proxy::operator xpc::object(v1, &object);
  xpc::dyn_cast_or_default();
  xpc_release(object);
}

void TelephonyXPC::Event::create(xpc_object_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x18uLL);
  v7 = *a1;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (*a2)
  {
    v8 = _Block_copy(*a2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    dispatch_retain(v9);
  }

  v6->~__shared_weak_count = v7;
  if (v7)
  {
    xpc_retain(v7);
    if (v8)
    {
LABEL_11:
      v10 = _Block_copy(v8);
      goto LABEL_14;
    }
  }

  else
  {
    v6->~__shared_weak_count = xpc_null_create();
    if (v8)
    {
      goto LABEL_11;
    }
  }

  v10 = 0;
LABEL_14:
  v6->~__shared_weak_count_0 = v10;
  v6->__on_zero_shared = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v11 = operator new(0x20uLL);
  v11->__vftable = &unk_287EA7340;
  v11->__shared_owners_ = 0;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(v7);
  v12 = operator new(0x10uLL);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *v12 = v6;
  v12[1] = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v12;
  v13 = operator new(0x20uLL);
  *v13 = &unk_287EA73E8;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v12;
  a3[1] = v13;
  v14 = 0;
  std::unique_ptr<TelephonyXPC::Event>::~unique_ptr[abi:ne200100](&v14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
}

void sub_26D294FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<TelephonyXPC::Event>::~unique_ptr[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void std::__shared_ptr_pointer<TelephonyXPC::Event *,std::shared_ptr<TelephonyXPC::Event>::__shared_ptr_default_delete<TelephonyXPC::Event,TelephonyXPC::Event>,std::allocator<TelephonyXPC::Event>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(v1);
  }
}

uint64_t std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::find<std::string>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void *__copy_helper_block_e8_32c86_ZTSN8dispatch5blockIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEE40c48_ZTSNSt3__110shared_ptrIN12TelephonyXPC5EventEEE(void *a1, void *a2)
{
  result = a2[4];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[5];
  v5 = a2[6];
  a1[4] = result;
  a1[5] = v6;
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEclIJS5_EEEvDpT__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[5];
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_26D29525C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TelephonyXPC::Event::getData(TelephonyXPC::Event *this@<X0>, void *a2@<X8>)
{
  v2 = *this;
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v3[0] = v2;
  v3[1] = "eventData";
  xpc::dict::object_proxy::operator xpc::dict(v3, a2);
}

void xpc::dict::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
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

  if (MEMORY[0x26D6B9900](v4) != MEMORY[0x277D86468])
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

void __destroy_helper_block_e8_32c86_ZTSN8dispatch5blockIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEE40c48_ZTSNSt3__110shared_ptrIN12TelephonyXPC5EventEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void std::__shared_ptr_pointer<TelephonyXPC::Event::State *,std::shared_ptr<TelephonyXPC::Event::State>::__shared_ptr_default_delete<TelephonyXPC::Event::State,TelephonyXPC::Event::State>,std::allocator<TelephonyXPC::Event::State>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    TelephonyXPC::Event::State::~State(v1);

    operator delete(v2);
  }
}

void TelephonyXPC::Event::State::~State(TelephonyXPC::Event::State *this)
{
  if (!*(this + 1) || !*(this + 2))
  {
    goto LABEL_38;
  }

  TelephonyXPC::Event::State::name(this);
  if (SHIBYTE(v14) < 0)
  {
    if (v13 == 7)
    {
      v4 = *v12 != *"invalid" || *(v12 + 3) != *"alid";
      operator delete(v12);
      if (!v4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      operator delete(v12);
    }
  }

  else if (SHIBYTE(v14) == 7 && v12 == *"invalid" && *(&v12 + 3) == *"alid")
  {
    goto LABEL_38;
  }

  v5 = *this;
  if (*this)
  {
    xpc_retain(*this);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v6 = *(this + 1);
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 2);
  v12 = MEMORY[0x277D85DD0];
  v13 = 1174405120;
  v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
  v15 = &__block_descriptor_tmp;
  if (v7)
  {
    v9 = _Block_copy(v7);
  }

  else
  {
    v9 = 0;
  }

  aBlock = v9;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  dispatch_async(v8, &v12);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  xpc_release(v5);
LABEL_38:
  v10 = *(this + 2);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 1);
  if (v11)
  {
    _Block_release(v11);
  }

  xpc_release(*this);
  *this = 0;
}

xpc_object_t __copy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

void ___ZN12TelephonyXPC6Client5State18handleMessage_syncEN3xpc4dictE_block_invoke(void *a1, xpc_object_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_20;
      }

      reply = xpc_dictionary_create_reply(*a2);
      if (reply || (reply = xpc_null_create()) != 0)
      {
        if (MEMORY[0x26D6B9900](reply) == MEMORY[0x277D86468])
        {
          xpc_retain(reply);
          v9 = reply;
        }

        else
        {
          v9 = xpc_null_create();
        }
      }

      else
      {
        v9 = xpc_null_create();
        reply = 0;
      }

      xpc_release(reply);
      remote_connection = xpc_dictionary_get_remote_connection(*a2);
      v11 = remote_connection;
      if (remote_connection)
      {
        xpc_retain(remote_connection);
      }

      else
      {
        v11 = xpc_null_create();
      }

      v12 = MEMORY[0x26D6B9900](*(v5 + 40));
      v13 = MEMORY[0x277D86450];
      if (v12 == MEMORY[0x277D86450] && MEMORY[0x26D6B9900](v11) == v13 && MEMORY[0x26D6B9900](v9) == MEMORY[0x277D86468] && v11 == *(v5 + 40))
      {
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        TelephonyXPC::Client::State::send_sync(v5, &object);
        xpc_release(object);
        object = 0;
        v14 = *(v5 + 72);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        xpc::dict::to_debug_string(__p, *a2);
        if (v20 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        *buf = 136315138;
        v23 = v18;
        v17 = "#D Sent reply for message: %s";
      }

      else
      {
        v14 = *(v5 + 72);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
LABEL_18:
          xpc_release(v11);
          xpc_release(v9);
          goto LABEL_19;
        }

        xpc::dict::to_debug_string(__p, *a2);
        if (v20 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        *buf = 136315138;
        v23 = v16;
        v17 = "#D Unable to send reply for message: %s";
      }

      _os_log_debug_impl(&dword_26D294000, v14, OS_LOG_TYPE_DEBUG, v17, buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_18;
    }
  }

LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_26D295918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(v14);
  xpc_release(v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void TelephonyXPC::Command::create(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x18uLL);
  v9 = *a2;
  if (*a2)
  {
    v9 = _Block_copy(v9);
  }

  v10 = *(a2 + 8);
  aBlock = v9;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *a3;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v11 = xpc_null_create();
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  v14 = MEMORY[0x277D86468];
  if (v12)
  {
    v8->~__shared_weak_count = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v8->~__shared_weak_count = v13;
    if (!v13)
    {
      v15 = xpc_null_create();
      v13 = 0;
      goto LABEL_15;
    }
  }

  if (MEMORY[0x26D6B9900](v13) == v14)
  {
    xpc_retain(v13);
    goto LABEL_16;
  }

  v15 = xpc_null_create();
LABEL_15:
  v8->~__shared_weak_count = v15;
LABEL_16:
  xpc_release(v13);
  if (aBlock)
  {
    v16 = _Block_copy(aBlock);
  }

  else
  {
    v16 = 0;
  }

  v8->~__shared_weak_count_0 = v16;
  v8->__on_zero_shared = object;
  if (object)
  {
    dispatch_retain(object);
  }

  if (MEMORY[0x26D6B9900](v11) == v14)
  {
    if (v11)
    {
      xpc_retain(v11);
      v17 = v11;
    }

    else
    {
      v17 = xpc_null_create();
    }

    v18 = v8->~__shared_weak_count;
    v8->~__shared_weak_count = v17;
    xpc_release(v18);
  }

  if (*(a1 + 23) >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = *a1;
  }

  v26 = xpc_string_create(v19);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v25[0] = &v8->~__shared_weak_count;
  v25[1] = "command";
  xpc::dict::object_proxy::operator=(v25, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v20 = operator new(0x20uLL);
  v20->__vftable = &unk_287EA79E8;
  v20->__shared_owners_ = 0;
  v20->__shared_weak_owners_ = 0;
  v20[1].__vftable = v8;
  xpc_release(v11);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v21 = operator new(0x10uLL);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  *v21 = v8;
  v21[1] = v20;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  *a4 = v21;
  v25[0] = v21;
  v22 = operator new(0x20uLL);
  *v22 = &unk_287EA7A60;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = v21;
  a4[1] = v22;
  v25[0] = 0;
  std::unique_ptr<TelephonyXPC::Event>::~unique_ptr[abi:ne200100](v25);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
}

void sub_26D295C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<TelephonyXPC::Event>::~unique_ptr[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void TelephonyXPC::Client::perform(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    TelephonyXPC::Client::State::perform(v3, v4, v5);

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {

    TelephonyXPC::Client::State::perform(v3, v4, 0);
  }
}

void TelephonyXPC::Client::State::perform(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZN12TelephonyXPC6Client5State7performENSt3__110shared_ptrINS_7CommandEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_59;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[5] = v5;
  v12 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v8, block);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE(uint64_t result, uint64_t a2)
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

void __copy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32c53_ZTSN8dispatch5blockIU13block_pointerFvN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void TelephonyXPC::Client::State::perform_sync(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = a1[2];
    if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    p_shared_weak_owners = &v6->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1174405120;
    v15[2] = ___ZN12TelephonyXPC6Client5State12perform_syncENSt3__110shared_ptrINS_7CommandEEE_block_invoke;
    v15[3] = &__block_descriptor_tmp_30;
    v15[4] = a1;
    v15[5] = v5;
    v16 = v7;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = a1[2];
    if (!v10 || (v11 = a1[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    v14 = a1[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    block[3] = &__block_descriptor_tmp_22;
    block[5] = v11;
    v20 = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = v15;
    dispatch_async(v14, block);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    std::__shared_weak_count::__release_weak(v7);
  }
}

void ___ZN12TelephonyXPC6Client5State7performENSt3__110shared_ptrINS_7CommandEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TelephonyXPC::Client::State::perform_sync(v2, v4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_26D2961A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE(void *result, void *a2)
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
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN12TelephonyXPC6Client5State12perform_syncENSt3__110shared_ptrINS_7CommandEEE_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        memset(&v33, 170, sizeof(v33));
        TelephonyXPC::Command::State::name(**(a1 + 56));
        v6 = v3[9];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v15 = &v33;
          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v15 = v33.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          *&buf[4] = v15;
          _os_log_debug_impl(&dword_26D294000, v6, OS_LOG_TYPE_DEBUG, "#D Performing command %s", buf, 0xCu);
        }

        v7 = *(a1 + 56);
        if ((*v7)[1] && (*v7)[2])
        {
          v8 = MEMORY[0x26D6B9900](v3[5]);
          v9 = MEMORY[0x277D86450];
          v10 = *(a1 + 56);
          if (v8 == MEMORY[0x277D86450])
          {
            TelephonyXPC::Command::get(*(a1 + 56), &v32);
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1174405120;
            aBlock[2] = ___ZN12TelephonyXPC6Client5State12perform_syncENSt3__110shared_ptrINS_7CommandEEE_block_invoke_25;
            aBlock[3] = &__block_descriptor_tmp_28;
            v14 = *(a1 + 40);
            v13 = *(a1 + 48);
            aBlock[4] = v3;
            aBlock[5] = v14;
            v28 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v29, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
            }

            else
            {
              v29 = v33;
            }

            v16 = *(a1 + 64);
            v30 = *(a1 + 56);
            v31 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v17 = _Block_copy(aBlock);
            if (MEMORY[0x26D6B9900](v3[5]) == v9)
            {
              v18 = v3[5];
              v19 = v32;
              v20 = v3[3];
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 1174405120;
              v35 = ___ZN12TelephonyXPC6Client5State20send_with_reply_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFvNS2_6objectEEEE_block_invoke;
              v36 = &__block_descriptor_tmp_32;
              v21 = v17 ? _Block_copy(v17) : 0;
              v37 = v21;
              xpc_connection_send_message_with_reply(v18, v19, v20, buf);
              if (v37)
              {
                _Block_release(v37);
              }
            }

            if (v17)
            {
              _Block_release(v17);
            }

            xpc_release(v32);
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            if (v28)
            {
              std::__shared_weak_count::__release_weak(v28);
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "Server not available");
            v24 = -534716415;
            *__p = *buf;
            v26 = v35;
            memset(buf, 0, sizeof(buf));
            v35 = 0;
            v11 = xpc_null_create();
            v23 = v11;
            TelephonyXPC::Command::notify(v10, &v24, &v23);
            xpc_release(v11);
            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v35) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else
        {
          TelephonyXPC::Command::get(v7, &object);
          TelephonyXPC::Client::State::send_sync(v3, &object);
          xpc_release(object);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_26D2965C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, xpc_object_t object, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TelephonyXPC::Command::State::name(TelephonyXPC::Command::State *this)
{
  v1[0] = this;
  v1[1] = "command";
  object = 0xAAAAAAAAAAAAAAAALL;
  xpc::dict::object_proxy::operator xpc::object(v1, &object);
  xpc::dyn_cast_or_default();
  xpc_release(object);
}

xpc_object_t TelephonyXPC::Command::get@<X0>(void ***this@<X0>, void *a2@<X8>)
{
  v3 = **this;
  *a2 = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE(uint64_t a1, uint64_t a2)
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

  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_26D296814(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN12TelephonyXPC6Client5State20send_with_reply_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFvNS2_6objectEEEE_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 32);
  objecta = v3;
  v5 = xpc_null_create();
  (*(v4 + 16))(v4, &objecta);
  xpc_release(objecta);
  xpc_release(v5);
}

void sub_26D296938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN12TelephonyXPC6Client5State12perform_syncENSt3__110shared_ptrINS_7CommandEEE_block_invoke_25(uint64_t a1, xpc_object_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v8 = *a2;
        if (v8 && MEMORY[0x26D6B9900](v8) == MEMORY[0x277D86468])
        {
          xpc_retain(v8);
        }

        else
        {
          v8 = xpc_null_create();
        }

        std::string::basic_string[abi:ne200100]<0>(&v27, "Unknown internal error");
        v21 = 0xAAAAAAAAE020E000;
        v22 = v27;
        object = v8;
        v20 = 0xAAAAAAAAAAAAAAAALL;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          object = xpc_null_create();
        }

        TelephonyXPC::Client::State::parseReply_sync(&v20, &object, &v21);
        xpc_release(object);
        object = 0;
        v9 = *(v5 + 72);
        if (v21)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = (a1 + 56);
            if (*(a1 + 79) < 0)
            {
              v10 = *v10;
            }

            TelephonyXPC::Result::describe(&v27, &v21);
            if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v11 = &v27;
            }

            else
            {
              v11 = v27.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            v24 = v10;
            v25 = 2080;
            v26 = v11;
            _os_log_error_impl(&dword_26D294000, v9, OS_LOG_TYPE_ERROR, "Command %s failed: %s", buf, 0x16u);
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v15 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v15 = *v15;
          }

          LODWORD(v27.__r_.__value_.__l.__data_) = 136315138;
          *(v27.__r_.__value_.__r.__words + 4) = v15;
          _os_log_debug_impl(&dword_26D294000, v9, OS_LOG_TYPE_DEBUG, "#D Command %s succeeded", &v27, 0xCu);
        }

        v12 = *(a1 + 80);
        v17 = v21;
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v22;
        }

        v13 = v20;
        v16 = v20;
        if (v20)
        {
          xpc_retain(v20);
        }

        else
        {
          v13 = xpc_null_create();
          v16 = v13;
        }

        TelephonyXPC::Command::notify(v12, &v17, &v16);
        xpc_release(v13);
        v16 = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        xpc_release(v20);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        xpc_release(v8);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_26D296C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t a18, xpc_object_t object, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  xpc_release(object);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v27);
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
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

void TelephonyXPC::Client::State::parseReply_sync(void **a1, void *a2, uint64_t a3)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *a1 = xpc_null_create();
  memset(&__p, 170, sizeof(__p));
  std::string::basic_string[abi:ne200100]<0>(&__p, "Server not available");
  if (MEMORY[0x26D6B9900](*a2) == MEMORY[0x277D86468])
  {
    v13 = a2;
    v14 = "commandData";
    xpc::dict::object_proxy::operator xpc::dict(&v13, &object);
    v7 = object.__r_.__value_.__r.__words[0];
    object.__r_.__value_.__r.__words[0] = xpc_null_create();
    v8 = *a1;
    *a1 = v7;
    xpc_release(v8);
    xpc_release(object.__r_.__value_.__l.__data_);
    v13 = a2;
    v14 = "commandResult";
    xpc::dict::object_proxy::operator xpc::object(&v13, &object);
    v6 = xpc::dyn_cast_or_default();
    xpc_release(object.__r_.__value_.__l.__data_);
    v9[0] = a1;
    v9[1] = "KeyErrorString";
    xpc::dict::object_proxy::operator xpc::object(v9, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = object;
    *(&object.__r_.__value_.__s + 23) = 0;
    object.__r_.__value_.__s.__data_[0] = 0;
    xpc_release(v10);
  }

  else
  {
    v6 = -534716415;
  }

  *a3 = v6;
  std::string::operator=((a3 + 8), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26D296F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  xpc_release(object);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc::dict::~dict(v20);
  _Unwind_Resume(a1);
}

void TelephonyXPC::Command::notify(uint64_t *a1, uint64_t a2, void **a3)
{
  v4 = *a1;
  v7 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Command::State::notify(v4, &v7, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26D297058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TelephonyXPC::Command::State::notify(uint64_t a1, int *a2, xpc_object_t *a3)
{
  if (*(a1 + 8) && *(a1 + 16))
  {
    v10 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v5 = *a3;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      v5 = xpc_null_create();
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = _Block_copy(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEclIJS2_S4_EEEvDpT__block_invoke;
    block[3] = &__block_descriptor_tmp_1;
    if (v7)
    {
      v9 = _Block_copy(v7);
    }

    else
    {
      v9 = 0;
    }

    aBlock = v9;
    v14 = v10;
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v11;
    }

    object = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      object = xpc_null_create();
    }

    dispatch_async(v8, block);
    xpc_release(object);
    object = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v7)
    {
      _Block_release(v7);
    }

    xpc_release(v5);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }
}

void sub_26D297244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(v20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE40c27_ZTSN12TelephonyXPC6ResultE72c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  *(a1 + 72) = result;
  return result;
}

void sub_26D29732C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c55_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void std::__shared_ptr_pointer<TelephonyXPC::Command *,std::shared_ptr<TelephonyXPC::Command>::__shared_ptr_default_delete<TelephonyXPC::Command,TelephonyXPC::Command>,std::allocator<TelephonyXPC::Command>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(v1);
  }
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::default_delete<TelephonyXPC::Command::State>::operator()[abi:ne200100](uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*a1);

    operator delete(a1);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEclIJS2_S4_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v3 = *(a1 + 72);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v2 + 16))(v2, &v5, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26D297554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE40c27_ZTSN12TelephonyXPC6ResultE72c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *TelephonyXPC::Event::Event(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<TelephonyXPC::Event::State *,std::shared_ptr<TelephonyXPC::Event::State>::__shared_ptr_default_delete<TelephonyXPC::Event::State,TelephonyXPC::Event::State>,std::allocator<TelephonyXPC::Event::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Event::State *,std::shared_ptr<TelephonyXPC::Event::State>::__shared_ptr_default_delete<TelephonyXPC::Event::State,TelephonyXPC::Event::State>,std::allocator<TelephonyXPC::Event::State>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_ptr_pointer<TelephonyXPC::Event *,std::shared_ptr<TelephonyXPC::Event>::__shared_ptr_default_delete<TelephonyXPC::Event,TelephonyXPC::Event>,std::allocator<TelephonyXPC::Event>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Event *,std::shared_ptr<TelephonyXPC::Event>::__shared_ptr_default_delete<TelephonyXPC::Event,TelephonyXPC::Event>,std::allocator<TelephonyXPC::Event>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void TelephonyXPC::Client::State::~State(TelephonyXPC::Client::State *this)
{
  *this = &unk_287EA7460;
  v2 = *(this + 22);
  if (v2)
  {
    if (*(this + 24))
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(this + 24), *(this + 22), 0);
      pthread_mutex_lock(&ctu::Singleton<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker,ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>>::sInstance);
      v4 = xmmword_280AFD980;
      if (!xmmword_280AFD980)
      {
        v5 = operator new(0x30uLL);
        *&v5->__on_zero_shared = 0u;
        *&v5->__on_zero_shared_weak = 0u;
        *&v5->~__shared_weak_count = 0u;
        std::shared_ptr<TelephonyXPC::ClientStateTracker>::shared_ptr[abi:ne200100]<TelephonyXPC::ClientStateTracker,0>(&v12, v5);
        v6 = v12;
        v12 = 0uLL;
        v7 = *(&xmmword_280AFD980 + 1);
        xmmword_280AFD980 = v6;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          if (*(&v12 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
          }
        }

        v4 = xmmword_280AFD980;
      }

      v8 = *(&xmmword_280AFD980 + 1);
      if (*(&xmmword_280AFD980 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_280AFD980 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker,ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>>::sInstance);
      v9 = *(this + 24);
      if (v9)
      {
        *&v12 = MEMORY[0x277D85DD0];
        *(&v12 + 1) = 0x40000000;
        v13 = ___ZN12TelephonyXPC18ClientStateTracker6removeEPNSt3__18weak_ptrINS_6Client5StateEEE_block_invoke;
        v14 = &__block_descriptor_tmp_4;
        v15 = v4;
        v16 = v9;
        os_unfair_lock_lock(v4 + 4);
        v13(&v12);
        os_unfair_lock_unlock(v4 + 4);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      *(this + 24) = 0;
      v2 = *(this + 22);
    }

    CFRelease(v2);
  }

  v10 = *(this + 25);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 21);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  MEMORY[0x26D6B9450](this + 72);
  ctu::XpcClient::~XpcClient(this);
}

{
  TelephonyXPC::Client::State::~State(this);

  operator delete(v1);
}

void TelephonyXPC::Client::State::Parameters::~Parameters(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void TelephonyXPC::Client::create(xpc_object_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v4 = v3;
  }

  TelephonyXPC::Client::create(&v4, a2);
  xpc_release(v3);
}

void TelephonyXPC::Client::create(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v28 = v3;
  if (v3)
  {
    xpc_retain(v3);
    v4 = v28;
  }

  else
  {
    v4 = xpc_null_create();
    v28 = v4;
  }

  if (MEMORY[0x26D6B9900](v4) != MEMORY[0x277D86468])
  {
    v5 = 0;
    v6 = 0;
LABEL_28:
    syslog(3, "Could not create TelephonyXPCClient, verify parameters\n");
    goto LABEL_29;
  }

  memset(v33, 0, 56);
  *__s = 0u;
  block = &v28;
  v40 = "ServiceXPCName";
  xpc::dict::object_proxy::operator xpc::object(&block, object);
  xpc::dyn_cast_or_default();
  *__s = *&v29.__r_.__value_.__l.__data_;
  *v33 = *(&v29.__r_.__value_.__l + 2);
  *(&v29.__r_.__value_.__s + 23) = 0;
  v29.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(object[0]);
  block = &v28;
  v40 = "ServiceNotificationName";
  xpc::dict::object_proxy::operator xpc::object(&block, object);
  xpc::dyn_cast_or_default();
  *&v33[8] = v29;
  *(&v29.__r_.__value_.__s + 23) = 0;
  v29.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(object[0]);
  block = &v28;
  v40 = "ClientHostName";
  xpc::dict::object_proxy::operator xpc::object(&block, object);
  xpc::dyn_cast_or_default();
  *&v33[32] = v29;
  *(&v29.__r_.__value_.__s + 23) = 0;
  v29.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(object[0]);
  v7 = v33[7];
  v8 = v33[7];
  v9 = __s[1];
  if (v33[7] < 0)
  {
    v7 = __s[1];
  }

  if (v7)
  {
    v10 = v33[31];
    v11 = *&v33[16];
    if (v33[31] >= 0)
    {
      v12 = v33[31];
    }

    else
    {
      v12 = *&v33[16];
    }

    v13 = v33[55];
    v14 = v33[55];
    if (!v12)
    {
      goto LABEL_18;
    }

    v15 = *&v33[40];
    if (v33[55] < 0)
    {
      v13 = *&v33[40];
    }

    if (!v13)
    {
LABEL_18:
      v5 = 0;
      v6 = 0;
      v16 = 1;
      if ((v33[55] & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v5 = operator new(0xD0uLL);
    if (v8 < 0)
    {
      std::string::__init_copy_ctor_external(&v29, __s[0], v9);
    }

    else
    {
      *&v29.__r_.__value_.__l.__data_ = *__s;
      v29.__r_.__value_.__r.__words[2] = *v33;
    }

    if (v10 < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *&v33[8], v11);
    }

    else
    {
      v30 = *&v33[8];
    }

    if (v14 < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *&v33[32], v15);
    }

    else
    {
      v31 = *&v33[32];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v31;
    }

    else
    {
      v20 = v31.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(&block, v20);
    ctu::XpcClient::XpcClient();
    if (SHIBYTE(v41) < 0)
    {
      operator delete(block);
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v31;
    }

    else
    {
      v21 = v31.__r_.__value_.__r.__words[0];
    }

    ctu::OsLogLogger::OsLogLogger((v5 + 72), "com.apple.telephony", v21);
    *v5 = &unk_287EA7460;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 80), v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
    }

    else
    {
      *(v5 + 80) = v29;
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 104), v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      *(v5 + 104) = v30;
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v5 + 128), v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
    }

    else
    {
      *(v5 + 128) = v31;
    }

    *(v5 + 19) = 0;
    v22 = operator new(0x18uLL);
    v22[2] = 0;
    v22[1] = 0;
    *v22 = v22 + 1;
    *(v5 + 20) = v22;
    object[0] = v22;
    v23 = operator new(0x20uLL);
    *v23 = &unk_287EA7508;
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v22;
    *(v5 + 21) = v23;
    object[0] = 0;
    std::unique_ptr<std::map<std::string,TelephonyXPC::EventCallbackFilter>>::~unique_ptr[abi:ne200100](object);
    *(v5 + 46) = 0;
    *(v5 + 24) = 0;
    std::operator+<char>();
    if (SHIBYTE(v35) >= 0)
    {
      v24 = object;
    }

    else
    {
      v24 = object[0];
    }

    *(v5 + 25) = dispatch_queue_create(v24, 0);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(object[0]);
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v30;
    }

    else
    {
      v25 = v30.__r_.__value_.__r.__words[0];
    }

    *(v5 + 22) = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v25, 0x600u);
    v6 = operator new(0x20uLL);
    v6->__vftable = &unk_287EA7580;
    v6->__shared_owners_ = 0;
    v6->__shared_weak_owners_ = 0;
    v6[1].__vftable = v5;
    v26 = *(v5 + 2);
    if (v26)
    {
      if (v26->__shared_owners_ != -1)
      {
        goto LABEL_72;
      }

      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v5 + 1) = v5;
      *(v5 + 2) = v6;
      std::__shared_weak_count::__release_weak(v26);
    }

    else
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v5 + 1) = v5;
      *(v5 + 2) = v6;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_72:
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    object[0] = MEMORY[0x277D85DD0];
    object[1] = 0x40000000;
    v35 = ___ZN12TelephonyXPC6Client5State4initEv_block_invoke;
    v36 = &__block_descriptor_tmp_13;
    v37 = v5;
    v38 = object;
    block = MEMORY[0x277D85DD0];
    v40 = 0x40000000;
    v41 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v42 = &__block_descriptor_tmp_14;
    v43 = v5 + 8;
    v44 = &v38;
    v27 = *(v5 + 3);
    if (*(v5 + 4))
    {
      dispatch_async_and_wait(v27, &block);
    }

    else
    {
      dispatch_sync(v27, &block);
    }

    v16 = 0;
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v16 = 1;
  if ((v33[55] & 0x80) != 0)
  {
LABEL_19:
    operator delete(*&v33[32]);
  }

LABEL_20:
  if ((v33[31] & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    operator delete(__s[0]);
    if ((v16 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  operator delete(*&v33[8]);
  if (v8 < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v16)
  {
    goto LABEL_28;
  }

LABEL_29:
  xpc_release(v28);
  v28 = 0;
  v17 = operator new(0x10uLL);
  v18 = v17;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    *v17 = v5;
    v17[1] = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v17 = v5;
    v17[1] = 0;
  }

  *a2 = v17;
  __s[0] = v17;
  v19 = operator new(0x20uLL);
  *v19 = &unk_287EA7940;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = v18;
  a2[1] = v19;
  __s[0] = 0;
  std::unique_ptr<TelephonyXPC::Event>::~unique_ptr[abi:ne200100](__s);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_26D298184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, xpc_object_t a37)
{
  if (*(v37 + 127) < 0)
  {
    operator delete(*(v37 + 104));
  }

  if (*(v37 + 103) < 0)
  {
    operator delete(*v38);
  }

  MEMORY[0x26D6B9450](v37 + 72);
  ctu::XpcClient::~XpcClient(v37);
  TelephonyXPC::Client::State::Parameters::~Parameters(&a11);
  operator delete(v37);
  TelephonyXPC::Client::State::Parameters::~Parameters(&a27);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void *TelephonyXPC::Client::Client(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void TelephonyXPC::Client::setEventHandler(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1174405120;
  v14[2] = ___ZN12TelephonyXPC6Client5State15setEventHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS2_10shared_ptrINS_5EventEEEEEE_block_invoke;
  v14[3] = &__block_descriptor_tmp_56;
  v14[4] = v4;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v13;
  }

  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  aBlock = v7;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v8 = v4[2];
  if (!v8 || (v9 = v4[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = v4[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[5] = v9;
  v19 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v14;
  dispatch_async(v12, block);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_26D298604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(uint64_t a1)
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

void TelephonyXPC::Client::setEventHandler(void *a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
  }

  else
  {
    v16 = *a2;
  }

  v7 = *a3;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (*a4)
  {
    v8 = _Block_copy(*a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 8);
  if (v9)
  {
    dispatch_retain(v9);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1174405120;
  v17[2] = ___ZN12TelephonyXPC6Client5State15setEventHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS2_10shared_ptrINS_5EventEEEEEE_block_invoke;
  v17[3] = &__block_descriptor_tmp_57;
  v17[4] = v6;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  v19 = v7;
  if (v7)
  {
    xpc_retain(v7);
    if (v8)
    {
LABEL_17:
      v10 = _Block_copy(v8);
      goto LABEL_20;
    }
  }

  else
  {
    v19 = xpc_null_create();
    if (v8)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
LABEL_20:
  aBlock = v10;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v11 = v6[2];
  if (!v11 || (v12 = v6[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = v6[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[5] = v12;
  v23 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v17;
  dispatch_async(v15, block);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v19);
  v19 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(v7);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_26D2988E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a9);
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TelephonyXPC::Client::createOrUpdateEventFilter(char *a1@<X0>, uint64_t *a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v8 = xpc_null_create();
  v9 = xpc_null_create();
  if (*a2 != a2[1])
  {
    v10 = xpc_array_create(0, 0);
    v11 = MEMORY[0x277D86440];
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v10) == v11)
      {
        xpc_retain(v10);
        v12 = v10;
      }

      else
      {
        v12 = xpc_null_create();
      }
    }

    else
    {
      v12 = xpc_null_create();
      v10 = 0;
    }

    xpc_release(v10);
    v14 = xpc_null_create();
    xpc_release(v8);
    xpc_release(v14);
    if (MEMORY[0x26D6B9900](v12) != v11)
    {
      *a4 = v7;
      v15 = xpc_null_create();
LABEL_14:
      v13 = v15;
LABEL_51:
      v8 = v12;
      goto LABEL_52;
    }

    v16 = MEMORY[0x26D6B9900](v7);
    v17 = MEMORY[0x277D86468];
    if (v16 != MEMORY[0x277D86468])
    {
      v18 = xpc_dictionary_create(0, 0, 0);
      if (v18 || (v18 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x26D6B9900](v18) == v17)
        {
          xpc_retain(v18);
          v19 = v18;
        }

        else
        {
          v19 = xpc_null_create();
        }
      }

      else
      {
        v19 = xpc_null_create();
        v18 = 0;
      }

      xpc_release(v18);
      v20 = xpc_null_create();
      xpc_release(v7);
      xpc_release(v20);
      if (MEMORY[0x26D6B9900](v19) != v17)
      {
        *a4 = v19;
        v15 = xpc_null_create();
        goto LABEL_14;
      }

      v7 = v19;
    }

    v21 = xpc_dictionary_create(0, 0, 0);
    if (v21 || (v21 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v21) == v17)
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
    xpc_release(v9);
    xpc_release(v23);
    if (MEMORY[0x26D6B9900](v22) == v17)
    {
      v25 = *a2;
      v26 = a2[1];
      while (v25 != v26)
      {
        v27 = v25;
        if (*(v25 + 23) < 0)
        {
          v27 = *v25;
        }

        v28 = xpc_string_create(v27);
        if (!v28)
        {
          v28 = xpc_null_create();
        }

        xpc_array_append_value(v12, v28);
        xpc_release(v28);
        v25 += 24;
      }

      v32 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v32 = xpc_null_create();
      }

      xpc::dict::object_proxy::operator=(&object, v22, "eventFilterAllowList", &v32);
      xpc_release(object);
      object = 0;
      xpc_release(v32);
      v32 = 0;
      v30 = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v30 = xpc_null_create();
      }

      if (a1[23] >= 0)
      {
        v29 = a1;
      }

      else
      {
        v29 = *a1;
      }

      xpc::dict::object_proxy::operator=(&v31, v7, v29, &v30);
      xpc_release(v31);
      v31 = 0;
      xpc_release(v30);
      v30 = 0;
      *a4 = v7;
      v24 = xpc_null_create();
    }

    else
    {
      *a4 = v7;
      v24 = xpc_null_create();
    }

    v13 = v24;
    v9 = v22;
    goto LABEL_51;
  }

  *a4 = v7;
  v13 = xpc_null_create();
LABEL_52:
  xpc_release(v9);
  xpc_release(v8);
  xpc_release(v13);
}

void sub_26D298D80(_Unwind_Exception *a1)
{
  xpc_release(v3);
  xpc_release(v4);
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void TelephonyXPC::Client::createOrUpdateEventFilter(char *a1@<X0>, int64_t **a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v8 = xpc_null_create();
  v9 = xpc_null_create();
  if (*a2 != a2[1])
  {
    v10 = xpc_array_create(0, 0);
    v11 = MEMORY[0x277D86440];
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v10) == v11)
      {
        xpc_retain(v10);
        v12 = v10;
      }

      else
      {
        v12 = xpc_null_create();
      }
    }

    else
    {
      v12 = xpc_null_create();
      v10 = 0;
    }

    xpc_release(v10);
    v14 = xpc_null_create();
    xpc_release(v8);
    xpc_release(v14);
    if (MEMORY[0x26D6B9900](v12) != v11)
    {
      *a4 = v7;
      v15 = xpc_null_create();
LABEL_14:
      v13 = v15;
LABEL_49:
      v8 = v12;
      goto LABEL_50;
    }

    v16 = MEMORY[0x26D6B9900](v7);
    v17 = MEMORY[0x277D86468];
    if (v16 != MEMORY[0x277D86468])
    {
      v18 = xpc_dictionary_create(0, 0, 0);
      if (v18 || (v18 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x26D6B9900](v18) == v17)
        {
          xpc_retain(v18);
          v19 = v18;
        }

        else
        {
          v19 = xpc_null_create();
        }
      }

      else
      {
        v19 = xpc_null_create();
        v18 = 0;
      }

      xpc_release(v18);
      v20 = xpc_null_create();
      xpc_release(v7);
      xpc_release(v20);
      if (MEMORY[0x26D6B9900](v19) != v17)
      {
        *a4 = v19;
        v15 = xpc_null_create();
        goto LABEL_14;
      }

      v7 = v19;
    }

    v21 = xpc_dictionary_create(0, 0, 0);
    if (v21 || (v21 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v21) == v17)
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
    xpc_release(v9);
    xpc_release(v23);
    if (MEMORY[0x26D6B9900](v22) == v17)
    {
      v25 = *a2;
      v26 = a2[1];
      while (v25 != v26)
      {
        v27 = xpc_int64_create(*v25);
        if (!v27)
        {
          v27 = xpc_null_create();
        }

        xpc_array_append_value(v12, v27);
        xpc_release(v27);
        ++v25;
      }

      v31 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v31 = xpc_null_create();
      }

      xpc::dict::object_proxy::operator=(&object, v22, "eventFilterAllowList", &v31);
      xpc_release(object);
      object = 0;
      xpc_release(v31);
      v31 = 0;
      v29 = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        v29 = xpc_null_create();
      }

      if (a1[23] >= 0)
      {
        v28 = a1;
      }

      else
      {
        v28 = *a1;
      }

      xpc::dict::object_proxy::operator=(&v30, v7, v28, &v29);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      *a4 = v7;
      v24 = xpc_null_create();
    }

    else
    {
      *a4 = v7;
      v24 = xpc_null_create();
    }

    v13 = v24;
    v9 = v22;
    goto LABEL_49;
  }

  *a4 = v7;
  v13 = xpc_null_create();
LABEL_50:
  xpc_release(v9);
  xpc_release(v8);
  xpc_release(v13);
}

void sub_26D299204(_Unwind_Exception *a1)
{
  xpc_release(v3);
  xpc_release(v4);
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t TelephonyXPC::Client::eventFilterIsWellFormed(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 1;
  if (MEMORY[0x26D6B9900](*a1) == MEMORY[0x277D86468])
  {
    v2 = *a1;
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 1107296256;
    applier[2] = ___ZN12TelephonyXPC6Client23eventFilterIsWellFormedEN3xpc4dictE_block_invoke;
    applier[3] = &__block_descriptor_tmp_0;
    applier[4] = &v6;
    xpc_dictionary_apply(v2, applier);
  }

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_26D29931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ___ZN12TelephonyXPC6Client23eventFilterIsWellFormedEN3xpc4dictE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3 || (v5 = MEMORY[0x26D6B9900](a3), v6 = MEMORY[0x277D86468], v5 != MEMORY[0x277D86468]))
  {
    v7 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return v7;
  }

  xpc_retain(a3);
  if (MEMORY[0x26D6B9900](a3) == v6)
  {
    xpc_retain(a3);
    v8 = a3;
  }

  else
  {
    v8 = xpc_null_create();
  }

  xpc_release(a3);
  value = xpc_dictionary_get_value(v8, "eventFilterAllowList");
  v10 = value;
  v11 = MEMORY[0x277D86440];
  if (value)
  {
    xpc_retain(value);
    goto LABEL_10;
  }

  v10 = xpc_null_create();
  if (v10)
  {
LABEL_10:
    if (MEMORY[0x26D6B9900](v10) == v11)
    {
      xpc_retain(v10);
      v12 = v10;
    }

    else
    {
      v12 = xpc_null_create();
    }

    goto LABEL_14;
  }

  v12 = xpc_null_create();
  v10 = 0;
LABEL_14:
  xpc_release(v10);
  v13 = MEMORY[0x26D6B9900](v12);
  v7 = v13 == v11;
  if (v13 != v11)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  xpc_release(v12);
  xpc_release(v8);
  return v7;
}

void sub_26D299484(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void TelephonyXPC::Client::eventsOn(TelephonyXPC::Client *this)
{
  v1 = *this;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN12TelephonyXPC6Client5State8eventsOnEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_58;
  v7[4] = v1;
  v2 = v1[2];
  if (!v2 || (v3 = v1[1], (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = v1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void TelephonyXPC::Client::perform(void **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a3 + 8);
  aBlock = v8;
  v16 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = *a4;
  object = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Command::create(a2, &aBlock, &object, &v17);
  xpc_release(object);
  object = 0;
  if (v16)
  {
    dispatch_release(v16);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v11 = *a1;
  v12 = v17;
  v13 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    TelephonyXPC::Client::State::perform(v11, v12, v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    TelephonyXPC::Client::State::perform(v11, v17, 0);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_26D299700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a11);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(uint64_t a1)
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

void TelephonyXPC::Client::performWithBlockingSyncReply(dispatch_queue_t **a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  aBlock = 0;
  v20 = 0;
  v9 = *a4;
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Command::create(a2, &aBlock, &object, &v21);
  xpc_release(object);
  object = 0;
  if (v20)
  {
    dispatch_release(v20);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v10 = *a1;
  v12 = v21;
  v11 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    memset(&v23, 170, sizeof(v23));
    TelephonyXPC::Command::State::name(*v12);
    v13 = v10[9];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = &v23;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v23.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v17;
      _os_log_debug_impl(&dword_26D294000, v13, OS_LOG_TYPE_DEBUG, "#D Performing command %s", &buf, 0xCu);
    }

    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 1174405120;
    v25 = ___ZN12TelephonyXPC6Client5State28performWithBlockingSyncReplyENSt3__110shared_ptrINS_7CommandEEERNS_6ResultERN3xpc4dictE_block_invoke;
    v26 = &__block_descriptor_tmp_60;
    v27 = v10;
    v28 = v12;
    v29 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = a5;
    v31 = a3;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v23;
    }

    v15 = v10[4];
    if (v15)
    {
      dispatch_retain(v10[4]);
      if (dispatch_workloop_is_current())
      {
        v25(&buf);
      }

      else
      {
        dispatch_sync(v10[3], &buf);
      }

      dispatch_release(v15);
    }

    else
    {
      dispatch_sync(v10[3], &buf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = v10[9];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26D294000, v14, OS_LOG_TYPE_ERROR, "No command provided", &buf, 2u);
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_26D299A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  dispatch_release(v35);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void TelephonyXPC::Client::eventsOff(TelephonyXPC::Client *this)
{
  v1 = *this;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZN12TelephonyXPC6Client5State9eventsOffEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_61;
  v7[4] = v1;
  v2 = v1[2];
  if (!v2 || (v3 = v1[1], (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = v1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v7;
  dispatch_async(v6, block);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void TelephonyXPC::Client::State::handleServerError_sync(uint64_t a1, xpc::object *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 160);
  std::string::basic_string[abi:ne200100]<0>(&block, "EventServerStateChange");
  v5 = std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::find<std::string>(v4, &block);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(block);
  }

  if (*(a1 + 160) + 8 != v5)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    v8 = MEMORY[0x277D86468];
    if (v6)
    {
      v40 = v6;
    }

    else
    {
      v7 = xpc_null_create();
      v40 = v7;
      if (!v7)
      {
        v9 = xpc_null_create();
        v7 = 0;
        goto LABEL_11;
      }
    }

    if (MEMORY[0x26D6B9900](v7) == v8)
    {
      xpc_retain(v7);
      goto LABEL_12;
    }

    v9 = xpc_null_create();
LABEL_11:
    v40 = v9;
LABEL_12:
    xpc_release(v7);
    v39 = 0xAAAAAAAAAAAAAAAALL;
    v10 = xpc_dictionary_create(0, 0, 0);
    v11 = v10;
    if (v10)
    {
      v39 = v10;
    }

    else
    {
      v11 = xpc_null_create();
      v39 = v11;
      if (!v11)
      {
        v12 = xpc_null_create();
        v11 = 0;
        goto LABEL_19;
      }
    }

    if (MEMORY[0x26D6B9900](v11) == v8)
    {
      xpc_retain(v11);
LABEL_20:
      xpc_release(v11);
      v37 = xpc_string_create("ServerStateError");
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      block = &v39;
      v42 = "KeyServerState";
      xpc::dict::object_proxy::operator=(&block, &v37, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v37);
      v37 = 0;
      xpc::object::to_string(&block, a2);
      if (SHIBYTE(v43) >= 0)
      {
        p_block = &block;
      }

      else
      {
        p_block = block;
      }

      v35 = xpc_string_create(p_block);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      v34[0] = &v39;
      v34[1] = "KeyErrorString";
      xpc::dict::object_proxy::operator=(v34, &v35, &v36);
      xpc_release(v36);
      v36 = 0;
      xpc_release(v35);
      v35 = 0;
      if (SHIBYTE(v43) < 0)
      {
        operator delete(block);
      }

      v32 = xpc_string_create("eventNotification");
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      block = &v40;
      v42 = "command";
      xpc::dict::object_proxy::operator=(&block, &v32, &v33);
      xpc_release(v33);
      v33 = 0;
      xpc_release(v32);
      v32 = 0;
      v30 = xpc_string_create("EventServerStateChange");
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      block = &v40;
      v42 = "event";
      xpc::dict::object_proxy::operator=(&block, &v30, &v31);
      xpc_release(v31);
      v31 = 0;
      xpc_release(v30);
      v30 = 0;
      v28 = v39;
      if (v39)
      {
        xpc_retain(v39);
      }

      else
      {
        v28 = xpc_null_create();
      }

      xpc::dict::object_proxy::operator=(&v29, v40, "eventData", &v28);
      xpc_release(v29);
      v29 = 0;
      xpc_release(v28);
      v28 = 0;
      v25 = v40;
      if (v40)
      {
        xpc_retain(v40);
      }

      else
      {
        v25 = xpc_null_create();
      }

      aBlock = 0;
      v24 = 0;
      TelephonyXPC::Event::create(&v25, &aBlock, &v26);
      v14 = *(v5 + 56);
      if (v14)
      {
        v15 = _Block_copy(v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v5 + 64);
      block = MEMORY[0x277D85DD0];
      v42 = 1174405120;
      v43 = ___ZNK8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEclIJS5_EEEvDpT__block_invoke;
      v44 = &__block_descriptor_tmp_65;
      if (v15)
      {
        v17 = _Block_copy(v15);
      }

      else
      {
        v17 = 0;
      }

      v45 = v17;
      v46 = v26;
      v47 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_async(v16, &block);
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v45)
      {
        _Block_release(v45);
      }

      if (v15)
      {
        _Block_release(v15);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v24)
      {
        dispatch_release(v24);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      xpc_release(v25);
      v25 = 0;
      xpc_release(v39);
      xpc_release(v40);
      goto LABEL_60;
    }

    v12 = xpc_null_create();
LABEL_19:
    v39 = v12;
    goto LABEL_20;
  }

LABEL_60:
  if (*a2 != MEMORY[0x277D86420])
  {
    v18 = *(a1 + 72);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(block) = 0;
      _os_log_debug_impl(&dword_26D294000, v18, OS_LOG_TYPE_DEBUG, "#D Destroying server connection", &block, 2u);
    }

    v19 = *(a1 + 184);
    if (!v19)
    {
      TelephonyXPC::Client::State::destroyConnection_sync(a1);
      goto LABEL_68;
    }

    v20 = v19 - 1;
    *(a1 + 184) = v19 - 1;
    v21 = *(a1 + 72);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(block) = 67109120;
      HIDWORD(block) = v20;
      _os_log_debug_impl(&dword_26D294000, v21, OS_LOG_TYPE_DEBUG, "#D Extra-ready-count decremented to %u", &block, 8u);
      if (*(a1 + 184))
      {
        goto LABEL_68;
      }

      goto LABEL_66;
    }

    if (!v20)
    {
LABEL_66:
      TelephonyXPC::Client::State::destroyConnection_sync(a1);
      TelephonyXPC::Client::State::handleServerReady_sync(a1);
    }
  }

LABEL_68:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_26D29A144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN12TelephonyXPC18ClientStateTracker6removeEPNSt3__18weak_ptrINS_6Client5StateEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  if (v3 != v2)
  {
    while (*v3 != *(a1 + 40))
    {
      if (++v3 == v2)
      {
        return;
      }
    }
  }

  if (v3 != v2)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = v4[1];
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      operator delete(v4);
      v2 = *(v1 + 32);
    }

    v6 = v2 - (v3 + 1);
    if (v2 != (v3 + 1))
    {
      memmove(v3, v3 + 1, v2 - (v3 + 1));
    }

    *(v1 + 32) = v3 + v6;
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279D97130, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

char ***std::unique_ptr<std::map<std::string,TelephonyXPC::EventCallbackFilter>>::~unique_ptr[abi:ne200100](char ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::destroy(v2[1]);
    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<std::map<std::string,TelephonyXPC::EventCallbackFilter> *,std::shared_ptr<std::map<std::string,TelephonyXPC::EventCallbackFilter>>::__shared_ptr_default_delete<std::map<std::string,TelephonyXPC::EventCallbackFilter>,std::map<std::string,TelephonyXPC::EventCallbackFilter>>,std::allocator<std::map<std::string,TelephonyXPC::EventCallbackFilter>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<std::map<std::string,TelephonyXPC::EventCallbackFilter> *,std::shared_ptr<std::map<std::string,TelephonyXPC::EventCallbackFilter>>::__shared_ptr_default_delete<std::map<std::string,TelephonyXPC::EventCallbackFilter>,std::map<std::string,TelephonyXPC::EventCallbackFilter>>,std::allocator<std::map<std::string,TelephonyXPC::EventCallbackFilter>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::destroy(v1[1]);

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<std::map<std::string,TelephonyXPC::EventCallbackFilter> *,std::shared_ptr<std::map<std::string,TelephonyXPC::EventCallbackFilter>>::__shared_ptr_default_delete<std::map<std::string,TelephonyXPC::EventCallbackFilter>,std::map<std::string,TelephonyXPC::EventCallbackFilter>>,std::allocator<std::map<std::string,TelephonyXPC::EventCallbackFilter>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::destroy(*(a1 + 1));
    xpc_release(*(a1 + 9));
    *(a1 + 9) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 7);
    if (v3)
    {
      _Block_release(v3);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void TelephonyXPC::EventCallbackFilter::~EventCallbackFilter(xpc_object_t *this)
{
  xpc_release(this[2]);
  this[2] = 0;
  v2 = this[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*this)
  {
    _Block_release(*this);
  }
}

void std::__shared_ptr_pointer<TelephonyXPC::Client::State *,std::shared_ptr<TelephonyXPC::Client::State>::__shared_ptr_default_delete<TelephonyXPC::Client::State,TelephonyXPC::Client::State>,std::allocator<TelephonyXPC::Client::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Client::State *,std::shared_ptr<TelephonyXPC::Client::State>::__shared_ptr_default_delete<TelephonyXPC::Client::State,TelephonyXPC::Client::State>,std::allocator<TelephonyXPC::Client::State>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Client::State *,std::shared_ptr<TelephonyXPC::Client::State>::__shared_ptr_default_delete<TelephonyXPC::Client::State,TelephonyXPC::Client::State>,std::allocator<TelephonyXPC::Client::State>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ___ZN12TelephonyXPC6Client5State4initEv_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  pthread_mutex_lock(&ctu::Singleton<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker,ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>>::sInstance);
  v2 = xmmword_280AFD980;
  if (!xmmword_280AFD980)
  {
    v3 = operator new(0x30uLL);
    *&v3->__on_zero_shared = 0u;
    *&v3->__on_zero_shared_weak = 0u;
    *&v3->~__shared_weak_count = 0u;
    std::shared_ptr<TelephonyXPC::ClientStateTracker>::shared_ptr[abi:ne200100]<TelephonyXPC::ClientStateTracker,0>(&v16, v3);
    v4 = v16;
    v16 = 0uLL;
    v5 = *(&xmmword_280AFD980 + 1);
    xmmword_280AFD980 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v16 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
      }
    }

    v2 = xmmword_280AFD980;
  }

  v6 = *(&xmmword_280AFD980 + 1);
  if (*(&xmmword_280AFD980 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_280AFD980 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker,ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>>::sInstance);
  v7 = *(v1 + 16);
  if (!v7 || (v8 = *(v1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  if (v8)
  {
    *&v16 = MEMORY[0x277D85DD0];
    *(&v16 + 1) = 1174405120;
    v17 = ___ZN12TelephonyXPC18ClientStateTracker6insertENSt3__110shared_ptrINS_6Client5StateEEE_block_invoke;
    v18 = &__block_descriptor_tmp_16;
    v19 = v2;
    v20 = v8;
    v21 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_lock(v2 + 4);
    v8 = v17(&v16);
    os_unfair_lock_unlock(v2 + 4);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  *(v1 + 192) = v8;
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v1 + 192))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(v1 + 192), TelephonyXPC::Client::State::handleDaemonReadyNotificationStatic, *(v1 + 176), 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v12 = *(v1 + 72);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(v1 + 176);
      LODWORD(v16) = 138412290;
      *(&v16 + 4) = v15;
      _os_log_debug_impl(&dword_26D294000, v12, OS_LOG_TYPE_DEBUG, "#D Watching for notification: %@", &v16, 0xCu);
    }

    TelephonyXPC::Client::State::connect_sync(v1);
  }

  else
  {
    v13 = *(v1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_26D294000, v13, OS_LOG_TYPE_ERROR, "ClientStateTracker unable to insert state pointer", &v16, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_26D29A89C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TelephonyXPC::Client::State::handleDaemonReadyNotificationStatic(TelephonyXPC::Client::State *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker,ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>>::sInstance);
  v7 = xmmword_280AFD980;
  if (!xmmword_280AFD980)
  {
    v8 = operator new(0x30uLL);
    *&v8->__on_zero_shared = 0u;
    *&v8->__on_zero_shared_weak = 0u;
    *&v8->~__shared_weak_count = 0u;
    std::shared_ptr<TelephonyXPC::ClientStateTracker>::shared_ptr[abi:ne200100]<TelephonyXPC::ClientStateTracker,0>(&block, v8);
    v9 = block;
    block = 0uLL;
    v10 = *(&xmmword_280AFD980 + 1);
    xmmword_280AFD980 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (*(&block + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&block + 1));
      }
    }

    v7 = xmmword_280AFD980;
  }

  v11 = *(&xmmword_280AFD980 + 1);
  if (*(&xmmword_280AFD980 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_280AFD980 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker,ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>>::sInstance);
  if (a2)
  {
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    v22 = ___ZN12TelephonyXPC18ClientStateTracker7isValidEPNSt3__18weak_ptrINS_6Client5StateEEE_block_invoke;
    v23 = &__block_descriptor_tmp_20;
    v24 = v7;
    v25 = a2;
    os_unfair_lock_lock(v7 + 4);
    v22(&v18, &block);
    os_unfair_lock_unlock(v7 + 4);
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = 0;
  v19 = 0;
  if (v11)
  {
LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_11:
  v12 = v18;
  if (v18)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 0x40000000;
    v20[2] = ___ZN12TelephonyXPC6Client5State17handleDaemonReadyEv_block_invoke;
    v20[3] = &__block_descriptor_tmp_21;
    v20[4] = v18;
    v13 = *(v18 + 16);
    if (!v13 || (v14 = *(v18 + 8), (v15 = std::__shared_weak_count::lock(v13)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v16 = v15;
    v17 = *(v12 + 24);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 1174405120;
    v22 = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    v23 = &__block_descriptor_tmp_22;
    v25 = v14;
    v26 = v16;
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = v20;
    dispatch_async(v17, &block);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void TelephonyXPC::Client::State::connect_sync(TelephonyXPC::Client::State *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 80);
    if (*(this + 103) < 0)
    {
      v3 = *v3;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_26D294000, v2, OS_LOG_TYPE_DEFAULT, "#I Started with name '%s'", &buf, 0xCu);
    v2 = *(this + 9);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_debug_impl(&dword_26D294000, v2, OS_LOG_TYPE_DEBUG, "#D Creating server connection", &buf, 2u);
  }

  v4 = this + 80;
  if (*(this + 103) < 0)
  {
    v4 = *v4;
  }

  mach_service = xpc_connection_create_mach_service(v4, *(this + 25), 2uLL);
  v6 = mach_service;
  if (mach_service)
  {
    *&buf = mach_service;
LABEL_12:
    xpc_retain(v6);
    goto LABEL_13;
  }

  v6 = xpc_null_create();
  *&buf = v6;
  if (v6)
  {
    goto LABEL_12;
  }

  v6 = 0;
  *&buf = xpc_null_create();
LABEL_13:
  v7 = *(this + 25);
  object[0] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ctu::XpcClient::setServer_sync();
  if (object[0])
  {
    dispatch_release(object[0]);
  }

  xpc_release(buf);
  *&buf = 0;
  xpc_release(v6);
  v8 = *(this + 38);
  if (v8)
  {
    v9 = *(this + 9);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = "";
      if (v8 == 1)
      {
        v10 = "CheckingIn";
      }

      if (v8 == 2)
      {
        v10 = "CheckedIn";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_debug_impl(&dword_26D294000, v9, OS_LOG_TYPE_DEBUG, "#D Check-in state is %s, skipping check-in", &buf, 0xCu);
    }
  }

  else
  {
    TelephonyXPC::Client::State::changeCheckInState_sync(this, 1);
    v11 = *(this + 2);
    if (!v11 || (v12 = *(this + 1), (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v14 = v13;
    p_shared_weak_owners = &v13->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::string::basic_string[abi:ne200100]<0>(object, "checkIn");
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 1174405120;
    v25 = ___ZN12TelephonyXPC6Client5State12checkIn_syncEv_block_invoke;
    v26 = &__block_descriptor_tmp_24;
    v27 = this;
    v28 = v12;
    v29 = v14;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v16 = _Block_copy(&buf);
    v19 = v16;
    v18 = xpc_null_create();
    TelephonyXPC::Client::State::createCommand_sync(&v22, this, object, &v19, &v18);
    TelephonyXPC::Client::State::perform_sync(this, &v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    xpc_release(v18);
    v18 = 0;
    if (v16)
    {
      _Block_release(v16);
    }

    if (v21 < 0)
    {
      operator delete(object[0]);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }

    std::__shared_weak_count::__release_weak(v14);
  }

  if (*(this + 39))
  {
    TelephonyXPC::Client::State::changeEventsState_sync(this, 0);
    TelephonyXPC::Client::State::eventsOn_sync(this);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_26D29AE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN12TelephonyXPC18ClientStateTracker6insertENSt3__110shared_ptrINS_6Client5StateEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = operator new(0x10uLL);
  v4 = v3;
  v5 = a1[6];
  *v3 = a1[5];
  v3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = v2[4];
  v6 = v2[5];
  if (v7 >= v6)
  {
    v9 = v2[3];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::weak_ptr<TelephonyXPC::Client::State> *,std::allocator<std::weak_ptr<TelephonyXPC::Client::State> *>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = operator new(8 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v11];
    *v16 = v4;
    v8 = v16 + 8;
    memcpy(v15, v9, v10);
    v2[3] = v15;
    v2[4] = v8;
    v2[5] = &v15[8 * v14];
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v3;
    v8 = v7 + 8;
  }

  v2[4] = v8;
  return v4;
}

uint64_t __copy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIN12TelephonyXPC6Client5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIN12TelephonyXPC6Client5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

std::__shared_weak_count *___ZN12TelephonyXPC18ClientStateTracker7isValidEPNSt3__18weak_ptrINS_6Client5StateEEE_block_invoke@<X0>(std::__shared_weak_count *result@<X0>, void *a2@<X8>)
{
  shared_owners = result[1].__shared_owners_;
  v4 = *(shared_owners + 24);
  v5 = *(shared_owners + 32);
  if (v4 != v5)
  {
    while (*v4 != result[1].__shared_weak_owners_)
    {
      if (++v4 == v5)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_9:
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v6 = *v4;
    *a2 = 0;
    a2[1] = 0;
    result = v6[1];
    if (result)
    {
      result = std::__shared_weak_count::lock(result);
      a2[1] = result;
      if (result)
      {
        *a2 = *v6;
      }
    }
  }

  return result;
}

void ___ZN12TelephonyXPC6Client5State17handleDaemonReadyEv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6[0]) = 0;
    _os_log_debug_impl(&dword_26D294000, v2, OS_LOG_TYPE_DEBUG, "#D Daemon is ready", v6, 2u);
  }

  if (MEMORY[0x26D6B9900](*(v1 + 40)) == MEMORY[0x277D86450])
  {
    v3 = *(v1 + 184) + 1;
    *(v1 + 184) = v3;
    v4 = *(v1 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_debug_impl(&dword_26D294000, v4, OS_LOG_TYPE_DEBUG, "#D Extra-ready-count incremented to %u", v6, 8u);
    }
  }

  else
  {
    TelephonyXPC::Client::State::handleServerReady_sync(v1);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void TelephonyXPC::Client::State::handleServerReady_sync(TelephonyXPC::Client::State *this)
{
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_26D294000, v2, OS_LOG_TYPE_DEBUG, "#D Server is ready", v3, 2u);
  }

  TelephonyXPC::Client::State::connect_sync(this);
}

void TelephonyXPC::Client::State::changeEventsState_sync(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 156);
    if (v5 > 2)
    {
      v6 = "";
    }

    else
    {
      v6 = (&off_279D972C8)[v5];
    }

    v7 = (&off_279D972C8)[a2];
    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&dword_26D294000, v4, OS_LOG_TYPE_DEFAULT, "#I Changing event state from %s to %s", &v9, 0x16u);
  }

  *(a1 + 156) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

void TelephonyXPC::Client::State::eventsOn_sync(TelephonyXPC::Client::State *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(this + 39);
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  if (!v2)
  {
    TelephonyXPC::Client::State::changeEventsState_sync(this, 1);
LABEL_4:
    v3 = *(this + 2);
    if (!v3 || (v4 = *(this + 1), (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    p_shared_weak_owners = &v5->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    std::string::basic_string[abi:ne200100]<0>(__p, "eventsOn");
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN12TelephonyXPC6Client5State13eventsOn_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_55;
    aBlock[4] = this;
    aBlock[5] = v4;
    v16 = v6;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v8 = _Block_copy(aBlock);
    v17 = v8;
    v9 = *(this + 21);
    v13[0] = *(this + 20);
    v13[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TelephonyXPC::Client::State::convert_sync(&object, this, v13);
    TelephonyXPC::Client::State::createCommand_sync(&v20, this, __p, &v17, &object);
    TelephonyXPC::Client::State::perform_sync(this, &v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    xpc_release(object);
    object = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v8)
    {
      _Block_release(v8);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    std::__shared_weak_count::__release_weak(v6);
    goto LABEL_20;
  }

  v10 = *(this + 9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = "";
    if (v2 == 2)
    {
      v12 = "EventsOn";
    }

    *buf = 136315138;
    v23 = v12;
    _os_log_debug_impl(&dword_26D294000, v10, OS_LOG_TYPE_DEBUG, "#D Events state is %s, skipping on-transition", buf, 0xCu);
  }

LABEL_20:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_26D29B620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TelephonyXPC::Client::State::changeCheckInState_sync(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 152);
    if (v5 > 2)
    {
      v6 = "";
    }

    else
    {
      v6 = (&off_279D972E0)[v5];
    }

    v7 = (&off_279D972E0)[a2];
    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&dword_26D294000, v4, OS_LOG_TYPE_DEFAULT, "#I Changing check-in state from %s to %s", &v9, 0x16u);
  }

  *(a1 + 152) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

void TelephonyXPC::Client::State::createCommand_sync(void *a1, uint64_t a2, uint64_t a3, void **a4, void *a5)
{
  v10 = MEMORY[0x26D6B9900](*a5);
  v11 = MEMORY[0x277D86468];
  if (v10 != MEMORY[0x277D86468])
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    if (v12 || (v12 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v12) == v11)
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
    v14 = xpc_null_create();
    v15 = *a5;
    *a5 = v13;
    xpc_release(v15);
    xpc_release(v14);
  }

  v16 = (a2 + 128);
  if (*(a2 + 151) < 0)
  {
    v16 = *v16;
  }

  v31 = xpc_string_create(v16);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v29 = a5;
  v30 = "clientName";
  xpc::dict::object_proxy::operator=(&v29, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  *a1 = 0;
  a1[1] = 0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12TelephonyXPC6Client5State18createCommand_syncENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvNS_6ResultEN3xpc4dictEEEESD__block_invoke;
  aBlock[3] = &__block_descriptor_tmp_46;
  v17 = *a4;
  if (*a4)
  {
    v17 = _Block_copy(v17);
  }

  v28 = v17;
  v18 = _Block_copy(aBlock);
  v19 = *(a2 + 24);
  if (v19)
  {
    dispatch_retain(v19);
  }

  v29 = v18;
  v30 = v19;
  if (v18)
  {
    v20 = _Block_copy(v18);
  }

  else
  {
    v20 = 0;
  }

  v24 = v20;
  v25 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  v21 = *a5;
  object = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Command::create(a3, &v24, &object, &v26);
  v22 = v26;
  v26 = 0uLL;
  *a1 = v22;
  xpc_release(object);
  object = 0;
  if (v25)
  {
    dispatch_release(v25);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  if (v19)
  {
    dispatch_release(v19);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (v28)
  {
    _Block_release(v28);
  }
}

void sub_26D29BA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, char a21)
{
  xpc_release(object);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a11);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a21);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void ___ZN12TelephonyXPC6Client5State12checkIn_syncEv_block_invoke(void *a1, _DWORD *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5] && !*a2)
      {
        TelephonyXPC::Client::State::changeCheckInState_sync(v5, 2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t TelephonyXPC::Result::describe(TelephonyXPC::Result *this, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v46 = v4;
  v45 = v4;
  v44 = v4;
  v43 = v4;
  v42 = v4;
  v41 = v4;
  v38 = v4;
  v37 = v4;
  *v33 = v4;
  v34 = v4;
  *__src = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v40 = 0;
  v5 = MEMORY[0x277D828A0] + 64;
  v36 = MEMORY[0x277D828A0] + 64;
  v6 = MEMORY[0x277D82828];
  v7 = *(MEMORY[0x277D82828] + 16);
  v28 = *(MEMORY[0x277D82828] + 8);
  *(&v28 + *(v28 - 24)) = v7;
  v8 = (&v28 + *(v28 - 24));
  std::ios_base::init(v8, &v29);
  v9 = MEMORY[0x277D828A0] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v28 = v9;
  v36 = v5;
  v10 = MEMORY[0x277D82868] + 16;
  *&v29 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D6B95B0](&v29 + 8);
  *__src = 0u;
  v32 = 0u;
  v30 = 0u;
  v11 = MEMORY[0x277D82878] + 16;
  *&v29 = MEMORY[0x277D82878] + 16;
  v33[0] = 0;
  v33[1] = 0;
  *&v34 = 0;
  *(&v34 + 1) = v33;
  LODWORD(v35) = 16;
  std::string::resize(v33, 0x16uLL, 0);
  v12 = BYTE7(v34);
  if (SBYTE7(v34) < 0)
  {
    v12 = v33[1];
  }

  __src[1] = v33;
  *&v32 = v33;
  *(&v32 + 1) = v33 + v12;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "Result:'", 8);
  v13 = *a2;
  if (*a2 <= -534716413)
  {
    if (v13 > -534716415)
    {
      if (v13 == -534716414)
      {
        v14 = "kCommandError";
        goto LABEL_25;
      }

      if (v13 == -534716413)
      {
        v14 = "kTimeout";
        goto LABEL_25;
      }
    }

    else
    {
      if (v13 == -534716416)
      {
        v14 = "kInternalError";
        goto LABEL_25;
      }

      if (v13 == -534716415)
      {
        v14 = "kServerError";
        goto LABEL_25;
      }
    }
  }

  else if (v13 <= -534716411)
  {
    if (v13 == -534716412)
    {
      v14 = "kNotSupported";
      goto LABEL_25;
    }

    if (v13 == -534716411)
    {
      v14 = "kRetry";
      goto LABEL_25;
    }
  }

  else
  {
    switch(v13)
    {
      case -534716410:
        v14 = "kPermissionDenied";
        goto LABEL_25;
      case -534716409:
        v14 = "kNotAvailable";
        goto LABEL_25;
      case 0:
        v14 = "kSuccess";
        goto LABEL_25;
    }
  }

  v14 = "kInvalidErrorCode";
LABEL_25:
  std::string::basic_string[abi:ne200100]<0>(__p, v14);
  if ((v27 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v16 = v27;
  }

  else
  {
    v16 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "'", 1);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(a2 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_44;
    }
  }

  else if (!*(a2 + 31))
  {
    goto LABEL_44;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, " Info:'", 7);
  v17 = *(a2 + 31);
  if (v17 >= 0)
  {
    v18 = a2 + 8;
  }

  else
  {
    v18 = *(a2 + 8);
  }

  if (v17 >= 0)
  {
    v19 = *(a2 + 31);
  }

  else
  {
    v19 = *(a2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "'", 1);
LABEL_44:
  if ((v35 & 0x10) != 0)
  {
    v21 = *(&v34 + 1);
    if (*(&v34 + 1) < v32)
    {
      *(&v34 + 1) = v32;
      v21 = v32;
    }

    v22 = __src[1];
  }

  else
  {
    if ((v35 & 8) == 0)
    {
      v20 = 0;
      *(this + 23) = 0;
      goto LABEL_60;
    }

    v22 = v30;
    v21 = __src[0];
  }

  v20 = v21 - v22;
  if ((v21 - v22) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

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

    v24 = operator new(v23);
    *(this + 1) = v20;
    *(this + 2) = v23 | 0x8000000000000000;
    *this = v24;
    this = v24;
    goto LABEL_59;
  }

  *(this + 23) = v20;
  if (v20)
  {
LABEL_59:
    memmove(this, v22, v20);
  }

LABEL_60:
  *(this + v20) = 0;
  v28 = *v6;
  *(&v28 + *(v28 - 24)) = v6[3];
  *&v29 = v11;
  if (SBYTE7(v34) < 0)
  {
    operator delete(v33[0]);
  }

  *&v29 = v10;
  std::locale::~locale(&v29 + 1);
  std::ostream::~ostream();
  return MEMORY[0x26D6B9600](&v36);
}

void sub_26D29C08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::ostringstream::~ostringstream(&a15);
  MEMORY[0x26D6B9600](v29);
  _Unwind_Resume(a1);
}

void TelephonyXPC::Client::State::send_sync(uint64_t a1, void **a2)
{
  if (MEMORY[0x26D6B9900](*(a1 + 40)) == MEMORY[0x277D86450])
  {
    v4 = *(a1 + 40);
    v5 = *a2;

    xpc_connection_send_message(v4, v5);
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x26D6B9550](v22, a1);
  if (LOBYTE(v22[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_30;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_30;
    }

    if (v16 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        v18 = (v16 | 7) == 0x17 ? 25 : (v16 | 7) + 1;
        v17 = operator new(v18);
        __b[1].__locale_ = v16;
        __b[2].__locale_ = (v18 | 0x8000000000000000);
        __b[0].__locale_ = v17;
      }

      else
      {
        HIBYTE(__b[2].__locale_) = v16;
        v17 = __b;
      }

      memset(v17, v9, v16);
      *(v17 + v16) = 0;
      v19 = SHIBYTE(__b[2].__locale_) >= 0 ? __b : __b[0].__locale_;
      v20 = (*(*v7 + 96))(v7, v19, v16);
      if (SHIBYTE(__b[2].__locale_) < 0)
      {
        operator delete(__b[0].__locale_);
      }

      if (v20 != v16)
      {
        goto LABEL_30;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_30:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x26D6B9560](v22);
  return a1;
}

void sub_26D29C408(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x26D6B9560](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26D29C3DCLL);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void ___ZN12TelephonyXPC6Client5State18createCommand_syncENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvNS_6ResultEN3xpc4dictEEEESD__block_invoke(uint64_t a1, int *a2, void **a3)
{
  v4 = *(a1 + 32);
  v7 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __p = *(a2 + 2);
  }

  v5 = *a3;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v4 + 16))(v4, &v7, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26D29C660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN12TelephonyXPC6Client5State13eventsOn_syncEv_block_invoke(void *a1, _DWORD *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5] && !*a2)
      {
        TelephonyXPC::Client::State::changeEventsState_sync(v5, 2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void TelephonyXPC::Client::State::convert_sync(xpc_object_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *a1 = xpc_null_create();
  if (*(*a3 + 16))
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v6) == MEMORY[0x277D86468])
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
    v8 = xpc_null_create();
    v9 = *a1;
    *a1 = v7;
    xpc_release(v9);
    xpc_release(v8);
    v10 = xpc_array_create(0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v10) == MEMORY[0x277D86440])
      {
        xpc_retain(v10);
        v11 = v10;
      }

      else
      {
        v11 = xpc_null_create();
      }
    }

    else
    {
      v11 = xpc_null_create();
      v10 = 0;
    }

    v24 = a1;
    xpc_release(v10);
    v12 = *(a2 + 160);
    v13 = *v12;
    if (*v12 != v12 + 1)
    {
      do
      {
        memset(&v33, 170, sizeof(v33));
        if (*(v13 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v33, v13[4], v13[5]);
        }

        else
        {
          v33 = *(v13 + 4);
        }

        v14 = v13[9];
        if (v14)
        {
          xpc_retain(v13[9]);
        }

        else
        {
          v14 = xpc_null_create();
        }

        value = 0xAAAAAAAAAAAAAAAALL;
        v15 = xpc_dictionary_create(0, 0, 0);
        v16 = v15;
        if (v15)
        {
          value = v15;
        }

        else
        {
          v16 = xpc_null_create();
          value = v16;
          if (!v16)
          {
            v17 = xpc_null_create();
            v16 = 0;
            goto LABEL_28;
          }
        }

        if (MEMORY[0x26D6B9900](v16) != MEMORY[0x277D86468])
        {
          v17 = xpc_null_create();
LABEL_28:
          value = v17;
          goto LABEL_29;
        }

        xpc_retain(v16);
LABEL_29:
        xpc_release(v16);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v33;
        }

        else
        {
          v18 = v33.__r_.__value_.__r.__words[0];
        }

        v30 = xpc_string_create(v18);
        if (!v30)
        {
          v30 = xpc_null_create();
        }

        v29[0] = &value;
        v29[1] = "event";
        xpc::dict::object_proxy::operator=(v29, &v30, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v30);
        v30 = 0;
        v27 = v14;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v27 = xpc_null_create();
        }

        xpc::dict::object_proxy::operator=(&v28, value, "eventFilter", &v27);
        xpc_release(v28);
        v28 = 0;
        xpc_release(v27);
        v27 = 0;
        xpc_array_append_value(v11, value);
        xpc_release(value);
        xpc_release(v14);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v19 = v13[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v13[2];
            v21 = *v20 == v13;
            v13 = v20;
          }

          while (!v21);
        }

        v13 = v20;
      }

      while (v20 != (*(a2 + 160) + 8));
    }

    v25 = v11;
    if (v11)
    {
      xpc_retain(v11);
      v22 = v24;
    }

    else
    {
      v23 = xpc_null_create();
      v22 = v24;
      v25 = v23;
    }

    xpc::dict::object_proxy::operator=(&v26, *v22, "eventList", &v25);
    xpc_release(v26);
    v26 = 0;
    xpc_release(v25);
    v25 = 0;
    xpc_release(v11);
  }
}

void sub_26D29CB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(v24);
  xpc::dict::~dict(a9);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=(xpc_object_t *a1, xpc_object_t xdict, char *key, xpc_object_t *a4)
{
  xpc_dictionary_set_value(xdict, key, *a4);
  *a1 = *a4;
  result = xpc_null_create();
  *a4 = result;
  return result;
}

{
  xpc_dictionary_set_value(xdict, key, *a4);
  *a1 = *a4;
  result = xpc_null_create();
  *a4 = result;
  return result;
}

void ___ZN12TelephonyXPC6Client5State15setEventHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS2_10shared_ptrINS_5EventEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v15 = *(a1 + 40);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = _Block_copy(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    dispatch_retain(v5);
  }

  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (v5)
    {
      v8 = _Block_copy(v4);
      v16 = v8;
      v17 = v5;
      dispatch_retain(v5);
      v9 = xpc_null_create();
      v18 = v9;
      v10 = std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*(v2 + 160), &v15, &v15);
      v11 = v10[7];
      v10[7] = v8;
      if (v11)
      {
        _Block_release(v11);
      }

      v12 = v10[8];
      v10[8] = v5;
      if (v12)
      {
        dispatch_release(v12);
      }

      v13 = xpc_null_create();
      v14 = v10[9];
      v10[9] = v9;
      xpc_release(v14);
      xpc_release(v13);
LABEL_25:
      dispatch_release(v5);
      if (!v4)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v5)
  {
    goto LABEL_25;
  }

  if (v4)
  {
LABEL_26:
    _Block_release(v4);
  }

LABEL_27:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_26D29CDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17)
{
  TelephonyXPC::EventCallbackFilter::~EventCallbackFilter(&a17);
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c89_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c89_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  v7 = (a1 + 1);
  v8 = (a1 + 1);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v5 + 4) & 0x80) == 0)
        {
          break;
        }

        v5 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 4, a2) & 0x80) == 0)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v7 = v8 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = operator new(0x50uLL);
    v10 = v11;
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v11 + 32), *a3, *(a3 + 8));
    }

    else
    {
      *(v11 + 2) = *a3;
      *(v11 + 6) = *(a3 + 16);
    }

    v10[7] = 0;
    v10[8] = 0;
    v10[9] = 0;
    v10[9] = xpc_null_create();
    *v10 = 0;
    v10[1] = 0;
    v10[2] = v8;
    *v7 = v10;
    v12 = **a1;
    v13 = v10;
    if (v12)
    {
      *a1 = v12;
      v13 = *v7;
    }

    v14 = *v6;
    v15 = v13 == *v6;
    *(v13 + 24) = v15;
    if (!v15)
    {
      do
      {
        v16 = v13[2];
        if (*(v16 + 24))
        {
          break;
        }

        v17 = *(v16 + 16);
        v18 = *v17;
        if (*v17 == v16)
        {
          v22 = v17[1];
          if (!v22 || (v23 = *(v22 + 24), v21 = (v22 + 24), v23 == 1))
          {
            if (*v16 == v13)
            {
              v25 = v13[2];
            }

            else
            {
              v25 = *(v16 + 8);
              v26 = *v25;
              *(v16 + 8) = *v25;
              v27 = v16;
              if (v26)
              {
                *(v26 + 16) = v16;
                v17 = *(v16 + 16);
                v27 = *v17;
              }

              v25[2] = v17;
              v17[v27 != v16] = v25;
              *v25 = v16;
              *(v16 + 16) = v25;
              v17 = v25[2];
              v18 = *v17;
            }

            *(v25 + 24) = 1;
            *(v17 + 24) = 0;
            v32 = *(v18 + 8);
            *v17 = v32;
            if (v32)
            {
              *(v32 + 16) = v17;
            }

            v33 = v17[2];
            *(v18 + 16) = v33;
            v33[*v33 != v17] = v18;
            *(v18 + 8) = v17;
            v17[2] = v18;
            break;
          }
        }

        else
        {
          if (!v18 || (v20 = *(v18 + 24), v19 = (v18 + 24), v20 == 1))
          {
            v24 = *v16;
            if (*v16 == v13)
            {
              v28 = v24[1];
              *v16 = v28;
              if (v28)
              {
                *(v28 + 16) = v16;
                v17 = *(v16 + 16);
              }

              v24[2] = v17;
              v17[*v17 != v16] = v24;
              v24[1] = v16;
              *(v16 + 16) = v24;
              v17 = v24[2];
            }

            else
            {
              v24 = v13[2];
            }

            *(v24 + 24) = 1;
            *(v17 + 24) = 0;
            v29 = v17[1];
            v30 = *v29;
            v17[1] = *v29;
            if (v30)
            {
              *(v30 + 16) = v17;
            }

            v31 = v17[2];
            v29[2] = v31;
            v31[*v31 != v17] = v29;
            *v29 = v17;
            v17[2] = v29;
            break;
          }

          v21 = v19;
        }

        *(v16 + 24) = 1;
        v13 = v17;
        *(v17 + 24) = v17 == v14;
        *v21 = 1;
      }

      while (v17 != v14);
    }

    a1[2] = (a1[2] + 1);
  }

  return v10;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void ___ZN12TelephonyXPC6Client5State15setEventHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvNS2_10shared_ptrINS_5EventEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v15 = *(a1 + 40);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    xpc_retain(*(a1 + 64));
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    dispatch_retain(v6);
  }

  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (size && v5)
  {
    if (v6)
    {
      v8 = _Block_copy(v5);
      v16 = v8;
      v17 = v6;
      dispatch_retain(v6);
      v18 = v3;
      if (v3)
      {
        xpc_retain(v3);
        v9 = v3;
      }

      else
      {
        v9 = xpc_null_create();
        v18 = v9;
      }

      v10 = std::__tree<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::__map_value_compare<std::string,std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TelephonyXPC::EventCallbackFilter>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(*(v2 + 160), &v15, &v15);
      v11 = v10[7];
      v10[7] = v8;
      if (v11)
      {
        _Block_release(v11);
      }

      v12 = v10[8];
      v10[8] = v6;
      if (v12)
      {
        dispatch_release(v12);
      }

      v13 = xpc_null_create();
      v14 = v10[9];
      v10[9] = v9;
      xpc_release(v14);
      xpc_release(v13);
LABEL_28:
      dispatch_release(v6);
      if (!v5)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v6)
  {
    goto LABEL_28;
  }

  if (v5)
  {
LABEL_29:
    _Block_release(v5);
  }

LABEL_30:
  xpc_release(v3);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_26D29D408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17)
{
  TelephonyXPC::EventCallbackFilter::~EventCallbackFilter(&a17);
  dispatch::callback<void({block_pointer})(std::shared_ptr<TelephonyXPC::Event>)>::~callback(&a9);
  xpc_release(v17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c15_ZTSN3xpc4dictE72c89_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(a1 + 64) = xpc_null_create();
  }

  v6 = *(a2 + 72);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c15_ZTSN3xpc4dictE72c89_ZTSN8dispatch8callbackIU13block_pointerFvNSt3__110shared_ptrIN12TelephonyXPC5EventEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 64));
  *(a1 + 64) = 0;
  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

void ___ZN12TelephonyXPC6Client5State28performWithBlockingSyncReplyENSt3__110shared_ptrINS_7CommandEEERNS_6ResultERN3xpc4dictE_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (MEMORY[0x26D6B9900](*(v2 + 40)) == MEMORY[0x277D86450])
  {
    v5 = xpc_null_create();
    TelephonyXPC::Command::get(*(a1 + 40), &message);
    v6 = xpc_connection_send_message_with_reply_sync(*(v2 + 40), message);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9900](v6) == MEMORY[0x277D86468])
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

    v8 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v8);
    xpc_release(v6);
    xpc_release(message);
    object = v7;
    message = 0;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    TelephonyXPC::Client::State::parseReply_sync(buf, &object, *(a1 + 64));
    v9 = *(a1 + 56);
    v10 = *buf;
    *buf = xpc_null_create();
    v11 = *v9;
    *v9 = v10;
    xpc_release(v11);
    xpc_release(*buf);
    *buf = 0;
    xpc_release(object);
    object = 0;
    v12 = *(a1 + 64);
    v13 = *(v2 + 72);
    if (*v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v14 = *v14;
        }

        TelephonyXPC::Result::describe(buf, v12);
        if (v21 >= 0)
        {
          v15 = buf;
        }

        else
        {
          v15 = *buf;
        }

        *v22 = 136315394;
        v23 = v14;
        v24 = 2080;
        v25 = v15;
        _os_log_error_impl(&dword_26D294000, v13, OS_LOG_TYPE_ERROR, "Command %s failed: %s", v22, 0x16u);
        if (v21 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v17 = *v17;
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_debug_impl(&dword_26D294000, v13, OS_LOG_TYPE_DEBUG, "#D Command %s succeeded", buf, 0xCu);
    }

    xpc_release(v7);
  }

  else
  {
    v3 = *(v2 + 72);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v4 = *v4;
      }

      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_error_impl(&dword_26D294000, v3, OS_LOG_TYPE_ERROR, "Server unavailable, unable to perform command %s", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_26D29D858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v3 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v3;
  }
}

void sub_26D29D950(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIN12TelephonyXPC7CommandEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ___ZN12TelephonyXPC6Client5State9eventsOffEv_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 156);
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    TelephonyXPC::Client::State::changeEventsState_sync(*(a1 + 32), 1);
LABEL_4:
    v3 = *(v1 + 16);
    if (!v3 || (v4 = *(v1 + 8), (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    p_shared_weak_owners = &v5->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    std::string::basic_string[abi:ne200100]<0>(__p, "eventsOff");
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1174405120;
    v21 = ___ZN12TelephonyXPC6Client5State14eventsOff_syncEv_block_invoke;
    v22 = &__block_descriptor_tmp_64;
    v23 = v1;
    v24 = v4;
    v25 = v6;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v8 = _Block_copy(&aBlock);
    v15 = v8;
    v9 = *(v1 + 168);
    v13[0] = *(v1 + 160);
    v13[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TelephonyXPC::Client::State::convert_sync(&object, v1, v13);
    TelephonyXPC::Client::State::createCommand_sync(&v18, v1, __p, &v15, &object);
    TelephonyXPC::Client::State::perform_sync(v1, &v18);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    xpc_release(object);
    object = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v8)
    {
      _Block_release(v8);
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_weak(v25);
    }

    std::__shared_weak_count::__release_weak(v6);
    goto LABEL_20;
  }

  v10 = *(v1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = "";
    if (!v2)
    {
      v12 = "EventsOff";
    }

    LODWORD(aBlock) = 136315138;
    *(&aBlock + 4) = v12;
    _os_log_debug_impl(&dword_26D294000, v10, OS_LOG_TYPE_DEBUG, "#D Events state is %s, skipping off-transition", &aBlock, 0xCu);
  }

LABEL_20:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_26D29DBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN12TelephonyXPC6Client5State14eventsOff_syncEv_block_invoke(void *a1)
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
        TelephonyXPC::Client::State::changeEventsState_sync(v3, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void TelephonyXPC::Client::State::destroyConnection_sync(TelephonyXPC::Client::State *this)
{
  TelephonyXPC::Client::State::changeCheckInState_sync(this, 0);
  object = xpc_null_create();
  ctu::XpcClient::setServer_sync();
  xpc_release(object);
  object = 0;
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_26D294000, v2, OS_LOG_TYPE_DEBUG, "#D Destroyed server connection", v3, 2u);
  }
}

void xpc::dict::to_debug_string(xpc::dict *this, uint64_t a2)
{
  v3 = MEMORY[0x26D6B9890](a2);
  memset(this, 170, 24);
  std::string::basic_string[abi:ne200100]<0>(this, v3);

  free(v3);
}

std::__shared_weak_count_vtbl **std::shared_ptr<TelephonyXPC::ClientStateTracker>::shared_ptr[abi:ne200100]<TelephonyXPC::ClientStateTracker,0>(std::__shared_weak_count_vtbl **a1, std::__shared_weak_count_vtbl *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4->__vftable = &unk_287EA78C8;
  v4->__shared_owners_ = 0;
  v4->__shared_weak_owners_ = 0;
  v4[1].__vftable = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = a2->~__shared_weak_count_0;
    if (!v5)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      a2->~__shared_weak_count = a2;
      a2->~__shared_weak_count_0 = v4;
      goto LABEL_6;
    }

    if (v5->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      a2->~__shared_weak_count = a2;
      a2->~__shared_weak_count_0 = v4;
      std::__shared_weak_count::__release_weak(v5);
LABEL_6:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return a1;
}

void sub_26D29DEF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<TelephonyXPC::ClientStateTracker>::operator()[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TelephonyXPC::ClientStateTracker *,std::shared_ptr<TelephonyXPC::ClientStateTracker>::__shared_ptr_default_delete<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker>,std::allocator<TelephonyXPC::ClientStateTracker>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::ClientStateTracker *,std::shared_ptr<TelephonyXPC::ClientStateTracker>::__shared_ptr_default_delete<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker>,std::allocator<TelephonyXPC::ClientStateTracker>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<TelephonyXPC::ClientStateTracker>::operator()[abi:ne200100](void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      __p[4] = v2;
      operator delete(v2);
    }

    v3 = __p[1];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(__p);
  }
}

void std::__shared_ptr_pointer<TelephonyXPC::Client *,std::shared_ptr<TelephonyXPC::Client>::__shared_ptr_default_delete<TelephonyXPC::Client,TelephonyXPC::Client>,std::allocator<TelephonyXPC::Client>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<TelephonyXPC::Client *,std::shared_ptr<TelephonyXPC::Client>::__shared_ptr_default_delete<TelephonyXPC::Client,TelephonyXPC::Client>,std::allocator<TelephonyXPC::Client>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Client *,std::shared_ptr<TelephonyXPC::Client>::__shared_ptr_default_delete<TelephonyXPC::Client,TelephonyXPC::Client>,std::allocator<TelephonyXPC::Client>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>::~PthreadMutexGuardPolicy, &ctu::Singleton<TelephonyXPC::ClientStateTracker,TelephonyXPC::ClientStateTracker,ctu::PthreadMutexGuardPolicy<TelephonyXPC::ClientStateTracker>>::sInstance, &dword_26D294000);
  }

  return result;
}

void *TelephonyXPC::Command::Command(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void TelephonyXPC::Command::getName(TelephonyXPC::Command::State **this@<X0>, void *a2@<X8>)
{
  TelephonyXPC::Command::State::name(*this);
  v3 = *MEMORY[0x277CBECE8];
  ctu::cf::convert_copy();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
}

void sub_26D29E184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TelephonyXPC::Command::State *,std::shared_ptr<TelephonyXPC::Command::State>::__shared_ptr_default_delete<TelephonyXPC::Command::State,TelephonyXPC::Command::State>,std::allocator<TelephonyXPC::Command::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Command::State *,std::shared_ptr<TelephonyXPC::Command::State>::__shared_ptr_default_delete<TelephonyXPC::Command::State,TelephonyXPC::Command::State>,std::allocator<TelephonyXPC::Command::State>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<TelephonyXPC::Command *,std::shared_ptr<TelephonyXPC::Command>::__shared_ptr_default_delete<TelephonyXPC::Command,TelephonyXPC::Command>,std::allocator<TelephonyXPC::Command>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Command *,std::shared_ptr<TelephonyXPC::Command>::__shared_ptr_default_delete<TelephonyXPC::Command,TelephonyXPC::Command>,std::allocator<TelephonyXPC::Command>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ctu::XpcClient::setServer_sync()
{
  return MEMORY[0x2821F69D8]();
}

{
  return MEMORY[0x2821F69E0]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A58]();
}

{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A98]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}