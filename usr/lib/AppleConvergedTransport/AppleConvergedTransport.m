uint64_t std::shared_ptr<pci::event::Listener>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

double AppleConvergedTransportInitParameters(uint64_t a1)
{
  if (a1)
  {
    return pci::transport::th::initParams(a1);
  }

  return result;
}

uint64_t AppleConvergedTransportCreate(_BOOL8 a1, void *a2)
{
  if (a2)
  {
    a1 = pci::transport::th::validateParams(a1);
    if (a1)
    {
      *a2 = 0;
      memset(buf, 170, sizeof(buf));
      pci::transport::th::create(buf);
    }
  }

  v3 = pci::log::get(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_295FEE000, v3, OS_LOG_TYPE_DEFAULT, "bad parameter", buf, 2u);
  }

  return 0;
}

void sub_295FEEBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL AppleConvergedTransportFree(unint64_t *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    pci::system::info::get(&buf);
    pci::system::info::getTH(buf, *a1, &v9);
    v2 = *(&buf + 1);
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    v3 = v9;
    if (v9)
    {
      pci::system::info::get(&buf);
      pci::system::info::eraseTH(buf, *a1);
      if (*(&buf + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
      }
    }

    else
    {
      v6 = pci::log::get(v2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *a1;
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_295FEE000, v6, OS_LOG_TYPE_DEFAULT, "handle %p is not valid", &buf, 0xCu);
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v3)
    {
      *a1 = 0;
      result = 1;
      goto LABEL_16;
    }

LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v4 = pci::log::get(0);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_295FEE000, v4, OS_LOG_TYPE_DEFAULT, "bad parameter", &v9, 2u);
    goto LABEL_15;
  }

LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_295FEED90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void (*AppleConvergedTransportWrite(pci::log *a1, const unsigned __int8 *a2, int a3, _DWORD *a4, int a5, void (*a6)(void *)))(void *)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3 && a2 && a4)
  {
    *a4 = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    pci::system::info::get(&buf);
    pci::system::info::getTH(buf, a1, &v15);
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    if (v15)
    {
      if (*(v15 + 75) == 1)
      {
        pci::transport::th::writeAsync(v15, a2, a3, a6);
      }

      pci::transport::th::write(v15, a2, a3, a6, a5);
    }

    v12 = pci::log::get(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_295FEE000, v12, OS_LOG_TYPE_DEFAULT, "handle %p is not valid", &buf, 0xCu);
    }

    if (a6)
    {
      a6(a2);
      a6 = 0;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v11 = pci::log::get(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_295FEE000, v11, OS_LOG_TYPE_DEFAULT, "invalid parameter", &v15, 2u);
    }

    if (a6)
    {
      a6(a2);
      a6 = 0;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return a6;
}

void sub_295FEEF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void (*AppleConvergedTransportRead(pci::log *a1, const unsigned __int8 *a2, unsigned int a3, _DWORD *a4, int a5, void (*a6)(void *)))(void *)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = a3;
  if (a3 && a2 && a4)
  {
    *a4 = 0;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    pci::system::info::get(&buf);
    pci::system::info::getTH(buf, a1, &v18);
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    if (v18)
    {
      if (*(v18 + 75) != 1)
      {
        pci::transport::th::read(v18, a2, &v20, a6, a5);
      }

      v10 = pci::log::get(v18);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      LOWORD(buf) = 0;
      v11 = "client cannot issue read for async transport";
      v12 = v10;
      v13 = 2;
    }

    else
    {
      v15 = pci::log::get(0);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:
        if (a6)
        {
          a6(a2);
          a6 = 0;
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        goto LABEL_22;
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      v11 = "handle %p is not valid";
      v12 = v15;
      v13 = 12;
    }

    _os_log_impl(&dword_295FEE000, v12, OS_LOG_TYPE_DEFAULT, v11, &buf, v13);
    goto LABEL_17;
  }

  v14 = pci::log::get(a1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_295FEE000, v14, OS_LOG_TYPE_DEFAULT, "invalid parameter", &v18, 2u);
  }

  if (a6)
  {
    a6(a2);
    a6 = 0;
  }

LABEL_22:
  v16 = *MEMORY[0x29EDCA608];
  return a6;
}

void sub_295FEF1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void (*AppleConvergedTransportSendImage(pci::log *a1, const unsigned __int8 *a2, int a3, _DWORD *a4, int a5, _DWORD *a6, void (*a7)(void *)))(void *)
{
  v20 = *MEMORY[0x29EDCA608];
  v18 = 0;
  if (a3 && a2 && a4 && a6)
  {
    *a4 = 0;
    *a6 = 0;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    pci::system::info::get(&buf);
    pci::system::info::getTH(buf, a1, &v16);
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    if (v16)
    {
      if (*(v16 + 75) == 1)
      {
        pci::transport::th::sendImageAsync(v16, a2, a3, a7);
      }

      pci::transport::th::sendImage(v16, a2, a3, &v18, a7, a5);
    }

    v13 = pci::log::get(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_295FEE000, v13, OS_LOG_TYPE_DEFAULT, "handle %p is not valid", &buf, 0xCu);
    }

    if (a7)
    {
      a7(a2);
      a7 = 0;
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v12 = pci::log::get(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_295FEE000, v12, OS_LOG_TYPE_DEFAULT, "invalid parameter", &v16, 2u);
    }

    if (a7)
    {
      a7(a2);
      a7 = 0;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return a7;
}

void sub_295FEF3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleConvergedTransportReadRegister(pci::log *a1, int a2, const unsigned __int8 *a3, unsigned int a4, _DWORD *a5)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a4;
  if (a4 && a3 && a5)
  {
    *a5 = 0;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    pci::system::info::get(&buf);
    pci::system::info::getTH(buf, a1, &v12);
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    if (v12)
    {
      pci::transport::th::readRegister(v12, a2, a3, &v14, -1);
    }

    v9 = pci::log::get(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEFAULT, "handle %p is not valid", &buf, 0xCu);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v8 = pci::log::get(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_295FEE000, v8, OS_LOG_TYPE_DEFAULT, "invalid parameters", &v12, 2u);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_295FEF580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL AppleConvergedTransportIsValid(unint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  pci::system::info::get(&buf);
  pci::system::info::getTH(buf, a1, &v7);
  v2 = *(&buf + 1);
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
  }

  v3 = v7;
  if (!v7)
  {
    v4 = pci::log::get(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_295FEE000, v4, OS_LOG_TYPE_DEFAULT, "handle %p is not valid", &buf, 0xCu);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  result = v3 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_295FEF6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AppleConvergedTransportRegisterEventBlock(uint64_t a1)
{
  std::mutex::lock(&eventLock);
  if (!eventListener)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = __AppleConvergedTransportRegisterEventBlock_block_invoke;
    aBlock[3] = &unk_29EDECF50;
    aBlock[4] = a1;
    v4 = _Block_copy(aBlock);
    if (v4)
    {
      _Block_copy(v4);
    }

    pci::event::Listener::create();
  }

  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_295FEE000, v3, OS_LOG_TYPE_DEFAULT, "another block is already registered", buf, 2u);
  }

  std::mutex::unlock(&eventLock);
  return 0;
}

void sub_295FEF84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  std::mutex::unlock(&eventLock);
  _Unwind_Resume(a1);
}

uint64_t __AppleConvergedTransportRegisterEventBlock_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  return (*(v3 + 16))(v3, a2, a3);
}

uint64_t AppleConvergedTransportRegisterEventBlockQ(uint64_t a1)
{
  std::mutex::lock(&eventLock);
  if (!eventListener)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = __AppleConvergedTransportRegisterEventBlockQ_block_invoke;
    aBlock[3] = &unk_29EDECF78;
    aBlock[4] = a1;
    v4 = _Block_copy(aBlock);
    if (v4)
    {
      _Block_copy(v4);
    }

    pci::event::Listener::create();
  }

  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_295FEE000, v3, OS_LOG_TYPE_DEFAULT, "another block is already registered", buf, 2u);
  }

  std::mutex::unlock(&eventLock);
  return 0;
}

void sub_295FEFA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  std::mutex::unlock(&eventLock);
  _Unwind_Resume(a1);
}

uint64_t __AppleConvergedTransportRegisterEventBlockQ_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  return (*(v3 + 16))(v3, a2, a3);
}

BOOL AppleConvergedTransportUnregisterEventBlock()
{
  std::mutex::lock(&eventLock);
  v1 = eventListener;
  if (eventListener)
  {
    v2 = *(&eventListener + 1);
    eventListener = 0uLL;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else
  {
    v3 = pci::log::get(v0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_295FEE000, v3, OS_LOG_TYPE_DEFAULT, "no block registered", v5, 2u);
    }
  }

  std::mutex::unlock(&eventLock);
  return v1 != 0;
}

uint64_t AppleConvergedTransportRegisterTimeSyncEventBlock()
{
  v5 = *MEMORY[0x29EDCA608];
  std::mutex::lock(&eventLock);
  if (!timesyncListener)
  {
    operator new();
  }

  v1 = pci::log::get(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_295FEE000, v1, OS_LOG_TYPE_DEFAULT, "another block is already registered", buf, 2u);
  }

  std::mutex::unlock(&eventLock);
  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AppleConvergedTransportRegisterTimeSyncEventBlockQ()
{
  v5 = *MEMORY[0x29EDCA608];
  std::mutex::lock(&eventLock);
  if (!timesyncListener)
  {
    operator new();
  }

  v1 = pci::log::get(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_295FEE000, v1, OS_LOG_TYPE_DEFAULT, "another block is already registered", buf, 2u);
  }

  std::mutex::unlock(&eventLock);
  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

pci::log *AppleConvergedTransportUnregisterTimeSyncEventBlock()
{
  std::mutex::lock(&eventLock);
  if (timesyncListener)
  {
    ACIPCBTControlClass::deregisterEventNotification(timesyncListener, 0);
    v0 = ACIPCBTControlClass::stop(timesyncListener);
    v1 = v0;
    if ((v0 & 1) == 0)
    {
      v2 = pci::log::get(v0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 0;
        _os_log_impl(&dword_295FEE000, v2, OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::stop() returned failure", v6, 2u);
      }
    }

    if (timesyncListener)
    {
      v3 = MEMORY[0x29C255C60]();
      MEMORY[0x29C255E00](v3, 0x10A0C404E5F9E8ELL);
    }

    timesyncListener = 0;
  }

  else
  {
    v4 = pci::log::get(0);
    v1 = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_295FEE000, v4, OS_LOG_TYPE_DEFAULT, "no block registered", buf, 2u);
      v1 = 0;
    }
  }

  std::mutex::unlock(&eventLock);
  return v1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t _GLOBAL__sub_I_AppleConvergedTransport_cpp()
{
  __cxa_atexit(MEMORY[0x29EDC93D8], &eventLock, &dword_295FEE000);

  return __cxa_atexit(std::shared_ptr<pci::event::Listener>::~shared_ptr[abi:ne200100], &eventListener, &dword_295FEE000);
}

void pci::system::info::get(void *a1@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    pci::system::info::get();
  }

  if (pci::system::info::get(void)::sOnce != -1)
  {
    pci::system::info::get();
  }

  v3 = *(&xmmword_2A18B8950 + 1);
  *a1 = xmmword_2A18B8950;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::shared_ptr<pci::system::info>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

pci::system::info *pci::system::info::info(pci::system::info *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  v2 = dispatch_workloop_create("com.apple.AppleConvergedIPC.pci_workloop");
  *(this + 11) = 0;
  *(this + 10) = this + 88;
  *(this + 3) = v2;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  *(this + 9) = 0;
  *(this + 12) = 0;
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::system::info::info(v3);
  }

  return this;
}

void sub_295FF03D0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>>>::destroy(v3, *(v1 + 88));
  std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(v4, *(v1 + 64));
  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(v2, *(v1 + 40));
  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void pci::system::info::~info(dispatch_object_t *this)
{
  dispatch_release(this[3]);
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::system::info::info(v3);
  }

  std::__tree<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>>>::destroy((this + 10), this[11]);
  std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy((this + 7), this[8]);
  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy((this + 4), this[5]);
  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void pci::system::info::insertTH(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 4);
  ++pci::system::info::insertTH(std::shared_ptr<pci::transport::th>)::unique;
  v3 = a2[1];
  v4 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__emplace_multi<std::pair<void const*,std::shared_ptr<pci::transport::th>>>();
}

void sub_295FF052C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pci::system::info::eraseTH(pci::system::info *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *(this + 5);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = (this + 40);
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == (this + 40) || v5[4] > a2)
  {
LABEL_9:
    pci::system::info::eraseTH();
  }

  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::erase(this + 4, v5);
  os_unfair_lock_unlock(this + 4);
  return 1;
}

