__n128 telephonytransport::TelephonyTransport::TelephonyTransport(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2A1E9C7C0;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void telephonytransport::TelephonyTransport::~TelephonyTransport(telephonytransport::TelephonyTransport *this)
{
  *this = &unk_2A1E9C7C0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t telephonytransport::NetworkIfaceParams::isValid(telephonytransport::NetworkIfaceParams *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (!*(this + 1))
    {
      return 0;
    }
  }

  else if (!*(this + 23))
  {
    return 0;
  }

  if (*(this + 14) == 1)
  {
    if ((*(this + 55) & 0x8000000000000000) != 0)
    {
      if (*(this + 5))
      {
        return 0;
      }
    }

    else if (*(this + 55))
    {
      return 0;
    }
  }

  return 1;
}

void telephonytransport::TCPSocketStream::create(telephonytransport *a1@<X0>, NSObject **a2@<X1>, void *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::__shared_weak_count_vtbl **a6@<X8>)
{
  if (!*a3)
  {
    v16 = *telephonytransport::getDefaultOSLogHandle(a1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid socket descriptor";
LABEL_24:
      _os_log_error_impl(&dword_29808D000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    }

LABEL_18:
    *a6 = 0;
    a6[1] = 0;
    return;
  }

  if (a4 != 1)
  {
    v18 = *(a1 + 1);
    if (!v18 || *(v18 + 8) == -1)
    {
      v16 = *telephonytransport::getDefaultOSLogHandle(a1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "Delegate is mandatory";
        goto LABEL_24;
      }
    }

    else
    {
      if (*a2)
      {
        goto LABEL_3;
      }

      v16 = *telephonytransport::getDefaultOSLogHandle(a1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "Providing readQueue is mandatory when read mode is specified";
        goto LABEL_24;
      }
    }

    goto LABEL_18;
  }

LABEL_3:
  v12 = operator new(0x50uLL);
  v13 = *a2;
  v20 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  telephonytransport::TCPSocketStream::TCPSocketStream(v12, a1, &v20, a3, a4, a5);
  v14 = operator new(0x20uLL);
  v14->__vftable = &unk_2A1E9C900;
  v14->__shared_owners_ = 0;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  if (LODWORD(v12[1].__on_zero_shared) == 1 || (started = telephonytransport::TCPSocketStream::startReading(v12)))
  {
    *a6 = v12;
    a6[1] = v14;
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v19 = *telephonytransport::getDefaultOSLogHandle(started);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29808D000, v19, OS_LOG_TYPE_ERROR, "Failed to initialize", buf, 2u);
    }

    *a6 = 0;
    a6[1] = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
}

uint64_t telephonytransport::TCPSocketStream::TCPSocketStream(uint64_t a1, uint64_t a2, dispatch_queue_t *a3, uint64_t a4, int a5, char *a6)
{
  telephonytransport::OSLogHandle::create("tcpsockstream", a6, (a1 + 24));
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *a1 = &unk_2A1E9C830;
  *(a1 + 40) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 56) = a5;
  *(a1 + 64) = 0;
  v11 = *a3;
  if (*a3)
  {
    qos_class = dispatch_queue_get_qos_class(v11, 0);
    v13 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    if (*a3)
    {
      v11 = dispatch_queue_create_with_target_V2("TCPSocketStream", v13, *a3);
    }

    else
    {
      v11 = dispatch_queue_create("TCPSocketStream", v13);
    }
  }

  *(a1 + 72) = v11;
  return a1;
}

void telephonytransport::TCPSocketStream::~TCPSocketStream(telephonytransport::TCPSocketStream *this)
{
  *this = &unk_2A1E9C830;
  v2 = *(this + 8);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *this = &unk_2A1E9C7C0;
  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

{
  telephonytransport::TCPSocketStream::~TCPSocketStream(this);

  operator delete(v1);
}

BOOL telephonytransport::TCPSocketStream::startReading(telephonytransport::TCPSocketStream *this)
{
  if (*(this + 8))
  {
    v3 = *(this + 3);
    v2 = *(this + 4);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *v3;
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    else
    {
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29808D000, v4, OS_LOG_TYPE_ERROR, "Already started reading", buf, 2u);
    }

    return 1;
  }

  v5 = dispatch_source_create(MEMORY[0x29EDCA5B8], *(*(this + 5) + 16), 0, *(this + 9));
  v6 = *(this + 8);
  *(this + 8) = v5;
  if (v6)
  {
    dispatch_release(v6);
    v5 = *(this + 8);
  }

  if (v5)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(*(this + 5) + 16);
    v10 = operator new(0x10018uLL);
    v10->__shared_owners_ = 0;
    v10->__shared_weak_owners_ = 0;
    v10->__vftable = &unk_2A1E9C978;
    bzero(&v10[1], 0x10000uLL);
    v11 = *(this + 3);
    v12 = *(this + 4);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(this + 8);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN18telephonytransport15TCPSocketStream12startReadingEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_0;
    handler[4] = v8;
    v30 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = v9;
    v31 = v10 + 1;
    v32 = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = v11;
    v34 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_source_set_event_handler(v13, handler);
    *buf = 0;
    v23 = buf;
    v24 = 0x3802000000;
    v25 = __Block_byref_object_copy_;
    v15 = *(this + 5);
    v14 = *(this + 6);
    v26 = __Block_byref_object_dispose_;
    v27 = v15;
    v28 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(this + 8);
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 1107296256;
    v21[2] = ___ZN18telephonytransport15TCPSocketStream12startReadingEv_block_invoke_3;
    v21[3] = &__block_descriptor_tmp_4_0;
    v21[4] = buf;
    dispatch_source_set_cancel_handler(v16, v21);
    dispatch_resume(*(this + 8));
    _Block_object_dispose(buf, 8);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    return 1;
  }

  v19 = *(this + 3);
  v18 = *(this + 4);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *v19;
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v20 = *v19;
  }

  result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_error_impl(&dword_29808D000, v20, OS_LOG_TYPE_ERROR, "Unable to create read source", buf, 2u);
    return 0;
  }

  return result;
}