void pci::system::info::getTH(os_unfair_lock_s *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  os_unfair_lock_lock(this + 4);
  v6 = *&this[10]._os_unfair_lock_opaque;
  if (v6)
  {
    v7 = this + 10;
    do
    {
      v8 = *&v6[8]._os_unfair_lock_opaque;
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * v10]._os_unfair_lock_opaque;
    }

    while (v6);
    if (v7 != &this[10] && *&v7[8]._os_unfair_lock_opaque <= a2)
    {
      v12 = *&v7[10]._os_unfair_lock_opaque;
      v11 = *&v7[12]._os_unfair_lock_opaque;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *a3 = v12;
      a3[1] = v11;
    }
  }

  os_unfair_lock_unlock(this + 4);
}

uint64_t pci::system::info::insertBH(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v66 = a2;
  v8 = pci::log::get(a1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    pci::system::info::insertBH(a2, v8, v9, v10, v11, v12, v13, v14);
  }

  os_unfair_lock_lock((a1 + 16));
  v15 = *(a1 + 64);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = a1 + 64;
  do
  {
    if (*(v15 + 32) >= v66)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v66));
  }

  while (v15);
  if (v16 != a1 + 64 && v66 >= *(v16 + 32))
  {
    v32 = (a1 + 88);
    v31 = *(a1 + 88);
    if (!v31)
    {
      goto LABEL_25;
    }

    v33 = a1 + 88;
    do
    {
      if (*(v31 + 32) >= v66)
      {
        v33 = v31;
      }

      v31 = *(v31 + 8 * (*(v31 + 32) < v66));
    }

    while (v31);
    if (v33 != v32 && v66 >= *(v33 + 32))
    {
      os_unfair_lock_unlock((a1 + 16));
      v46 = pci::log::get(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        pci::system::info::insertBH(&v66, v46, v47, v48, v49, v50, v51, v52);
      }

      return 0;
    }

    else
    {
LABEL_25:
      v62 = 0;
      v63 = &v62;
      v64 = 0x2000000000;
      v65 = 1;
      v56 = 0;
      v57 = &v56;
      v58 = 0x3002000000;
      v59 = __Block_byref_object_copy_;
      v60 = __Block_byref_object_dispose_;
      object = 0xAAAAAAAAAAAAAAAALL;
      object = dispatch_semaphore_create(0);
      v53[0] = MEMORY[0x29EDCA5F8];
      v53[1] = 1174405120;
      v53[2] = ___ZN3pci6system4info8insertBHEiNSt3__18weak_ptrINS_9transport2bhEEEj_block_invoke;
      v53[3] = &unk_2A1D1BA60;
      v53[4] = &v62;
      v55 = v66;
      v35 = *a3;
      v34 = a3[1];
      v53[6] = a1;
      v53[7] = v35;
      v54 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v53[5] = &v56;
      v36 = _Block_copy(v53);
      v37 = v36;
      if (v36)
      {
        v38 = _Block_copy(v36);
      }

      else
      {
        v38 = 0;
      }

      v67 = &v66;
      v39 = std::__tree<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 80, &v66);
      v40 = v39[5];
      v39[5] = v38;
      if (v40)
      {
        _Block_release(v40);
      }

      os_unfair_lock_unlock((a1 + 16));
      v41 = v57;
      if (a4 == -1)
      {
        v42 = -1;
      }

      else
      {
        v42 = dispatch_time(0, 1000000 * a4);
      }

      if (dispatch_semaphore_wait(v41[5], v42))
      {
        os_unfair_lock_lock((a1 + 16));
        if (v37)
        {
          v43 = *v32;
          if (*v32)
          {
            v44 = a1 + 88;
            do
            {
              if (*(v43 + 32) >= v66)
              {
                v44 = v43;
              }

              v43 = *(v43 + 8 * (*(v43 + 32) < v66));
            }

            while (v43);
            if (v44 != v32 && v66 >= *(v44 + 32))
            {
              v37[2](v37, 0);
              std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer((a1 + 80), v44);
              std::__destroy_at[abi:ne200100]<std::pair<int const,applesauce::dispatch::v1::block<void ()(BOOL)>>,0>(v44 + 32);
              operator delete(v44);
            }
          }
        }

        os_unfair_lock_unlock((a1 + 16));
        dispatch_semaphore_wait(v57[5], 0xFFFFFFFFFFFFFFFFLL);
      }

      v29 = *(v63 + 24);
      if (v54)
      {
        std::__shared_weak_count::__release_weak(v54);
      }

      _Block_object_dispose(&v56, 8);
      if (object)
      {
        dispatch_release(object);
      }

      if (v37)
      {
        _Block_release(v37);
      }

      _Block_object_dispose(&v62, 8);
    }
  }

  else
  {
LABEL_10:
    v56 = &v66;
    v17 = std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 56, &v66);
    v19 = *a3;
    v18 = a3[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v20 = v17[6];
    v17[5] = v19;
    v17[6] = v18;
    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    os_unfair_lock_unlock((a1 + 16));
    v22 = pci::log::get(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      pci::system::info::insertBH(&v66, v22, v23, v24, v25, v26, v27, v28);
    }

    return 1;
  }

  return v29;
}

void sub_295FF0A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, dispatch_object_t object)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _Block_object_dispose(&a19, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  _Block_object_dispose((v25 - 96), 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

intptr_t ___ZN3pci6system4info8insertBHEiNSt3__18weak_ptrINS_9transport2bhEEEj_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = pci::log::get(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    ___ZN3pci6system4info8insertBHEiNSt3__18weak_ptrINS_9transport2bhEEEj_block_invoke_cold_1(a2, v5, v6, v7, v8, v9, v10, v11);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (a2)
  {
    v12 = std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v4 + 56, (a1 + 72));
    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    }

    v15 = v12[6];
    v12[5] = v14;
    v12[6] = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

uint64_t __copy_helper_block_e8_56c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t pci::system::info::removeBH(pci::system::info *this, uint64_t a2)
{
  v4 = pci::log::get(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    pci::system::info::insertBH(a2, v4, v5, v6, v7, v8, v9, v10);
  }

  os_unfair_lock_lock(this + 4);
  v11 = *(this + 8);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = (this + 64);
  do
  {
    if (*(v11 + 8) >= a2)
    {
      v12 = v11;
    }

    v11 = v11[*(v11 + 8) < a2];
  }

  while (v11);
  if (v12 == (this + 64) || *(v12 + 8) > a2)
  {
LABEL_10:
    pci::system::info::removeBH();
  }

  std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::erase(this + 7, v12);
  v13 = *(this + 11);
  if (v13)
  {
    v14 = this + 88;
    do
    {
      if (*(v13 + 8) >= a2)
      {
        v14 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < a2)];
    }

    while (v13);
    if (v14 != this + 88 && *(v14 + 8) <= a2)
    {
      (*(*(v14 + 5) + 16))();
      std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(this + 10, v14);
      std::__destroy_at[abi:ne200100]<std::pair<int const,applesauce::dispatch::v1::block<void ()(BOOL)>>,0>((v14 + 32));
      operator delete(v14);
    }
  }

  os_unfair_lock_unlock(this + 4);
  return 1;
}

void std::shared_ptr<pci::system::info>::shared_ptr[abi:ne200100]<pci::system::info,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_295FF0DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::system::info>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<pci::system::info>::__enable_weak_this[abi:ne200100]<pci::system::info,pci::system::info,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

dispatch_object_t **std::unique_ptr<pci::system::info>::~unique_ptr[abi:ne200100](dispatch_object_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::system::info::~info(v2);
    MEMORY[0x29C255E00]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::system::info *,std::shared_ptr<pci::system::info>::__shared_ptr_default_delete<pci::system::info,pci::system::info>,std::allocator<pci::system::info>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C255E00);
}

dispatch_object_t *std::__shared_ptr_pointer<pci::system::info *,std::shared_ptr<pci::system::info>::__shared_ptr_default_delete<pci::system::info,pci::system::info>,std::allocator<pci::system::info>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::system::info::~info(result);

    JUMPOUT(0x29C255E00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::system::info *,std::shared_ptr<pci::system::info>::__shared_ptr_default_delete<pci::system::info,pci::system::info>,std::allocator<pci::system::info>>::__get_deleter(uint64_t a1, uint64_t a2)
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

void std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<int const,applesauce::dispatch::v1::block<void ()(BOOL)>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<int const,applesauce::dispatch::v1::block<void ()(BOOL)>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
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

uint64_t *std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
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

      else
      {
        v18 = v7;
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
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
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
    goto LABEL_68;
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

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
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
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

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
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::__map_value_compare<int,std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,std::less<int>,true>,std::allocator<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,applesauce::dispatch::v1::block<void ()(BOOL)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<int const,applesauce::dispatch::v1::block<void ()(BOOL)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::__map_value_compare<int,std::__value_type<int,std::weak_ptr<pci::transport::bh>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::weak_ptr<pci::transport::bh>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void pci::transport::bh::create(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  operator new();
}

void sub_295FF1AF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pci::transport::bh::init(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = *(a2 + 8);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3002000000;
  v15[3] = __Block_byref_object_copy__0;
  v15[4] = __Block_byref_object_dispose__0;
  v16 = 0;
  v4 = pci::log::get(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::init(a1);
  }

  v5 = *(a1 + 88);
  v6 = *(a1 + 28);
  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, a1);
  v13 = *buf;
  v14 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
  }

  inserted = pci::system::info::insertBH(v5, v6, &v13, *(a2 + 4));
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v8 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (inserted)
  {
    *(a1 + 32) = 1;
    operator new();
  }

  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 28);
    *buf = 136315650;
    *&buf[4] = "bh";
    *&buf[12] = 2048;
    *&buf[14] = a1;
    v22 = 1024;
    v23 = v10;
    _os_log_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEFAULT, "%s::%p::%d:failed to insert in system", buf, 0x1Cu);
  }

  _Block_object_dispose(v15, 8);
  if (v16)
  {
    _Block_release(v16);
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_295FF22D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, dispatch_object_t object, uint64_t a46, std::__shared_weak_count *a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *aBlock, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v62 = v60 - 152;
  v63 = -128;
  do
  {
    if (*(v62 + 23) < 0)
    {
      operator delete(*v62);
    }

    v62 -= 32;
    v63 += 32;
  }

  while (v63);
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  if (object)
  {
    dispatch_release(object);
    if (!v59)
    {
LABEL_13:
      if (!v58)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (!v59)
  {
    goto LABEL_13;
  }

  dispatch_release(v59);
  if (!v58)
  {
LABEL_15:
    _Block_object_dispose(&a48, 8);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    _Block_object_dispose(&a54, 8);
    _Block_object_dispose(&a58, 8);
    _Unwind_Resume(a1);
  }

LABEL_14:
  std::__shared_weak_count::__release_weak(v58);
  goto LABEL_15;
}

uint64_t pci::transport::bh::bh(uint64_t a1, unsigned int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>(v13, "pci_transport_bh");
  std::string::basic_string[abi:ne200100]<0>(v11, "_");
  p_p = &__p;
  pci::transport::bh::generateString(a1, v13, v11, *a2);
  if (v16 < 0)
  {
    p_p = __p;
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_attr_make_with_qos_class(initially_inactive, a2[8], 0);
  *(a1 + 16) = dispatch_queue_create(p_p, v6);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  *(a1 + 28) = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = a1 + 64;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  pci::system::info::get((a1 + 88));
  v7 = *(a2 + 2);
  *(a1 + 104) = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  dispatch_set_target_queue(*(a1 + 16), *(a2 + 3));
  dispatch_activate(*(a1 + 16));
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::bh(a1, (a1 + 28));
  }

  return a1;
}

void sub_295FF2614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  applesauce::dispatch::v1::group_session::~group_session(v23);
  v25 = v21[12];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__list_imp<void const*>::clear(v22);
  v26 = v21[7];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = v21[2];
  if (v27)
  {
    dispatch_release(v27);
  }

  v28 = v21[1];
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t pci::transport::bh::generateString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[7] = v7;
  v22[8] = v7;
  v22[5] = v7;
  v22[6] = v7;
  v22[3] = v7;
  v22[4] = v7;
  v22[1] = v7;
  v22[2] = v7;
  v21 = v7;
  v22[0] = v7;
  *__p = v7;
  v20 = v7;
  v18[1] = v7;
  v18[2] = v7;
  v17 = v7;
  v18[0] = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v9, v10);
  v12 = *(a3 + 23);
  if (v12 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  MEMORY[0x29C255D00](v15, a4);
  std::stringbuf::str();
  *&v17 = *MEMORY[0x29EDC9538];
  *(&v18[-1] + *(v17 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v17 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x29C255DD0](v22);
}

void sub_295FF2868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C255DD0](v9 + 112);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void pci::transport::bh::~bh(pci::system::info **this)
{
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::init(this);
  }

  if (this[10])
  {
    __assert_rtn("~bh", "PCITransportBH.cpp", 79, "fCBL.empty()");
  }

  v3 = this[6];
  if (v3)
  {
    pci::transport::task::complete(v3, -536870183, 0, -1);
    v4 = this[7];
    this[6] = 0;
    this[7] = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  if (this[5])
  {
    v5 = MEMORY[0x29C255BF0]();
    MEMORY[0x29C255E00](v5, 0x10F0C40BBF4CE08);
    this[5] = 0;
  }

  if (*(this + 32) == 1)
  {
    pci::system::info::removeBH(this[11], *(this + 7));
    *(this + 32) = 0;
  }

  v6 = this[12];
  this[11] = 0;
  this[12] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bh::~bh(this);
  }

  v8 = this[13];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = this[13];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  v10 = this[12];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__list_imp<void const*>::clear(this + 8);
  v11 = this[7];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[2];
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = this[1];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

intptr_t ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke(uint64_t a1, int a2, int a3, int a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 48);
  v9 = pci::log::get(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(v8 + 28);
    v19 = 136316418;
    v20 = "bh";
    v21 = 2048;
    v22 = v8;
    v23 = 1024;
    v24 = v18;
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    _os_log_debug_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d:in addComp added %u, started %u, service 0x%x", &v19, 0x2Eu);
  }

  os_unfair_lock_assert_owner((v8 + 24));
  *(*(*(a1 + 32) + 8) + 24) = a2 & a3;
  if (*(*(*(a1 + 32) + 8) + 24) != 1)
  {
    goto LABEL_12;
  }

  v10 = ACIPCBTClass::open(*(v8 + 40));
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  if (v10 != -536870203)
  {
    v14 = pci::log::get(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v8 + 28);
      v19 = 136315906;
      v20 = "bh";
      v21 = 2048;
      v22 = v8;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&dword_295FEE000, v14, OS_LOG_TYPE_DEFAULT, "%s::%p::%d:failed to open 0x%x", &v19, 0x22u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_12:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_13;
  }

  v12 = pci::log::get(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v8 + 28);
    v19 = 136315906;
    v20 = "bh";
    v21 = 2048;
    v22 = v8;
    v23 = 1024;
    v24 = v13;
    v25 = 1024;
    v26 = -536870203;
    _os_log_impl(&dword_295FEE000, v12, OS_LOG_TYPE_DEFAULT, "%s::%p::%d:failed to open 0x%x", &v19, 0x22u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_13:
  result = dispatch_semaphore_signal(*(a1 + 56));
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void __copy_helper_block_e8_56c40_ZTSN10applesauce8dispatch2v19semaphoreE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 56) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_56c40_ZTSN10applesauce8dispatch2v19semaphoreE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_5(void *a1, uint64_t a2)
{
  v3 = a1[7];
  if (v3)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v8 = pci::log::get(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_5_cold_1(v5);
        }

        os_unfair_lock_lock(v5 + 6);
        v9 = *(*(a1[4] + 8) + 40);
        if (v9)
        {
          (*(v9 + 16))(v9, 1, 1, a2);
          v10 = *(a1[4] + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = 0;
          if (v11)
          {
            _Block_release(v11);
          }
        }

        os_unfair_lock_unlock(v5 + 6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t __copy_helper_block_e8_48c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_8(void *a1)
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
        v6 = pci::log::get(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_8_cold_1(v3);
        }

        os_unfair_lock_lock((v3 + 24));
        if (*(v3 + 48))
        {
          if ((*(v3 + 33) & 1) == 0)
          {
            __assert_rtn("init_block_invoke", "PCITransportBH.cpp", 236, "fActive");
          }

          v8 = pci::log::get(v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_8_cold_2(v3);
          }

          v10 = *(v3 + 48);
          v9 = *(v3 + 56);
          *(v3 + 48) = 0;
          *(v3 + 56) = 0;
          os_unfair_lock_unlock((v3 + 24));
          if (v10)
          {
            pci::transport::task::complete(v10, 0, 0, 0);
          }

          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }
        }

        else
        {
          os_unfair_lock_unlock((v3 + 24));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_295FF2FB0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3pci9transport2bhEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_11(void *a1, int a2, int a3, int a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        os_unfair_lock_lock(v9 + 6);
        v13 = pci::log::get(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          os_unfair_lock_opaque = v9[7]._os_unfair_lock_opaque;
          v16 = 136316674;
          v17 = "bh";
          v18 = 2048;
          v19 = v9;
          v20 = 1024;
          v21 = os_unfair_lock_opaque;
          v22 = 2080;
          ACIPCErrorTypeString = getACIPCErrorTypeString();
          v24 = 1024;
          v25 = a2;
          v26 = 1024;
          v27 = a3;
          v28 = 1024;
          v29 = a4;
          _os_log_impl(&dword_295FEE000, v13, OS_LOG_TYPE_DEFAULT, "%s::%p::%d:%s (%u): param 0x%x: status 0x%x", &v16, 0x38u);
        }

        os_unfair_lock_unlock(v9 + 6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
}

void pci::transport::bh::setNotify(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 48))
  {
    pci::transport::bh::setNotify();
  }

  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  os_unfair_lock_unlock((a1 + 24));
}

void pci::transport::bh::generateCallback(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3802000000;
  v21[3] = __Block_byref_object_copy__17;
  v21[4] = __Block_byref_object_dispose__18;
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(v22, a1);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3pci9transport2bh16generateCallbackENSt3__110shared_ptrINS0_4taskEEEPKcb_block_invoke;
  aBlock[3] = &unk_2A1D1BBE0;
  aBlock[4] = v21;
  aBlock[5] = v19;
  v14 = a4;
  aBlock[6] = &v15;
  aBlock[7] = a1;
  v11 = *a2;
  v10 = a2[1];
  aBlock[8] = a3;
  aBlock[9] = v11;
  aBlock[10] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = _Block_copy(aBlock);
  *a5 = v12;
  v16[3] = v12;
  os_unfair_lock_lock((a1 + 24));
  operator new();
}

void sub_295FF33BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 120), 8);
  v29 = *(v27 - 72);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN3pci9transport2bh16generateCallbackENSt3__110shared_ptrINS0_4taskEEEPKcb_block_invoke(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 56);
  os_unfair_lock_lock((v8 + 24));
  dispatch_assert_queue_V2(*(v8 + 16));
  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 24) == 1)
  {
    ___ZN3pci9transport2bh16generateCallbackENSt3__110shared_ptrINS0_4taskEEEPKcb_block_invoke_cold_1();
  }

  *(v10 + 24) = 1;
  v11 = pci::log::get(v9);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    v17 = *(v8 + 28);
    v18 = *(a1 + 64);
    v19 = 136316674;
    v20 = "bh";
    v21 = 2048;
    v22 = v8;
    v23 = 1024;
    v24 = v17;
    v25 = 2080;
    v26 = v18;
    v27 = 1024;
    v28 = a2;
    v29 = 1024;
    v30 = a3;
    v31 = 1024;
    v32 = a4;
    _os_log_debug_impl(&dword_295FEE000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d:%s complete 0x%x, size %u, cookie %u", &v19, 0x38u);
  }

  if (((a2 == -536870168) & *(a1 + 88)) != 0)
  {
    a2 = 0;
  }

  if (a2)
  {
    v13 = pci::log::get(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v8 + 28);
      v15 = *(a1 + 64);
      v19 = 136316674;
      v20 = "bh";
      v21 = 2048;
      v22 = v8;
      v23 = 1024;
      v24 = v14;
      v25 = 2080;
      v26 = v15;
      v27 = 1024;
      v28 = a2;
      v29 = 1024;
      v30 = a3;
      v31 = 1024;
      v32 = a4;
      _os_log_impl(&dword_295FEE000, v13, OS_LOG_TYPE_DEFAULT, "%s::%p::%d:%s failed, complete 0x%x, size %u, cookie %u", &v19, 0x38u);
    }
  }

  std::list<void const*>::remove(v8 + 64, (*(*(a1 + 48) + 8) + 24));
  os_unfair_lock_unlock((v8 + 24));
  pci::transport::task::complete(*(a1 + 72), a2, a3, a4);
  v16 = *MEMORY[0x29EDCA608];
}

void *std::list<void const*>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<void const*>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<void const*>::clear(v10);
}

void sub_295FF3710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<void const*>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrIN3pci9transport4taskEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrIN3pci9transport4taskEEE(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void pci::transport::bh::invokeCallbackAsync(uint64_t a1, void **a2, int a3, int a4, int a5)
{
  v8 = *(a1 + 16);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3pci9transport2bh19invokeCallbackAsyncEN10applesauce8dispatch2v15blockIFvijjEEEijj_block_invoke;
  block[3] = &__block_descriptor_tmp_23_0;
  v9 = *a2;
  if (*a2)
  {
    v9 = _Block_copy(v9);
  }

  aBlock = v9;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  dispatch_async(v8, block);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void *__copy_helper_block_e8_32c44_ZTSN10applesauce8dispatch2v15blockIFvijjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c44_ZTSN10applesauce8dispatch2v15blockIFvijjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void pci::transport::bh::open(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  aBlock = 0xAAAAAAAAAAAAAAAALL;
  pci::transport::bh::generateCallback(a1, v3, "open pipe", 0, &aBlock);
}

void sub_295FF3AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pci::transport::bh::cmdCompletion(pci::transport::bh *this, void *a2)
{
  if (!this || (v3 = _Block_copy(this), (v4 = v3) == 0))
  {
    pci::transport::bh::cmdCompletion();
  }

  (*(v3 + 2))(v3, a2, 0, 0);
  _Block_release(v4);
  _Block_release(v4);
}

void pci::transport::bh::close(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  aBlock = 0xAAAAAAAAAAAAAAAALL;
  pci::transport::bh::generateCallback(a1, v3, "close pipe", 0, &aBlock);
}

void sub_295FF3E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pci::transport::bh::write(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  aBlock = 0xAAAAAAAAAAAAAAAALL;
  pci::transport::bh::generateCallback(a1, v3, "write", 0, &aBlock);
}

void sub_295FF408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pci::transport::bh::ioCompletion(pci::transport::bh *this, void *a2, uint64_t a3, void *a4)
{
  if (!this || (v6 = _Block_copy(this), (v7 = v6) == 0))
  {
    pci::transport::bh::ioCompletion();
  }

  (*(v6 + 2))(v6, a2, a3, 0);
  _Block_release(v7);
  _Block_release(v7);
}

void pci::transport::bh::read(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  aBlock = 0xAAAAAAAAAAAAAAAALL;
  pci::transport::bh::generateCallback(a1, v4, "read", a3, &aBlock);
}

void sub_295FF4368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pci::transport::bh::sendImage(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  aBlock = 0xAAAAAAAAAAAAAAAALL;
  pci::transport::bh::generateCallback(a1, v3, "send image", 0, &aBlock);
}

void sub_295FF45B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pci::transport::bh::imageCompletion(pci::transport::bh *this, void *a2, uint64_t a3, void *a4, void *a5)
{
  if (!this || (v8 = _Block_copy(this), (v9 = v8) == 0))
  {
    pci::transport::bh::imageCompletion();
  }

  (*(v8 + 2))(v8, a2, a3, a4);
  _Block_release(v9);
  _Block_release(v9);
}

void pci::transport::bh::readRegister(uint64_t a1, uint64_t *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  aBlock = 0xAAAAAAAAAAAAAAAALL;
  pci::transport::bh::generateCallback(a1, v3, "read register", 0, &aBlock);
}

void sub_295FF4864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void applesauce::dispatch::v1::group_session::~group_session(dispatch_object_t *this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_group_leave(v2);
    if (*this)
    {
      dispatch_release(*this);
    }
  }
}

void *std::__list_imp<void const*>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_295FF4A9C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C255DD0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C255D80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_295FF4B58(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C255CC0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C255CD0](v13);
  return a1;
}

void sub_295FF4DD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C255CD0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x295FF4DB0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2]) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_295FF5010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDECF38, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t *std::map<PCITransportInterface,std::string>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::map<PCITransportInterface,std::string>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,std::string> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,std::string> const&>(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = *std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::__find_equal<PCITransportInterface>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::__construct_node<std::pair<PCITransportInterface const,std::string> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::__find_equal<PCITransportInterface>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_295FF55CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCITransportInterface,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCITransportInterface,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCITransportInterface,std::string>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,std::string>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDECF40, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

uint64_t *std::map<PCITransportRegister,unsigned int>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_295FF5920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::transport::bh>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::system::info ***std::unique_ptr<pci::transport::bh>::~unique_ptr[abi:ne200100](pci::system::info ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::transport::bh::~bh(v2);
    MEMORY[0x29C255E00]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::transport::bh *,std::shared_ptr<pci::transport::bh>::__shared_ptr_default_delete<pci::transport::bh,pci::transport::bh>,std::allocator<pci::transport::bh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C255E00);
}