void sub_29808E170(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL telephonytransport::TCPSocketStream::write(telephonytransport::TCPSocketStream *this, const unsigned __int8 *a2, unint64_t a3)
{
  v3 = this;
  v19 = *MEMORY[0x29EDCA608];
  if (!*(this + 14))
  {
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v3 = *v5;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v17) = 0;
      _os_log_fault_impl(&dword_29808D000, v3, OS_LOG_TYPE_FAULT, "Write is not supported", &v17, 2u);
    }

    __break(1u);
  }

  v6 = a3;
  if (!a3)
  {
LABEL_15:
    result = 1;
    goto LABEL_16;
  }

  v7 = a2;
  v8 = 0;
  while (1)
  {
    v9 = send(*(v3[5].isa + 4), &v7[v8], v6 - v8, 0);
    if (v9 == -1)
    {
      break;
    }

    v8 += v9;
LABEL_14:
    if (v8 >= v6)
    {
      goto LABEL_15;
    }
  }

  if (*__error() == 35 || *__error() == 35)
  {
    goto LABEL_14;
  }

  isa = v3[3].isa;
  v12 = v3[4].isa;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = *isa;
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  else
  {
    v14 = *isa;
  }

  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v15 = __error();
    v16 = strerror(*v15);
    v17 = 136315138;
    v18 = v16;
    _os_log_error_impl(&dword_29808D000, v14, OS_LOG_TYPE_ERROR, "Write failed: %s", &v17, 0xCu);
    result = 0;
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN18telephonytransport15TCPSocketStream12startReadingEv_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = recv(*(a1 + 80), *(a1 + 48), 0x10000uLL, 0);
        if (v6 == -1)
        {
          if (*__error() != 35 && *__error() != 35)
          {
            v11 = **(a1 + 64);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = __error();
              v13 = strerror(*v12);
              v14 = 136315138;
              v15 = v13;
              _os_log_error_impl(&dword_29808D000, v11, OS_LOG_TYPE_ERROR, "Error encountered while reading: %s", &v14, 0xCu);
            }

            exit(1);
          }

          v7 = **(a1 + 64);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v9 = __error();
            v10 = strerror(*v9);
            v14 = 136315138;
            v15 = v10;
            _os_log_debug_impl(&dword_29808D000, v7, OS_LOG_TYPE_DEBUG, "Read issue: %s", &v14, 0xCu);
          }
        }

        else if (v6)
        {
          (*(*v5 + 16))(v5, *(a1 + 48), v6);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_32c74_ZTSKNSt3__18weak_ptrIN18telephonytransport26TelephonyTransportDelegateEEE48c48_ZTSKNSt3__110shared_ptrINS_5arrayIhLm65536EEEEE64c62_ZTSKNSt3__110shared_ptrIN18telephonytransport11OSLogHandleEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[9];
  result[8] = a2[8];
  result[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c74_ZTSKNSt3__18weak_ptrIN18telephonytransport26TelephonyTransportDelegateEEE48c48_ZTSKNSt3__110shared_ptrINS_5arrayIhLm65536EEEEE64c62_ZTSKNSt3__110shared_ptrIN18telephonytransport11OSLogHandleEEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN18telephonytransport15TCPSocketStream12startReadingEv_block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_pointer<telephonytransport::TCPSocketStream *,std::shared_ptr<telephonytransport::TCPSocketStream>::__shared_ptr_default_delete<telephonytransport::TCPSocketStream,telephonytransport::TCPSocketStream>,std::allocator<telephonytransport::TCPSocketStream>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::TCPSocketStream *,std::shared_ptr<telephonytransport::TCPSocketStream>::__shared_ptr_default_delete<telephonytransport::TCPSocketStream,telephonytransport::TCPSocketStream>,std::allocator<telephonytransport::TCPSocketStream>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::TCPSocketStream *,std::shared_ptr<telephonytransport::TCPSocketStream>::__shared_ptr_default_delete<telephonytransport::TCPSocketStream,telephonytransport::TCPSocketStream>,std::allocator<telephonytransport::TCPSocketStream>>::__get_deleter(uint64_t a1, uint64_t a2)
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<std::array<unsigned char,65536ul>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9C978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t telephonytransport::getDefaultOSLogHandle(telephonytransport *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    telephonytransport::OSLogHandle::create("default", &unk_2980B6DD9, &qword_2A13A5F78);
    __cxa_atexit(std::shared_ptr<telephonytransport::OSLogHandle>::~shared_ptr[abi:ne200100], &qword_2A13A5F78, &dword_29808D000);
    __cxa_guard_release(&_MergedGlobals);
  }

  return qword_2A13A5F78;
}

uint64_t std::shared_ptr<telephonytransport::OSLogHandle>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t telephonytransport::getMacAddress(telephonytransport *this, char *a2, unsigned __int8 *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v5 = getifaddrs(&v18);
  if (v5)
  {
    v6 = *telephonytransport::getDefaultOSLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Unable to get interface addresses";
      v8 = v6;
      v9 = 2;
LABEL_15:
      _os_log_error_impl(&dword_29808D000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = v18;
  if (!v18)
  {
LABEL_8:
    v12 = *telephonytransport::getDefaultOSLogHandle(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = this;
      v7 = "Couldn't find mac address for interface: %s";
      v8 = v12;
      v9 = 12;
      goto LABEL_15;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  while (1)
  {
    v5 = strcmp(this, v10->ifa_name);
    if (!v5)
    {
      ifa_addr = v10->ifa_addr;
      if (ifa_addr->sa_data[4] == 6)
      {
        break;
      }
    }

    v10 = v10->ifa_next;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v16 = &ifa_addr->sa_len + ifa_addr->sa_data[3];
  v17 = *(v16 + 2);
  *(a2 + 2) = *(v16 + 6);
  *a2 = v17;
  v13 = 1;
LABEL_10:
  if (v18)
  {
    MEMORY[0x29C2801B0]();
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void telephonytransport::toString(const __CFString *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (this)
  {
    Length = CFStringGetLength(this);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    v15.location = 0;
    v15.length = Length;
    Bytes = CFStringGetBytes(this, v15, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (usedBufLen && Bytes != 0)
    {
      memset(__p, 170, sizeof(__p));
      std::vector<unsigned char>::vector[abi:ne200100](__p, usedBufLen);
      v16.location = 0;
      v16.length = Length;
      if (CFStringGetBytes(this, v16, 0x8000100u, 0, 0, __p[0], __p[1] - __p[0], 0))
      {
        v8 = __p[0];
        v9 = __p[1];
        v10 = __p[1] - __p[0];
        v11 = a2;
        if ((__p[1] - __p[0]) >= 0x17)
        {
          std::string::__grow_by(a2, 0x16uLL, v10 - 22, 0, 0, 0, 0);
          *(a2 + 8) = 0;
          v11 = *a2;
          if (*(a2 + 23) >= 0)
          {
            v11 = a2;
          }
        }

        while (v8 != v9)
        {
          v12 = *v8++;
          *v11++ = v12;
        }

        *v11 = 0;
        if (*(a2 + 23) < 0)
        {
          *(a2 + 8) = v10;
        }

        else
        {
          *(a2 + 23) = v10 & 0x7F;
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29808EB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_29808EBE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE89D08, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void telephonytransport::TCPServer::create(telephonytransport *a1@<X0>, NSObject **a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, int a5@<W4>, char *a6@<X5>, telephonytransport::TCPServer **a7@<X8>)
{
  v8 = *(a1 + 1);
  if (!v8 || *(v8 + 8) == -1)
  {
    v17 = *telephonytransport::getDefaultOSLogHandle(a1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Must provide a valid delegate";
      v19 = buf;
      goto LABEL_16;
    }

LABEL_8:
    *a7 = 0;
    a7[1] = 0;
    return;
  }

  v9 = *a2;
  if (!*a2)
  {
    v17 = *telephonytransport::getDefaultOSLogHandle(a1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 0;
      v18 = "Providing acceptQueue is mandatory";
      v19 = &v21;
LABEL_16:
      _os_log_error_impl(&dword_29808D000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v15 = operator new(0x78uLL);
  v20 = v9;
  dispatch_retain(v9);
  telephonytransport::TCPServer::TCPServer(v15, a1, &v20, a3, a4, a5, a6);
  v16 = operator new(0x20uLL);
  v16->__vftable = &unk_2A1E9CA60;
  v16->__shared_owners_ = 0;
  v16->__shared_weak_owners_ = 0;
  v16[1].__vftable = v15;
  dispatch_release(v9);
  if (telephonytransport::TCPServer::init(v15) && telephonytransport::TCPServer::startServer(v15))
  {
    *a7 = v15;
    a7[1] = v16;
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a7 = 0;
    a7[1] = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
}

void sub_29808EEC4(_Unwind_Exception *a1)
{
  telephonytransport::TCPServer::~TCPServer(v1);
  operator delete(v4);
  dispatch_release(v2);
  _Unwind_Resume(a1);
}

BOOL telephonytransport::TCPServer::init(telephonytransport::TCPServer *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = socket(2, 1, 0);
  telephonytransport::NetworkSocket::created(v2, v30);
  v3 = *(this + 13);
  v4 = *v30;
  *(this + 6) = *v30;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v5 = *(this + 12);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = *this;
    v11 = *(this + 1);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v30 = 0;
      v17 = "Failed to create socket";
      v18 = v13;
      v19 = 2;
LABEL_40:
      _os_log_error_impl(&dword_29808D000, v18, OS_LOG_TYPE_ERROR, v17, v30, v19);
      result = 0;
      goto LABEL_41;
    }

    goto LABEL_41;
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = *(this + 63);
  if (v6 < 0)
  {
    v6 = *(this + 6);
  }

  v7 = (this + 40);
  if (v6)
  {
    result = telephonytransport::NetworkSocket::bindToInterface(v5, this + 40);
    if (!result)
    {
      goto LABEL_41;
    }
  }

  *&v33.sa_data[10] = 0;
  *&v33.sa_data[2] = 0;
  *v33.sa_data = bswap32(*(this + 44)) >> 16;
  *&v33.sa_len = 528;
  v9 = this + 64;
  if (*(this + 87) < 0)
  {
    if (!*(this + 9))
    {
LABEL_16:
      result = telephonytransport::NetworkSocket::setNonBlockingAndNoSigpipe(*(this + 12));
      if (result)
      {
        result = telephonytransport::NetworkSocket::enablePortReuse(*(this + 12));
        if (result)
        {
          if (bind(*(*(this + 12) + 16), &v33, 0x10u))
          {
            v15 = *this;
            v14 = *(this + 1);
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              v16 = *v15;
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            else
            {
              v16 = *v15;
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              if (*(this + 87) < 0)
              {
                v9 = *v9;
              }

              v29 = *(this + 22);
              if (*(this + 63) < 0)
              {
                v7 = *v7;
              }

              *v30 = 136315650;
              *&v30[4] = v9;
              *&v30[12] = 1024;
              *&v30[14] = v29;
              v31 = 2080;
              v32 = v7;
              _os_log_error_impl(&dword_29808D000, v16, OS_LOG_TYPE_ERROR, "Unable to bind to %s:%u - %s", v30, 0x1Cu);
            }

            v24 = *this;
            v23 = *(this + 1);
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              v25 = *v24;
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            else
            {
              v25 = *v24;
            }

            result = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
            if (result)
            {
              v26 = __error();
              v27 = strerror(*v26);
              *v30 = 136315138;
              *&v30[4] = v27;
              v17 = "%s";
              v18 = v25;
LABEL_39:
              v19 = 12;
              goto LABEL_40;
            }
          }

          else
          {
            result = 1;
          }
        }
      }

      goto LABEL_41;
    }

    v10 = *v9;
  }

  else
  {
    v10 = this + 64;
    if (!*(this + 87))
    {
      goto LABEL_16;
    }
  }

  if (inet_pton(2, v10, &v33.sa_data[2]) == 1)
  {
    goto LABEL_16;
  }

  v21 = *this;
  v20 = *(this + 1);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v22 = *v21;
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  else
  {
    v22 = *v21;
  }

  result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (result)
  {
    if (*(this + 87) < 0)
    {
      v9 = *v9;
    }

    *v30 = 136315138;
    *&v30[4] = v9;
    v17 = "Invalid address: %s";
    v18 = v22;
    goto LABEL_39;
  }

LABEL_41:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL telephonytransport::TCPServer::startServer(telephonytransport::TCPServer *this)
{
  v42 = *MEMORY[0x29EDCA608];
  if (listen(*(*(this + 12) + 16), 5))
  {
    v3 = *this;
    v2 = *(this + 1);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *v3;
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    else
    {
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v27 = (this + 64);
      if (*(this + 87) < 0)
      {
        v27 = *v27;
      }

      v28 = *(this + 22);
      v29 = (this + 40);
      if (*(this + 63) < 0)
      {
        v29 = *v29;
      }

      *buf = 136315650;
      *&buf[4] = v27;
      *&buf[12] = 1024;
      *&buf[14] = v28;
      *&buf[18] = 2080;
      *&buf[20] = v29;
      _os_log_error_impl(&dword_29808D000, v4, OS_LOG_TYPE_ERROR, "Failed to listen for %s:%u - %s", buf, 0x1Cu);
    }

    v18 = *this;
    v17 = *(this + 1);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_34;
    }

    v30 = __error();
    v31 = strerror(*v30);
    *buf = 136315138;
    *&buf[4] = v31;
    v24 = "%s";
    v25 = v19;
    v26 = 12;
LABEL_46:
    _os_log_error_impl(&dword_29808D000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
    result = 0;
    goto LABEL_34;
  }

  v5 = dispatch_source_create(MEMORY[0x29EDCA5B8], *(*(this + 12) + 16), 0, *(this + 4));
  v6 = *(this + 14);
  *(this + 14) = v5;
  if (v6)
  {
    dispatch_release(v6);
    v5 = *(this + 14);
  }

  if (!v5)
  {
    v22 = *this;
    v21 = *(this + 1);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v23 = *v22;
    }

    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_34;
    }

    *buf = 0;
    v24 = "Unable to create accept source";
    v25 = v23;
    v26 = 2;
    goto LABEL_46;
  }

  v7 = *(*(this + 12) + 16);
  v8 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *this;
  v11 = *(this + 1);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(this + 14);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN18telephonytransport9TCPServer11startServerEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_1;
  handler[4] = v8;
  v34 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = v7;
  v35 = v10;
  v36 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_event_handler(v12, handler);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3802000000;
  *&buf[24] = __Block_byref_object_copy__0;
  v14 = *(this + 12);
  v13 = *(this + 13);
  v39 = __Block_byref_object_dispose__0;
  v40 = v14;
  v41 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(this + 14);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 1107296256;
  v32[2] = ___ZN18telephonytransport9TCPServer11startServerEv_block_invoke_2;
  v32[3] = &__block_descriptor_tmp_3;
  v32[4] = buf;
  dispatch_source_set_cancel_handler(v15, v32);
  dispatch_resume(*(this + 14));
  _Block_object_dispose(buf, 8);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  result = 1;
LABEL_34:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t telephonytransport::TCPServer::TCPServer(uint64_t a1, uint64_t a2, NSObject **a3, __int128 *a4, __int128 *a5, int a6, char *a7)
{
  telephonytransport::OSLogHandle::create("tcpserver", a7, a1);
  *(a1 + 16) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = *a3;
  *(a1 + 32) = *a3;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a4;
  *(a1 + 56) = *(a4 + 2);
  *(a1 + 40) = v14;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  v15 = *a5;
  *(a1 + 80) = *(a5 + 2);
  *(a1 + 64) = v15;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  *(a1 + 88) = a6;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void telephonytransport::TCPServer::~TCPServer(telephonytransport::TCPServer *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 14);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void ___ZN18telephonytransport9TCPServer11startServerEv_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v11 = 0xAAAAAAAAAAAAAAAALL;
        v12 = 0xAAAAAAAAAAAAAAAALL;
        v6 = accept(*(a1 + 64), 0, 0);
        telephonytransport::NetworkSocket::created(v6, &v11);
        if (v11)
        {
          (**v5)(v5, &v11);
        }

        else
        {
          v7 = **(a1 + 48);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v9 = __error();
            v10 = strerror(*v9);
            *buf = 136315138;
            v14 = v10;
            _os_log_error_impl(&dword_29808D000, v7, OS_LOG_TYPE_ERROR, "Accept failed: %s", buf, 0xCu);
          }
        }

        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29808F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c65_ZTSKNSt3__18weak_ptrIN18telephonytransport17TCPServerDelegateEEE48c62_ZTSKNSt3__110shared_ptrIN18telephonytransport11OSLogHandleEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c65_ZTSKNSt3__18weak_ptrIN18telephonytransport17TCPServerDelegateEEE48c62_ZTSKNSt3__110shared_ptrIN18telephonytransport11OSLogHandleEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN18telephonytransport9TCPServer11startServerEv_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_pointer<telephonytransport::TCPServer *,std::shared_ptr<telephonytransport::TCPServer>::__shared_ptr_default_delete<telephonytransport::TCPServer,telephonytransport::TCPServer>,std::allocator<telephonytransport::TCPServer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<telephonytransport::TCPServer *,std::shared_ptr<telephonytransport::TCPServer>::__shared_ptr_default_delete<telephonytransport::TCPServer,telephonytransport::TCPServer>,std::allocator<telephonytransport::TCPServer>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    telephonytransport::TCPServer::~TCPServer(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<telephonytransport::TCPServer *,std::shared_ptr<telephonytransport::TCPServer>::__shared_ptr_default_delete<telephonytransport::TCPServer,telephonytransport::TCPServer>,std::allocator<telephonytransport::TCPServer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::TransactionManager::add(std::mutex *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(this);
  v6 = operator new(0xA8uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 850045863;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_2A1E9CAD8;
  v17 = v6;
  opaque = this[1].__m_.__opaque;
  v7 = *this[1].__m_.__opaque;
  if (v7)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = v7[4];
        if (v10 <= a2)
        {
          break;
        }

        v7 = *v9;
        opaque = v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      if (v10 >= a2)
      {
        break;
      }

      v7 = v9[1];
      if (!v7)
      {
        opaque = v9 + 1;
        goto LABEL_9;
      }
    }

    v14 = std::promise<telephonytransport::TransactionResponse>::~promise(&v17);
    v15 = *telephonytransport::getDefaultOSLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = 0;
      _os_log_fault_impl(&dword_29808D000, v15, OS_LOG_TYPE_FAULT, "Emplace should always succeed (duplicate txnId is fatal)", &v16, 2u);
    }

    __break(1u);
  }

  else
  {
    v9 = this[1].__m_.__opaque;
LABEL_9:
    v11 = operator new(0x30uLL);
    v11[4] = a2;
    v11[5] = v6;
    v17 = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v9;
    *opaque = v11;
    v12 = *this[1].__m_.__sig;
    v13 = v11;
    if (v12)
    {
      this[1].__m_.__sig = v12;
      v13 = *opaque;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*this[1].__m_.__opaque, v13);
    ++*&this[1].__m_.__opaque[8];
    std::promise<telephonytransport::TransactionResponse>::~promise(&v17);
    std::promise<telephonytransport::TransactionResponse>::get_future(a3, v11[5]);
    std::mutex::unlock(this);
  }
}

void std::promise<telephonytransport::TransactionResponse>::get_future(void *a1, uint64_t a2)
{
  if (!a2)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  *a1 = a2;
  std::mutex::lock((a2 + 24));
  v3 = *(a2 + 136);
  if ((v3 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a2 + 8), 1uLL, memory_order_relaxed);
  *(a2 + 136) = v3 | 2;

  std::mutex::unlock((a2 + 24));
}

uint64_t telephonytransport::TransactionManager::fulfilPromise(uint64_t a1, unint64_t a2, int a3, __int128 *a4)
{
  std::mutex::lock(a1);
  v8 = *(a1 + 72);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 72;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 72 && *(v9 + 32) <= a2)
  {
    LODWORD(v15) = a3;
    v16 = *a4;
    *a4 = 0;
    *(a4 + 1) = 0;
    std::promise<telephonytransport::TransactionResponse>::set_value((v9 + 40), &v15);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    v15 = a2;
    std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::__erase_unique<unsigned long long>((a1 + 64), &v15);
    v13 = 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  std::mutex::unlock(a1);
  return v13;
}

void std::promise<telephonytransport::TransactionResponse>::set_value(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<telephonytransport::TransactionResponse>::set_value<telephonytransport::TransactionResponse>(v3, a2);
}

void telephonytransport::TransactionManager::remove(telephonytransport::TransactionManager *this, unint64_t a2)
{
  std::mutex::lock(this);
  v4 = a2;
  std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::__erase_unique<unsigned long long>(this + 8, &v4);
  std::mutex::unlock(this);
}

void std::__assoc_state<telephonytransport::TransactionResponse>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t std::__assoc_state<telephonytransport::TransactionResponse>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

uint64_t *std::promise<telephonytransport::TransactionResponse>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C27FE20](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C27FE30](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x29EDC9548] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2A1C6FB70](v3);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C27FE20](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void std::__assoc_state<telephonytransport::TransactionResponse>::set_value<telephonytransport::TransactionResponse>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  v5 = *(a2 + 16);
  *(a1 + 152) = *(a2 + 8);
  *(a1 + 160) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::__erase_unique<unsigned long long>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::__remove_node_pointer(a1, v4);
  std::promise<telephonytransport::TransactionResponse>::~promise(v4 + 5);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void telephonytransport::NetworkSocketForwarder::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, NSObject **a3@<X2>, char *a4@<X3>, std::__shared_weak_count_vtbl **a5@<X8>)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0;
  v34 = 0;
  v9 = a2[1];
  v30 = *a2;
  v31 = v9;
  object = 0;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  telephonytransport::TCPSocketStream::create(&v33, &object, &v30, 1, a4, &v35);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v10 = v34;
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  v11 = v35;
  if (v35)
  {
    v12 = operator new(0x28uLL);
    v12->~__shared_weak_count = &unk_2A1E9CB20;
    v12->~__shared_weak_count_0 = v11;
    v13 = v36;
    v35 = 0;
    v36 = 0;
    v12->__get_deleter = 0;
    v12->__on_zero_shared_weak = 0;
    v12->__on_zero_shared = v13;
    v14 = operator new(0x20uLL);
    v14->__shared_weak_owners_ = 0;
    v14->__vftable = &unk_2A1E9CB60;
    v14->__shared_owners_ = 0;
    v14[1].__vftable = v12;
    memset(buf, 170, 16);
    v27 = v12;
    v28 = v14;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = *a3;
    v26 = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    v16 = a1[1];
    v24 = *a1;
    v25 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    telephonytransport::TCPSocketStream::create(&v27, &v26, &v24, 0, a4, buf);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v26)
    {
      dispatch_release(v26);
    }

    v17 = v28;
    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    v18 = *buf;
    if (*buf)
    {
      v19 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      on_zero_shared_weak = v12->__on_zero_shared_weak;
      v12->__get_deleter = v18;
      v12->__on_zero_shared_weak = v19;
      if (on_zero_shared_weak)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](on_zero_shared_weak);
      }

      *a5 = v12;
      a5[1] = v14;
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v22 = *telephonytransport::getDefaultOSLogHandle(v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 0;
        _os_log_error_impl(&dword_29808D000, v22, OS_LOG_TYPE_ERROR, "Failed to create source transport", &v23, 2u);
      }

      *a5 = 0;
      a5[1] = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  else
  {
    v21 = *telephonytransport::getDefaultOSLogHandle(v10);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29808D000, v21, OS_LOG_TYPE_ERROR, "Failed to create destination transport", buf, 2u);
    }

    *a5 = 0;
    a5[1] = 0;
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }
}

void sub_298090AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t a20)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  v23 = *(v21 - 56);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void telephonytransport::NetworkSocketForwarder::~NetworkSocketForwarder(telephonytransport::NetworkSocketForwarder *this)
{
  *this = &unk_2A1E9CB20;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2A1E9CB20;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<telephonytransport::NetworkSocketForwarder *,std::shared_ptr<telephonytransport::NetworkSocketForwarder>::__shared_ptr_default_delete<telephonytransport::NetworkSocketForwarder,telephonytransport::NetworkSocketForwarder>,std::allocator<telephonytransport::NetworkSocketForwarder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::NetworkSocketForwarder *,std::shared_ptr<telephonytransport::NetworkSocketForwarder>::__shared_ptr_default_delete<telephonytransport::NetworkSocketForwarder,telephonytransport::NetworkSocketForwarder>,std::allocator<telephonytransport::NetworkSocketForwarder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::NetworkSocketForwarder *,std::shared_ptr<telephonytransport::NetworkSocketForwarder>::__shared_ptr_default_delete<telephonytransport::NetworkSocketForwarder,telephonytransport::NetworkSocketForwarder>,std::allocator<telephonytransport::NetworkSocketForwarder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::RawIPIfaceToSocketForwarder::create(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject **a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  telephonytransport::BaseProtocol::create(&v29, &v28, a2, 1, a4, &v31);
  if (v28)
  {
    dispatch_release(v28);
  }

  v9 = v30;
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  v10 = v31;
  if (v31)
  {
    v11 = operator new(0x28uLL);
    *v11 = &unk_2A1E9CBD8;
    v11[1] = v10;
    v12 = v32;
    v31 = 0;
    v32 = 0;
    v11[3] = 0;
    v11[4] = 0;
    v11[2] = v12;
    v13 = operator new(0x20uLL);
    v13->__shared_weak_owners_ = 0;
    v13->__vftable = &unk_2A1E9CC18;
    v13->__shared_owners_ = 0;
    v13[1].__vftable = v11;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v11;
    v26 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = *a3;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *a1, *(a1 + 8));
    }

    else
    {
      v19 = *a1;
    }

    v20 = 12;
    v22 = 9;
    strcpy(__p, "ip or ip6");
    v23 = 0x100000000;
    telephonytransport::NetworkIface::create(&v25, &object, &v19, a4, &v27);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }

    v16 = v27;
    v27 = 0uLL;
    v17 = v11[4];
    *(v11 + 3) = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      v18 = *(&v27 + 1);
      *a5 = v11;
      a5[1] = v13;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    else
    {
      *a5 = v11;
      a5[1] = v13;
    }
  }

  else
  {
    v15 = *telephonytransport::getDefaultOSLogHandle(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_29808D000, v15, OS_LOG_TYPE_ERROR, "Failed to create destination write only protocol", &v19, 2u);
    }

    *a5 = 0;
    a5[1] = 0;
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_298090F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v21)
  {
    dispatch_release(v21);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

__n128 telephonytransport::RawIPIfaceToSocketForwarder::RawIPIfaceToSocketForwarder(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2A1E9CBD8;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

{
  *a1 = &unk_2A1E9CBD8;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t telephonytransport::RawIPIfaceToSocketForwarder::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

void telephonytransport::RawIPIfaceToSocketForwarder::~RawIPIfaceToSocketForwarder(telephonytransport::RawIPIfaceToSocketForwarder *this)
{
  *this = &unk_2A1E9CBD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2A1E9CBD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(this);
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

void telephonytransport::NetworkIfaceParams::~NetworkIfaceParams(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_pointer<telephonytransport::RawIPIfaceToSocketForwarder *,std::shared_ptr<telephonytransport::RawIPIfaceToSocketForwarder>::__shared_ptr_default_delete<telephonytransport::RawIPIfaceToSocketForwarder,telephonytransport::RawIPIfaceToSocketForwarder>,std::allocator<telephonytransport::RawIPIfaceToSocketForwarder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::RawIPIfaceToSocketForwarder *,std::shared_ptr<telephonytransport::RawIPIfaceToSocketForwarder>::__shared_ptr_default_delete<telephonytransport::RawIPIfaceToSocketForwarder,telephonytransport::RawIPIfaceToSocketForwarder>,std::allocator<telephonytransport::RawIPIfaceToSocketForwarder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::RawIPIfaceToSocketForwarder *,std::shared_ptr<telephonytransport::RawIPIfaceToSocketForwarder>::__shared_ptr_default_delete<telephonytransport::RawIPIfaceToSocketForwarder,telephonytransport::RawIPIfaceToSocketForwarder>,std::allocator<telephonytransport::RawIPIfaceToSocketForwarder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::SocketToEthernetIfaceForwarder::create(uint64_t *a1@<X0>, uint64_t a2@<X1>, NSObject **a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
  }

  else
  {
    v29 = *a2;
  }

  v30 = 1;
  __p = 0;
  v32 = 0u;
  v33 = 1;
  telephonytransport::NetworkIface::create(&v35, &v34, &v29, a5, &v37);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    dispatch_release(v34);
  }

  v11 = v36;
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  v12 = v37;
  if (v37)
  {
    v13 = operator new(0x618uLL);
    *v13 = &unk_2A1E9CC90;
    *(v13 + 1) = v12;
    v14 = v38;
    v37 = 0;
    v38 = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    *(v13 + 2) = v14;
    *(v13 + 10) = *(a4 + 6);
    *(v13 + 22) = *(a4 + 10);
    *(v13 + 46) = *a4;
    *(v13 + 25) = *(a4 + 4);
    v15 = operator new(0x20uLL);
    v15->__shared_weak_owners_ = 0;
    v15->__vftable = &unk_2A1E9CCD0;
    v15->__shared_owners_ = 0;
    v15[1].__vftable = v13;
    v29.__r_.__value_.__l.__size_ = v15;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    v25 = v13;
    v26 = v15;
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16 = *a3;
    object = v16;
    if (v16)
    {
      dispatch_retain(v16);
    }

    telephonytransport::BaseProtocol::create(&v25, &object, a1, 0, a5, &v27);
    if (object)
    {
      dispatch_release(object);
    }

    v17 = v26;
    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }

    v18 = v27;
    if (v27)
    {
      v19 = v28;
      v27 = 0;
      v28 = 0;
      v20 = *(v13 + 4);
      *(v13 + 3) = v18;
      *(v13 + 4) = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      a6->__r_.__value_.__r.__words[0] = v13;
      a6->__r_.__value_.__l.__size_ = v15;
      a6 = &v29;
    }

    else
    {
      v22 = *telephonytransport::getDefaultOSLogHandle(v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&dword_29808D000, v22, OS_LOG_TYPE_ERROR, "Failed to create source read only protocol", v23, 2u);
      }
    }

    a6->__r_.__value_.__r.__words[0] = 0;
    a6->__r_.__value_.__l.__size_ = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v29.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v21 = *telephonytransport::getDefaultOSLogHandle(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_29808D000, v21, OS_LOG_TYPE_ERROR, "Failed to create destination write only transport", &v29, 2u);
    }

    a6->__r_.__value_.__r.__words[0] = 0;
    a6->__r_.__value_.__l.__size_ = 0;
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }
}

void sub_298091578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  v18 = *(v16 - 72);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

__n128 telephonytransport::SocketToEthernetIfaceForwarder::SocketToEthernetIfaceForwarder(uint64_t a1, __n128 *a2, int *a3)
{
  *a1 = &unk_2A1E9CC90;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a3 + 6);
  *(a1 + 44) = *(a3 + 5);
  *(a1 + 40) = v4;
  v5 = *a3;
  *(a1 + 50) = *(a3 + 2);
  *(a1 + 46) = v5;
  return result;
}

{
  *a1 = &unk_2A1E9CC90;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a3 + 6);
  *(a1 + 44) = *(a3 + 5);
  *(a1 + 40) = v4;
  v5 = *a3;
  *(a1 + 50) = *(a3 + 2);
  *(a1 + 46) = v5;
  return result;
}

uint64_t telephonytransport::SocketToEthernetIfaceForwarder::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

uint64_t telephonytransport::SocketToEthernetIfaceForwarder::handleMessage(_BOOL8 this, int a2, unsigned __int8 *a3, size_t __n)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a2 == 1)
  {
    goto LABEL_6;
  }

  v4 = *telephonytransport::getDefaultOSLogHandle(this);
  this = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
  if (this)
  {
    *buf = 0;
    v5 = "Only kPDPIP message type is supported here";
    v6 = v4;
    v7 = 2;
LABEL_4:
    _os_log_fault_impl(&dword_29808D000, v6, OS_LOG_TYPE_FAULT, v5, buf, v7);
    goto LABEL_5;
  }

  while (1)
  {
LABEL_5:
    while (1)
    {
      __break(1u);
LABEL_6:
      v8 = __n;
      if (__n + 14 < 0x5EF)
      {
        break;
      }

      v9 = *telephonytransport::getDefaultOSLogHandle(this);
      this = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      if (this)
      {
        *buf = 134217984;
        v20 = v8;
        v5 = "Cannot handle packet of length: %lu";
        v6 = v9;
        v7 = 12;
        goto LABEL_4;
      }
    }

    __src = a3;
    v10 = this;
    v11 = *a3 >> 4;
    if (v11 == 4)
    {
      break;
    }

    if (v11 == 6)
    {
      v12 = -8826;
      goto LABEL_13;
    }

    v16 = *telephonytransport::getDefaultOSLogHandle(this);
    this = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
    if (this)
    {
      v17 = *__src >> 4;
      *buf = 67109120;
      LODWORD(v20) = v17;
      v5 = "IP header version: %u is invalid";
      v6 = v16;
      v7 = 8;
      goto LABEL_4;
    }
  }

  v12 = 8;
LABEL_13:
  *(this + 52) = v12;
  memcpy((this + 54), a3, __n);
  v13 = ***(v10 + 8);
  v14 = *MEMORY[0x29EDCA608];

  return v13();
}

void telephonytransport::SocketToEthernetIfaceForwarder::~SocketToEthernetIfaceForwarder(telephonytransport::SocketToEthernetIfaceForwarder *this)
{
  *this = &unk_2A1E9CC90;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2A1E9CC90;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<telephonytransport::SocketToEthernetIfaceForwarder *,std::shared_ptr<telephonytransport::SocketToEthernetIfaceForwarder>::__shared_ptr_default_delete<telephonytransport::SocketToEthernetIfaceForwarder,telephonytransport::SocketToEthernetIfaceForwarder>,std::allocator<telephonytransport::SocketToEthernetIfaceForwarder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::SocketToEthernetIfaceForwarder *,std::shared_ptr<telephonytransport::SocketToEthernetIfaceForwarder>::__shared_ptr_default_delete<telephonytransport::SocketToEthernetIfaceForwarder,telephonytransport::SocketToEthernetIfaceForwarder>,std::allocator<telephonytransport::SocketToEthernetIfaceForwarder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::SocketToEthernetIfaceForwarder *,std::shared_ptr<telephonytransport::SocketToEthernetIfaceForwarder>::__shared_ptr_default_delete<telephonytransport::SocketToEthernetIfaceForwarder,telephonytransport::SocketToEthernetIfaceForwarder>,std::allocator<telephonytransport::SocketToEthernetIfaceForwarder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *telephonytransport::NetworkSocket::created@<X0>(void *this@<X0>, void *a2@<X8>)
{
  if (this == -1)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = this;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v4 = operator new(0x18uLL);
    telephonytransport::OSLogHandle::create("networksocket", "", v4);
    v4[4] = v3;
    this = std::shared_ptr<telephonytransport::NetworkSocket>::shared_ptr[abi:ne200100]<telephonytransport::NetworkSocket,0>(&v5, v4);
    *a2 = v5;
  }

  return this;
}

telephonytransport::NetworkSocket *telephonytransport::NetworkSocket::NetworkSocket(telephonytransport::NetworkSocket *this, int a2)
{
  telephonytransport::OSLogHandle::create("networksocket", "", this);
  *(this + 4) = a2;
  return this;
}

{
  telephonytransport::OSLogHandle::create("networksocket", "", this);
  *(this + 4) = a2;
  return this;
}

void telephonytransport::NetworkSocket::~NetworkSocket(telephonytransport::NetworkSocket *this)
{
  close(*(this + 4));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

BOOL telephonytransport::NetworkSocket::setNonBlockingAndNoSigpipe(telephonytransport::NetworkSocket *this)
{
  if (fcntl(*(this + 4), 4, 4) == -1)
  {
    v8 = *this;
    v7 = *(this + 1);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29808D000, v9, OS_LOG_TYPE_ERROR, "Warning: Unable to mark socket as non blocking", buf, 2u);
    }

    return 0;
  }

  else
  {
    v12 = 1;
    v2 = setsockopt(*(this + 4), 0xFFFF, 4130, &v12, 4u);
    v3 = v2 != -1;
    if (v2 == -1)
    {
      v5 = *this;
      v4 = *(this + 1);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Unable to set SO_NOSIGPIPE option", v11, 2u);
      }
    }
  }

  return v3;
}