pci::system::info **std::__shared_ptr_pointer<pci::transport::bh *,std::shared_ptr<pci::transport::bh>::__shared_ptr_default_delete<pci::transport::bh,pci::transport::bh>,std::allocator<pci::transport::bh>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::transport::bh::~bh(result);

    JUMPOUT(0x29C255E00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::bh *,std::shared_ptr<pci::transport::bh>::__shared_ptr_default_delete<pci::transport::bh,pci::transport::bh>,std::allocator<pci::transport::bh>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

uint64_t std::list<void const*>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 28);
  return result;
}

uint64_t _GLOBAL__sub_I_PCITransportBH_cpp()
{
  qword_2A18B8970 = 0;
  qword_2A18B8968 = 0;
  pciTransportToACIPCRegisterMap = &qword_2A18B8968;
  return __cxa_atexit(std::map<PCITransportRegister,unsigned int>::~map[abi:ne200100], &pciTransportToACIPCRegisterMap, &dword_295FEE000);
}

void pci::event::Listener::create()
{
  v0[0] = 0xAAAAAAAAAAAAAAAALL;
  v0[1] = 0xAAAAAAAAAAAAAAAALL;
  operator new();
}

{
  v0[0] = 0xAAAAAAAAAAAAAAAALL;
  v0[1] = 0xAAAAAAAAAAAAAAAALL;
  operator new();
}

void sub_295FF5CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL pci::event::Listener::init(pci::event::Listener *this)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!*(this + 2) || (*(this + 3) == 0) == (*(this + 4) == 0))
  {
    v6 = pci::log::get(this);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v7 = "bad argument";
LABEL_12:
    _os_log_impl(&dword_295FEE000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    goto LABEL_13;
  }

  v2 = ACIPCBTControlClass::start((this + 40));
  if (!v2)
  {
    v6 = pci::log::get(v2);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v7 = "ACIPCBTControlClass::start() returned failure";
    goto LABEL_12;
  }

  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, this);
  v4 = *buf;
  v3 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = ___ZN3pci5event8Listener4initEv_block_invoke;
  v14[3] = &__block_descriptor_tmp_4;
  v14[4] = this;
  v14[5] = v4;
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&buf[4] = -1431655766;
  v17 = v14;
  *buf = 0;
  if (*(this + 3))
  {
    v5 = ACIPCBTControlClass::registerEventNotification();
  }

  else
  {
    v11 = *(this + 4);
    v5 = ACIPCBTControlClass::registerEventNotification();
  }

  v12 = v5;
  v8 = v5 == 0;
  if (v5)
  {
    v13 = pci::log::get(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 67109120;
      v19 = v12;
      _os_log_impl(&dword_295FEE000, v13, OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::registerEventCallback() returned %#x", v18, 8u);
    }

    ACIPCBTControlClass::stop((this + 40));
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_14:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_295FF5F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_295FF6038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void pci::event::Listener::~Listener(pci::event::Listener *this)
{
  ACIPCBTControlClass::deregisterEventNotification((this + 40), 0);
  v2 = ACIPCBTControlClass::stop((this + 40));
  if ((v2 & 1) == 0)
  {
    v3 = pci::log::get(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_295FEE000, v3, OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::stop() returned failure", v8, 2u);
    }
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
    *(this + 3) = 0;
  }

  MEMORY[0x29C255C60](this + 40);
  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void *pci::event::Listener::Listener(void *a1, void **a2, const void *a3, dispatch_object_t object)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  if (*a2)
  {
    v7 = _Block_copy(v7);
  }

  a1[2] = v7;
  a1[3] = a3;
  if (object)
  {
    dispatch_retain(object);
  }

  a1[4] = object;
  ACIPCBTControlClass::ACIPCBTControlClass((a1 + 5));
  if (a3)
  {
    CFRetain(a3);
  }

  return a1;
}

uint64_t pci::event::Listener::notify(pci::log *a1, int a2, uint64_t a3, uint64_t a4)
{
  v71 = *MEMORY[0x29EDCA608];
  v8 = pci::log::get(a1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = getACIPCErrorTypeString();
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 2048;
    *&buf[20] = a3;
    *&buf[28] = 2048;
    *&buf[30] = a4;
    _os_log_debug_impl(&dword_295FEE000, v8, OS_LOG_TYPE_DEBUG, "%s (%u), arg1 %p, arg2 %p", buf, 0x26u);
  }

  v70 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69[7] = v9;
  v69[8] = v9;
  v69[5] = v9;
  v69[6] = v9;
  v69[3] = v9;
  v69[4] = v9;
  v69[1] = v9;
  v69[2] = v9;
  v69[0] = v9;
  v67 = v9;
  v68 = v9;
  v65 = v9;
  *v66 = v9;
  *&buf[16] = v9;
  *&buf[32] = v9;
  *buf = v9;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v10 = "timesync protocol error";
  v11 = buf;
  v12 = 23;
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 40:
    case 41:
    case 42:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 56:
    case 57:
    case 59:
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "pci error: ", 11);
      ACIPCErrorTypeString = getACIPCErrorTypeString();
      v15 = strlen(ACIPCErrorTypeString);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ACIPCErrorTypeString, v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": (", 3);
      v18 = MEMORY[0x29C255CF0](v17, a3);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
      v11 = MEMORY[0x29C255CF0](v19, a4);
      v10 = ")";
      v12 = 1;
      goto LABEL_5;
    case 39:
      if (a3 >= 3)
      {
        if (a3 == 3)
        {
          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "pci error: ", 11);
          v55 = getACIPCErrorTypeString();
          v56 = strlen(v55);
          v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
          v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ": ", 2);
          ACIPCLinkStateString = getACIPCLinkStateString();
          v60 = strlen(ACIPCLinkStateString);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ACIPCLinkStateString, v60);
        }

        else
        {
          if (a3 != 4)
          {
            v61 = pci::log::get(buf);
            pci::event::Listener::notify(v61, a3);
            __assert_rtn("notify", "PCIEvent.cpp", 109, "false");
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "User-requested device reset", 27);
        }
      }

      else
      {
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "pci error: ", 11);
        v32 = getACIPCErrorTypeString();
        v33 = strlen(v32);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ": ", 2);
        v36 = getACIPCLinkStateString();
        v37 = strlen(v36);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
      }

      break;
    case 43:
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "pci error: ", 11);
      v23 = getACIPCErrorTypeString();
      v24 = strlen(v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ": ", 2);
      ACIPCAERErrorTypeString = getACIPCAERErrorTypeString();
      v28 = strlen(ACIPCAERErrorTypeString);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ACIPCAERErrorTypeString, v28);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": ", 2);
      MEMORY[0x29C255CF0](v30, a4);
      break;
    case 45:
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Firmware crash detected :(pc = 0x", 35);
      *(v38 + *(*v38 - 24) + 8) = *(v38 + *(*v38 - 24) + 8) & 0xFFFFFFB5 | 8;
      v39 = MEMORY[0x29C255D10]();
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", lr = 0x", 9);
      *(v40 + *(*v40 - 24) + 8) = *(v40 + *(*v40 - 24) + 8) & 0xFFFFFFB5 | 8;
      v41 = MEMORY[0x29C255D10]();
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", bcsReason = 0x", 16);
      *(v42 + *(*v42 - 24) + 8) = *(v42 + *(*v42 - 24) + 8) & 0xFFFFFFB5 | 8;
      v43 = MEMORY[0x29C255D10]();
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ", trapReason = 0x", 17);
      *(v44 + *(*v44 - 24) + 8) = *(v44 + *(*v44 - 24) + 8) & 0xFFFFFFB5 | 8;
      v45 = MEMORY[0x29C255D20]();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ")", 2);
      break;
    case 58:
      goto LABEL_5;
    case 62:
      v10 = "User-requested reset for WLAN FLR";
      v11 = buf;
      v12 = 33;
      goto LABEL_5;
    case 65:
      v10 = "Host detected wake from low-power sleep";
      v11 = buf;
      v12 = 39;
LABEL_5:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v10, v12);
      break;
    case 68:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Host initiated trap before device reset", 39);
      break;
    default:
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "pci error: ", 11);
      v47 = getACIPCErrorTypeString();
      v48 = strlen(v47);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": (", 3);
      v51 = MEMORY[0x29C255CF0](v50, a3);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ", ", 2);
      v53 = MEMORY[0x29C255CF0](v52, a4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ")", 1);
      break;
  }

  std::stringbuf::str();
  (*(*(a1 + 2) + 16))();
  if (v63 < 0)
  {
    operator delete(__p);
  }

  *buf = *MEMORY[0x29EDC9538];
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
  *&buf[8] = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[1]);
  }

  *&buf[8] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&buf[16]);
  std::ostream::~ostream();
  result = MEMORY[0x29C255DD0](v69);
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_295FF68BC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C255DD0](va);
  _Unwind_Resume(a1);
}

void ___ZN3pci5event8Listener4initEv_block_invoke(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        pci::event::Listener::notify(v9, a2, a3, a4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3pci5event8ListenerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3pci5event8ListenerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::shared_ptr<pci::event::Listener>::shared_ptr[abi:ne200100]<pci::event::Listener,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_295FF6A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::event::Listener>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::event::Listener **std::unique_ptr<pci::event::Listener>::~unique_ptr[abi:ne200100](pci::event::Listener **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::event::Listener::~Listener(v2);
    MEMORY[0x29C255E00]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::event::Listener *,std::shared_ptr<pci::event::Listener>::__shared_ptr_default_delete<pci::event::Listener,pci::event::Listener>,std::allocator<pci::event::Listener>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C255E00);
}

pci::event::Listener *std::__shared_ptr_pointer<pci::event::Listener *,std::shared_ptr<pci::event::Listener>::__shared_ptr_default_delete<pci::event::Listener,pci::event::Listener>,std::allocator<pci::event::Listener>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::event::Listener::~Listener(result);

    JUMPOUT(0x29C255E00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::event::Listener *,std::shared_ptr<pci::event::Listener>::__shared_ptr_default_delete<pci::event::Listener,pci::event::Listener>,std::allocator<pci::event::Listener>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pci::transport::th::create(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  operator new();
}

void sub_295FF6C3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::th::init(pci::transport::th *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 1;
  v2 = dispatch_group_create();
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::init(this);
  }

  os_unfair_lock_lock(*this);
  if (!*(this + 6))
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "com.apple.AppleConvergedIPC.pci_client");
    std::string::basic_string[abi:ne200100]<0>(&__p, "_");
    v4 = buf;
    pci::transport::th::generateString(this, &v12, &__p, *(this + 10));
    if (v20 < 0)
    {
      v4 = *buf;
    }

    initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
    v6 = dispatch_queue_attr_make_with_qos_class(initially_inactive, *(this + 30), 0);
    v7 = dispatch_queue_create(v4, v6);
    v8 = *(this + 6);
    *(this + 6) = v7;
    if (v8)
    {
      dispatch_release(v8);
    }

    if (v20 < 0)
    {
      operator delete(*buf);
    }

    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }

    dispatch_set_target_queue(*(this + 6), *(this + 14));
    dispatch_activate(*(this + 6));
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v9;
  v13 = 0;
  LODWORD(v12) = *(this + 10);
  *(&v12 + 4) = *(this + 8);
  if (*(this + 74) == 1)
  {
    v10 = *(this + 2);
    if (v10)
    {
      dispatch_retain(*(this + 2));
      v11 = v13;
      v13 = v10;
      if (v11)
      {
        dispatch_release(v11);
      }
    }
  }

  *&v14 = *(this + 14);
  DWORD2(v14) = *(this + 30);
  pci::transport::bh::create(buf);
}

void sub_295FF73B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object, void *a20, uint64_t a21, dispatch_object_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (object)
  {
    dispatch_release(object);
  }

  pci::transport::task::parameters::~parameters((v37 - 144));
  if (a22)
  {
    dispatch_release(a22);
    if (!v34)
    {
LABEL_5:
      if (!v36)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if (!v34)
  {
    goto LABEL_5;
  }

  dispatch_release(v34);
  if (!v36)
  {
LABEL_6:
    if (!v35)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_11:
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  if (!v35)
  {
LABEL_8:
    _Block_object_dispose(&a25, 8);
    _Unwind_Resume(a1);
  }

LABEL_7:
  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  goto LABEL_8;
}

void sub_295FF76A0(_Unwind_Exception *a1)
{
  v6 = v1[13];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = v1[12];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = v1[11];
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = v1[7];
  if (v9)
  {
    _Block_release(v9);
  }

  pci::transport::th::th((v2 + 8), v3, v4, v1);
  _Unwind_Resume(a1);
}

void pci::transport::th::~th(dispatch_object_t *this)
{
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::init(this);
  }

  os_unfair_lock_lock(*this);
  *(this + 152) = 1;
  if (this[3])
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v31 = v3;
    *&v31[16] = v3;
    *aBlock = 0u;
    *object = 0u;
    v4 = _Block_copy(&__block_literal_global_0);
    v5 = v4;
    *v31 = *(this + 10);
    memset(&v31[4], 0, 24);
    if (v4)
    {
      v6 = _Block_copy(v4);
    }

    else
    {
      v6 = 0;
    }

    v7 = aBlock[0];
    aBlock[0] = v6;
    if (v7)
    {
      _Block_release(v7);
    }

    v9 = *this;
    v8 = this[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8[1], 1uLL, memory_order_relaxed);
    }

    v10 = object[0];
    aBlock[1] = v9;
    object[0] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v11 = this[2];
    if (v11)
    {
      dispatch_retain(this[2]);
    }

    v12 = object[1];
    object[1] = v11;
    if (v12)
    {
      dispatch_release(v12);
    }

    if (v5)
    {
      _Block_release(v5);
    }

    LODWORD(v29) = *(this + 10);
    getPciTransportToDirectionMap();
    if ((*std::map<PCITransportRegister,unsigned int>::at(getPciTransportToDirectionMap(void)::sMap, &v29) & 0xFFFFFFFD) == 1)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = 0xAAAAAAAAAAAAAAAALL;
      pci::transport::task::create(&v29);
    }

    LODWORD(v29) = *(this + 10);
    getPciTransportToDirectionMap();
    if ((*std::map<PCITransportRegister,unsigned int>::at(getPciTransportToDirectionMap(void)::sMap, &v29) & 0xFFFFFFFE) == 2)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = 0xAAAAAAAAAAAAAAAALL;
      pci::transport::task::create(&v29);
    }

    v13 = this[17];
    if (v13 != (this + 16))
    {
      do
      {
        v15 = *(v13 + 1);
        v14 = *(v13 + 2);
        v16 = *(v13 + 3);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(this + 73) != 1 || pci::transport::task::getType(v14) == 1)
        {
          pci::transport::task::poison(v14, 0xE00002EB);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v13 = v15;
      }

      while (v15 != (this + 16));
    }

    v17 = this[4];
    this[3] = 0;
    this[4] = 0;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (object[1])
    {
      dispatch_release(object[1]);
    }

    if (object[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](object[0]);
    }

    if (aBlock[0])
    {
      _Block_release(aBlock[0]);
    }
  }

  os_unfair_lock_unlock(*this);
  v18 = dispatch_group_wait(this[2], 0xFFFFFFFFFFFFFFFFLL);
  v19 = pci::log::get(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::~th(this);
  }

  std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(this + 16);
  v20 = this[14];
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = this[13];
  if (v21)
  {
    _Block_release(v21);
  }

  v22 = this[12];
  if (v22)
  {
    _Block_release(v22);
  }

  v23 = this[11];
  if (v23)
  {
    _Block_release(v23);
  }

  v24 = this[7];
  if (v24)
  {
    _Block_release(v24);
  }

  v25 = this[6];
  if (v25)
  {
    dispatch_release(v25);
  }

  v26 = this[4];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = this[2];
  if (v27)
  {
    dispatch_release(v27);
  }

  v28 = this[1];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void pci::transport::task::parameters::~parameters(pci::transport::task::parameters *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t pci::transport::th::generateString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[7] = v7;
  v22[8] = v7;
  v22[5] = v7;
  v22[6] = v7;
  v22[3] = v7;
  v22[4] = v7;
  v22[1] = v7;
  v22[2] = v7;
  v21 = v7;
  v22[0] = v7;
  *__p = v7;
  v20 = v7;
  v18[1] = v7;
  v18[2] = v7;
  v17 = v7;
  v18[0] = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v9, v10);
  v12 = *(a3 + 23);
  if (v12 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  MEMORY[0x29C255D00](v15, a4);
  std::stringbuf::str();
  *&v17 = *MEMORY[0x29EDC9538];
  *(&v18[-1] + *(v17 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v17 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v17 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x29C255DD0](v22);
}

void sub_295FF7D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C255DD0](v9 + 112);
  _Unwind_Resume(a1);
}

void ___ZN3pci9transport2th4initEv_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(*(v2 + 8) + 24) &= a2 == 0;
  dispatch_group_leave(v3);
}

void __copy_helper_block_e8_40c36_ZTSN10applesauce8dispatch2v15groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c36_ZTSN10applesauce8dispatch2v15groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void pci::transport::th::notify(dispatch_object_t *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::init(this);
  }

  os_unfair_lock_lock(*this);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v3;
  v13 = v3;
  *v14 = 0u;
  *object = 0u;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th6notifyEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_6;
  aBlock[4] = this;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  LODWORD(v12) = *(this + 10);
  DWORD1(v12) = 1;
  *(&v12 + 1) = 0;
  *&v13 = 0;
  DWORD2(v13) = 0;
  if (v4)
  {
    v6 = _Block_copy(v4);
  }

  else
  {
    v6 = 0;
  }

  v14[0] = v6;
  v8 = *this;
  v7 = this[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7[1], 1uLL, memory_order_relaxed);
  }

  v14[1] = v8;
  object[0] = v7;
  v9 = this[2];
  if (v9)
  {
    dispatch_retain(this[2]);
  }

  object[1] = v9;
  if (v5)
  {
    _Block_release(v5);
  }

  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  pci::transport::task::create(v10);
}

void sub_295FF7FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  pci::transport::task::parameters::~parameters(va);
  _Unwind_Resume(a1);
}

void pci::transport::th::readAsync(pci::transport::th *this)
{
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::init(this);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3002000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__13;
  v15 = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th9readAsyncEv_block_invoke;
  aBlock[3] = &unk_29EDED070;
  aBlock[4] = &v10;
  aBlock[5] = this;
  v3 = _Block_copy(aBlock);
  v4 = v11[5];
  v11[5] = v3;
  if (v4)
  {
    _Block_release(v4);
  }

  os_unfair_lock_lock(*this);
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v8[2] = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(this + 20);
  v6 = v11[5];
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v8[0] = v7;
  pci::transport::th::readInternal(this, 0, v5, 0, v8);
}

void sub_295FF81C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *aBlock)
{
  if (v24)
  {
    _Block_release(v24);
  }

  _Block_object_dispose(&a19, 8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

double pci::transport::th::initParams(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 21;
  return result;
}

BOOL pci::transport::th::validateParams(pci::log *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v8 = pci::log::get(0);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_13;
    }

    LOWORD(v10[0]) = 0;
    v5 = "no params";
LABEL_11:
    v6 = v8;
    v7 = 2;
    goto LABEL_12;
  }

  if (*a1 < 5)
  {
    if (*(a1 + 2))
    {
      result = 1;
      goto LABEL_13;
    }

    v8 = pci::log::get(a1);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_13;
    }

    LOWORD(v10[0]) = 0;
    v5 = "status block is required";
    goto LABEL_11;
  }

  v2 = pci::log::get(a1);
  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v4 = *a1;
    v10[0] = 67109120;
    v10[1] = v4;
    v5 = "invalid interface number %d";
    v6 = v2;
    v7 = 8;
LABEL_12:
    _os_log_impl(&dword_295FEE000, v6, OS_LOG_TYPE_DEFAULT, v5, v10, v7);
    result = 0;
  }

LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN3pci9transport2th6notifyEv_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    if (v7)
    {
      v8 = _Block_copy(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v6 + 48);
    if (v9)
    {
      dispatch_retain(v9);
    }

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN3pci9transport2th6notifyEv_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_5_0;
    if (v8)
    {
      v10 = _Block_copy(v8);
    }

    else
    {
      v10 = 0;
    }

    aBlock = v10;
    v13 = a5;
    dispatch_async(v9, v11);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    if (v8)
    {
      _Block_release(v8);
    }
  }
}

void *__copy_helper_block_e8_32c66_ZTSN10applesauce8dispatch2v15blockIFv18PCITransportStatusPvS4_EEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c66_ZTSN10applesauce8dispatch2v15blockIFv18PCITransportStatusPvS4_EEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void pci::transport::th::write(pci::transport::th *this, const unsigned __int8 *a2, int a3, void (*a4)(void *), int a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3002000000;
  v17[3] = __Block_byref_object_copy__1;
  v17[4] = __Block_byref_object_dispose__1;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v10 = pci::log::get(object);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(this + 10);
    buf = 136316674;
    buf_4 = "th";
    v23 = 2048;
    v24 = this;
    v25 = 1024;
    v26 = v13;
    v27 = 2048;
    v28 = a2;
    v29 = 1024;
    v30 = a3;
    v31 = 2048;
    v32 = a4;
    v33 = 1024;
    v34 = a5;
    _os_log_debug_impl(&dword_295FEE000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, length %u, dDtor %p, timeout %u", &buf, 0x3Cu);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th5writeEPKhjPFvPvEj_block_invoke;
  aBlock[3] = &unk_29EDED000;
  aBlock[6] = this;
  aBlock[7] = a2;
  aBlock[8] = a4;
  v16 = a3;
  aBlock[4] = v19;
  aBlock[5] = v17;
  v11 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  if (v11)
  {
    v12 = _Block_copy(v11);
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;
  pci::transport::th::writeInternal(this, a2, a3, a4, &v14);
}

void sub_295FF87C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object, char a27)
{
  if (v27)
  {
    _Block_release(v27);
  }

  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

intptr_t ___ZN3pci9transport2th5writeEPKhjPFvPvEj_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 48);
  v9 = pci::log::get(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v8 + 40);
    v17 = 136316418;
    v18 = "th";
    v19 = 2048;
    v20 = v8;
    v21 = 1024;
    v22 = v16;
    v23 = 1024;
    v24 = a2;
    v25 = 2048;
    v26 = a3;
    v27 = 1024;
    v28 = a4;
    _os_log_debug_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d:status 0x%x, buff %p, size %u", &v17, 0x32u);
  }

  *(*(*(a1 + 32) + 8) + 24) &= a2 == 0;
  v10 = *(*(a1 + 32) + 8);
  if (*(v10 + 24) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 56) == a3 && !*(a1 + 64))
  {
    v11 = 1;
    goto LABEL_8;
  }

  if (!a3)
  {
    v11 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_7:
    v11 = 0;
  }

LABEL_8:
  *(v10 + 24) = v11;
  v12 = *(*(a1 + 32) + 8);
  if (*(v12 + 24) != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + 72) == a4 && !*(a1 + 64))
  {
    v13 = 1;
    goto LABEL_13;
  }

  if (!a4)
  {
    v13 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

LABEL_13:
  *(v12 + 24) = v13;
  result = dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void pci::transport::th::writeInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void **a5)
{
  v23 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v11 = pci::log::get(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    v20 = *(a1 + 40);
    LODWORD(v22[0]) = 136316418;
    *(v22 + 4) = "th";
    WORD6(v22[0]) = 2048;
    *(v22 + 14) = a1;
    WORD3(v22[1]) = 1024;
    DWORD2(v22[1]) = v20;
    WORD6(v22[1]) = 2048;
    *(&v22[1] + 14) = a2;
    WORD3(v22[2]) = 1024;
    DWORD2(v22[2]) = a3;
    WORD6(v22[2]) = 2048;
    *(&v22[2] + 14) = a4;
    _os_log_debug_impl(&dword_295FEE000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, size %u, dDtor %p", v22, 0x36u);
    if (!a2)
    {
      goto LABEL_5;
    }
  }

  else if (!a2)
  {
    goto LABEL_5;
  }

  v13 = pci::log::get(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::writeInternal();
  }

LABEL_5:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v14;
  v22[1] = v14;
  memset(&v22[2], 0, 32);
  if (*a5)
  {
    v15 = _Block_copy(*a5);
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v22[0]) = *(a1 + 40);
  DWORD1(v22[0]) = 3;
  *(&v22[0] + 1) = a4;
  *&v22[1] = a2;
  DWORD2(v22[1]) = a3;
  if (v15)
  {
    v16 = _Block_copy(v15);
  }

  else
  {
    v16 = 0;
  }

  *&v22[2] = v16;
  v18 = *a1;
  v17 = *(a1 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v22[2] + 1) = v18;
  *&v22[3] = v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v22[3] + 1) = v19;
  if (v15)
  {
    _Block_release(v15);
  }

  pci::transport::task::create(buf);
}