BOOL telephonytransport::NetworkSocket::enablePortReuse(telephonytransport::NetworkSocket *this)
{
  v8 = 1;
  v2 = setsockopt(*(this + 4), 0xFFFF, 512, &v8, 4u);
  if (v2 == -1)
  {
    v4 = *this;
    v3 = *(this + 1);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_29808D000, v5, OS_LOG_TYPE_ERROR, "Failed to enable port reuse", v7, 2u);
    }
  }

  return v2 != -1;
}

BOOL telephonytransport::NetworkSocket::bindToInterface(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((a2[23] & 0x80000000) == 0)
  {
    if (a2[23])
    {
      v4 = a2;
      goto LABEL_6;
    }

LABEL_18:
    result = 0;
    goto LABEL_22;
  }

  if (!*(a2 + 1))
  {
    goto LABEL_18;
  }

  v4 = *a2;
LABEL_6:
  v15 = if_nametoindex(v4);
  if (!v15)
  {
    v9 = *a1;
    v8 = *(a1 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (a2[23] >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 136315138;
      v17 = v14;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Unable to find index for interface: %s", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (!setsockopt(*(a1 + 16), 0, 25, &v15, 4u))
  {
LABEL_21:
    result = 1;
    goto LABEL_22;
  }

  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    if (a2[23] >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 136315138;
    v17 = v12;
    _os_log_error_impl(&dword_29808D000, v7, OS_LOG_TYPE_ERROR, "Unable to bind to interface: %s", buf, 0xCu);
    goto LABEL_18;
  }

LABEL_22:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::shared_ptr<telephonytransport::NetworkSocket>::shared_ptr[abi:ne200100]<telephonytransport::NetworkSocket,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1E9CD48;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_298091F8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    telephonytransport::NetworkSocket::~NetworkSocket(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<telephonytransport::NetworkSocket *,std::shared_ptr<telephonytransport::NetworkSocket>::__shared_ptr_default_delete<telephonytransport::NetworkSocket,telephonytransport::NetworkSocket>,std::allocator<telephonytransport::NetworkSocket>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<telephonytransport::NetworkSocket *,std::shared_ptr<telephonytransport::NetworkSocket>::__shared_ptr_default_delete<telephonytransport::NetworkSocket,telephonytransport::NetworkSocket>,std::allocator<telephonytransport::NetworkSocket>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    telephonytransport::NetworkSocket::~NetworkSocket(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<telephonytransport::NetworkSocket *,std::shared_ptr<telephonytransport::NetworkSocket>::__shared_ptr_default_delete<telephonytransport::NetworkSocket,telephonytransport::NetworkSocket>,std::allocator<telephonytransport::NetworkSocket>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::TCPClientSocketFactoryNetwork::create(uint64_t a1@<X0>, uint64_t a2@<X1>, telephonytransport::TCPClientSocketFactoryNetwork **a3@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x58uLL);
  telephonytransport::OSLogHandle::create("tcpclientsocketfactory", "network", v6 + 1);
  *v6 = &unk_2A1E9CDC0;
  *(v6 + 24) = *a1;
  *(v6 + 5) = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(v6 + 3) = *a2;
  *(v6 + 8) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::shared_ptr<telephonytransport::TCPClientSocketFactoryNetwork>::shared_ptr[abi:ne200100]<telephonytransport::TCPClientSocketFactoryNetwork,0>(&v8, v6);
  if (telephonytransport::TCPClientSocketFactoryNetwork::init(v8))
  {
    v7 = v9;
    *a3 = v8;
    a3[1] = v7;
    if (!v7)
    {
      return;
    }

    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_29809213C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t telephonytransport::TCPClientSocketFactoryNetwork::TCPClientSocketFactoryNetwork(uint64_t a1, __int128 *a2, __int128 *a3)
{
  telephonytransport::OSLogHandle::create("tcpclientsocketfactory", "network", (a1 + 8));
  *a1 = &unk_2A1E9CDC0;
  v6 = *a2;
  *(a1 + 40) = *(a2 + 2);
  *(a1 + 24) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = *a3;
  *(a1 + 64) = *(a3 + 2);
  *(a1 + 48) = v7;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  return a1;
}

{
  telephonytransport::OSLogHandle::create("tcpclientsocketfactory", "network", (a1 + 8));
  *a1 = &unk_2A1E9CDC0;
  v6 = *a2;
  *(a1 + 40) = *(a2 + 2);
  *(a1 + 24) = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = *a3;
  *(a1 + 64) = *(a3 + 2);
  *(a1 + 48) = v7;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  return a1;
}

BOOL telephonytransport::TCPClientSocketFactoryNetwork::init(telephonytransport::TCPClientSocketFactoryNetwork *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 36) = 528;
  v2 = (this + 24);
  v3 = this + 24;
  if (*(this + 47) < 0)
  {
    v3 = *v2;
  }

  v4 = inet_pton(2, v3, this + 76);
  if (v4 != 1)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 47) < 0)
      {
        v2 = *v2;
      }

      v10 = 136315138;
      v11 = v2;
      _os_log_error_impl(&dword_29808D000, v7, OS_LOG_TYPE_ERROR, "Invalid address: %s", &v10, 0xCu);
    }
  }

  result = v4 == 1;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void telephonytransport::TCPClientSocketFactoryNetwork::connectTo(telephonytransport::TCPClientSocketFactoryNetwork *this@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  *(this + 37) = bswap32(a2) >> 16;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v6 = socket(2, 1, 0);
  telephonytransport::NetworkSocket::created(v6, &v22);
  v7 = v22;
  if (!v22)
  {
    v9 = *(this + 1);
    v8 = *(this + 2);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Failed to create socket", buf, 2u);
    }

    v14 = v23;
    *a3 = 0;
LABEL_18:
    a3[1] = v14;
    a3 = &v22;
    goto LABEL_26;
  }

  if ((*(this + 71) & 0x8000000000000000) != 0)
  {
    if (!*(this + 7))
    {
      goto LABEL_9;
    }
  }

  else if (!*(this + 71))
  {
    goto LABEL_9;
  }

  if (!telephonytransport::NetworkSocket::bindToInterface(v22, this + 48))
  {
    goto LABEL_26;
  }

LABEL_9:
  if (!connect(v7[4], (this + 72), 0x10u))
  {
    if (!telephonytransport::NetworkSocket::setNonBlockingAndNoSigpipe(v7))
    {
      goto LABEL_26;
    }

    v14 = v23;
    *a3 = v7;
    goto LABEL_18;
  }

  v12 = *(this + 1);
  v11 = *(this + 2);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = *v12;
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  else
  {
    v13 = *v12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v19 = this + 24;
    if (*(this + 47) < 0)
    {
      v19 = *v19;
    }

    *buf = 136315394;
    v25 = v19;
    v26 = 1024;
    v27 = a2;
    _os_log_error_impl(&dword_29808D000, v13, OS_LOG_TYPE_ERROR, "Failed to connect to: %s:%u", buf, 0x12u);
  }

  v16 = *(this + 1);
  v15 = *(this + 2);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *v16;
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  else
  {
    v17 = *v16;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = __error();
    v21 = strerror(*v20);
    *buf = 136315138;
    v25 = v21;
    _os_log_error_impl(&dword_29808D000, v17, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

LABEL_26:
  *a3 = 0;
  a3[1] = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_298092618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void telephonytransport::TCPClientSocketFactoryNetwork::~TCPClientSocketFactoryNetwork(void **this)
{
  *this = &unk_2A1E9CDC0;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_2A1E9CDC0;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(this);
}

void *std::shared_ptr<telephonytransport::TCPClientSocketFactoryNetwork>::shared_ptr[abi:ne200100]<telephonytransport::TCPClientSocketFactoryNetwork,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1E9CE20;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29809277C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<telephonytransport::TCPClientSocketFactoryNetwork *,std::shared_ptr<telephonytransport::TCPClientSocketFactoryNetwork>::__shared_ptr_default_delete<telephonytransport::TCPClientSocketFactoryNetwork,telephonytransport::TCPClientSocketFactoryNetwork>,std::allocator<telephonytransport::TCPClientSocketFactoryNetwork>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::TCPClientSocketFactoryNetwork *,std::shared_ptr<telephonytransport::TCPClientSocketFactoryNetwork>::__shared_ptr_default_delete<telephonytransport::TCPClientSocketFactoryNetwork,telephonytransport::TCPClientSocketFactoryNetwork>,std::allocator<telephonytransport::TCPClientSocketFactoryNetwork>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::TCPClientSocketFactoryNetwork *,std::shared_ptr<telephonytransport::TCPClientSocketFactoryNetwork>::__shared_ptr_default_delete<telephonytransport::TCPClientSocketFactoryNetwork,telephonytransport::TCPClientSocketFactoryNetwork>,std::allocator<telephonytransport::TCPClientSocketFactoryNetwork>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::PCIServiceTransport::create(uint64_t a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, std::__shared_weak_count_vtbl **a5@<X8>)
{
  v10 = operator new(0x50uLL);
  telephonytransport::PCIServiceTransport::PCIServiceTransport(v10, a1, a4);
  v11 = operator new(0x20uLL);
  v11->__vftable = &unk_2A1E9CFB8;
  v11->__shared_owners_ = 0;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v10;
  on_zero_shared = v10->__on_zero_shared;
  if (on_zero_shared)
  {
    if (on_zero_shared->__shared_owners_ != -1)
    {
      goto LABEL_6;
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10->~__shared_weak_count_0 = v10;
    v10->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
  }

  else
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10->~__shared_weak_count_0 = v10;
    v10->__on_zero_shared = v11;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_6:
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v21 = v10;
  v22 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = *a2;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  telephonytransport::BaseProtocol::create(&v21, &object, a3, 2, a4, &v23);
  if (object)
  {
    dispatch_release(object);
  }

  v14 = v22;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v15 = v23;
  if (v23)
  {
    v16 = v24;
    v23 = 0;
    v24 = 0;
    on_zero_shared_weak = v10[1].__on_zero_shared_weak;
    v10[1].__get_deleter = v15;
    v10[1].__on_zero_shared_weak = v16;
    if (on_zero_shared_weak)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](on_zero_shared_weak);
    }

    *a5 = v10;
    a5[1] = v11;
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v18 = *telephonytransport::getDefaultOSLogHandle(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 0;
      _os_log_impl(&dword_29808D000, v18, OS_LOG_TYPE_INFO, "Failed to create base protocol", &v19, 2u);
    }

    *a5 = 0;
    a5[1] = 0;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
}

void sub_298092A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::PCIServiceTransport::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 72);
  *(a1 + 64) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

uint64_t telephonytransport::PCIServiceTransport::PCIServiceTransport(uint64_t a1, uint64_t a2, char *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  telephonytransport::OSLogHandle::create("pciservicetransport", a3, (a1 + 24));
  *a1 = &unk_2A1E9CE98;
  v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x29EDCA580], QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 40) = dispatch_queue_create("PCIServiceTransport", v5);
  *(a1 + 48) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_298092B74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void telephonytransport::PCIServiceTransport::executeAsync(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  v13 = v5;
  v7 = (a2 + 24);
  v6 = *(a2 + 24);
  if (!v6)
  {
    v7 = &v13 + 1;
    goto LABEL_7;
  }

  if (v6 != a2)
  {
    *(&v13 + 1) = *(a2 + 24);
LABEL_7:
    *v7 = 0;
    goto LABEL_9;
  }

  *(&v13 + 1) = &v12;
  (*(*v6 + 24))(v6, &v12);
LABEL_9:
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN18telephonytransport19PCIServiceTransport12executeAsyncEONSt3__18functionIFvvEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_2;
  v9[4] = v4;
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v11, &v12);
  dispatch_async(*(a1 + 40), v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v12);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_298092CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18telephonytransport19PCIServiceTransport12executeAsyncEONSt3__18functionIFvvEEE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        v5 = a1[9];
        if (!v5)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v5 + 48))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_e8_32c66_ZTSNSt3__18weak_ptrIN18telephonytransport19PCIServiceTransportEEE48c27_ZTSNSt3__18functionIFvvEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 48, a2 + 48);
}

void sub_298092E1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__18weak_ptrIN18telephonytransport19PCIServiceTransportEEE48c27_ZTSNSt3__18functionIFvvEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(void *a1, uint64_t *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = a1[7];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[6];
      if (v7)
      {
        v9 = a1[1];
        v8 = a1[2];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
          v10 = a1[2];
          v23 = a1[1];
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v10 = 0;
          v23 = a1[1];
        }

        v24 = -1431655766;
        v21 = *(*a2 + 36);
        v22 = *(*a2 + 32);
        v11 = *(*a2 + 24);
        v20 = *(*a2 + 28);
        v13 = *(*a2 + 16);
        v12 = *(*a2 + 20);
        v14 = operator new(0x20uLL);
        *v14 = &unk_2A1E9D030;
        v14[1] = a1;
        v14[2] = v9;
        v14[3] = v8;
        v30 = v14;
        v15 = operator new(0x20uLL);
        *v15 = &unk_2A1E9D0B0;
        v15[1] = a1;
        v15[2] = v23;
        v15[3] = v10;
        v26 = v15;
        v16 = (*(*v7 + 16))(v7, v22, v12, v11, v21, v20, v13, &v27, v25, &v24);
        std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](v25);
        std::__function::__value_func<void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__value_func[abi:ne200100](&v27);
        if (v16)
        {
          v29 = 2863311530;
          v27 = &unk_2A1E9E8C0;
          v28 = 0;
          v30 = 0xAAAAAAAA00000000;
          v17 = *(*a2 + 8);
          *(*a2 + 8) = 0;
          v18 = v28;
          v28 = v17;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }

          LOBYTE(v30) = v30 | 3;
          v29 = v24;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCICreateResponse>(a1, &v27);
          telephonytransport::PCICreateResponse::~PCICreateResponse(&v27);
        }

        else
        {
          telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCICreateRequest>(a1, *a2);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCICreateRequest>(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  v3[0] = &unk_2A1E9E8C0;
  v3[1] = v2;
  *(&v4 + 4) = 0x200000001;
  telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCICreateResponse>(a1, v3);
  telephonytransport::PCICreateResponse::~PCICreateResponse(v3);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCICreateResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 2u, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kCreateResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 1) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCIFreeRequest>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      if (v7)
      {
        if ((*(*v7 + 24))(v7, *(*(*a2 + 8) + 16)))
        {
          v13 = 0;
          v14 = 0;
          v8 = *(*a2 + 8);
          *(*a2 + 8) = 0;
          v9 = v13;
          v12 = &unk_2A1E9E930;
          v13 = v8;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          BYTE4(v14) |= 1u;
          LODWORD(v14) = 0;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIFreeResponse>(a1, &v12);
        }

        else
        {
          v10 = *a2;
          v14 = 0x100000001;
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          v12 = &unk_2A1E9E930;
          v13 = v11;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIFreeResponse>(a1, &v12);
        }

        telephonytransport::PCIFreeResponse::~PCIFreeResponse(&v12);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_298093444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  telephonytransport::PCIFreeResponse::~PCIFreeResponse(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIFreeResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 0xAu, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kFreeResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 1) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCIReadRequest>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      if (!v7)
      {
LABEL_14:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }

      memset(__p, 170, sizeof(__p));
      std::vector<unsigned char>::vector[abi:ne200100](__p, *(*a2 + 16));
      v16 = 0;
      if (((*(*v7 + 32))(v7, *(*(*a2 + 8) + 16), *(*a2 + 16), *(*a2 + 20), __p[0], &v16) & 1) == 0)
      {
        telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCIReadRequest>(a1, *a2);
        goto LABEL_12;
      }

      v12 = &unk_2A1E9E850;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = *(*a2 + 8);
      *(*a2 + 8) = 0;
      v9 = v14;
      v14 = v8;
      if (v9)
      {
        (*(*v9 + 8))(v9);
        v10 = v13;
        BYTE4(v15) |= 1u;
        LODWORD(v15) = 0;
        if (v13)
        {
LABEL_11:
          PB::Data::assign(v10, __p[0], __p[0] + v16);
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIReadResponse>(a1, &v12);
          telephonytransport::PCIReadResponse::~PCIReadResponse(&v12);
LABEL_12:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_14;
        }
      }

      else
      {
        BYTE4(v15) |= 1u;
        LODWORD(v15) = 0;
      }

      v11 = operator new(0x10uLL);
      *v11 = 0;
      v11[1] = 0;
      std::unique_ptr<PB::Data>::reset[abi:ne200100](&v13, v11);
      v10 = v13;
      goto LABEL_11;
    }
  }
}

void telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCIReadRequest>(uint64_t a1, uint64_t a2)
{
  v3[0] = &unk_2A1E9E850;
  v3[1] = 0;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  v3[2] = v2;
  v3[3] = 0x100000001;
  telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIReadResponse>(a1, v3);
  telephonytransport::PCIReadResponse::~PCIReadResponse(v3);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIReadResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 4u, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kReadResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 2) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCIWriteRequest>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      if (v7)
      {
        v14 = 0xAAAAAAAAAAAAAAAALL;
        if ((*(*v7 + 48))(v7, *(*(*a2 + 16) + 16), **(*a2 + 8), *(*(*a2 + 8) + 8), *(*a2 + 24), &v14))
        {
          v12 = 0xAAAAAAAAAAAAAAAALL;
          v13 = 0xAAAAAAAAAAAAAAAALL;
          v8 = *a2;
          HIDWORD(v12) = 0;
          LODWORD(v13) = 0;
          v9 = v14;
          v10 = *(v8 + 16);
          *(v8 + 16) = 0;
          v11[0] = &unk_2A1E9EA10;
          v11[1] = v10;
          LOBYTE(v13) = v13 | 3;
          LODWORD(v12) = v9;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIWriteResponse>(a1, v11);
          telephonytransport::PCIWriteResponse::~PCIWriteResponse(v11);
        }

        else
        {
          telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCIWriteRequest>(a1, *a2);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_298093A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  telephonytransport::PCIWriteResponse::~PCIWriteResponse(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCIWriteRequest>(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  v3[0] = &unk_2A1E9EA10;
  v3[1] = v2;
  *(&v4 + 4) = 0x200000001;
  telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIWriteResponse>(a1, v3);
  telephonytransport::PCIWriteResponse::~PCIWriteResponse(v3);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIWriteResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 8u, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kWriteResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 1) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCISendImageRequest>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      if (v7)
      {
        v13 = 0xAAAAAAAAAAAAAAAALL;
        v12 = -1431655766;
        if ((*(*v7 + 56))(v7, *(*(*a2 + 16) + 16), **(*a2 + 8), *(*(*a2 + 8) + 8), *(*a2 + 24), &v13, &v12))
        {
          v10 = 0xAAAAAAAAAAAAAAAALL;
          v11 = 0;
          v8 = *(*a2 + 16);
          *(*a2 + 16) = 0;
          v9[0] = &unk_2A1E9E658;
          v9[1] = v8;
          BYTE4(v11) |= 7u;
          v10 = __PAIR64__(v12, v13);
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCISendImageResponse>(a1, v9);
          telephonytransport::PCISendImageResponse::~PCISendImageResponse(v9);
        }

        else
        {
          telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCISendImageRequest>(a1, *a2);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_298093D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  telephonytransport::PCISendImageResponse::~PCISendImageResponse(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCISendImageRequest>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  v3[0] = &unk_2A1E9E658;
  v3[1] = v2;
  v3[2] = 0xAAAAAAAAAAAAAAAALL;
  v3[3] = 0x400000001;
  telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCISendImageResponse>(a1, v3);
  telephonytransport::PCISendImageResponse::~PCISendImageResponse(v3);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCISendImageResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 0xCu, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 1) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCIReadRegisterRequest>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      if (!v7)
      {
LABEL_14:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }

      memset(__p, 170, sizeof(__p));
      std::vector<unsigned char>::vector[abi:ne200100](__p, *(*a2 + 16));
      v16 = 0;
      if (((*(*v7 + 40))(v7, *(*(*a2 + 8) + 16), *(*a2 + 24), *(*a2 + 16), *(*a2 + 20), __p[0], &v16) & 1) == 0)
      {
        telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCIReadRegisterRequest>(a1, *a2);
        goto LABEL_12;
      }

      v12 = &unk_2A1E9E6C8;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v8 = *(*a2 + 8);
      *(*a2 + 8) = 0;
      v9 = v14;
      v14 = v8;
      if (v9)
      {
        (*(*v9 + 8))(v9);
        v10 = v13;
        BYTE4(v15) |= 1u;
        LODWORD(v15) = 0;
        if (v13)
        {
LABEL_11:
          PB::Data::assign(v10, __p[0], __p[0] + v16);
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIReadRegisterResponse>(a1, &v12);
          telephonytransport::PCIReadRegisterResponse::~PCIReadRegisterResponse(&v12);
LABEL_12:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_14;
        }
      }

      else
      {
        BYTE4(v15) |= 1u;
        LODWORD(v15) = 0;
      }

      v11 = operator new(0x10uLL);
      *v11 = 0;
      v11[1] = 0;
      std::unique_ptr<PB::Data>::reset[abi:ne200100](&v13, v11);
      v10 = v13;
      goto LABEL_11;
    }
  }
}

void telephonytransport::PCIServiceTransport::sendFailureResponseOnConcurrentQueue<telephonytransport::PCIReadRegisterRequest>(uint64_t a1, uint64_t a2)
{
  v3[0] = &unk_2A1E9E6C8;
  v3[1] = 0;
  v2 = *(a2 + 8);
  *(a2 + 8) = 0;
  v3[2] = v2;
  v3[3] = 0x100000001;
  telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIReadRegisterResponse>(a1, v3);
  telephonytransport::PCIReadRegisterResponse::~PCIReadRegisterResponse(v3);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIReadRegisterResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 0xEu, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 2) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCIUnblockReadRequest>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      if (v7)
      {
        if ((*(*v7 + 64))(v7, *(*(*a2 + 8) + 16)))
        {
          v13 = 0;
          v14 = 0;
          v8 = *(*a2 + 8);
          *(*a2 + 8) = 0;
          v9 = v13;
          v12 = &unk_2A1E9E690;
          v13 = v8;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          BYTE4(v14) |= 1u;
          LODWORD(v14) = 0;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIUnblockReadResponse>(a1, &v12);
        }

        else
        {
          v10 = *a2;
          v14 = 0x100000001;
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          v12 = &unk_2A1E9E690;
          v13 = v11;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIUnblockReadResponse>(a1, &v12);
        }

        telephonytransport::PCIUnblockReadResponse::~PCIUnblockReadResponse(&v12);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_2980943D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  telephonytransport::PCIUnblockReadResponse::~PCIUnblockReadResponse(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIUnblockReadResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 0x10u, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 1) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCIFlushReadRequest>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 48);
      if (v7)
      {
        if ((*(*v7 + 72))(v7, *(*(*a2 + 8) + 16)))
        {
          v13 = 0;
          v14 = 0;
          v8 = *(*a2 + 8);
          *(*a2 + 8) = 0;
          v9 = v13;
          v12 = &unk_2A1E9E620;
          v13 = v8;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          BYTE4(v14) |= 1u;
          LODWORD(v14) = 0;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIFlushReadResponse>(a1, &v12);
        }

        else
        {
          v10 = *a2;
          v14 = 0x100000001;
          v11 = *(v10 + 8);
          *(v10 + 8) = 0;
          v12 = &unk_2A1E9E620;
          v13 = v11;
          telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIFlushReadResponse>(a1, &v12);
        }

        telephonytransport::PCIFlushReadResponse::~PCIFlushReadResponse(&v12);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_29809467C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  telephonytransport::PCIFlushReadResponse::~PCIFlushReadResponse(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void telephonytransport::PCIServiceTransport::sendMessage<telephonytransport::PCIFlushReadResponse>(uint64_t a1, PB::Base *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 64), 0x12u, a2) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadResponse");
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = *(*(a2 + 1) + 8);
      *buf = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void telephonytransport::PCIServiceTransport::handleMessage(telephonytransport::PCIServiceTransport *this, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v143 = *MEMORY[0x29EDCA608];
  if (a2 - 1 >= 0x12)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  switch(v4)
  {
    case 1:
      v12 = operator new(0x48uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D130;
      v13 = v12 + 1;
      v12[1].__vftable = &unk_2A1E9E818;
      v12[1].__shared_owners_ = 0;
      LODWORD(v12[2].__shared_weak_owners_) = 0;
      if (telephonytransport::deserializeMessage(&v12[1], 1, a3, a4))
      {
        shared_owners = v12[1].__shared_owners_;
        if (shared_owners)
        {
          v31 = *(shared_owners + 20);
          if ((v31 & 1) == 0)
          {
            v33 = *(this + 3);
            v32 = *(this + 4);
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v33;
              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
            }

            else
            {
              v18 = *v33;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
              goto LABEL_246;
            }

            goto LABEL_299;
          }

          v90 = *(this + 3);
          v91 = *(this + 4);
          if ((v31 & 2) == 0)
          {
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v90;
              std::__shared_weak_count::__release_shared[abi:ne200100](v91);
            }

            else
            {
              v18 = *v90;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
              goto LABEL_293;
            }

            goto LABEL_299;
          }

          if (v91)
          {
            atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((v12[2].__shared_weak_owners_ & 0x10) != 0)
          {
            if ((v12[2].__shared_weak_owners_ & 2) != 0)
            {
              if ((v12[2].__shared_weak_owners_ & 4) != 0)
              {
                if ((v12[2].__shared_weak_owners_ & 8) != 0)
                {
                  if (v12[2].__shared_weak_owners_)
                  {
                    if ((v12[2].__shared_weak_owners_ & 0x20) != 0)
                    {
                      v132 = 1;
                      if (!v91)
                      {
LABEL_362:
                        v125 = operator new(0x20uLL);
                        if (v132)
                        {
                          *v125 = &unk_2A1E9D210;
                        }

                        else
                        {
                          *v125 = &unk_2A1E9D180;
                        }

                        goto LABEL_364;
                      }

LABEL_361:
                      std::__shared_weak_count::__release_shared[abi:ne200100](v91);
                      goto LABEL_362;
                    }

                    v106 = *v90;
                    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
                    {
LABEL_360:
                      v132 = 0;
                      if (!v91)
                      {
                        goto LABEL_362;
                      }

                      goto LABEL_361;
                    }

                    std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
                    if (v137 >= 0)
                    {
                      v131 = __p;
                    }

                    else
                    {
                      v131 = *__p;
                    }

                    *buf = 136315394;
                    v140 = "SizeReadIO";
                    v141 = 2080;
                    v142 = v131;
                  }

                  else
                  {
                    v106 = *v90;
                    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_360;
                    }

                    std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
                    if (v137 >= 0)
                    {
                      v130 = __p;
                    }

                    else
                    {
                      v130 = *__p;
                    }

                    *buf = 136315394;
                    v140 = "CreateTimeOutMs";
                    v141 = 2080;
                    v142 = v130;
                  }
                }

                else
                {
                  v106 = *v90;
                  if (!os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_360;
                  }

                  std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
                  if (v137 >= 0)
                  {
                    v129 = __p;
                  }

                  else
                  {
                    v129 = *__p;
                  }

                  *buf = 136315394;
                  v140 = "OpenRetryCount";
                  v141 = 2080;
                  v142 = v129;
                }
              }

              else
              {
                v106 = *v90;
                if (!os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_360;
                }

                std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
                if (v137 >= 0)
                {
                  v126 = __p;
                }

                else
                {
                  v126 = *__p;
                }

                *buf = 136315394;
                v140 = "NumReadIO";
                v141 = 2080;
                v142 = v126;
              }
            }

            else
            {
              v106 = *v90;
              if (!os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_360;
              }

              std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
              if (v137 >= 0)
              {
                v119 = __p;
              }

              else
              {
                v119 = *__p;
              }

              *buf = 136315394;
              v140 = "Flags";
              v141 = 2080;
              v142 = v119;
            }
          }

          else
          {
            v106 = *v90;
            if (!os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_360;
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
            if (v137 >= 0)
            {
              v107 = __p;
            }

            else
            {
              v107 = *__p;
            }

            *buf = 136315394;
            v140 = "PciTransportInterface";
            v141 = 2080;
            v142 = v107;
          }

          _os_log_error_impl(&dword_29808D000, v106, OS_LOG_TYPE_ERROR, "%s is missing. Skipping MessageType: %s", buf, 0x16u);
          if (v137 < 0)
          {
            operator delete(*__p);
          }

          goto LABEL_360;
        }

        v73 = *(this + 3);
        v72 = *(this + 4);
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v73;
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

        else
        {
          v18 = *v73;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
          goto LABEL_218;
        }
      }

      else
      {
        v57 = *(this + 3);
        v56 = *(this + 4);
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v57;
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        else
        {
          v18 = *v57;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
          goto LABEL_115;
        }
      }

      goto LABEL_299;
    case 2:
    case 4:
    case 5:
    case 6:
    case 8:
    case 10:
    case 12:
    case 14:
    case 16:
    case 18:
      v9 = *(this + 3);
      v8 = *(this + 4);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        telephonytransport::toString(v4, __p);
        v11 = v137 >= 0 ? __p : *__p;
        *buf = 136315394;
        v140 = v11;
        v141 = 2048;
        v142 = a4;
        _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Ignoring unsupported message type: %s, length: %zu", buf, 0x16u);
        if (v137 < 0)
        {
          operator delete(*__p);
        }
      }

      goto LABEL_300;
    case 3:
      v12 = operator new(0x38uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D290;
      v13 = v12 + 1;
      v12[1].__vftable = &unk_2A1E9E8F8;
      v12[1].__shared_owners_ = 0;
      LODWORD(v12[2].__vftable) = 0;
      if ((telephonytransport::deserializeMessage(&v12[1], 3, a3, a4) & 1) == 0)
      {
        v51 = *(this + 3);
        v50 = *(this + 4);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v51;
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        else
        {
          v18 = *v51;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
          goto LABEL_115;
        }

        goto LABEL_299;
      }

      v14 = v12[1].__shared_owners_;
      if (!v14)
      {
        v67 = *(this + 3);
        v66 = *(this + 4);
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v67;
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        else
        {
          v18 = *v67;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
          goto LABEL_218;
        }

        goto LABEL_299;
      }

      v15 = *(v14 + 20);
      if ((v15 & 1) == 0)
      {
        v17 = *(this + 3);
        v16 = *(this + 4);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v17;
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        else
        {
          v18 = *v17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
          goto LABEL_246;
        }

        goto LABEL_299;
      }

      v84 = *(this + 3);
      v85 = *(this + 4);
      if ((v15 & 2) == 0)
      {
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v84;
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }

        else
        {
          v18 = *v84;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
          goto LABEL_293;
        }

        goto LABEL_299;
      }

      if (v85)
      {
        atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12[2].__vftable)
      {
        if ((v12[2].__vftable & 2) != 0)
        {
          v118 = 1;
          goto LABEL_314;
        }

        v100 = *v84;
        if (os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
          if (v137 >= 0)
          {
            v135 = __p;
          }

          else
          {
            v135 = *__p;
          }

          *buf = 136315394;
          v140 = "TimeoutMs";
          v141 = 2080;
          v142 = v135;
LABEL_385:
          _os_log_error_impl(&dword_29808D000, v100, OS_LOG_TYPE_ERROR, "%s is missing. Skipping MessageType: %s", buf, 0x16u);
          if (v137 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      else
      {
        v100 = *v84;
        if (os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
          if (v137 >= 0)
          {
            v101 = __p;
          }

          else
          {
            v101 = *__p;
          }

          *buf = 136315394;
          v140 = "BytesToRead";
          v141 = 2080;
          v142 = v101;
          goto LABEL_385;
        }
      }

      v118 = 0;
LABEL_314:
      if (v85)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v85);
      }

      v125 = operator new(0x20uLL);
      if (v118)
      {
        *v125 = &unk_2A1E9D360;
      }

      else
      {
        *v125 = &unk_2A1E9D2E0;
      }

      goto LABEL_364;
    case 7:
      v12 = operator new(0x38uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D3E0;
      v13 = v12 + 1;
      v12[1].__vftable = &unk_2A1E9E968;
      v12[1].__shared_owners_ = 0;
      HIDWORD(v12[2].__vftable) = 0;
      v12[1].__shared_weak_owners_ = 0;
      if ((telephonytransport::deserializeMessage(&v12[1], 7, a3, a4) & 1) == 0)
      {
        v55 = *(this + 3);
        v54 = *(this + 4);
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v55;
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        else
        {
          v18 = *v55;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
          goto LABEL_115;
        }

        goto LABEL_299;
      }

      shared_weak_owners = v12[1].__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        v71 = *(this + 3);
        v70 = *(this + 4);
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v71;
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        else
        {
          v18 = *v71;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
          goto LABEL_218;
        }

        goto LABEL_299;
      }

      v24 = *(shared_weak_owners + 20);
      if ((v24 & 1) == 0)
      {
        v26 = *(this + 3);
        v25 = *(this + 4);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v26;
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        else
        {
          v18 = *v26;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
          goto LABEL_246;
        }

        goto LABEL_299;
      }

      v88 = *(this + 3);
      v89 = *(this + 4);
      if ((v24 & 2) == 0)
      {
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v88;
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        else
        {
          v18 = *v88;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
          goto LABEL_293;
        }

        goto LABEL_299;
      }

      if (v89)
      {
        atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12[1].__shared_owners_)
      {
        if (BYTE4(v12[2].__vftable))
        {
          v122 = 1;
          goto LABEL_308;
        }

        v104 = *v88;
        if (os_log_type_enabled(*v88, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
          if (v137 >= 0)
          {
            v105 = __p;
          }

          else
          {
            v105 = *__p;
          }

          *buf = 136315394;
          v140 = "TimeoutMs";
          v141 = 2080;
          v142 = v105;
          goto LABEL_377;
        }
      }

      else
      {
        v104 = *v88;
        if (os_log_type_enabled(*v88, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
          if (v137 >= 0)
          {
            v134 = __p;
          }

          else
          {
            v134 = *__p;
          }

          *buf = 136315394;
          v140 = "data";
          v141 = 2080;
          v142 = v134;
LABEL_377:
          _os_log_error_impl(&dword_29808D000, v104, OS_LOG_TYPE_ERROR, "%s is missing. Skipping MessageType: %s", buf, 0x16u);
          if (v137 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      v122 = 0;
LABEL_308:
      if (v89)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v89);
      }

      v125 = operator new(0x20uLL);
      if (v122)
      {
        *v125 = &unk_2A1E9D4B0;
      }

      else
      {
        *v125 = &unk_2A1E9D430;
      }

      goto LABEL_364;
    case 9:
      v12 = operator new(0x28uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D530;
      v12[1].__vftable = &unk_2A1E9E9D8;
      v12[1].__shared_owners_ = 0;
      if (telephonytransport::deserializeMessage(&v12[1], 9, a3, a4))
      {
        v42 = v12[1].__shared_owners_;
        if (v42)
        {
          v43 = *(v42 + 20);
          if (v43)
          {
            if ((v43 & 2) != 0)
            {
              v112 = *(this + 4);
              if (v112)
              {
                atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v112);
              }

              v113 = operator new(0x20uLL);
              *v113 = &unk_2A1E9D580;
              v113[1] = this;
              v113[2] = v12 + 1;
              v113[3] = v12;
              v138 = v113;
              telephonytransport::PCIServiceTransport::executeAsync(this, __p);
              goto LABEL_366;
            }

            v97 = *(this + 3);
            v96 = *(this + 4);
            if (v96)
            {
              atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v97;
              std::__shared_weak_count::__release_shared[abi:ne200100](v96);
            }

            else
            {
              v18 = *v97;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "kFreeRequest");
              goto LABEL_293;
            }
          }

          else
          {
            v45 = *(this + 3);
            v44 = *(this + 4);
            if (v44)
            {
              atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v45;
              std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            }

            else
            {
              v18 = *v45;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "kFreeRequest");
              goto LABEL_246;
            }
          }
        }

        else
        {
          v79 = *(this + 3);
          v78 = *(this + 4);
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            v18 = *v79;
            std::__shared_weak_count::__release_shared[abi:ne200100](v78);
          }

          else
          {
            v18 = *v79;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kFreeRequest");
            goto LABEL_218;
          }
        }
      }

      else
      {
        v63 = *(this + 3);
        v62 = *(this + 4);
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v63;
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        else
        {
          v18 = *v63;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFreeRequest");
          goto LABEL_115;
        }
      }

      goto LABEL_299;
    case 11:
      v12 = operator new(0x38uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D600;
      v13 = v12 + 1;
      v12[1].__vftable = &unk_2A1E9E888;
      v12[1].__shared_owners_ = 0;
      HIDWORD(v12[2].__vftable) = 0;
      v12[1].__shared_weak_owners_ = 0;
      if ((telephonytransport::deserializeMessage(&v12[1], 11, a3, a4) & 1) == 0)
      {
        v53 = *(this + 3);
        v52 = *(this + 4);
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v53;
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        else
        {
          v18 = *v53;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
          goto LABEL_115;
        }

        goto LABEL_299;
      }

      v19 = v12[1].__shared_weak_owners_;
      if (!v19)
      {
        v69 = *(this + 3);
        v68 = *(this + 4);
        if (v68)
        {
          atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v69;
          std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        }

        else
        {
          v18 = *v69;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
          goto LABEL_218;
        }

        goto LABEL_299;
      }

      v20 = *(v19 + 20);
      if ((v20 & 1) == 0)
      {
        v22 = *(this + 3);
        v21 = *(this + 4);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v22;
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        else
        {
          v18 = *v22;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
          goto LABEL_246;
        }

        goto LABEL_299;
      }

      v86 = *(this + 3);
      v87 = *(this + 4);
      if ((v20 & 2) == 0)
      {
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v86;
          std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        }

        else
        {
          v18 = *v86;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
          goto LABEL_293;
        }

        goto LABEL_299;
      }

      if (v87)
      {
        atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12[1].__shared_owners_)
      {
        if (BYTE4(v12[2].__vftable))
        {
          v121 = 1;
          goto LABEL_302;
        }

        v102 = *v86;
        if (os_log_type_enabled(*v86, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
          if (v137 >= 0)
          {
            v103 = __p;
          }

          else
          {
            v103 = *__p;
          }

          *buf = 136315394;
          v140 = "TimeoutMs";
          v141 = 2080;
          v142 = v103;
          goto LABEL_371;
        }
      }

      else
      {
        v102 = *v86;
        if (os_log_type_enabled(*v86, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
          if (v137 >= 0)
          {
            v133 = __p;
          }

          else
          {
            v133 = *__p;
          }

          *buf = 136315394;
          v140 = "data";
          v141 = 2080;
          v142 = v133;
LABEL_371:
          _os_log_error_impl(&dword_29808D000, v102, OS_LOG_TYPE_ERROR, "%s is missing. Skipping MessageType: %s", buf, 0x16u);
          if (v137 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      v121 = 0;
LABEL_302:
      if (v87)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
      }

      v125 = operator new(0x20uLL);
      if (v121)
      {
        *v125 = &unk_2A1E9D6D0;
      }

      else
      {
        *v125 = &unk_2A1E9D650;
      }

      goto LABEL_364;
    case 13:
      v12 = operator new(0x38uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D750;
      v13 = v12 + 1;
      v12[1].__vftable = &unk_2A1E9E700;
      v12[1].__shared_owners_ = 0;
      HIDWORD(v12[2].__vftable) = 0;
      if ((telephonytransport::deserializeMessage(&v12[1], 13, a3, a4) & 1) == 0)
      {
        v65 = *(this + 3);
        v64 = *(this + 4);
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v65;
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        else
        {
          v18 = *v65;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
          goto LABEL_115;
        }

        goto LABEL_299;
      }

      v46 = v12[1].__shared_owners_;
      if (!v46)
      {
        v81 = *(this + 3);
        v80 = *(this + 4);
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v81;
          std::__shared_weak_count::__release_shared[abi:ne200100](v80);
        }

        else
        {
          v18 = *v81;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
          goto LABEL_218;
        }

        goto LABEL_299;
      }

      v47 = *(v46 + 20);
      if ((v47 & 1) == 0)
      {
        v49 = *(this + 3);
        v48 = *(this + 4);
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v49;
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        else
        {
          v18 = *v49;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
          goto LABEL_246;
        }

        goto LABEL_299;
      }

      v98 = *(this + 3);
      v99 = *(this + 4);
      if ((v47 & 2) == 0)
      {
        if (v99)
        {
          atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v98;
          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        }

        else
        {
          v18 = *v98;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
          goto LABEL_293;
        }

        goto LABEL_299;
      }

      if (v99)
      {
        atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (BYTE4(v12[2].__vftable))
      {
        if ((BYTE4(v12[2].__vftable) & 2) != 0)
        {
          if ((BYTE4(v12[2].__vftable) & 4) != 0)
          {
            v128 = 1;
            if (!v99)
            {
              goto LABEL_335;
            }

            goto LABEL_334;
          }

          v114 = *v98;
          if (!os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
          {
LABEL_333:
            v128 = 0;
            if (!v99)
            {
LABEL_335:
              v125 = operator new(0x20uLL);
              if (v128)
              {
                *v125 = &unk_2A1E9D820;
              }

              else
              {
                *v125 = &unk_2A1E9D7A0;
              }

LABEL_364:
              v125[1] = this;
              v125[2] = v13;
              v125[3] = v12;
              v138 = v125;
              telephonytransport::PCIServiceTransport::executeAsync(this, __p);
              goto LABEL_366;
            }

LABEL_334:
            std::__shared_weak_count::__release_shared[abi:ne200100](v99);
            goto LABEL_335;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
          if (v137 >= 0)
          {
            v127 = __p;
          }

          else
          {
            v127 = *__p;
          }

          *buf = 136315394;
          v140 = "WhichRegister";
          v141 = 2080;
          v142 = v127;
        }

        else
        {
          v114 = *v98;
          if (!os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_333;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
          if (v137 >= 0)
          {
            v120 = __p;
          }

          else
          {
            v120 = *__p;
          }

          *buf = 136315394;
          v140 = "TimeoutMs";
          v141 = 2080;
          v142 = v120;
        }
      }

      else
      {
        v114 = *v98;
        if (!os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_333;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
        if (v137 >= 0)
        {
          v115 = __p;
        }

        else
        {
          v115 = *__p;
        }

        *buf = 136315394;
        v140 = "BytesToRead";
        v141 = 2080;
        v142 = v115;
      }

      _os_log_error_impl(&dword_29808D000, v114, OS_LOG_TYPE_ERROR, "%s is missing. Skipping MessageType: %s", buf, 0x16u);
      if (v137 < 0)
      {
        operator delete(*__p);
      }

      goto LABEL_333;
    case 15:
      v12 = operator new(0x28uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D8A0;
      v12[1].__vftable = &unk_2A1E9E738;
      v12[1].__shared_owners_ = 0;
      if (telephonytransport::deserializeMessage(&v12[1], 15, a3, a4))
      {
        v34 = v12[1].__shared_owners_;
        if (v34)
        {
          v35 = *(v34 + 20);
          if (v35)
          {
            if ((v35 & 2) != 0)
            {
              v108 = *(this + 4);
              if (v108)
              {
                atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v108);
              }

              v109 = operator new(0x20uLL);
              *v109 = &unk_2A1E9D8F0;
              v109[1] = this;
              v109[2] = v12 + 1;
              v109[3] = v12;
              v138 = v109;
              telephonytransport::PCIServiceTransport::executeAsync(this, __p);
              goto LABEL_366;
            }

            v93 = *(this + 3);
            v92 = *(this + 4);
            if (v92)
            {
              atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v93;
              std::__shared_weak_count::__release_shared[abi:ne200100](v92);
            }

            else
            {
              v18 = *v93;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadRequest");
              goto LABEL_293;
            }
          }

          else
          {
            v37 = *(this + 3);
            v36 = *(this + 4);
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v37;
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            else
            {
              v18 = *v37;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadRequest");
              goto LABEL_246;
            }
          }
        }

        else
        {
          v75 = *(this + 3);
          v74 = *(this + 4);
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
            v18 = *v75;
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          else
          {
            v18 = *v75;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadRequest");
            goto LABEL_218;
          }
        }
      }

      else
      {
        v59 = *(this + 3);
        v58 = *(this + 4);
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v59;
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        }

        else
        {
          v18 = *v59;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadRequest");
          goto LABEL_115;
        }
      }

      goto LABEL_299;
    case 17:
      v12 = operator new(0x28uLL);
      v12->__shared_owners_ = 0;
      v12->__shared_weak_owners_ = 0;
      v12->__vftable = &unk_2A1E9D970;
      v12[1].__vftable = &unk_2A1E9E770;
      v12[1].__shared_owners_ = 0;
      if ((telephonytransport::deserializeMessage(&v12[1], 17, a3, a4) & 1) == 0)
      {
        v61 = *(this + 3);
        v60 = *(this + 4);
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v61;
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
        }

        else
        {
          v18 = *v61;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_299;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadRequest");
LABEL_115:
        if (v137 >= 0)
        {
          v82 = __p;
        }

        else
        {
          v82 = *__p;
        }

        *buf = 136315394;
        v140 = v82;
        v141 = 2048;
        v142 = a4;
        v83 = "Failed to deserialize message. MessageType: %s, length: %zu";
        goto LABEL_297;
      }

      v38 = v12[1].__shared_owners_;
      if (!v38)
      {
        v77 = *(this + 3);
        v76 = *(this + 4);
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v77;
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        else
        {
          v18 = *v77;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_299;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadRequest");
LABEL_218:
        if (v137 >= 0)
        {
          v116 = __p;
        }

        else
        {
          v116 = *__p;
        }

        *buf = 136315394;
        v140 = v116;
        v141 = 2048;
        v142 = a4;
        v83 = "messageId is missing. Skipping MessageType: %s, length: %zu";
LABEL_297:
        _os_log_error_impl(&dword_29808D000, v18, OS_LOG_TYPE_ERROR, v83, buf, 0x16u);
        if (v137 < 0)
        {
          operator delete(*__p);
        }

        goto LABEL_299;
      }

      v39 = *(v38 + 20);
      if ((v39 & 1) == 0)
      {
        v41 = *(this + 3);
        v40 = *(this + 4);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v41;
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        else
        {
          v18 = *v41;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadRequest");
LABEL_246:
          if (v137 >= 0)
          {
            v117 = __p;
          }

          else
          {
            v117 = *__p;
          }

          *buf = 136315394;
          v140 = v117;
          v141 = 2048;
          v142 = a4;
          v83 = "TxnId is missing. Skipping MessageType: %s, length: %zu";
          goto LABEL_297;
        }

LABEL_299:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        goto LABEL_300;
      }

      if ((v39 & 2) == 0)
      {
        v95 = *(this + 3);
        v94 = *(this + 4);
        if (v94)
        {
          atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          v18 = *v95;
          std::__shared_weak_count::__release_shared[abi:ne200100](v94);
        }

        else
        {
          v18 = *v95;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadRequest");
LABEL_293:
          if (v137 >= 0)
          {
            v123 = __p;
          }

          else
          {
            v123 = *__p;
          }

          *buf = 136315394;
          v140 = v123;
          v141 = 2048;
          v142 = a4;
          v83 = "Transport token is missing. Skipping MessageType: %s, length: %zu";
          goto LABEL_297;
        }

        goto LABEL_299;
      }

      v110 = *(this + 4);
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
      }

      v111 = operator new(0x20uLL);
      *v111 = &unk_2A1E9D9C0;
      v111[1] = this;
      v111[2] = v12 + 1;
      v111[3] = v12;
      v138 = v111;
      telephonytransport::PCIServiceTransport::executeAsync(this, __p);
LABEL_366:
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](__p);
LABEL_300:
      v124 = *MEMORY[0x29EDCA608];
      return;
    default:
      v28 = *(this + 3);
      v27 = *(this + 4);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = *v28;
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      else
      {
        v29 = *v28;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *__p = 134217984;
        *&__p[4] = a4;
        _os_log_error_impl(&dword_29808D000, v29, OS_LOG_TYPE_ERROR, "Skipping Unknown message type of length: %zu", __p, 0xCu);
      }

      goto LABEL_300;
  }
}

void telephonytransport::PCIServiceTransport::~PCIServiceTransport(telephonytransport::PCIServiceTransport *this)
{
  *this = &unk_2A1E9CE98;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  *this = &unk_2A1E9CE98;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(this);
}

void std::unique_ptr<PB::Data>::reset[abi:ne200100](void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    free(*v2);

    operator delete(v2);
  }
}

void std::__shared_ptr_pointer<telephonytransport::PCIServiceTransport *,std::shared_ptr<telephonytransport::PCIServiceTransport>::__shared_ptr_default_delete<telephonytransport::PCIServiceTransport,telephonytransport::PCIServiceTransport>,std::allocator<telephonytransport::PCIServiceTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::PCIServiceTransport *,std::shared_ptr<telephonytransport::PCIServiceTransport>::__shared_ptr_default_delete<telephonytransport::PCIServiceTransport,telephonytransport::PCIServiceTransport>,std::allocator<telephonytransport::PCIServiceTransport>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::PCIServiceTransport *,std::shared_ptr<telephonytransport::PCIServiceTransport>::__shared_ptr_default_delete<telephonytransport::PCIServiceTransport,telephonytransport::PCIServiceTransport>,std::allocator<telephonytransport::PCIServiceTransport>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D030;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D030;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D030;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D030;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::operator()(void *a1, int *a2, char *a3, const unsigned __int8 **a4, uint64_t *a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v6 = a1[3];
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *a4;
    v10 = *a5;
    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v6);
    if (v12)
    {
      v13 = v12;
      if (a1[2])
      {
        if (v8)
        {
          v26 = 0;
          v25 = &unk_2A1E9E7E0;
          v14 = operator new(0x18uLL);
          v27 = v14;
          v14[4] = v7;
          v14[5] = 3;
          *v14 = &unk_2A1E9E7A8;
          *(v14 + 1) = 0;
          v15 = operator new(0x10uLL);
          *v15 = 0;
          v15[1] = 0;
          std::unique_ptr<PB::Data>::reset[abi:ne200100](&v26, v15);
          PB::Data::assign(v26, v9, &v9[v10]);
          if ((telephonytransport::BaseProtocol::sendMessage(*(v11 + 64), 5u, &v25) & 1) == 0)
          {
            v17 = *(v11 + 24);
            v16 = *(v11 + 32);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              v18 = *v17;
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }

            else
            {
              v18 = *v17;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(buf, "kReadIndication");
              if (v29 >= 0)
              {
                v23 = buf;
              }

              else
              {
                v23 = *buf;
              }

              v24 = *(v27 + 1);
              *v30 = 136315394;
              v31 = v23;
              v32 = 2048;
              v33 = v24;
              _os_log_error_impl(&dword_29808D000, v18, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", v30, 0x16u);
              if (v29 < 0)
              {
                operator delete(*buf);
              }
            }
          }

          telephonytransport::PCIReadIndication::~PCIReadIndication(&v25);
        }

        else
        {
          v20 = *(v11 + 24);
          v19 = *(v11 + 32);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            v21 = *v20;
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          else
          {
            v21 = *v20;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_29808D000, v21, OS_LOG_TYPE_ERROR, "Received indication with failure", buf, 2u);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_298096CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  telephonytransport::PCIReadIndication::~PCIReadIndication(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D0B0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D0B0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D0B0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D0B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::operator()(void *a1, int *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = a1[3];
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *a4;
    v10 = *a5;
    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v6);
    if (v12)
    {
      v13 = v12;
      if (a1[2])
      {
        v24 = 0;
        v21[0] = &unk_2A1E9E9A0;
        v14 = operator new(0x18uLL);
        v21[2] = v10;
        v22 = v14;
        v14[4] = v7;
        v14[5] = 3;
        *v14 = &unk_2A1E9E7A8;
        *(v14 + 1) = 0;
        v23 = v8;
        LOBYTE(v24) = 7;
        v21[1] = v9;
        if ((telephonytransport::BaseProtocol::sendMessage(*(v11 + 64), 6u, v21) & 1) == 0)
        {
          v16 = *(v11 + 24);
          v15 = *(v11 + 32);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = *v16;
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          else
          {
            v17 = *v16;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kStatusIndication");
            if (v26 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = __p[0];
            }

            v20 = *(v22 + 1);
            *buf = 136315394;
            v28 = v19;
            v29 = 2048;
            v30 = v20;
            _os_log_error_impl(&dword_29808D000, v17, OS_LOG_TYPE_ERROR, "Failed to send response of MessageType: %s, TxnId: %llu", buf, 0x16u);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        telephonytransport::PCIStatusIndication::~PCIStatusIndication(v21);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_298097138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  telephonytransport::PCIStatusIndication::~PCIStatusIndication(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleRequestOnConcurrentQueue<telephonytransport::PCICreateRequest>(std::shared_ptr<telephonytransport::PCICreateRequest> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::PCICreateRequest> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<telephonytransport::PCICreateRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D180;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D180;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D180;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D180;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D210;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D210;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D210;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D210;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)1>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<telephonytransport::PCIReadRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D2E0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D2E0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D2E0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D2E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D360;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D360;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D360;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D360;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)3>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<telephonytransport::PCIWriteRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D3E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D430;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D430;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D430;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D430;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D4B0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D4B0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D4B0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D4B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)7>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<telephonytransport::PCIFreeRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D580;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D580;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D580;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D580;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)9>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<telephonytransport::PCISendImageRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D650;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D650;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D650;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D650;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D6D0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D6D0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D6D0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D6D0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)11>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<telephonytransport::PCIReadRegisterRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D7A0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D7A0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D7A0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D7A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D820;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D820;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D820;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D820;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)13>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<telephonytransport::PCIUnblockReadRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D8A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D8F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D8F0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D8F0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D8F0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)15>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<telephonytransport::PCIFlushReadRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9D970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9D9C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A1E9D9C0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

char *std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9D9C0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9D9C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2},std::allocator<void telephonytransport::PCIServiceTransport::handleMessageOfType<(telephonytransport::PCIMessageType)17>(unsigned char *,unsigned long)::{lambda(void)#2}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::SocketToRawIPIfaceForwarder::create(uint64_t *a1@<X0>, uint64_t a2@<X1>, NSObject **a3@<X2>, char *a4@<X3>, std::string *a5@<X8>)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
  }

  else
  {
    v27 = *a2;
  }

  v28 = 12;
  __p = 0;
  v30 = 0u;
  v31 = 1;
  telephonytransport::NetworkIface::create(&v33, &v32, &v27, a4, &v35);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v32)
  {
    dispatch_release(v32);
  }

  v9 = v34;
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  v10 = v35;
  if (v35)
  {
    v11 = operator new(0x28uLL);
    v11->~__shared_weak_count = &unk_2A1E9DA60;
    v11->~__shared_weak_count_0 = v10;
    v12 = v36;
    v35 = 0;
    v36 = 0;
    v11->__get_deleter = 0;
    v11->__on_zero_shared_weak = 0;
    v11->__on_zero_shared = v12;
    v13 = operator new(0x20uLL);
    v13->__shared_weak_owners_ = 0;
    v13->__vftable = &unk_2A1E9DAA0;
    v13->__shared_owners_ = 0;
    v13[1].__vftable = v11;
    v27.__r_.__value_.__l.__size_ = v13;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v23 = v11;
    v24 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = *a3;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    telephonytransport::BaseProtocol::create(&v23, &object, a1, 0, a4, &v25);
    if (object)
    {
      dispatch_release(object);
    }

    v15 = v24;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    v16 = v25;
    if (v25)
    {
      v17 = v26;
      v25 = 0;
      v26 = 0;
      on_zero_shared_weak = v11->__on_zero_shared_weak;
      v11->__get_deleter = v16;
      v11->__on_zero_shared_weak = v17;
      if (on_zero_shared_weak)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](on_zero_shared_weak);
      }

      a5->__r_.__value_.__r.__words[0] = v11;
      a5->__r_.__value_.__l.__size_ = v13;
      a5 = &v27;
    }

    else
    {
      v20 = *telephonytransport::getDefaultOSLogHandle(v15);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_29808D000, v20, OS_LOG_TYPE_ERROR, "Failed to create source read only protocol", v21, 2u);
      }
    }

    a5->__r_.__value_.__r.__words[0] = 0;
    a5->__r_.__value_.__l.__size_ = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v27.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    v19 = *telephonytransport::getDefaultOSLogHandle(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_29808D000, v19, OS_LOG_TYPE_ERROR, "Failed to create destination write only transport", &v27, 2u);
    }

    a5->__r_.__value_.__r.__words[0] = 0;
    a5->__r_.__value_.__l.__size_ = 0;
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }
}

void sub_2980992AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  v18 = *(v16 - 56);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

__n128 telephonytransport::SocketToRawIPIfaceForwarder::SocketToRawIPIfaceForwarder(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2A1E9DA60;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

{
  *a1 = &unk_2A1E9DA60;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t telephonytransport::SocketToRawIPIfaceForwarder::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

uint64_t telephonytransport::SocketToRawIPIfaceForwarder::handleMessage(_BOOL8 this, int a2, unsigned __int8 *a3)
{
  if (a2 != 1)
  {
    v11 = v4;
    v12 = v3;
    v13 = v5;
    v14 = v6;
    v7 = *telephonytransport::getDefaultOSLogHandle(this);
    this = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (this)
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_29808D000, v7, OS_LOG_TYPE_FAULT, "Only kPDPIP message type is supported here", v10, 2u);
    }

    __break(1u);
  }

  v8 = ***(this + 8);

  return v8();
}

void telephonytransport::SocketToRawIPIfaceForwarder::~SocketToRawIPIfaceForwarder(telephonytransport::SocketToRawIPIfaceForwarder *this)
{
  *this = &unk_2A1E9DA60;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2A1E9DA60;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<telephonytransport::SocketToRawIPIfaceForwarder *,std::shared_ptr<telephonytransport::SocketToRawIPIfaceForwarder>::__shared_ptr_default_delete<telephonytransport::SocketToRawIPIfaceForwarder,telephonytransport::SocketToRawIPIfaceForwarder>,std::allocator<telephonytransport::SocketToRawIPIfaceForwarder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::SocketToRawIPIfaceForwarder *,std::shared_ptr<telephonytransport::SocketToRawIPIfaceForwarder>::__shared_ptr_default_delete<telephonytransport::SocketToRawIPIfaceForwarder,telephonytransport::SocketToRawIPIfaceForwarder>,std::allocator<telephonytransport::SocketToRawIPIfaceForwarder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::SocketToRawIPIfaceForwarder *,std::shared_ptr<telephonytransport::SocketToRawIPIfaceForwarder>::__shared_ptr_default_delete<telephonytransport::SocketToRawIPIfaceForwarder,telephonytransport::SocketToRawIPIfaceForwarder>,std::allocator<telephonytransport::SocketToRawIPIfaceForwarder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::SocketAndRawIPIfaceBridge::create(uint64_t *a1@<X0>, NSObject **a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v26.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v26.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a2;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  telephonytransport::SocketToRawIPIfaceForwarder::create(a1, a3, &object, a5, &v26);
  if (object)
  {
    dispatch_release(object);
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *a4;
  v22 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  telephonytransport::RawIPIfaceToSocketForwarder::create(a3, a1, &v22, a5, &v23);
  v13 = v22;
  if (v22)
  {
    dispatch_release(v22);
  }

  v14 = v26.__r_.__value_.__r.__words[0];
  if (v26.__r_.__value_.__r.__words[0] && (v15 = v23) != 0)
  {
    *a6 = 0xAAAAAAAAAAAAAAAALL;
    a6[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 = operator new(0x20uLL);
    size = v26.__r_.__value_.__l.__size_;
    *v16 = v14;
    v16[1] = size;
    *&v26.__r_.__value_.__l.__data_ = 0uLL;
    v18 = v24;
    v16[2] = v15;
    v16[3] = v18;
    v23 = 0;
    v24 = 0;
    *a6 = v16;
    v19 = operator new(0x20uLL);
    *v19 = &unk_2A1E9DB18;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = v16;
    a6[1] = v19;
  }

  else
  {
    v20 = *telephonytransport::getDefaultOSLogHandle(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_29808D000, v20, OS_LOG_TYPE_ERROR, "Failed to create SocketAndRawIPIfaceBridge", v21, 2u);
    }

    *a6 = 0;
    a6[1] = 0;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  if (v26.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26.__r_.__value_.__l.__size_);
  }
}

void sub_298099764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::default_delete<telephonytransport::SocketAndRawIPIfaceBridge>::operator()[abi:ne200100](v16);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

__n128 telephonytransport::SocketAndRawIPIfaceBridge::SocketAndRawIPIfaceBridge(_OWORD *a1, uint64_t a2, __n128 *a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  a1[1] = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  a1[1] = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

void std::__shared_ptr_pointer<telephonytransport::SocketAndRawIPIfaceBridge *,std::shared_ptr<telephonytransport::SocketAndRawIPIfaceBridge>::__shared_ptr_default_delete<telephonytransport::SocketAndRawIPIfaceBridge,telephonytransport::SocketAndRawIPIfaceBridge>,std::allocator<telephonytransport::SocketAndRawIPIfaceBridge>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::SocketAndRawIPIfaceBridge *,std::shared_ptr<telephonytransport::SocketAndRawIPIfaceBridge>::__shared_ptr_default_delete<telephonytransport::SocketAndRawIPIfaceBridge,telephonytransport::SocketAndRawIPIfaceBridge>,std::allocator<telephonytransport::SocketAndRawIPIfaceBridge>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<telephonytransport::SocketAndRawIPIfaceBridge>::operator()[abi:ne200100](void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = __p[1];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    operator delete(__p);
  }
}

void telephonytransport::TokenRegistrar::get(telephonytransport::TokenRegistrar *this, std::mutex *a2, unsigned int a3)
{
  std::mutex::lock(a2);
  v6 = *a2[1].__m_.__opaque;
  if (!v6)
  {
    goto LABEL_9;
  }

  opaque = a2[1].__m_.__opaque;
  do
  {
    v8 = *(v6 + 8);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      opaque = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (opaque != a2[1].__m_.__opaque && *(opaque + 8) <= a3)
  {
    v12 = *(opaque + 5);
    v11 = *(opaque + 6);
    *this = v12;
    *(this + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *this = 0;
    *(this + 1) = 0;
  }

  std::mutex::unlock(a2);
}

BOOL telephonytransport::TokenRegistrar::isValid(std::mutex *this, unsigned int a2)
{
  std::mutex::lock(this);
  opaque = this[1].__m_.__opaque;
  v5 = *this[1].__m_.__opaque;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this[1].__m_.__opaque;
  do
  {
    v7 = *(v5 + 8);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 == opaque || *(v6 + 8) > a2)
  {
LABEL_9:
    v6 = this[1].__m_.__opaque;
  }

  v10 = v6 != opaque;
  std::mutex::unlock(this);
  return v10;
}

telephonytransport::PCIClientImpl *telephonytransport::PCIClientImpl::PCIClientImpl(telephonytransport::PCIClientImpl *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E9DB90;
  *(this + 3) = &unk_2A1E9DC08;
  *(this + 8) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 18) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 16) = this + 136;
  *(this + 152) = 0;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, this, telephonytransport::handleTTStartPCIClientNotification, @"TTStartPCIClientNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return this;
}

void sub_298099AC4(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>>>::destroy(*(v1 + 136));
  std::mutex::~mutex(v2);
  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void telephonytransport::handleTTStartPCIClientNotification(telephonytransport *this, __CFNotificationCenter *a2, CFStringRef theString1, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  if (a2 && CFStringCompare(theString1, @"TTStartPCIClientNotification", 1uLL) == kCFCompareEqualTo)
  {
    v7 = *telephonytransport::getDefaultOSLogHandle(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v8)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_29808D000, v7, OS_LOG_TYPE_INFO, "Oversteer: Starting PCIClient", v11, 2u);
    }

    v9 = telephonytransport::PCIClientImpl::sharedInstance(v8);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZN18telephonytransport13PCIClientImpl18startTCPServerOnceEv_block_invoke;
    v11[3] = &__block_descriptor_tmp;
    v11[4] = v9;
    if (telephonytransport::PCIClientImpl::startTCPServerOnce(void)::onceToken != -1)
    {
      dispatch_once(&telephonytransport::PCIClientImpl::startTCPServerOnce(void)::onceToken, v11);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a2, @"TTStartPCIClientNotification", 0);
  }
}

void telephonytransport::PCIClientImpl::~PCIClientImpl(std::mutex *this)
{
  this->__m_.__sig = &unk_2A1E9DB90;
  *&this->__m_.__opaque[16] = &unk_2A1E9DC08;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, this, @"TTStartPCIClientNotification", 0);
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>>>::destroy(*this[2].__m_.__opaque);
  std::mutex::~mutex(this + 1);
  v3 = *&this->__m_.__opaque[48];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *&this->__m_.__opaque[32];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *&this->__m_.__opaque[8];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  telephonytransport::PCIClientImpl::~PCIClientImpl(this);

  operator delete(v1);
}

void non-virtual thunk totelephonytransport::PCIClientImpl::~PCIClientImpl(telephonytransport::PCIClientImpl *this)
{
  telephonytransport::PCIClientImpl::~PCIClientImpl((this - 24));
}

{
  telephonytransport::PCIClientImpl::~PCIClientImpl((this - 24));

  operator delete(v1);
}

uint64_t telephonytransport::PCIClientImpl::sharedInstance(telephonytransport::PCIClientImpl *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_0))
  {
    v2 = operator new(0xA0uLL);
    telephonytransport::PCIClientImpl::PCIClientImpl(v2);
    std::shared_ptr<telephonytransport::PCIClientImpl>::shared_ptr[abi:ne200100]<telephonytransport::PCIClientImpl,0>(v2);
    __cxa_atexit(std::shared_ptr<telephonytransport::PCIClientImpl>::~shared_ptr[abi:ne200100], &qword_2A13A5F98, &dword_29808D000);
    __cxa_guard_release(&_MergedGlobals_0);
  }

  return qword_2A13A5F98;
}

void sub_298099DB0(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&_MergedGlobals_0);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<telephonytransport::PCIClientImpl>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void telephonytransport::PCIClientImpl::transportCreate(uint64_t a1, int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, NSObject **a8, NSObject *a9, NSObject *a10, void *a11)
{
  v30 = 0;
  if (!telephonytransport::PCIClientTransport::transportCreate(*(a1 + 32), a2, a3, a4, a5, a6, a7, &v30))
  {
    return;
  }

  v13 = v30;
  *a11 = v30;
  v14 = *a8;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = operator new(0x48uLL);
  v16 = v15;
  if (v14)
  {
    dispatch_retain(v14);
    *v16 = v14;
    dispatch_retain(v14);
  }

  else
  {
    *v15 = 0;
  }

  v18 = a9 + 3;
  isa = a9[3].isa;
  if (!isa)
  {
    v18 = (v16 + 4);
    goto LABEL_11;
  }

  if (isa != a9)
  {
    v16[4] = isa;
LABEL_11:
    v18->isa = 0;
    goto LABEL_13;
  }

  v16[4] = (v16 + 1);
  (*(isa->isa + 3))(isa);
LABEL_13:
  v20 = a10 + 3;
  v19 = a10[3].isa;
  if (!v19)
  {
    v20 = (v16 + 8);
    goto LABEL_17;
  }

  if (v19 != a10)
  {
    v16[8] = v19;
LABEL_17:
    v20->isa = 0;
    goto LABEL_19;
  }

  v16[8] = (v16 + 5);
  (*(v19->isa + 3))(v19);
LABEL_19:
  v21 = operator new(0x20uLL);
  *v21 = &unk_2A1E9DD50;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = v16;
  if (v14)
  {
    dispatch_release(v14);
  }

  std::mutex::lock((a1 + 64));
  v24 = (a1 + 136);
  v23 = *(a1 + 136);
  if (v23)
  {
    while (1)
    {
      while (1)
      {
        v25 = v23;
        v26 = *(v23 + 32);
        if (v26 <= v13)
        {
          break;
        }

        v23 = *v25;
        v24 = v25;
        if (!*v25)
        {
          goto LABEL_29;
        }
      }

      if (v26 >= v13)
      {
        break;
      }

      v23 = v25[1];
      if (!v23)
      {
        v24 = v25 + 1;
        goto LABEL_29;
      }
    }

    v29 = *telephonytransport::getDefaultOSLogHandle(v22);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_29808D000, v29, OS_LOG_TYPE_FAULT, "Emplace failed while inserting token", buf, 2u);
    }

    __break(1u);
  }

  else
  {
    v25 = (a1 + 136);
LABEL_29:
    v27 = operator new(0x38uLL);
    v27[8] = v13;
    *(v27 + 5) = v16;
    *(v27 + 6) = v21;
    *v27 = 0;
    *(v27 + 1) = 0;
    *(v27 + 2) = v25;
    *v24 = v27;
    v28 = **(a1 + 128);
    if (v28)
    {
      *(a1 + 128) = v28;
      v27 = *v24;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 136), v27);
    ++*(a1 + 144);
    std::mutex::unlock((a1 + 64));
    if (v14)
    {
      dispatch_release(v14);
    }
  }
}