void sub_295FF8CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pci::transport::task::parameters::~parameters(va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void pci::transport::th::writeAsync(pci::transport::th *this, const unsigned __int8 *a2, int a3, void (*a4)(void *))
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = pci::log::get(this);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(this + 10);
    *buf = 136316418;
    *&buf[4] = "th";
    *&buf[12] = 2048;
    *&buf[14] = this;
    v15 = 1024;
    v16 = v11;
    v17 = 2048;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    _os_log_debug_impl(&dword_295FEE000, v8, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, size %u, dDtor %p", buf, 0x36u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th10writeAsyncEPKhjPFvPvE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_10;
  aBlock[4] = this;
  v9 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  memset(buf, 170, 16);
  if (v9)
  {
    v10 = _Block_copy(v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = v10;
  pci::transport::th::writeInternal(this, a2, a3, a4, &v12);
}

void sub_295FF8F20(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3pci9transport2th10writeAsyncEPKhjPFvPvE_block_invoke(pci::log *a1, int a2, uint64_t a3, int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 4);
  v8 = pci::log::get(a1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(v7 + 40);
    *buf = 136316418;
    v21 = "th";
    v22 = 2048;
    v23 = v7;
    v24 = 1024;
    v25 = v14;
    v26 = 1024;
    v27 = a2;
    v28 = 2048;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    _os_log_debug_impl(&dword_295FEE000, v8, OS_LOG_TYPE_DEBUG, "%s::%p::%d:status 0x%x, buff %p, size %u", buf, 0x32u);
  }

  v9 = *(v7 + 96);
  if (v9)
  {
    v10 = _Block_copy(v9);
    v11 = *(v7 + 48);
    if (v11)
    {
      dispatch_retain(v11);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN3pci9transport2th10writeAsyncEPKhjPFvPvE_block_invoke_8;
    block[3] = &__block_descriptor_tmp_9;
    if (v10)
    {
      v12 = _Block_copy(v10);
    }

    else
    {
      v12 = 0;
    }

    aBlock = v12;
    v17 = a3;
    v18 = a2;
    v19 = a4;
    dispatch_async(v11, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    if (v10)
    {
      _Block_release(v10);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_295FF9114(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c45_ZTSN10applesauce8dispatch2v15blockIFviPvjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c45_ZTSN10applesauce8dispatch2v15blockIFviPvjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void pci::transport::th::read(pci::transport::th *this, const unsigned __int8 *a2, unsigned int *a3, void (*a4)(void *), int a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v21 = 1;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3002000000;
  v18[3] = __Block_byref_object_copy__1;
  v18[4] = __Block_byref_object_dispose__1;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v10 = pci::log::get(object);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(this + 10);
    v15 = *a3;
    buf = 136316674;
    buf_4 = "th";
    v24 = 2048;
    v25 = this;
    v26 = 1024;
    v27 = v14;
    v28 = 2048;
    v29 = a2;
    v30 = 1024;
    v31 = v15;
    v32 = 2048;
    v33 = a4;
    v34 = 1024;
    v35 = a5;
    _os_log_debug_impl(&dword_295FEE000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, length %u, dDtor %p, timeout %u", &buf, 0x3Cu);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th4readEPKhRjPFvPvEj_block_invoke;
  aBlock[3] = &unk_29EDED048;
  aBlock[6] = this;
  aBlock[7] = a2;
  aBlock[8] = a3;
  aBlock[4] = v20;
  aBlock[5] = v18;
  v11 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  v12 = *a3;
  if (v11)
  {
    v13 = _Block_copy(v11);
  }

  else
  {
    v13 = 0;
  }

  v16 = v13;
  pci::transport::th::readInternal(this, a2, v12, a4, &v16);
}

void sub_295FF94A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, dispatch_object_t object, char a25)
{
  if (v25)
  {
    _Block_release(v25);
  }

  _Block_object_dispose(&a19, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

intptr_t ___ZN3pci9transport2th4readEPKhRjPFvPvEj_block_invoke(pci::log *a1, int a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 6);
  v9 = pci::log::get(a1);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    v19 = *(v8 + 40);
    v20 = 136316418;
    v21 = "th";
    v22 = 2048;
    v23 = v8;
    v24 = 1024;
    v25 = v19;
    v26 = 1024;
    v27 = a2;
    v28 = 2048;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    _os_log_debug_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d:status 0x%x, buff %p, size %u", &v20, 0x32u);
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else if (!a3)
  {
    goto LABEL_5;
  }

  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::writeInternal();
  }

LABEL_5:
  *(*(*(a1 + 4) + 8) + 24) &= a2 == 0;
  v12 = *(*(a1 + 4) + 8);
  v13 = *(v12 + 24) == 1 && *(a1 + 7) == a3;
  *(v12 + 24) = v13;
  v14 = *(*(a1 + 4) + 8);
  v15 = *(a1 + 8);
  v16 = *(v14 + 24) == 1 && *v15 >= a4;
  *(v14 + 24) = v16;
  *v15 = a4;
  result = dispatch_semaphore_signal(*(*(*(a1 + 5) + 8) + 40));
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void pci::transport::th::readInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void **a5)
{
  v21 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 40);
    LODWORD(v20[0]) = 136316418;
    *(v20 + 4) = "th";
    WORD6(v20[0]) = 2048;
    *(v20 + 14) = a1;
    WORD3(v20[1]) = 1024;
    DWORD2(v20[1]) = v18;
    WORD6(v20[1]) = 2048;
    *(&v20[1] + 14) = a2;
    WORD3(v20[2]) = 1024;
    DWORD2(v20[2]) = a3;
    WORD6(v20[2]) = 2048;
    *(&v20[2] + 14) = a4;
    _os_log_debug_impl(&dword_295FEE000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, size %u, dDtor %p", v20, 0x36u);
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v12;
  v20[1] = v12;
  memset(&v20[2], 0, 32);
  if (*a5)
  {
    v13 = _Block_copy(*a5);
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v20[0]) = *(a1 + 40);
  DWORD1(v20[0]) = 2;
  *(&v20[0] + 1) = a4;
  *&v20[1] = a2;
  DWORD2(v20[1]) = a3;
  if (v13)
  {
    v14 = _Block_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  *&v20[2] = v14;
  v16 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v20[2] + 1) = v16;
  *&v20[3] = v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v20[3] + 1) = v17;
  if (v13)
  {
    _Block_release(v13);
  }

  pci::transport::task::create(buf);
}

void sub_295FF997C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pci::transport::task::parameters::~parameters(va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__13(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN3pci9transport2th9readAsyncEv_block_invoke(pci::log *a1, int a2, uint64_t a3, int a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 5);
  v9 = pci::log::get(a1);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    v22 = *(v8 + 40);
    *buf = 136316418;
    v30 = "th";
    v31 = 2048;
    v32 = v8;
    v33 = 1024;
    v34 = v22;
    v35 = 1024;
    v36 = a2;
    v37 = 2048;
    v38 = a3;
    v39 = 1024;
    v40 = a4;
    _os_log_debug_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d:status 0x%x, buff %p, size %u", buf, 0x32u);
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else if (!a3)
  {
    goto LABEL_5;
  }

  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::writeInternal();
  }

LABEL_5:
  v12 = *(v8 + 88);
  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v8 + 48);
  if (v14)
  {
    dispatch_retain(*(v8 + 48));
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3pci9transport2th9readAsyncEv_block_invoke_14;
  block[3] = &__block_descriptor_tmp_17;
  if (v13)
  {
    v15 = _Block_copy(v13);
  }

  else
  {
    v15 = 0;
  }

  aBlock = v15;
  v26 = a3;
  v27 = a2;
  v28 = a4;
  dispatch_async(v14, block);
  if (!a2 && (*(v8 + 152) & 1) == 0)
  {
    v19 = *(v8 + 80);
    v20 = *(*(*(a1 + 4) + 8) + 40);
    if (v20)
    {
      v21 = _Block_copy(v20);
    }

    else
    {
      v21 = 0;
    }

    v23 = v21;
    pci::transport::th::readInternal(v8, 0, v19, 0, &v23);
  }

  v16 = *(*(a1 + 4) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
  if (v17)
  {
    _Block_release(v17);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_295FF9C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::th::sendImage(pci::transport::th *this, const unsigned __int8 *a2, int a3, unsigned int *a4, void (*a5)(void *), int a6)
{
  v40 = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3002000000;
  v20[3] = __Block_byref_object_copy__1;
  v20[4] = __Block_byref_object_dispose__1;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v12 = pci::log::get(object);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(this + 10);
    v16 = *a4;
    buf = 136316930;
    buf_4 = "th";
    v26 = 2048;
    v27 = this;
    v28 = 1024;
    v29 = v15;
    v30 = 2048;
    v31 = a2;
    v32 = 1024;
    v33 = a3;
    v34 = 1024;
    v35 = v16;
    v36 = 2048;
    v37 = a5;
    v38 = 1024;
    v39 = a6;
    _os_log_debug_impl(&dword_295FEE000, v12, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, length %u, cookie %u, dDtor %p, timeout %u", &buf, 0x42u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th9sendImageEPKhjRjPFvPvEj_block_invoke;
  aBlock[3] = &unk_29EDED098;
  aBlock[6] = this;
  aBlock[7] = a2;
  v19 = a3;
  aBlock[8] = a5;
  aBlock[9] = a4;
  aBlock[4] = v22;
  aBlock[5] = v20;
  v13 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  if (v13)
  {
    v14 = _Block_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;
  pci::transport::th::sendImageInternal(this, a2, a3, a5, &v17);
}

void sub_295FFA018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object, char a27)
{
  if (v28)
  {
    _Block_release(v28);
  }

  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

intptr_t ___ZN3pci9transport2th9sendImageEPKhjRjPFvPvEj_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v33 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 48);
  v11 = pci::log::get(a1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(v10 + 40);
    v19 = 136316674;
    v20 = "th";
    v21 = 2048;
    v22 = v10;
    v23 = 1024;
    v24 = v18;
    v25 = 1024;
    v26 = a2;
    v27 = 2048;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    v31 = 1024;
    v32 = a5;
    _os_log_debug_impl(&dword_295FEE000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d:status 0x%x, buff %p, size %u, code %u", &v19, 0x38u);
  }

  *(*(*(a1 + 32) + 8) + 24) &= a2 == 0;
  v12 = *(*(a1 + 32) + 8);
  if (*(v12 + 24) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 56) == a3 && !*(a1 + 64))
  {
    v13 = 1;
    goto LABEL_8;
  }

  if (!a3)
  {
    v13 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

LABEL_8:
  *(v12 + 24) = v13;
  v14 = *(*(a1 + 32) + 8);
  if (*(v14 + 24) != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + 80) == a4 && !*(a1 + 64))
  {
    v15 = 1;
    goto LABEL_13;
  }

  if (!a4)
  {
    v15 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_12:
    v15 = 0;
  }

LABEL_13:
  *(v14 + 24) = v15;
  **(a1 + 72) = a5;
  result = dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void pci::transport::th::sendImageInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void **a5)
{
  v21 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 40);
    LODWORD(v20[0]) = 136316418;
    *(v20 + 4) = "th";
    WORD6(v20[0]) = 2048;
    *(v20 + 14) = a1;
    WORD3(v20[1]) = 1024;
    DWORD2(v20[1]) = v18;
    WORD6(v20[1]) = 2048;
    *(&v20[1] + 14) = a2;
    WORD3(v20[2]) = 1024;
    DWORD2(v20[2]) = a3;
    WORD6(v20[2]) = 2048;
    *(&v20[2] + 14) = a4;
    _os_log_debug_impl(&dword_295FEE000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, size %u, dDtor %p", v20, 0x36u);
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v12;
  v20[1] = v12;
  memset(&v20[2], 0, 32);
  if (*a5)
  {
    v13 = _Block_copy(*a5);
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v20[0]) = *(a1 + 40);
  DWORD1(v20[0]) = 3;
  *(&v20[0] + 1) = a4;
  *&v20[1] = a2;
  DWORD2(v20[1]) = a3;
  if (v13)
  {
    v14 = _Block_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  *&v20[2] = v14;
  v16 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v20[2] + 1) = v16;
  *&v20[3] = v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v20[3] + 1) = v17;
  if (v13)
  {
    _Block_release(v13);
  }

  pci::transport::task::create(buf);
}

void sub_295FFA510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pci::transport::task::parameters::~parameters(va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void pci::transport::th::sendImageAsync(pci::transport::th *this, const unsigned __int8 *a2, int a3, void (*a4)(void *))
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = pci::log::get(this);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(this + 10);
    *buf = 136316418;
    *&buf[4] = "th";
    *&buf[12] = 2048;
    *&buf[14] = this;
    v15 = 1024;
    v16 = v11;
    v17 = 2048;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    _os_log_debug_impl(&dword_295FEE000, v8, OS_LOG_TYPE_DEBUG, "%s::%p::%d:buffer %p, size %u, dDtor %p", buf, 0x36u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th14sendImageAsyncEPKhjPFvPvE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_22;
  aBlock[4] = this;
  v9 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  memset(buf, 170, 16);
  if (v9)
  {
    v10 = _Block_copy(v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = v10;
  pci::transport::th::sendImageInternal(this, a2, a3, a4, &v12);
}

void sub_295FFA738(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3pci9transport2th14sendImageAsyncEPKhjPFvPvE_block_invoke(pci::log *a1, int a2, uint64_t a3, int a4, int a5)
{
  v37 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 4);
  v10 = pci::log::get(a1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v9 + 40);
    *buf = 136316674;
    v24 = "th";
    v25 = 2048;
    v26 = v9;
    v27 = 1024;
    v28 = v16;
    v29 = 1024;
    v30 = a2;
    v31 = 2048;
    v32 = a3;
    v33 = 1024;
    v34 = a4;
    v35 = 1024;
    v36 = a5;
    _os_log_debug_impl(&dword_295FEE000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d:status 0x%x, buff %p, size %u, code %u", buf, 0x38u);
  }

  v11 = *(v9 + 104);
  if (v11)
  {
    v12 = _Block_copy(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v9 + 48);
  if (v13)
  {
    dispatch_retain(v13);
  }

  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1174405120;
  v17[2] = ___ZN3pci9transport2th14sendImageAsyncEPKhjPFvPvE_block_invoke_20;
  v17[3] = &__block_descriptor_tmp_21_0;
  if (v12)
  {
    v14 = _Block_copy(v12);
  }

  else
  {
    v14 = 0;
  }

  aBlock = v14;
  v19 = a3;
  v20 = a2;
  v21 = a4;
  v22 = a5;
  dispatch_async(v13, v17);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  v15 = *MEMORY[0x29EDCA608];
}

void sub_295FFA944(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c46_ZTSN10applesauce8dispatch2v15blockIFviPvjjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c46_ZTSN10applesauce8dispatch2v15blockIFviPvjjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void pci::transport::th::readRegister(pci::transport::th *this, int a2, const unsigned __int8 *a3, unsigned int *a4, int a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v21 = 1;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3002000000;
  v18[3] = __Block_byref_object_copy__1;
  v18[4] = __Block_byref_object_dispose__1;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v10 = pci::log::get(object);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(this + 10);
    v15 = *a4;
    buf = 136316674;
    buf_4 = "th";
    v24 = 2048;
    v25 = this;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = a2;
    v30 = 2048;
    v31 = a3;
    v32 = 1024;
    v33 = v15;
    v34 = 1024;
    v35 = a5;
    _os_log_debug_impl(&dword_295FEE000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d:reg %u, buffer %p, length %u, timeout %u", &buf, 0x38u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th12readRegisterEjPKhRjj_block_invoke;
  aBlock[3] = &unk_29EDED0E0;
  aBlock[6] = this;
  aBlock[7] = a3;
  aBlock[8] = a4;
  aBlock[4] = v20;
  aBlock[5] = v18;
  v11 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  v12 = *a4;
  if (v11)
  {
    v13 = _Block_copy(v11);
  }

  else
  {
    v13 = 0;
  }

  v16 = v13;
  pci::transport::th::readRegisterInternal(this, a2, a3, v12, &v16);
}

void sub_295FFACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, dispatch_object_t object, char a25)
{
  if (v25)
  {
    _Block_release(v25);
  }

  _Block_object_dispose(&a19, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

intptr_t ___ZN3pci9transport2th12readRegisterEjPKhRjj_block_invoke(pci::log *a1, int a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 6);
  v9 = pci::log::get(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(v8 + 40);
    v18 = 136316418;
    v19 = "th";
    v20 = 2048;
    v21 = v8;
    v22 = 1024;
    v23 = v17;
    v24 = 1024;
    v25 = a2;
    v26 = 2048;
    v27 = a3;
    v28 = 1024;
    v29 = a4;
    _os_log_debug_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d:status 0x%x, buff %p, size %u", &v18, 0x32u);
  }

  *(*(*(a1 + 4) + 8) + 24) &= a2 == 0;
  v10 = *(*(a1 + 4) + 8);
  v11 = *(v10 + 24) == 1 && *(a1 + 7) == a3;
  *(v10 + 24) = v11;
  v12 = *(*(a1 + 4) + 8);
  v13 = *(a1 + 8);
  v14 = *(v12 + 24) == 1 && *v13 >= a4;
  *(v12 + 24) = v14;
  *v13 = a4;
  result = dispatch_semaphore_signal(*(*(*(a1 + 5) + 8) + 40));
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void pci::transport::th::readRegisterInternal(uint64_t a1, int a2, uint64_t a3, int a4, const void **a5)
{
  v21 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 40);
    LODWORD(v20[0]) = 136316418;
    *(v20 + 4) = "th";
    WORD6(v20[0]) = 2048;
    *(v20 + 14) = a1;
    WORD3(v20[1]) = 1024;
    DWORD2(v20[1]) = v18;
    WORD6(v20[1]) = 1024;
    *(&v20[1] + 14) = a2;
    WORD1(v20[2]) = 2048;
    *(&v20[2] + 4) = a3;
    WORD6(v20[2]) = 1024;
    *(&v20[2] + 14) = a4;
    _os_log_debug_impl(&dword_295FEE000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d:reg %u, buffer %p, size %u", v20, 0x32u);
  }

  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v12;
  v20[1] = v12;
  memset(&v20[2], 0, 32);
  if (*a5)
  {
    v13 = _Block_copy(*a5);
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v20[0]) = *(a1 + 40);
  DWORD1(v20[0]) = 2;
  *(&v20[0] + 1) = 0;
  *&v20[1] = a3;
  DWORD2(v20[1]) = a4;
  if (v13)
  {
    v14 = _Block_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  *&v20[2] = v14;
  v16 = *a1;
  v15 = *(a1 + 8);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v20[2] + 1) = v16;
  *&v20[3] = v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    dispatch_retain(*(a1 + 16));
  }

  *(&v20[3] + 1) = v17;
  if (v13)
  {
    _Block_release(v13);
  }

  pci::transport::task::create(buf);
}

void sub_295FFB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pci::transport::task::parameters::~parameters(va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

uint64_t pci::transport::th::unblockRead(pci::transport::th **this)
{
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::init(this);
  }

  if ((*(this + 75) & 1) == 0)
  {
    os_unfair_lock_lock(*this);
    v3 = this[17];
    if (v3 != (this + 16))
    {
      do
      {
        v5 = *(v3 + 1);
        v4 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (pci::transport::task::getType(v4) == 2)
        {
          pci::transport::task::poison(v4, 0xE00002EB);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v3 = v5;
      }

      while (v5 != (this + 16));
    }

    os_unfair_lock_unlock(*this);
  }

  return 1;
}

void sub_295FFB2B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pci::transport::th::flushRead(dispatch_object_t *this)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::init(this);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3002000000;
  v35[3] = __Block_byref_object_copy__1;
  v35[4] = __Block_byref_object_dispose__1;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v36 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th9flushReadEv_block_invoke;
  aBlock[3] = &unk_29EDED108;
  aBlock[5] = v35;
  aBlock[6] = this;
  aBlock[4] = &v37;
  v3 = _Block_copy(aBlock);
  clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (!*(v38 + 6))
  {
    os_unfair_lock_lock(*this);
    memset(&v20[3], 170, sizeof(_OWORD));
    if (v3)
    {
      v4 = _Block_copy(v3);
    }

    else
    {
      v4 = 0;
    }

    v33 = v4;
    pci::transport::th::readInternal(this, 0, 0x2000, 0, &v33);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3002000000;
  v26 = __Block_byref_object_copy__25;
  v27 = __Block_byref_object_dispose__26;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v28 = dispatch_group_create();
  os_unfair_lock_lock(*this);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[3] = v5;
  v20[4] = v5;
  *v21 = 0u;
  *object = 0u;
  *&v20[0] = MEMORY[0x29EDCA5F8];
  *(&v20[0] + 1) = 0x40000000;
  *&v20[1] = ___ZN3pci9transport2th9flushReadEv_block_invoke_27;
  *(&v20[1] + 1) = &unk_29EDED130;
  *&v20[2] = &v29;
  *(&v20[2] + 1) = &v23;
  v6 = _Block_copy(v20);
  v7 = v6;
  LODWORD(v20[3]) = *(this + 10);
  memset(&v20[3] + 4, 0, 24);
  if (v6)
  {
    v8 = _Block_copy(v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = v21[0];
  v21[0] = v8;
  if (v9)
  {
    _Block_release(v9);
  }

  v11 = *this;
  v10 = this[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10[1], 1uLL, memory_order_relaxed);
  }

  v12 = object[0];
  v21[1] = v11;
  object[0] = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[2];
  if (v13)
  {
    dispatch_retain(this[2]);
  }

  v14 = object[1];
  object[1] = v13;
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (*(v30 + 24) == 1)
  {
    dispatch_group_enter(v24[5]);
    pci::transport::task::create(buf);
  }

  os_unfair_lock_unlock(*this);
  v15 = v24;
  v16 = dispatch_time(0, 2000000000);
  if (dispatch_group_wait(v15[5], v16))
  {
    os_unfair_lock_lock(*this);
    os_unfair_lock_unlock(*this);
    dispatch_group_wait(v24[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v17 = *(v30 + 24);
  if (v17 == 1)
  {
    if (*(this + 75) == 1 && *(this + 19))
    {
      pci::transport::th::readAsync(this);
    }

    LOBYTE(v17) = 1;
  }

  if (object[1])
  {
    dispatch_release(object[1]);
  }

  if (object[0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](object[0]);
  }

  if (v21[0])
  {
    _Block_release(v21[0]);
  }

  _Block_object_dispose(&v23, 8);
  if (v28)
  {
    dispatch_release(v28);
  }

  _Block_object_dispose(&v29, 8);
  if (v3)
  {
    _Block_release(v3);
  }

  _Block_object_dispose(v35, 8);
  if (v36)
  {
    dispatch_release(v36);
  }

  _Block_object_dispose(&v37, 8);
  v18 = *MEMORY[0x29EDCA608];
  return v17 & 1;
}

void sub_295FFB9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, dispatch_object_t object, char a33)
{
  pci::transport::task::parameters::~parameters(&a19);
  _Block_object_dispose(&a27, 8);
  if (object)
  {
    dispatch_release(object);
    if (!v35)
    {
LABEL_3:
      if (!v34)
      {
LABEL_5:
        _Block_object_dispose(&a33, 8);
        if (v33)
        {
          _Block_release(v33);
        }

        pci::transport::th::flushRead((v37 - 240), (v36 + 40));
        _Block_object_dispose((v37 - 192), 8);
        _Unwind_Resume(a1);
      }

LABEL_4:
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      goto LABEL_5;
    }
  }

  else if (!v35)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  if (!v34)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

intptr_t ___ZN3pci9transport2th9flushReadEv_block_invoke(pci::log *a1, int a2, void *a3, int a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 6);
  *(*(*(a1 + 4) + 8) + 24) = a2;
  if (a2 != -536870165)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v9 = pci::log::get(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v5 + 40);
      v13 = 136316418;
      v14 = "th";
      v15 = 2048;
      v16 = v5;
      v17 = 1024;
      v18 = v10;
      v19 = 1024;
      v20 = a2;
      v21 = 2048;
      v22 = a3;
      v23 = 1024;
      v24 = a4;
      _os_log_impl(&dword_295FEE000, v9, OS_LOG_TYPE_DEFAULT, "%s::%p::%d:status 0x%x, buff %p, size %u", &v13, 0x32u);
    }

    if (!a2)
    {
LABEL_6:
      free(a3);
    }
  }

  result = dispatch_semaphore_signal(*(*(*(a1 + 5) + 8) + 40));
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void __Block_byref_object_copy__25(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __Block_byref_object_dispose__26(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(uint64_t *a1)
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
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void getPciTransportToDirectionMap(void)
{
  v2 = *MEMORY[0x29EDCA608];
  {
    v1[0] = xmmword_295FFFC18;
    v1[1] = unk_295FFFC28;
    std::map<PCITransportInterface,PCITransportDirection>::map[abi:ne200100](getPciTransportToDirectionMap(void)::sMap, v1, 4);
    __cxa_atexit(std::map<PCITransportInterface,PCITransportDirection>::~map[abi:ne200100], getPciTransportToDirectionMap(void)::sMap, &dword_295FEE000);
  }

  v0 = *MEMORY[0x29EDCA608];
}

void *std::map<PCITransportInterface,PCITransportDirection>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportInterface,PCITransportDirection>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,PCITransportDirection>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,PCITransportDirection>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,PCITransportDirection> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<PCITransportInterface,PCITransportDirection>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,PCITransportDirection>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,PCITransportDirection>>>::__emplace_hint_unique_key_args<PCITransportInterface,std::pair<PCITransportInterface const,PCITransportDirection> const&>(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *std::__tree<std::__value_type<PCITransportInterface,PCITransportDirection>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,PCITransportDirection>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,PCITransportDirection>>>::__find_equal<PCITransportInterface>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<PCITransportInterface,PCITransportDirection>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,PCITransportDirection>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,PCITransportDirection>>>::__find_equal<PCITransportInterface>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::shared_ptr<pci::transport::th>::shared_ptr[abi:ne200100]<pci::transport::th,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_295FFC15C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::transport::th>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

dispatch_object_t **std::unique_ptr<pci::transport::th>::~unique_ptr[abi:ne200100](dispatch_object_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::transport::th::~th(v2);
    MEMORY[0x29C255E00]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::transport::th *,std::shared_ptr<pci::transport::th>::__shared_ptr_default_delete<pci::transport::th,pci::transport::th>,std::allocator<pci::transport::th>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C255E00);
}

dispatch_object_t *std::__shared_ptr_pointer<pci::transport::th *,std::shared_ptr<pci::transport::th>::__shared_ptr_default_delete<pci::transport::th,pci::transport::th>,std::allocator<pci::transport::th>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::transport::th::~th(result);

    JUMPOUT(0x29C255E00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::th *,std::shared_ptr<pci::transport::th>::__shared_ptr_default_delete<pci::transport::th,pci::transport::th>,std::allocator<pci::transport::th>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<os_unfair_lock_s>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D1BF00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C255E00);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void pci::transport::bind::bind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a2 + 40);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = a3;
  *(a1 + 64) = -536870911;
  v8 = pci::log::get(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bind::bind(a1);
  }

  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 56);
  std::list<std::shared_ptr<pci::transport::task>>::push_back();
}

void sub_295FFC3E8(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = v1[3];
  if (v5)
  {
    _Block_release(v5);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::bind::~bind(pci::transport::bind *this)
{
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::bind::bind(this);
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 16);
    if (v4 == -536870911)
    {
      __assert_rtn("~bind", "PCITransportTask.cpp", 46, "fStatus != kIOReturnInvalid");
    }

    (*(v3 + 16))(v3, v4, *(this + 1), *(this + 4), *(this + 17));
    v5 = *(this + 3);
    *(this + 3) = 0;
    if (v5)
    {
      _Block_release(v5);
    }
  }

  std::list<std::shared_ptr<pci::transport::task>>::remove(*(this + 7), this + 5);
  dispatch_group_leave(*(this + 4));
  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    _Block_release(v8);
  }
}

void std::list<std::shared_ptr<pci::transport::task>>::remove(uint64_t a1, void *a2)
{
  v9[0] = v9;
  v9[1] = v9;
  v9[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<void const*>::splice(v9, v9, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(v9);
}

void sub_295FFC63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(va);
  _Unwind_Resume(a1);
}

void pci::transport::bind::setCompletion(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t pci::transport::bind::setStatus(uint64_t result, int a2, int a3, int a4, char a5, int a6)
{
  *(result + 16) = a3;
  *(result + 64) = a2;
  *(result + 68) = a4;
  if ((a5 & 1) == 0 && (a2 || a6 == 3))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

void pci::transport::task::create(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  operator new();
}

void sub_295FFC78C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::task::init(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*(a1 + 32));
  memset(v7, 170, sizeof(v7));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v5 = pci::log::get(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::task::init(a1);
  }

  LODWORD(v7[0]) = *a2;
  v7[1] = *(a2 + 16);
  LODWORD(v7[2]) = *(a2 + 24);
  v6 = *(a2 + 56);
  if (v6)
  {
    dispatch_retain(*(a2 + 56));
  }

  v8 = v6;
  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, a1);
  v9 = *buf;
  v10 = v12;
  operator new();
}

void sub_295FFCAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pci::transport::bind::parameters::~parameters(va);
  _Unwind_Resume(a1);
}

pci::transport::task *pci::transport::task::task(pci::transport::task *this, const pci::transport::task::parameters *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = *a2;
  v3 = *(a2 + 1);
  v5 = *(a2 + 5);
  v4 = *(a2 + 6);
  *(this + 3) = v3;
  *(this + 4) = v5;
  *(this + 5) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *(a2 + 1);
  }

  *(this + 48) = v3 == 0;
  *(this + 7) = 0;
  *(this + 16) = *(a2 + 6);
  *(this + 9) = 0;
  v6 = pci::log::get(this);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 4);
    TypeString = getTypeString(*(this + 5));
    v11 = 136315906;
    v12 = "task";
    v13 = 2048;
    v14 = this;
    v15 = 1024;
    v16 = v9;
    v17 = 2080;
    v18 = TypeString;
    _os_log_debug_impl(&dword_295FEE000, v6, OS_LOG_TYPE_DEBUG, "%s::%p::%d:%s: ", &v11, 0x26u);
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_295FFCC2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

char *getTypeString(unsigned int a1)
{
  if (a1 >= 4)
  {
    getTypeString();
  }

  return off_29EDED150[a1];
}

void pci::transport::task::~task(pci::transport::task *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pci::log::get(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(this + 4);
    TypeString = getTypeString(*(this + 5));
    v8 = 136315906;
    v9 = "task";
    v10 = 2048;
    v11 = this;
    v12 = 1024;
    v13 = v6;
    v14 = 2080;
    v15 = TypeString;
    _os_log_debug_impl(&dword_295FEE000, v2, OS_LOG_TYPE_DEBUG, "%s::%p::%d:%s: ", &v8, 0x26u);
  }

  if (*(this + 9))
  {
    __assert_rtn("~task", "PCITransportTask.cpp", 169, "!fBind");
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_295FFCDA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

os_unfair_lock *pci::transport::task::poison(const os_unfair_lock **this, uint32_t a2)
{
  os_unfair_lock_assert_owner(this[4]);
  v5 = pci::log::get(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::task::poison(this);
  }

  result = this[9];
  if (result)
  {
    v7 = *(this + 48);
    v8 = *(this + 5);
    result[4]._os_unfair_lock_opaque = 0;
    result[16]._os_unfair_lock_opaque = a2;
    result[17]._os_unfair_lock_opaque = -1;
    if ((v7 & 1) == 0 && (a2 || v8 == 3))
    {
      *&result[2]._os_unfair_lock_opaque = 0;
    }

    pci::transport::bind::~bind(result);
    result = MEMORY[0x29C255E00]();
    this[9] = 0;
  }

  return result;
}

void pci::transport::task::complete(pci::transport::task *this, int a2, unsigned int a3, int a4)
{
  v33 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(*(this + 4));
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::task::poison(this);
  }

  v10 = *(this + 9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 == 0;
  }

  if (v11)
  {
    v12 = -536870166;
  }

  else
  {
    v12 = a2;
  }

  v13 = *(this + 5);
  if (v13 >= 2)
  {
    if (v13 - 2 > 1)
    {
      pci::transport::task::complete();
    }

    if (v13 != 2 || v12)
    {
      v15 = (this + 56);
      (*(this + 3))(*(this + 7));
    }

    else
    {
      v14 = *(v10 + 8);
      if (v14 && *(this + 48) == 1)
      {
        if (*(this + 16) < a3)
        {
          pci::transport::task::complete();
        }

        memcpy(v14, *(this + 7), a3);
        (*(this + 3))(*(this + 7));
      }

      else
      {
        *(v10 + 8) = *(this + 7);
      }

      v15 = (this + 56);
    }

    *v15 = 0;
  }

  v16 = *(this + 9);
  if (v16)
  {
    v17 = *(this + 48);
    v18 = *(this + 5);
    *(v16 + 16) = a3;
    *(v16 + 64) = v12;
    *(v16 + 68) = a4;
    if ((v17 & 1) == 0 && (v12 || v18 == 3))
    {
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
    }

    pci::transport::bind::~bind(v16);
    MEMORY[0x29C255E00]();
    *(this + 9) = 0;
  }

  else
  {
    v19 = pci::log::get(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(this + 4);
      TypeString = getTypeString(*(this + 5));
      v23 = 136316162;
      v24 = "task";
      v25 = 2048;
      v26 = this;
      v27 = 1024;
      v28 = v21;
      v29 = 2080;
      v30 = TypeString;
      v31 = 1024;
      v32 = a2;
      _os_log_debug_impl(&dword_295FEE000, v19, OS_LOG_TYPE_DEBUG, "%s::%p::%d:%s: poisoned completion, status 0x%x", &v23, 0x2Cu);
    }
  }

  os_unfair_lock_unlock(*(this + 4));
  v20 = *MEMORY[0x29EDCA608];
}

void pci::transport::bind::parameters::~parameters(pci::transport::bind::parameters *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void std::shared_ptr<pci::transport::task>::shared_ptr[abi:ne200100]<pci::transport::task,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_295FFD160(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<pci::transport::task>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::transport::task **std::unique_ptr<pci::transport::task>::~unique_ptr[abi:ne200100](pci::transport::task **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::transport::task::~task(v2);
    MEMORY[0x29C255E00]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::transport::task *,std::shared_ptr<pci::transport::task>::__shared_ptr_default_delete<pci::transport::task,pci::transport::task>,std::allocator<pci::transport::task>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C255E00);
}

pci::transport::task *std::__shared_ptr_pointer<pci::transport::task *,std::shared_ptr<pci::transport::task>::__shared_ptr_default_delete<pci::transport::task,pci::transport::task>,std::allocator<pci::transport::task>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::transport::task::~task(result);

    JUMPOUT(0x29C255E00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::task *,std::shared_ptr<pci::transport::task>::__shared_ptr_default_delete<pci::transport::task,pci::transport::task>,std::allocator<pci::transport::task>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Cu);
}

uint64_t pci::log::get(pci::log *this)
{
  if (pci::log::get(void)::once != -1)
  {
    pci::log::get();
  }

  return pci::log::get(void)::logger;
}

os_log_t ___ZN3pci3log3getEv_block_invoke()
{
  result = os_log_create("com.apple.appleconvergedipc", "appleconvergedtransport");
  pci::log::get(void)::logger = result;
  return result;
}

void pci::system::info::get()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    __cxa_atexit(std::shared_ptr<pci::system::info>::~shared_ptr[abi:ne200100], &xmmword_2A18B8950, &dword_295FEE000);

    __cxa_guard_release(_MergedGlobals);
  }
}

{
  dispatch_once(&pci::system::info::get(void)::sOnce, &__block_literal_global);
}

void pci::system::info::insertBH(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0(&dword_295FEE000, a2, a3, "%u", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x29EDCA608];
}

void pci::system::info::insertBH(unsigned int *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  OUTLINED_FUNCTION_0(&dword_295FEE000, a2, a3, "already pending for interface %d", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x29EDCA608];
}

{
  v10 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  OUTLINED_FUNCTION_0(&dword_295FEE000, a2, a3, "add interface %d", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN3pci6system4info8insertBHEiNSt3__18weak_ptrINS_9transport2bhEEEj_block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0(&dword_295FEE000, a2, a3, "completion %u", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x29EDCA608];
}

void pci::transport::bh::init(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v1, v2, "%s::%p::%d:", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x29EDCA608];
}

void pci::transport::bh::bh(uint64_t a1, unsigned int *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v5[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_295FEE000, v3, OS_LOG_TYPE_DEBUG, "%s::%p::%d:", v5, 0x1Cu);
  v4 = *MEMORY[0x29EDCA608];
}

void pci::transport::bh::~bh(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v1, v2, "%s::%p::%d:--done", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_5_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v1, v2, "%s::%p::%d:interface added", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_8_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v1, v2, "%s::%p::%d:interface removed", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x29EDCA608];
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_8_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v1, v2, "%s::%p::%d:notify interface removed", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x29EDCA608];
}

void pci::event::Listener::notify(NSObject *a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_295FEE000, a1, OS_LOG_TYPE_DEFAULT, "unknown link down type %u", v5, 8u);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void pci::transport::th::init(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v1, v2, "%s::%p::%d:", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x29EDCA608];
}

void pci::transport::th::th(NSObject **a1, std::__shared_weak_count **a2, dispatch_object_t *a3, uint64_t a4)
{
  v7 = *a1;
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a4 + 32);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*a3)
  {
    dispatch_release(*a3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void pci::transport::th::th(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x29EDCA608];
}

void pci::transport::th::~th(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v1, v2, "%s::%p::%d:--done", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x29EDCA608];
}

void pci::transport::th::writeInternal()
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x29EDCA608];
}

void pci::transport::th::flushRead(const void *a1, dispatch_object_t *a2)
{
  _Block_object_dispose(a1, 8);
  if (*a2)
  {
    dispatch_release(*a2);
  }
}

void pci::transport::bind::bind(unsigned int *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v2, v3, "%s::%p::%d:", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void pci::transport::task::init(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_295FEE000, v2, v3, "%s::%p::%d:", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void pci::transport::task::poison(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 16);
  getTypeString(*(a1 + 20));
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_295FEE000, v2, v3, "%s::%p::%d:%s: status 0x%x", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void pci::transport::task::complete()
{
  __assert_rtn("complete", "PCITransportTask.cpp", 289, "size <= fSize");
}

{
  __assert_rtn("complete", "PCITransportTask.cpp", 309, "false");
}

uint64_t ACIPCBTControlClass::registerEventNotification()
{
  return MEMORY[0x2A1C6AD90]();
}

{
  return MEMORY[0x2A1C6AD98]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FDF0]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}