void sub_29809A0AC(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2 + 1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

BOOL telephonytransport::PCIClientImpl::transportFree(std::mutex *this, void **a2)
{
  if (!telephonytransport::TokenRegistrar::isValid(this + 1, *a2))
  {
    return 1;
  }

  v4 = *a2;
  std::mutex::lock(this + 1);
  v5 = *this[2].__m_.__opaque;
  if (v5)
  {
    opaque = this[2].__m_.__opaque;
    v7 = *this[2].__m_.__opaque;
    do
    {
      v8 = *(v7 + 8);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        opaque = v7;
      }

      v7 = *&v7[8 * v10];
    }

    while (v7);
    if (opaque != this[2].__m_.__opaque && *(opaque + 8) <= v4)
    {
      v11 = *(opaque + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v14 = opaque;
        do
        {
          v12 = *(v14 + 2);
          v15 = *v12 == v14;
          v14 = v12;
        }

        while (!v15);
      }

      if (this[2].__m_.__sig == opaque)
      {
        this[2].__m_.__sig = v12;
      }

      --*&this[2].__m_.__opaque[8];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, opaque);
      v16 = *(opaque + 6);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      operator delete(opaque);
    }
  }

  std::mutex::unlock(this + 1);
  *a2 = 0;
  v17 = *&this->__m_.__opaque[24];

  return telephonytransport::PCIClientTransport::transportFree(v17, v4);
}

uint64_t telephonytransport::PCIClientImpl::read(telephonytransport::PCIClientTransport **this, void *a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned int *a6)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::read(this[4], a2, a3, a4, a5, &v8);
  if (result)
  {
    *a6 = v8;
  }

  return result;
}

uint64_t non-virtual thunk totelephonytransport::PCIClientImpl::read(telephonytransport::PCIClientTransport **this, void *a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned int *a6)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::read(this[1], a2, a3, a4, a5, &v8);
  if (result)
  {
    *a6 = v8;
  }

  return result;
}

uint64_t telephonytransport::PCIClientImpl::readRegister(telephonytransport::PCIClientTransport **this, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6, unsigned int *a7)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::readRegister(this[4], a2, a3, a4, a5, a6, &v9);
  if (result)
  {
    *a7 = v9;
  }

  return result;
}

uint64_t non-virtual thunk totelephonytransport::PCIClientImpl::readRegister(telephonytransport::PCIClientTransport **this, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6, unsigned int *a7)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::readRegister(this[1], a2, a3, a4, a5, a6, &v9);
  if (result)
  {
    *a7 = v9;
  }

  return result;
}

BOOL telephonytransport::PCIClientImpl::write(telephonytransport::PCIClientTransport **this, void *a2, unsigned __int8 *a3, unsigned int a4, int a5, unsigned int *a6)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::write(this[4], a2, a3, a4, a5, &v8);
  if (result)
  {
    *a6 = v8;
  }

  return result;
}

BOOL non-virtual thunk totelephonytransport::PCIClientImpl::write(telephonytransport::PCIClientTransport **this, void *a2, unsigned __int8 *a3, unsigned int a4, int a5, unsigned int *a6)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::write(this[1], a2, a3, a4, a5, &v8);
  if (result)
  {
    *a6 = v8;
  }

  return result;
}

BOOL telephonytransport::PCIClientImpl::sendImage(telephonytransport::PCIClientTransport **this, void *a2, unsigned __int8 *a3, unsigned int a4, int a5, unsigned int *a6, unsigned int *a7)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::sendImage(this[4], a2, a3, a4, a5, &v9, a7);
  if (result)
  {
    *a6 = v9;
  }

  return result;
}

BOOL non-virtual thunk totelephonytransport::PCIClientImpl::sendImage(telephonytransport::PCIClientTransport **this, void *a2, unsigned __int8 *a3, unsigned int a4, int a5, unsigned int *a6, unsigned int *a7)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = telephonytransport::PCIClientTransport::sendImage(this[1], a2, a3, a4, a5, &v9, a7);
  if (result)
  {
    *a6 = v9;
  }

  return result;
}

void ___ZN18telephonytransport13PCIClientImpl18startTCPServerOnceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  atomic_store(1u, (v1 + 152));
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("PCIClientTCPServer", v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 8);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v17 = v5;
      v18 = v6;
      std::__shared_weak_count::__release_weak(v4);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v17 = 0;
      v18 = 0;
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, "lo0");
  std::string::basic_string[abi:ne200100]<0>(__p, &unk_2980B6DD9);
  telephonytransport::TCPServer::create(&v17, &object, v14, __p, 7000, "pci", buf);
  v8 = *buf;
  memset(buf, 0, sizeof(buf));
  v9 = *(v1 + 56);
  *(v1 + 48) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v10 = v18;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (!*(v1 + 48))
  {
    v3 = *telephonytransport::getDefaultOSLogHandle(v10);
    v10 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (v10)
    {
      *buf = 0;
      _os_log_fault_impl(&dword_29808D000, v3, OS_LOG_TYPE_FAULT, "Unable to start tcp server", buf, 2u);
    }

    __break(1u);
  }

  v11 = *telephonytransport::getDefaultOSLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29808D000, v11, OS_LOG_TYPE_INFO, "Oversteer: Waiting for connection...", buf, 2u);
  }

  if (v3)
  {
    dispatch_release(v3);
  }
}

void sub_29809A6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, dispatch_object_t object, uint64_t a23, std::__shared_weak_count *a24)
{
  if (v24)
  {
    dispatch_release(v24);
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