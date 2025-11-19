uint64_t VinylEURCommunication::freeTransport(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  if ((*gBBULogMaskGet() & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(0, 0, "VinylEURCommunication", "", "request to free transport: %p\n", v4, v5, v6, a2);
  }

  v7 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN21VinylEURCommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &unk_29F293438;
  block[4] = &v11;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v7, block);
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t ___ZN21VinylEURCommunication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(void *a1)
{
  result = VinylEURCommunication::freeTransportSync(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void VinylEURCommunication::~VinylEURCommunication(VinylEURCommunication *this)
{
  VinylEURCommunication::~VinylEURCommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A20312F8;
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
}

const void **ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(const void **a1)
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

uint64_t VinylDaleCommunication::startRouterServer(VinylDaleCommunication *this)
{
  v2 = *(this + 8);
  gBBULogMaskGet();
  if (v2)
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server starting.\n", v3, v4, v5, v16);
    v6 = dispatch_group_create();
    v7 = v6;
    v8 = *(this + 8);
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v7);
    }

    abb::router::Server::start();
    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    v9 = dispatch_time(0, 15000000000);
    v10 = dispatch_group_wait(v7, v9);
    gBBULogMaskGet();
    if (v10)
    {
      v14 = "Failed to start router server due to timeout\n";
    }

    else
    {
      v14 = "Router server started.\n";
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", v14, v11, v12, v13, v17);
    if (v7)
    {
      dispatch_release(v7);
    }

    if (v10)
    {
      return 0;
    }
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server was not instantiated by VinylRestore to start it.\n", v3, v4, v5, v16);
  }

  return 1;
}

void sub_299F9C9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::stopRouterServer(VinylDaleCommunication *this)
{
  v2 = *(this + 8);
  gBBULogMaskGet();
  if (v2)
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server stopping.\n", v3, v4, v5, v16);
    v6 = dispatch_group_create();
    v7 = v6;
    v8 = *(this + 8);
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(v7);
    }

    abb::router::Server::stop();
    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    v9 = dispatch_time(0, 2000000000);
    v10 = dispatch_group_wait(v7, v9);
    gBBULogMaskGet();
    if (v10)
    {
      v14 = "Failed to stop router server due to timeout\n";
    }

    else
    {
      v14 = "Router server stopped.\n";
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", v14, v11, v12, v13, v17);
    if (v7)
    {
      dispatch_release(v7);
    }

    if (v10)
    {
      return 0;
    }
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server was not instantiated by VinylRestore to stop it.\n", v3, v4, v5, v16);
  }

  return 1;
}

void sub_299F9CB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::createTransport(uint64_t a1)
{
  v42[4] = *MEMORY[0x29EDCA608];
  if ((BBUpdaterCommon::inRestoreOS(a1) & 1) == 0)
  {
    result = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    if (!result)
    {
      goto LABEL_36;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](result);
    goto LABEL_35;
  }

  std::string::basic_string[abi:ne200100]<0>(&v37, "router.server");
  std::string::basic_string[abi:ne200100]<0>(&v28, "com.apple.router.abb");
  std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.telephony.control-msg.xpc.allow");
  v32 = xmmword_299FDFEF0;
  v33 = 0;
  v34 = 0;
  v35 = xmmword_299FDFF00;
  v36 = 5;
  abb::router::Server::create();
  v2 = v40;
  v40 = 0uLL;
  v3 = *(a1 + 72);
  *(a1 + 64) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v40 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
    }
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  if (*(a1 + 64))
  {
    object = dispatch_queue_create("link.accepter.local", 0);
    abb::link::LocalLinkAccepter::create();
    if (object)
    {
      dispatch_release(object);
    }

    if (!v37)
    {
      v12 = gBBULogMaskGet();
      if (VinylDaleCommunication::createTransport(v12))
      {
        _BBULog(1, 6, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n", v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Dale/VinylDaleCommunication.cpp");
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "link accepted failed. t\n", v16, v17, v18, v24);
      v9 = 0;
LABEL_29:
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_35:
      result = 0;
      goto LABEL_36;
    }

    v4 = *(a1 + 64);
    v26 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    abb::router::Server::addLocalLinkAccepter();
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v5 = *(a1 + 64);
    _ZNSt3__115allocate_sharedB8ne200100I18VinylMipcTransportNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v40);
    v25 = *(&v40 + 1);
    v40 = 0uLL;
    abb::router::Server::addTransport();
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (*(&v40 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
    }

    v41 = 1;
    v6 = *(a1 + 64);
    v42[0] = &unk_2A2031408;
    v42[1] = &v41;
    v42[3] = v42;
    abb::router::Server::registerErrorHandler();
    std::__function::__value_func<void ()(abb::router::Error,std::string const&)>::~__value_func[abi:ne200100](v42);
    abb::router::Server::createLocalLink(&v40, *(a1 + 64));
    v7 = v40;
    v40 = 0uLL;
    v8 = *(a1 + 56);
    *(a1 + 48) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if (*(&v40 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v40 + 1));
      }
    }

    if (VinylDaleCommunication::startRouterServer(a1))
    {
      if (v41)
      {
        v9 = 1;
        goto LABEL_29;
      }

      v23 = gBBULogMaskGet();
      if ((VinylDaleCommunication::createTransport(v23) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v19 = gBBULogMaskGet();
      if ((VinylDaleCommunication::createTransport(v19) & 1) == 0)
      {
LABEL_45:
        v9 = 0;
        goto LABEL_29;
      }
    }

    _BBULog(1, 6, "VinylDaleCommunication", "", "check failed: %s, %d, assertion: %s\n", v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Dale/VinylDaleCommunication.cpp");
    goto LABEL_45;
  }

  VinylDaleCommunication::createTransport();
LABEL_32:
  result = 3;
LABEL_36:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F9CEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 112);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylDaleCommunication::openChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  VinylDaleCommunication::openChannel(a1, a2, a3, a4, a5, a6, a7, a8, v8);
  return 3;
}

uint64_t VinylDaleCommunication::freeTransport(VinylDaleCommunication *a1)
{
  v2 = VinylDaleCommunication::stopRouterServer(a1);
  v3 = *(a1 + 9);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 7);
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v2;
}

void VinylDaleCommunication::~VinylDaleCommunication(VinylDaleCommunication *this)
{
  VinylDaleCommunication::~VinylDaleCommunication(this);

  operator delete(v1);
}

{
  *this = &unk_2A2031358;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
}

uint64_t VinylDaleCommunication::get_transport_wrapper@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void abb::router::Config::~Config(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void _ZNSt3__115allocate_sharedB8ne200100I18VinylMipcTransportNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0xB8uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20313B8;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  v2[3] = &unk_2A20311A0;
  v2[20] = 0;
  v2[21] = 0;
  v2[22] = 0;
  *(v2 + 176) = 0;
  *a1 = v2 + 3;
  a1[1] = v2;
  *(v2 + 2) = 0u;

  std::shared_ptr<VinylMipcTransport>::__enable_weak_this[abi:ne200100]<VinylMipcTransport,VinylMipcTransport,0>(a1, v2 + 4, (v2 + 3));
}

void std::__shared_ptr_emplace<VinylMipcTransport>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20313B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::shared_ptr<VinylMipcTransport>::__enable_weak_this[abi:ne200100]<VinylMipcTransport,VinylMipcTransport,0>(uint64_t a1, void *a2, uint64_t a3)
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

void *std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2031408;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2031408;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  gBBULogMaskGet();
  if (*(a3 + 23) >= 0)
  {
    LOBYTE(v8) = a3;
  }

  else
  {
    v8 = *a3;
  }

  result = _BBULog(0, 0xFFFFFFFFLL, "VinylDaleCommunication", "", "Router server eror: %s\n", v5, v6, v7, v8);
  **(a1 + 8) = 0;
  return result;
}

uint64_t std::__function::__func<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0,std::allocator<VinylDaleCommunication::createTransport(TelephonyUtilTransport_tag *)::$_0>,void ()(abb::router::Error,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(abb::router::Error,std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

eUICC::eUICCVinylICEValve *eUICC::eUICCVinylICEValve::eUICCVinylICEValve(eUICC::eUICCVinylICEValve *this, void *a2, int a3, char a4)
{
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 275) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 304) = 0;
  *this = &unk_2A2031498;
  *(this + 39) = 0;
  *(this + 37) = a2;
  v5 = a3 != 1;
  if (a3 == 255)
  {
    v5 = 255;
  }

  *(this + 73) = v5;
  *(this + 291) = a4;
  IceAriGetContext();
  v6 = operator new(0x40uLL);
  eUICC::VinylCommandDriver::VinylCommandDriver();
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, v6);
  *(this + 304) = 15;
  eUICC::eUICCVinylValve::hardwareHasESIM = (*(*this + 144))(this, &eUICC::eUICCVinylValve::simSKUID);
  return this;
}

void sub_299F9D5D4(_Unwind_Exception *a1)
{
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](v1 + 39, 0);
  eUICC::eUICCVinylValve::~eUICCVinylValve(v1);
  _Unwind_Resume(a1);
}

uint64_t IceAriGetContext(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v0 = off_2A14F5858;
  if (!off_2A14F5858)
  {
    v1 = operator new(0x28uLL);
    v1[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v6, v1);
    v2 = v6;
    v6 = 0uLL;
    v3 = *(&off_2A14F5858 + 1);
    off_2A14F5858 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v6 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
      }
    }

    v0 = off_2A14F5858;
  }

  v4 = *(&off_2A14F5858 + 1);
  if (*(&off_2A14F5858 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F5858 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v0;
}

uint64_t eUICC::eUICCVinylICEValve::HardwareHasESIM(eUICC::eUICCVinylICEValve *this, unsigned __int8 *a2)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN5eUICC18eUICCVinylICEValve15HardwareHasESIMERh_block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = this;
  if (eUICC::eUICCVinylValve::simSKUOnceToken != -1)
  {
    dispatch_once(&eUICC::eUICCVinylValve::simSKUOnceToken, block);
  }

  return eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result;
}

capabilities::euicc *___ZN5eUICC18eUICCVinylICEValve15HardwareHasESIMERh_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = TelephonyRadiosGetRadio();
  if (result == 4)
  {
    eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result = 1;
  }

  else
  {
    result = capabilities::euicc::supportsGenericUpdater(result);
    if (result)
    {
      AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::ARI_IBIVinylHwIdSimConfigReq_SDK(v11);
      v3 = *(v1 + 312);
      if (eUICC::VinylCommandDriver::GetHwIdSimConfig())
      {
        if (*(MEMORY[0x48] + 4) == 2)
        {
          gBBULogMaskGet();
          _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SimConfigRsp: device supports eSIM\n", v4, v5, v6, v10);
          eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result = 1;
        }

        else
        {
          (*(MEMORY[0] + 16))(0);
        }
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get SimConfig info from BB\n", v7, v8, v9, v10);
      }

      return MEMORY[0x29C2B8A00](v11);
    }
  }

  return result;
}

void *eUICC::eUICCVinylICEValve::GetVinylType@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 288) = 1;
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylICEValve::GetData@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(v52);
  v3 = (this + 8);
  if (*(this + 290) == 1)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylData cache is valid. Using cached data!\n", v4, v5, v6, v50);
    eUICC::logEUICCData(this + 2);
    goto LABEL_36;
  }

  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *v3 = 0u;
  *(this + 275) = 0u;
  *(this + 2) = TelephonyRadiosGetRadioVendor() - 2 < 3;
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v53, this + 73);
  v7 = operator new(1uLL);
  *v7 = 0;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  v10 = RadioVendor;
  if (RadioVendor == 3)
  {
    v27 = 0;
    *(this + 287) = eUICC::eUICCVinylValve::hardwareHasESIM ^ 1;
    while (1)
    {
      v28 = *(this + 39);
      if ((eUICC::VinylCommandDriver::GetData() & 1) == 0)
      {
        break;
      }

      v29 = *MEMORY[0x48];
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "GetData IBIVinylResult 0x%x\n", v30, v31, v32, v29);
      if (v29 <= 7 && ((1 << v29) & 0x91) != 0)
      {
        goto LABEL_9;
      }

      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... IBIVinylResult 0x%x (retryCount: %d, retryLimit: %d)\n", v34, v35, v36, v29);
      __ns.__rep_ = 2000000000;
      std::this_thread::sleep_for (&__ns);
      if (++v27 == 7)
      {
        goto LABEL_34;
      }
    }

    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: Invalid GetData response from BB\n", v47, v48, v49, v50);
    goto LABEL_34;
  }

  if (RadioVendor != 2)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "TelephonyRadiosGetRadioVendor %d not supported!", v37, v38, v39, v10);
    goto LABEL_34;
  }

  isAbsentOkay = eUICC::eUICCVinylICEValve::isAbsentOkay(this);
  *(this + 287) = isAbsentOkay;
  if (isAbsentOkay)
  {
LABEL_35:
    *v3 = 255;
    goto LABEL_36;
  }

  v12 = *(this + 39);
  if ((eUICC::VinylCommandDriver::GetData() & 1) == 0)
  {
LABEL_34:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Invalid GetData response from the BB\n", v40, v41, v42, v50);
    goto LABEL_35;
  }

LABEL_9:
  *(this + 2) = *MEMORY[0x48];
  v13 = MEMORY[0x60];
  *(this + 13) = *MEMORY[0x58];
  if (v13 == MEMORY[0x68])
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  *(this + 15) = *v14;
  v15 = MEMORY[0x80];
  *(this + 31) = *MEMORY[0x78];
  if (v15 == MEMORY[0x88])
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16[1];
  *(this + 2) = *v16;
  *(this + 3) = v17;
  *(this + 8) = *MEMORY[0x98];
  *(this + 9) = *MEMORY[0xB0];
  v18 = MEMORY[0xC8];
  if (MEMORY[0xC8] == MEMORY[0xD0])
  {
    v18 = 0;
  }

  *(this + 5) = *v18;
  v19 = MEMORY[0x128];
  if (MEMORY[0x128] == MEMORY[0x130])
  {
    v19 = 0;
  }

  *(this + 155) = *v19;
  v20 = MEMORY[0x1C0];
  if (MEMORY[0x1C0] == MEMORY[0x1C8])
  {
    v20 = 0;
  }

  v21 = v20[1];
  *(this + 251) = *v20;
  *(this + 267) = v21;
  *(this + 115) = *MEMORY[0x188];
  v22 = MEMORY[0x1A8];
  if (MEMORY[0x1A8] == MEMORY[0x1B0])
  {
    v22 = 0;
  }

  v23 = *(v22 + 2);
  *(this + 124) = *v22;
  *(this + 250) = v23;
  *(this + 12) = *MEMORY[0x50];
  *(this + 283) = *MEMORY[0x1E8];
  *(this + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
  *(this + 286) = eUICC::eUICCVinylValve::simSKUID;
  *(this + 290) = 1;
  eUICC::logEUICCData(this + 2);
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "result  0x%x \n", v24, v25, v26, *MEMORY[0x48]);
LABEL_36:
  if (*v3 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD && (eUICC::eUICCVinylValve::hardwareHasESIM & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "GetData status is not valid, hardware does not have eSIM, set absentOk to True\n", v43, v44, v45, v50);
    *(this + 287) = 1;
  }

  memcpy(a2, this + 8, 0x11BuLL);
  return MEMORY[0x29C2B88E0](v52);
}

void sub_299F9DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x29C2B88E0](va);
  _Unwind_Resume(a1);
}

void **AriSdk::Tlv<unsigned int>::operator=<int &,void>(void **a1, _DWORD *a2)
{
  v4 = operator new(4uLL);
  *v4 = *a2;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t eUICC::eUICCVinylICEValve::isAbsentOkay(eUICC::eUICCVinylICEValve *this)
{
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v38);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v39, this + 73);
  v2 = -1;
  while (1)
  {
    v3 = *(this + 39);
    if ((eUICC::VinylCommandDriver::GetVinylType() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get slot info from BB\n", v9, v10, v11, v35);
LABEL_13:
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "ret");
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to get data from UIM\n", v15, v16, v17, v36);
LABEL_14:
      v18 = 0;
      goto LABEL_15;
    }

    v4 = *MEMORY[0x48];
    if (*MEMORY[0x48] > 5)
    {
      break;
    }

    if (v4 != 1 && v4 != 4)
    {
      goto LABEL_20;
    }

LABEL_10:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... sim_state 0x%x (retryCount: %d, retryLimit: %d)\n", v6, v7, v8, *MEMORY[0x48]);
    __ns.__rep_ = 2000000000;
    std::this_thread::sleep_for (&__ns);
    if (++v2 >= 6)
    {
      goto LABEL_13;
    }
  }

  if (v4 == 254)
  {
    goto LABEL_10;
  }

  if (v4 != 6)
  {
    goto LABEL_20;
  }

  if (*MEMORY[0x80])
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v29, v30, v31, "!(GET_RSP_FIELD(rsp, sim_error_cause_t28) & sim_error_cause_mask)");
    gBBULogMaskGet();
    v37 = *MEMORY[0x80];
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x, sim_error_cause 0x%x\n", v32, v33, v34, *MEMORY[0x48]);
    goto LABEL_14;
  }

  if (*MEMORY[0x80] == 2)
  {
    v18 = 1;
    goto LABEL_15;
  }

LABEL_20:
  if (MEMORY[0x88])
  {
    v18 = (*MEMORY[0x88] & 3) == 0;
  }

  else
  {
    v18 = 1;
  }

  gBBULogMaskGet();
  v27 = *MEMORY[0x80];
  if (MEMORY[0x88])
  {
    v28 = *MEMORY[0x88];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x sim_error_cause: 0x%x sim_ext_capabilities 0x%x isAbsentOk: %s\n", v24, v25, v26, *MEMORY[0x48]);
LABEL_15:
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "isAbsentOkay result %d hardwareHasESIM: %d\n", v19, v20, v21, v18);
  v22 = eUICC::eUICCVinylValve::hardwareHasESIM;
  MEMORY[0x29C2B8A20](v38);
  return v18 & (v22 ^ 1u);
}

void sub_299F9E180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x29C2B8A20](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::SetCardMode(uint64_t a1)
{
  AriSdk::ARI_IBIVinylSwitchModeReq_SDK::ARI_IBIVinylSwitchModeReq_SDK(v10);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v11, (a1 + 292));
  v2 = operator new(1uLL);
  *v2 = 1;
  v3 = __p;
  __p = v2;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 312);
  eUICC::VinylCommandDriver::SwitchCardMode();
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to SwitchCardMode\n", v5, v6, v7, v9);
  MEMORY[0x29C2B8980](v10);
  return 18;
}

void sub_299F9E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x29C2B8980](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ResetCard(eUICC::eUICCVinylICEValve *this)
{
  if (TelephonyRadiosGetRadioVendor() == 3)
  {
    AriSdk::ARI_IBIVinylSimCardResetReq_SDK::ARI_IBIVinylSimCardResetReq_SDK(v13);
    AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v14, this + 73);
    v2 = *(this + 39);
    eUICC::VinylCommandDriver::ResetSimCard();
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to perform ResetSimCard\n", v7, v8, v9, v12);
    v10 = 18;
    MEMORY[0x29C2B89E0](v13);
  }

  else
  {
    gBBULogMaskGet();
    RadioVendor = TelephonyRadiosGetRadioVendor();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: only kTelephonyRadioVendorINT has IBIVinylSimCardResetReq, current RadioVendor = %d\n", v4, v5, v6, RadioVendor);
    return 1;
  }

  return v10;
}

void sub_299F9E454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x29C2B89E0](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::DeleteProfile(eUICC::eUICCVinylICEValve *this, unsigned int a2)
{
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v31);
  v30 = 0;
  v29[0] = 0xBFD00402820434BFLL;
  *(v29 + 6) = 0xD80302820434BFD0;
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v32, this + 73);
  v4 = operator new(4uLL);
  *v4 = 17;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v34;
  v34 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v35;
  v35 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v36;
  v36 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 7;
  v13 = v37;
  v37 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = &v29[a2] - a2;
  AriSdk::TlvArray<unsigned char,3584ul>::assign<unsigned char *>(&v38, v14, v14 + 7);
  v15 = *(this + 39);
  if ((eUICC::VinylCommandDriver::DeleteProfile() & 1) == 0)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "status");
    v23 = 11;
LABEL_15:
    v16 = v30;
    if (!v30)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v16 = v30;
  if (**(v30 + 80))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "!GET_RSP_FIELD(rsp, result_t4)");
    gBBULogMaskGet();
    v28 = **(v30 + 88);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to DeleteProfile status %d SW1_SW2 0x%x\n", v20, v21, v22, **(v30 + 80));
    v23 = 18;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_18:
  (*(*v16 + 16))(v16);
LABEL_19:
  MEMORY[0x29C2B88A0](v31);
  return v23;
}

void sub_299F9E6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x29C2B88A0](va);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<unsigned char *>(Ari *a1, char *a2, char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v12 = v14 >= 0 ? v13 : v13[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = 385;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_299F8C000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v18 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, a2, a3, a3 - a2);
  }

  result = v4 < 0xE01;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F9E8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::StoreData(uint64_t a1, char **a2, void *a3, _WORD *a4)
{
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v33);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v34, (a1 + 292));
  v8 = operator new(4uLL);
  *v8 = 5;
  v9 = __p;
  __p = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(4uLL);
  *v10 = 1;
  v11 = v36;
  v36 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 1;
  v13 = v37;
  v37 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = 0;
  v15 = v38;
  v38 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v17 = *a2;
  v16 = a2[1];
  v18 = operator new(2uLL);
  *v18 = v16 - v17;
  v19 = v39;
  v39 = v18;
  if (v19)
  {
    operator delete(v19);
    v17 = *a2;
    v16 = a2[1];
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(&v40, v17, v16);
  v20 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::DeleteProfile())
  {
    if (*MEMORY[0x50])
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v21, v22, v23, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v32 = *MEMORY[0x58];
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to store data status %d SW1_SW2 0x%x\n", v24, v25, v26, *MEMORY[0x50]);
      v27 = 18;
    }

    else
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, MEMORY[0x78], (*MEMORY[0x70] + MEMORY[0x78]), *MEMORY[0x70]);
      v27 = 0;
    }

    *a4 = *MEMORY[0x58];
    (*(MEMORY[0] + 16))(0);
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v28, v29, v30, "status");
    v27 = 11;
  }

  MEMORY[0x29C2B88A0](v33);
  return v27;
}

void sub_299F9EB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x29C2B88A0](va);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(Ari *a1, char *a2, char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v12 = v14 >= 0 ? v13 : v13[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = 385;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_299F8C000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v18 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(a1, a2, a3, a3 - a2);
  }

  result = v4 < 0xE01;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F9ED14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::InstallTicket(_DWORD *a1, CFDataRef *a2)
{
  __src[36] = *MEMORY[0x29EDCA608];
  AriSdk::ARI_IBIVinylInstallVadReq_SDK::ARI_IBIVinylInstallVadReq_SDK(v54);
  v53 = 0;
  if (!*a2)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "installTicket");
LABEL_14:
    v7 = 2;
    goto LABEL_15;
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylICEValve::InstallTicket\n", v4, v5, v6, v47);
  (*(*a1 + 8))(__src, a1);
  memcpy(a1 + 2, __src, 0x11BuLL);
  if (a1[2] != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "outData.Valid()");
    v7 = 18;
    goto LABEL_15;
  }

  if (*(a1 + 31))
  {
    v7 = (*(*a1 + 16))(a1, 0, 0);
    if (v7)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "kBBUReturnSuccess == ret");
      goto LABEL_15;
    }
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v55, a1 + 73);
  v17 = operator new(2uLL);
  *v17 = 1;
  v18 = __p;
  __p = v17;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = operator new(2uLL);
  *v19 = 0;
  v20 = v57;
  v57 = v19;
  if (v20)
  {
    operator delete(v20);
  }

  BytePtr = CFDataGetBytePtr(*a2);
  Length = CFDataGetLength(*a2);
  if (Length >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Ticket provided is larger than spec. [ %lu (lenth) > %lu (spec max) ] \n", v23, v24, v25, Length);
    goto LABEL_14;
  }

  v28 = operator new(2uLL);
  *v28 = Length;
  v29 = v58;
  v58 = v28;
  if (v29)
  {
    operator delete(v29);
  }

  memset(__src, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__src, BytePtr, &BytePtr[Length], Length);
  v52 = 0;
  v51 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&v51, __src[0], __src[1], __src[1] - __src[0]);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v59, &v51);
  if (v51.n128_u64[0])
  {
    v51.n128_u64[1] = v51.n128_u64[0];
    operator delete(v51.n128_u64[0]);
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylICEValve::InstallTicket InstallVad \n", v30, v31, v32, v48);
  v33 = *(a1 + 39);
  v34 = eUICC::VinylCommandDriver::InstallVad();
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylICEValve::InstallTicket InstallVad status %d\n", v35, v36, v37, v34);
  if (v34)
  {
    if (**(v53 + 72))
    {
      gBBULogMaskGet();
      v50 = **(v53 + 80);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "InstallTicket result 0x%x sw1_sw2 0x%hx\n", v38, v39, v40, **(v53 + 72));
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v41, v42, v43, "status");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "InstallTicket failed to get desired response\n", v44, v45, v46, v49);
    v7 = 11;
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  if (v53)
  {
    (*(*v53 + 16))(v53);
  }

LABEL_15:
  MEMORY[0x29C2B8960](v54);
  v26 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_299F9F1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  MEMORY[0x29C2B8960](&a17);
  _Unwind_Resume(a1);
}

Ari *AriSdk::TlvArray<unsigned char,3584ul>::operator=(Ari *a1, __n128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (a2->n128_u64[1] - a2->n128_u64[0] < 0xE01)
  {
    std::vector<unsigned char>::__move_assign(a1, a2);
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
        v11 = v14 >= 0 ? v13 : v13[0];
        v12 = a2->n128_u64[1] - a2->n128_u64[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v11;
        v18 = 1024;
        v19 = 360;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_299F8C000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v7, v8, 360, a1, a2->n128_u64[1] - a2->n128_u64[0], 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_299F9F408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::StreamFirmware(eUICC::eUICCVinylICEValve *this, __CFData *a2)
{
  v81[36] = *MEMORY[0x29EDCA608];
  v80 = 0;
  VinylFirmware::getFirmwareAPDUs(a2, &v78);
  v4 = v78;
  v3 = v79;
  (*(*this + 8))(v81, this);
  memcpy(this + 8, v81, 0x11BuLL);
  if (*(this + 2) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "outData.Valid()");
    v9 = 18;
    goto LABEL_39;
  }

  if (*(this + 31) == 1)
  {
    v5 = 18;
  }

  else
  {
    v9 = (*(*this + 16))(this, 0, 0);
    if (v9)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "kBBUReturnSuccess == ret");
      goto LABEL_39;
    }

    v5 = 0;
  }

  v13 = (v3 - v4) >> 5;
  v14 = *(this + 304);
  v76 = v13;
  if (v13 % v14)
  {
    v15 = v13 / v14 + 1;
  }

  else
  {
    v15 = v13 / v14;
  }

  if (v15)
  {
    v73 = v5;
    v77 = 0;
    v16 = 0;
    v74 = v15;
    while (1)
    {
      v17 = AriSdk::ARI_IBIVinylInstallFwReq_SDK::ARI_IBIVinylInstallFwReq_SDK(v81);
      v75 = v72;
      v18 = *(this + 304);
      v19 = v76 - v16 * v18 >= v18 ? *(this + 304) : v76 - v16 * v18;
      MEMORY[0x2A1C7C4A8](v17);
      v21 = &v72[-v20];
      bzero(&v72[-v20], v22);
      AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v81[8], this + 73);
      v23 = v21;
      if (v19)
      {
        break;
      }

LABEL_24:
      gBBULogMaskGet();
      v33 = v74;
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v34, v35, v36, v16);
      v37 = operator new(2uLL);
      *v37 = v33;
      v38 = v81[9];
      v81[9] = v37;
      if (v38)
      {
        operator delete(v38);
      }

      v39 = operator new(2uLL);
      *v39 = v16;
      v40 = v81[10];
      v81[10] = v39;
      if (v40)
      {
        operator delete(v40);
      }

      v41 = operator new(2uLL);
      *v41 = v23 - v21;
      v42 = v81[12];
      v81[12] = v41;
      if (v42)
      {
        operator delete(v42);
      }

      AriSdk::TlvArray<unsigned char,3930ul>::assign<unsigned char *>(&v81[13], v21, v23);
      v43 = operator new(1uLL);
      *v43 = v19;
      v44 = v81[11];
      v81[11] = v43;
      if (v44)
      {
        operator delete(v44);
      }

      v45 = *(this + 39);
      if ((eUICC::VinylCommandDriver::StreamFW() & 1) == 0)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v57, v58, v59, "status");
        gBBULogMaskGet();
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "StreamFirmware failed\n", v60, v61, v62, v72[0]);
        v9 = 11;
        goto LABEL_37;
      }

      if (**(v80 + 72))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v63, v64, v65, "!GET_RSP_FIELD(rsp, result_t3)");
        gBBULogMaskGet();
        v69 = **(v80 + 72);
        v71 = **(v80 + 80);
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed StreamAPDU set %d/%zu, status %d sw1_sw2 0x%x \n", v66, v67, v68, v16);
        v9 = 16;
        goto LABEL_37;
      }

      (*(*v80 + 16))(v80);
      v80 = 0;
      MEMORY[0x29C2B8940](v81);
      v9 = 0;
      ++v16;
      v77 += 32;
      if (v33 <= v16)
      {
        goto LABEL_39;
      }
    }

    v24 = &v78[v77 * *(this + 304) + 24];
    v25 = v76 - (v16 * v18);
    if (v25 >= v18)
    {
      v25 = v18;
    }

    v26 = -v25;
    v23 = v21;
    while (1)
    {
      v27 = *(v24 - 2);
      if (v27 > 5 || *v24 >= 0x100)
      {
        break;
      }

      v28 = &v23[v27 + *v24];
      *v23 = v27;
      memcpy(v23 + 1, *(v24 - 3), *(v24 - 2));
      v23[*(v24 - 2) + 1] = *v24;
      v29 = *(v24 - 1);
      v30 = &v23[*(v24 - 2)];
      v31 = *v24;
      v24 += 4;
      memcpy(v30 + 2, v29, v31);
      v23 = v28 + 2;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_24;
      }
    }

    gBBULogMaskGet();
    v9 = v73;
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v46, v47, v48, "f.header.length <= 5 && f.data.length <= 255");
    gBBULogMaskGet();
    v70 = *v24;
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Firmware APDU not within expected bounds : received (header - 5 : %zu data- 255 : %zu\n", v49, v50, v51, *(v24 - 2));
LABEL_37:
    MEMORY[0x29C2B8940](v81);
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v52, v53, v54, "apduSetCount");
    v9 = 15;
  }

LABEL_39:
  if (v80)
  {
    (*(*v80 + 16))(v80);
  }

  v80 = 0;
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  v55 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_299F9FAB0(_Unwind_Exception *a1)
{
  MEMORY[0x29C2B8940](v1 + 80);
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3930ul>::assign<unsigned char *>(Ari *a1, char *a2, char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xF5B)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v12 = v14 >= 0 ? v13 : v13[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = 385;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = 3930;
        _os_log_error_impl(&dword_299F8C000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v18 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3930);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, a2, a3, a3 - a2);
  }

  result = v4 < 0xF5B;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F9FCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::InitPerso(uint64_t a1, char **a2, void *a3)
{
  AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(v37);
  v36 = 0;
  v6 = a2[1];
  v7 = v6 - *a2;
  v8 = (v6 - *a2);
  if (v8 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, v10, v11, v7);
LABEL_14:
    v26 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v38, (a1 + 292));
  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(1uLL);
  *v14 = 0;
  v15 = v40;
  v40 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v7;
  v17 = v41;
  v41 = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v35 = 0;
  v34 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, v18, &v18[v8], v8);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v42, &v34);
  if (v34.n128_u64[0])
  {
    v34.n128_u64[1] = v34.n128_u64[0];
    operator delete(v34.n128_u64[0]);
  }

  v19 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::InitPerso())
  {
    if (**(v36 + 72) || (v31 = *(v36 + 88), !*v31))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
      gBBULogMaskGet();
      v32 = **(v36 + 80);
      v33 = **(v36 + 88);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InitPerso status %d SW1_SW2 0x%x rsp_len %u\n", v23, v24, v25, **(v36 + 72));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v36 + 96), (*(v36 + 96) + *v31), *v31);
    v26 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "status");
    v26 = 11;
  }

LABEL_16:
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  MEMORY[0x29C2B8900](v37);
  return v26;
}

uint64_t eUICC::eUICCVinylICEValve::AuthPerso(uint64_t a1, char **a2, void *a3)
{
  AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(v37);
  v36 = 0;
  v6 = a2[1];
  v7 = v6 - *a2;
  v8 = (v6 - *a2);
  if (v8 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, v10, v11, v7);
LABEL_14:
    v26 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v38, (a1 + 292));
  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(1uLL);
  *v14 = 0;
  v15 = v40;
  v40 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v7;
  v17 = v41;
  v41 = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v35 = 0;
  v34 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, v18, &v18[v8], v8);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v42, &v34);
  if (v34.n128_u64[0])
  {
    v34.n128_u64[1] = v34.n128_u64[0];
    operator delete(v34.n128_u64[0]);
  }

  v19 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::AuthPerso())
  {
    if (**(v36 + 72) || (v31 = *(v36 + 88), !*v31))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
      gBBULogMaskGet();
      v32 = **(v36 + 80);
      v33 = **(v36 + 88);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", v23, v24, v25, **(v36 + 72));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v36 + 96), (*(v36 + 96) + *v31), *v31);
    v26 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "status");
    v26 = 11;
  }

LABEL_16:
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  MEMORY[0x29C2B88C0](v37);
  return v26;
}

uint64_t eUICC::eUICCVinylICEValve::FinalizePerso(uint64_t a1, char **a2)
{
  AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(v34);
  v33 = 0;
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = (v4 - *a2);
  if (v6 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v7, v8, v9, v5);
LABEL_14:
    v25 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v35, (a1 + 292));
  v10 = operator new(1uLL);
  *v10 = 0;
  v11 = __p;
  __p = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(1uLL);
  *v12 = 0;
  v13 = v37;
  v37 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = v5;
  v15 = v38;
  v38 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *a2;
  v32 = 0;
  v31 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v31, v16, &v16[v6], v6);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v39, &v31);
  if (v31.n128_u64[0])
  {
    v31.n128_u64[1] = v31.n128_u64[0];
    operator delete(v31.n128_u64[0]);
  }

  v17 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::FinalizePerso())
  {
    v18 = v33;
    if (!**(v33 + 72))
    {
      v25 = 0;
      goto LABEL_17;
    }

    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, "!GET_RSP_FIELD(rsp, result_t3)");
    gBBULogMaskGet();
    v30 = **(v33 + 80);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to FinalizePerso status %d SW1_SW2 0x%x\n", v22, v23, v24, **(v33 + 72));
    goto LABEL_14;
  }

  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "status");
  v25 = 11;
LABEL_16:
  v18 = v33;
  if (v33)
  {
LABEL_17:
    (*(*v18 + 16))(v18);
  }

  MEMORY[0x29C2B89A0](v34);
  return v25;
}

void sub_299FA04D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B89A0](&a18);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ValidatePerso(uint64_t a1, char **a2, void *a3)
{
  AriSdk::ARI_IBIVinylValidatePsoReq_SDK::ARI_IBIVinylValidatePsoReq_SDK(v37);
  v36 = 0;
  v6 = a2[1];
  v7 = v6 - *a2;
  v8 = (v6 - *a2);
  if (v8 >= 0xE01)
  {
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, v10, v11, v7);
LABEL_14:
    v26 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v38, (a1 + 292));
  v12 = operator new(2uLL);
  *v12 = 1;
  v13 = __p;
  __p = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = 0;
  v15 = v40;
  v40 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(2uLL);
  *v16 = v7;
  v17 = v41;
  v41 = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = *a2;
  v35 = 0;
  v34 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, v18, &v18[v8], v8);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v42, &v34);
  if (v34.n128_u64[0])
  {
    v34.n128_u64[1] = v34.n128_u64[0];
    operator delete(v34.n128_u64[0]);
  }

  v19 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ValidatePerso())
  {
    if (**(v36 + 72) || (v31 = *(v36 + 88), !*v31))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)");
      gBBULogMaskGet();
      v32 = **(v36 + 80);
      v33 = **(v36 + 88);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", v23, v24, v25, **(v36 + 72));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v36 + 96), (*(v36 + 96) + *v31), *v31);
    v26 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "status");
    v26 = 11;
  }

LABEL_16:
  if (v36)
  {
    (*(*v36 + 16))(v36);
  }

  MEMORY[0x29C2B89C0](v37);
  return v26;
}

uint64_t eUICC::eUICCVinylICEValve::InstallPairingMSM(uint64_t a1, char **a2)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v32);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v33, (a1 + 292));
  v4 = operator new(4uLL);
  *v4 = 3;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v35;
  v35 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v36;
  v36 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v37;
  v37 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v13 = *a2;
  v12 = a2[1];
  v14 = operator new(2uLL);
  *v14 = v12 - v13;
  v15 = v38;
  v38 = v14;
  if (v15)
  {
    operator delete(v15);
    v13 = *a2;
    v12 = a2[1];
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(&v39, v13, v12);
  v16 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ManagePairing())
  {
    if (*MEMORY[0x50])
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v31 = *MEMORY[0x58];
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InstallPairingMSM result %d SW1_SW2 0x%04x\n", v20, v21, v22, *MEMORY[0x50]);
      v23 = 18;
    }

    else
    {
      v23 = 0;
      (*(MEMORY[0] + 16))(0);
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "status");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InstallPairingMSM status %d\n", v27, v28, v29, 0);
    v23 = 11;
  }

  MEMORY[0x29C2B8920](v32);
  return v23;
}

void sub_299FA0A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x29C2B8920](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ManagePairingGetNonce(uint64_t a1, void *a2)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v43);
  v41 = 0;
  v42 = 0;
  qmemcpy(v37, "NONCE", sizeof(v37));
  v39 = 0;
  v40 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v39, v37, v38, 5uLL);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v44, (a1 + 292));
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v46;
  v46 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v47;
  v47 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v48;
  v48 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = v39;
  v13 = v40;
  v14 = operator new(2uLL);
  *v14 = v13 - v12;
  v15 = v49;
  v49 = v14;
  if (v15)
  {
    operator delete(v15);
    v12 = v39;
    v13 = v40;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(&v50, v12, v13);
  v16 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ManagePairing())
  {
    if (**(v42 + 80))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v34 = **(v42 + 88);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingGetNonce result %d SW1_SW2 0x%x\n", v20, v21, v22, **(v42 + 80));
      v23 = 18;
    }

    else
    {
      gBBULogMaskGet();
      v35 = **(v42 + 88);
      v36 = **(v42 + 112);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "ManagePairingGetNonce result %d SW1_SW2 0x%04X length %d\n", v30, v31, v32, **(v42 + 80));
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a2, *(v42 + 120), (**(v42 + 112) + *(v42 + 120)), **(v42 + 112));
      v23 = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "status");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingGetNonce status %d\n", v27, v28, v29, 0);
    v23 = 11;
  }

  if (v42)
  {
    (*(*v42 + 16))(v42);
  }

  v42 = 0;
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  MEMORY[0x29C2B8920](v43);
  return v23;
}

void sub_299FA0D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B8920](&a18);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(Ari *a1, char *a2, char *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v12 = v14 >= 0 ? v13 : v13[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v12;
        v18 = 1024;
        v19 = 385;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v4;
        v24 = 2048;
        v25 = 3584;
        _os_log_error_impl(&dword_299F8C000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v18 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a1, a2, a3, a3 - a2);
  }

  result = v4 < 0xE01;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299FA0F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::ManagePairingAuthenticate(uint64_t a1, char **a2, char **a3)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v42);
  v40 = 0;
  v41 = 0;
  v38 = 0;
  __dst = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v38, *a2, a2[1], a2[1] - *a2);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v38, __dst, *a3, a3[1], a3[1] - *a3);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v43, (a1 + 292));
  v6 = operator new(4uLL);
  *v6 = 2;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(4uLL);
  *v8 = 1;
  v9 = v45;
  v45 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 1;
  v11 = v46;
  v46 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 0;
  v13 = v47;
  v47 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v38;
  v15 = __dst;
  v16 = operator new(2uLL);
  *v16 = v15 - v14;
  v17 = v48;
  v48 = v16;
  if (v17)
  {
    operator delete(v17);
    v14 = v38;
    v15 = __dst;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(&v49, v14, v15);
  v18 = *(a1 + 312);
  if (eUICC::VinylCommandDriver::ManagePairing())
  {
    if (**(v41 + 80))
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v19, v20, v21, "!GET_RSP_FIELD(rsp, result_t4)");
      gBBULogMaskGet();
      v37 = **(v41 + 88);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to Pairing authenticate result %d SW1_SW2 0x%04x\n", v22, v23, v24, **(v41 + 80));
      v25 = 18;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "ManagePairingAuthenticate succeed\n", v32, v33, v34, v36);
      v25 = 0;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "status");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingAuthenticate status %d\n", v29, v30, v31, 0);
    v25 = 11;
  }

  if (v41)
  {
    (*(*v41 + 16))(v41);
  }

  v41 = 0;
  if (v38)
  {
    __dst = v38;
    operator delete(v38);
  }

  MEMORY[0x29C2B8920](v42);
  return v25;
}

void sub_299FA1284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    operator delete(v18);
  }

  MEMORY[0x29C2B8920](&a18);
  _Unwind_Resume(a1);
}

void eUICC::eUICCVinylICEValve::~eUICCVinylICEValve(eUICC::VinylCommandDriver **this)
{
  *this = &unk_2A2031498;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
}

{
  *this = &unk_2A2031498;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
}

{
  *this = &unk_2A2031498;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);
  eUICC::eUICCVinylValve::~eUICCVinylValve(this);

  operator delete(v2);
}

void *std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2031568;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299FA1438(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<char *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_299FA1654(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = (&a3[v14] - v16);
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
        }

        while (v16 != a3);
      }

      i = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<char *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    for (i = v7[1]; v6 != a3; ++i)
    {
      v13 = *v6++;
      *i = v13;
    }
  }

  v7[1] = i;
  return result;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v17 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = v7;
      v27 = v6;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = (&v10[a4] - v18);
        v20 = *(a1 + 8);
        do
        {
          v35 = *v18++;
          *v20++ = v35;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v36 = &__dst[a5];
      v37 = &v19[-a5];
      v38 = v19;
      if (&v19[-a5] < v10)
      {
        do
        {
          v39 = *v37++;
          *v38++ = v39;
        }

        while (v37 != v10);
      }

      *(a1 + 8) = v38;
      if (v20 != v36)
      {
        memmove(&__dst[a5], __dst, v19 - v36);
      }

      v25 = v5;
      v26 = v7;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  v28 = &v13[v16];
  v29 = &v13[v16 + v6];
  v30 = v28;
  do
  {
    v31 = *v7++;
    *v30++ = v31;
    --v6;
  }

  while (v6);
  v32 = v16 + v15;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v33 = *a1;
  v34 = &v28[*a1 - v5];
  memcpy(v34, *a1, &v5[-*a1]);
  *a1 = v34;
  *(a1 + 8) = &v29[v10 - v5];
  *(a1 + 16) = v32;
  if (v33)
  {
    operator delete(v33);
  }

  return v28;
}

void std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](eUICC::VinylCommandDriver **a1, eUICC::VinylCommandDriver *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    eUICC::VinylCommandDriver::~VinylCommandDriver(v3);

    operator delete(v4);
  }
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<char *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

void *BBUCapabilities::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(4uLL);
  *v3 = TelephonyRadiosGetProduct();

  return std::shared_ptr<BBUCapabilities>::shared_ptr[abi:ne200100]<BBUCapabilities,0>(a1, v3);
}

capabilities::euicc *BBUCapabilities::supportsVinylRestore(BBUCapabilities *this)
{
  if (capabilities::euicc::supportsVinylRestore(this))
  {
    return 1;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(&v7);
    v5 = v7;
    v7 = 0uLL;
    v6 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }
  }

  v2 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v3 = pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v1 = BBUCapabilities::supportsVinylUpdate(v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v1;
}

capabilities::euicc *BBUCapabilities::supportsVinylUpdate(BBUCapabilities *this)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if (IsInternalBuild && (IsInternalBuild = BBUpdaterCommon::isNVRAMKeyPresent(@"VinylForceGenericUpdate", v2), IsInternalBuild))
  {
    gBBULogMaskGet();
    result = _BBULog(0, 0xFFFFFFFFLL, "BBUCapabilities", "", "kVinylForceGenericUpdate NV set to TRUE\n", v3, v4, v5, vars0);
  }

  else
  {
    result = capabilities::euicc::supportsGenericUpdater(IsInternalBuild);
    if (!result)
    {
      return result;
    }
  }

  return (capabilities::euicc::supportsEOS(result) ^ 1);
}

uint64_t BBUCapabilities::getEUICCCertIDSize(BBUCapabilities *this, unsigned int a2)
{
  if (a2 <= 4)
  {
    return 4;
  }

  else
  {
    return 20;
  }
}

void *std::shared_ptr<BBUCapabilities>::shared_ptr[abi:ne200100]<BBUCapabilities,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20315E0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299FA1E24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

unint64_t eUICC::GetSIMSKUID::Perform(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (ETLFrameCreateUplink() && (ETLMaverickAddBSPCommandHeader() & 1) != 0)
    {
      v3 = *(a1 + 8);
      if (ETLSendCommand() && (v4 = *(a1 + 8), (ETLSubsysFindMatchingResponse() & 1) != 0))
      {
        v1 = MEMORY[0] << 32;
        if (MEMORY[4] == 1)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, "success");
        v1 = 0;
        v5 = 5;
      }
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "success");
      v1 = 0;
      v5 = 12;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "transport");
    v5 = 22;
  }

  HDLCFrameFree();
  HDLCFrameFree();
  return v5 | v1;
}

uint64_t eUICC::LETOMuxSwitch::Perform(uint64_t a1)
{
  v27[4] = *MEMORY[0x29EDCA608];
  LODWORD(v24) = -1;
  v25 = 0;
  v26 = -1;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v27[0] = &unk_2A2031658;
  v27[3] = v27;
  if (*a1)
  {
    if (ETLFrameCreateUplink() && ETLMaverickAddBSPCommandHeader() && (v2 = *(a1 + 8), HDLCFrameInjectUnsignedChar()) && (v3 = *(a1 + 9), (HDLCFrameInjectUnsignedChar() & 1) != 0))
    {
      v4 = *(a1 + 12);
      if (ETLSendCommand() & 1) != 0 && (v5 = *(a1 + 12), (ETLSubsysFindMatchingResponse()))
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "sizeof(result) == HDLCFrameGetPayloadLength(&rsp)");
        v20 = 40;
      }

      else
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
        v20 = 5;
      }
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "success");
      v20 = 12;
    }
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "transport");
    v20 = 22;
  }

  LODWORD(v24) = v20;
  HDLCFrameFree();
  HDLCFrameFree();
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v27);
  result = v24;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299FA24B4(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v1 - 88);
  std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](v1 - 56);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::LETOMuxSwitch::Response::Contents>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *a2 = 0;
  *(a2 + 8) = 0;
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    if (!ETLSendCommand() || (ETLSubsysFindMatchingResponse() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v15, v16, v17, "success");
      v14 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint();
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v12.__d_.__rep_ > 1000000 * a4)
    {
      v14 = 60;
      goto LABEL_12;
    }
  }

  v13 = *(a7 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v13 + 48))(v13, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = 0;
LABEL_12:
  HDLCFrameFree();
  return v14;
}

uint64_t eUICC::VinylManagePairing::Perform@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v22[4] = *MEMORY[0x29EDCA608];
  *a2 = -1;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v15, v16, v17, "transport");
    v14 = 22;
    goto LABEL_11;
  }

  if (!ETLFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader() || (v5 = *(a1 + 8), !HDLCFrameInjectUnsignedChar()) || (v6 = *(a1 + 9), !HDLCFrameInjectUnsignedChar()) || (v7 = *(a1 + 24), !HDLCFrameInjectUnsignedShort()) || (v8 = *(a1 + 16), v9 = *(a1 + 24), (HDLCFrameInject() & 1) == 0))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "success");
    v14 = 12;
LABEL_11:
    *a2 = v14;
    goto LABEL_12;
  }

  v10 = *(a1 + 32);
  v22[0] = &unk_2A20316E8;
  v22[3] = v22;
  *a2 = eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(v20, a2 + 1, v3, v10, 1, 9, v22);
  std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](v22);
LABEL_12:
  result = HDLCFrameFree();
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299FA2848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  bzero(a2, 0x1779uLL);
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    if (!ETLSendCommand() || (ETLSubsysFindMatchingResponse() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
      v13 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint();
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v11.__d_.__rep_ > 1000000 * a4)
    {
      v13 = 60;
      goto LABEL_12;
    }
  }

  v12 = *(a7 + 24);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v12 + 48))(v12, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_12:
  HDLCFrameFree();
  return v13;
}

uint64_t eUICC::VinylValidatePerso::Perform@<X0>(uint64_t a1@<X0>, int **a2@<X8>)
{
  v23[4] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x1780uLL);
  bzero(v4, 0x1780uLL);
  *v4 = -1;
  std::shared_ptr<eUICC::VinylValidatePerso::Response>::shared_ptr[abi:ne200100]<eUICC::VinylValidatePerso::Response,0>(a2, v4);
  ETLDebugRemoveFlags();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v5 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "transport");
    v14 = *a2;
    v15 = 22;
    goto LABEL_10;
  }

  if (!ETLFrameCreateUplink() || !ETLMaverickAddBSPCommandHeader() || (v6 = *(a1 + 8), !HDLCFrameInjectUnsignedChar()) || (v7 = *(a1 + 10), !HDLCFrameInjectUnsignedShort()) || (v8 = *(a1 + 10), (HDLCFrameInject() & 1) == 0))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "success");
    v14 = *a2;
    v15 = 12;
LABEL_10:
    *v14 = v15;
    goto LABEL_11;
  }

  ETLDebugAddFlags();
  v9 = *a2;
  v10 = *(a1 + 132);
  v23[0] = &unk_2A20317F0;
  v23[3] = v23;
  **a2 = eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(v21, v9 + 1, v5, v10, 1, 5, v23);
  std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](v23);
LABEL_11:
  ETLDebugAddFlags();
  result = HDLCFrameFree();
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299FA2C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](va);
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  bzero(a2, 0x1779uLL);
  while (1)
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    if (!ETLSendCommand() || (ETLSubsysFindMatchingResponse() & 1) == 0)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "VinylETLEUICC", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "success");
      v13 = 5;
      goto LABEL_12;
    }

    if (!a6 || (a5 & 1) == 0)
    {
      break;
    }

    _ETLDebugPrint();
LABEL_9:
    if (std::chrono::steady_clock::now().__d_.__rep_ - v11.__d_.__rep_ > 1000000 * a4)
    {
      v13 = 60;
      goto LABEL_12;
    }
  }

  v12 = *(a7 + 24);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (((*(*v12 + 48))(v12, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_12:
  HDLCFrameFree();
  return v13;
}

void *std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A2031658;
  return result;
}

uint64_t std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 9) - 5 < 2)
  {
    return *(a2 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0,std::allocator<eUICC::LETOMuxSwitch::Perform(eUICC::LETOMuxSwitch::Request const&)::$_0>,BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(eUICC::LETOMuxSwitch::Response::Contents const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0>,BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A20316E8;
  return result;
}

uint64_t std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylManagePairing::Response::{unnamed type#1}>(HDLCFrame_tag &,eUICC::VinylManagePairing::Response::{unnamed type#1} &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>)::$_0>,BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::VinylManagePairing::Response::{unnamed type#1} const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::shared_ptr<eUICC::VinylValidatePerso::Response>::shared_ptr[abi:ne200100]<eUICC::VinylValidatePerso::Response,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2031778;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299FA317C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::VinylValidatePerso::Response *,std::shared_ptr<eUICC::VinylValidatePerso::Response>::__shared_ptr_default_delete<eUICC::VinylValidatePerso::Response,eUICC::VinylValidatePerso::Response>,std::allocator<eUICC::VinylValidatePerso::Response>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0>,BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A20317F0;
  return result;
}

uint64_t std::__function::__func<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0,std::allocator<int eUICC::VinylPollResult<eUICC::VinylValidatePerso::Response::contents>(HDLCFrame_tag &,eUICC::VinylValidatePerso::Response::contents &,TelephonyUtilTransport_tag *,unsigned int,BOOL,unsigned int,std::function<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>)::$_0>,BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(eUICC::VinylValidatePerso::Response::contents const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void stringifyVal(unsigned int a1@<W0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x29EDCA608];
  v9[1] = 0;
  v9[2] = 6;
  v8[2] = 6;
  v9[0] = a1;
  v10 = v14;
  *__len = xmmword_299FE08E0;
  v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v13 = 0;
  __src = v14;
  v8[0] = 1;
  v8[1] = v9;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v10, "0x{:02x}", 8, v8);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a2[1] = v3;
    a2[2] = v5 | 0x8000000000000000;
    *a2 = v6;
    a2 = v6;
    goto LABEL_9;
  }

  *(a2 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
  if (__src != v14)
  {
    operator delete(__src);
  }

  v7 = *MEMORY[0x29EDCA608];
}

{
  v16 = *MEMORY[0x29EDCA608];
  v9[1] = 0;
  v9[2] = 6;
  v8[2] = 6;
  v9[0] = a1;
  v10 = v14;
  *__len = xmmword_299FE08E0;
  v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v13 = 0;
  __src = v14;
  v8[0] = 1;
  v8[1] = v9;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v10, "0x{:04x}", 8, v8);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a2[1] = v3;
    a2[2] = v5 | 0x8000000000000000;
    *a2 = v6;
    a2 = v6;
    goto LABEL_9;
  }

  *(a2 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
  if (__src != v14)
  {
    operator delete(__src);
  }

  v7 = *MEMORY[0x29EDCA608];
}

{
  v16 = *MEMORY[0x29EDCA608];
  v9[1] = 0;
  v9[2] = 6;
  v8[2] = 6;
  v9[0] = a1;
  v10 = v14;
  *__len = xmmword_299FE08E0;
  v12 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v13 = 0;
  __src = v14;
  v8[0] = 1;
  v8[1] = v9;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v10, "0x{:08x}", 8, v8);
  v3 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __src;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (__len[1] | 7) + 1;
    }

    v6 = operator new(v5);
    a2[1] = v3;
    a2[2] = v5 | 0x8000000000000000;
    *a2 = v6;
    a2 = v6;
    goto LABEL_9;
  }

  *(a2 + 23) = __len[1];
  if (v3)
  {
LABEL_9:
    memmove(a2, v4, v3);
  }

  *(a2 + v3) = 0;
  if (__src != v14)
  {
    operator delete(__src);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_299FA3494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299FA35F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299FA3754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void stringifyDataBuffer(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    for (i = a2; i; --i)
    {
      v6 = *a1++;
      v18[1] = 0;
      v18[2] = 6;
      v17[2] = 6;
      v18[0] = v6;
      v19 = v23;
      *__len = xmmword_299FE08E0;
      v21 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v22 = 0;
      __src = v23;
      v17[0] = 1;
      v17[1] = v18;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v19, "{:02x}", 6, v17);
      v7 = __len[1];
      if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v8 = __src;
      if (__len[1] >= 0x17)
      {
        if ((__len[1] | 7) == 0x17)
        {
          v10 = 25;
        }

        else
        {
          v10 = (__len[1] | 7) + 1;
        }

        p_dst = operator new(v10);
        v15 = v7;
        v16 = v10 | 0x8000000000000000;
        __dst = p_dst;
      }

      else
      {
        HIBYTE(v16) = __len[1];
        p_dst = &__dst;
        if (!__len[1])
        {
          goto LABEL_12;
        }
      }

      memmove(p_dst, v8, v7);
LABEL_12:
      *(p_dst + v7) = 0;
      if (__src != v23)
      {
        operator delete(__src);
      }

      if (v16 >= 0)
      {
        v11 = &__dst;
      }

      else
      {
        v11 = __dst;
      }

      if (v16 >= 0)
      {
        v12 = HIBYTE(v16);
      }

      else
      {
        v12 = v15;
      }

      std::string::append(a3, v11, v12);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__dst);
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_299FA3928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  if (__p != v62)
  {
    operator delete(__p);
  }

  if (*(v61 + 23) < 0)
  {
    operator delete(*v61);
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyAsCFString()
{
  v0 = *MEMORY[0x29EDB8ED8];
  if ((ctu::cf::convert_copy() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 32, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCCommon.cpp", 0x2Cu, "Assertion failure(success && Unrecognized radio type.)", v3, v4, v5, v6);
  }

  return 0;
}

void eUICC::VinylFactory::GetValve(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, eUICC::eUICCVinylICEValve **a5@<X8>)
{
  *a5 = 0;
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v12 = operator new(0x140uLL);
    eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v12, a1, a2, a3);
  }

  else if (RadioVendor == 1)
  {
    v12 = operator new(0x138uLL);
    eUICC::eUICCVinylMAVValve::eUICCVinylMAVValve(v12, a1, a2, a3);
  }

  else
  {
    if (RadioVendor != 4)
    {
      return;
    }

    v11 = operator new(0x190uLL);
    v12 = v11;
    v13 = a4[1];
    v14 = *a4;
    v15 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    eUICC::eUICCVinylDALValve::eUICCVinylDALValve(v11, a1, a2, a3, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  *a5 = v12;
}

void sub_299FA3B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  *v10 = 0;
  _Unwind_Resume(a1);
}

uint64_t eUICC::getPairingIdentifier(eUICC *this, const __CFDictionary **a2)
{
  if (this)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v7 = *gBBULogMaskGet() & (gBBULogVerbosity > 0);
    if (Mutable)
    {
      if (v7)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Return 16 byte zero EID as pairing identifier\n", v4, v5, v6, v13);
      }

      CFDictionarySetValue(Mutable, @"EID", @"00000000000000000000000000000000");
      v8 = 0;
      *this = Mutable;
    }

    else
    {
      if (v7)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Failed to allocate shared info dict\n", v4, v5, v6, v13);
      }

      return 19;
    }
  }

  else
  {
    v8 = 1;
    if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
    {
      _BBULog(0, 1, "eUICCVinylFactory", "", "Client rsp data is not valid\n", v9, v10, v11, v13);
    }
  }

  return v8;
}

uint64_t eUICC::getEID(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v36 = *MEMORY[0x29EDCA608];
  (*(**v2 + 8))(v34);
  if (LODWORD(v34[0]) == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    stringifyDataBuffer(v34 + 7, 16, &__p);
    gBBULogMaskGet();
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "EID: %s\n", v3, v4, v5, p_p);
    v7 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v30 = __p;
      }

      v14 = copyAsCFString();
      v31 = v14;
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      CFDictionarySetValue(Mutable, @"EID", v14);
      *v1 = Mutable;
      v15 = CFStringCreateWithFormat(v7, 0, @"%@", Mutable);
      v16 = v15;
      if (v15)
      {
        if (CFStringGetCString(v15, buffer, 0x2000, 0x8000100u))
        {
          gBBULogMaskGet();
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "client rsp data: %s\n", v17, v18, v19, buffer);
        }

        CFRelease(v16);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      v21 = gBBULogMaskGet();
      if (BBUpdaterCommon::BBUCreateCFError(v21))
      {
        _BBULog(1, 6, "eUICCVinylFactory", "", "check failed: %s, %d, assertion: %s\n", v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCCommon.cpp");
      }

      if ((*gBBULogMaskGet() & 1) != 0 && gBBULogVerbosity >= 1)
      {
        _BBULog(0, 1, "eUICCVinylFactory", "", "Failed to allocate shared info dict\n", v25, v26, v27, v29);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_21;
  }

  v9 = v35;
  gBBULogMaskGet();
  if (v9)
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "eUICC not stuffed but that's ok!\n", v10, v11, v12, v28);
LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "Error: GetData() output not valid and isAbsentOK = false. kBBUReturnGetEIDFailure will be reported as kVinylResultDataMissing!\n", v10, v11, v12, v28);
  result = 107;
LABEL_22:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299FA3FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::checkEOSDev(_BYTE *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v4 = xmmword_2A14F5908;
  if (!xmmword_2A14F5908)
  {
    BBUCapabilities::create_default_global(v16);
    v5 = v16[0];
    v16[0] = 0uLL;
    v6 = *(&xmmword_2A14F5908 + 1);
    xmmword_2A14F5908 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v16[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16[0] + 1));
      }
    }

    v4 = xmmword_2A14F5908;
  }

  v7 = *(&xmmword_2A14F5908 + 1);
  if (*(&xmmword_2A14F5908 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v8 = BBUCapabilities::supportsEuiccViaEOS(v4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v8)
  {
    (*(**a2 + 8))(v16);
    if (LODWORD(v16[0]) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      result = 107;
      goto LABEL_20;
    }

    stringifyDataBuffer(v16 + 7, 16, &__p);
    gBBULogMaskGet();
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylFactory", "", "EID: %s\n", v9, v10, v11, p_p);
    if (HIBYTE(v16[0]) == 99)
    {
      *a1 = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  result = 0;
LABEL_20:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](uint64_t a1, size_t __sz)
{
  if (__sz >= 0x100)
  {
    v4 = operator new(__sz);
    v5 = v4;
    v6 = *(a1 + 296);
    v7 = *(a1 + 16);
    if (v7)
    {
      memmove(v4, *(a1 + 296), v7);
    }

    if (v6 != (a1 + 40))
    {
      operator delete(v6);
    }

    *(a1 + 296) = v5;
    *a1 = v5;
    *(a1 + 8) = __sz;
  }
}

uint64_t std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_299FA43D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A2031898;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
  }

  return std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
}

void *std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v27 = *a1;
        v28 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:ne200100]<char>(v60, "a character");
        *v27 = v28;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v30 = *a1;
        v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v30 = v31;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v17 = *a1;
        v18 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v17 = v18;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v37 = *a1;
        v38 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v37 = v38;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v33 = *a1;
        v34 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v33 = v34;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v43 = *a1;
        v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v43 = v44;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v24 = *a1;
        v25 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v24 = v25;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = *(a1 + 8);
        v54 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = *(a1 + 8);
        v58 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = *(a1 + 8);
      v56 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v49 = *a1;
        *v49 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      v13 = *v6;
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = *(a1 + 8);

      return v52(v50, v53, v51);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unsigned __int8 *std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = std::__format::__parse_number[abi:ne200100]<char const*>(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5);
  }
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v15[0] = *a2;
  v15[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v15) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v15[0];
  if (v15[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v15[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
LABEL_17:
      *a1 = *a1 & 0xF8 | v8;
      v13 = *a2;
      v14 = v6 - *a2;
      if (v14 == 1)
      {
        if (*v13 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v6 == v13)
      {
LABEL_22:
        v11 = &v13[v14];
        goto LABEL_23;
      }

      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    case '>':
      v8 = 3;
      goto LABEL_17;
    case '^':
      v8 = 2;
      goto LABEL_17;
  }

LABEL_7:
  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v6, a3);
  }

  *(a1 + 4) = v11;
  *a2 = v10;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v8 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = v4 + 2;
      v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
    }

    else
    {
      if ((v9 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v10;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 > 0x62)
  {
    if (**a2 <= 0x66u)
    {
      if (**a2 > 0x64u)
      {
        if (v3 == 101)
        {
          v4 = 13;
        }

        else
        {
          v4 = 15;
        }
      }

      else if (v3 == 99)
      {
        v4 = 10;
      }

      else
      {
        if (v3 != 100)
        {
          return result;
        }

        v4 = 5;
      }
    }

    else if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x46u)
  {
    if (**a2 > 0x44u)
    {
      if (v3 == 69)
      {
        v4 = 14;
      }

      else
      {
        v4 = 16;
      }
    }

    else if (v3 == 65)
    {
      v4 = 12;
    }

    else
    {
      if (v3 != 66)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else if (**a2 <= 0x57u)
  {
    if (v3 == 71)
    {
      v4 = 18;
    }

    else
    {
      if (v3 != 80)
      {
        return result;
      }

      v4 = 9;
    }
  }

  else
  {
    switch(v3)
    {
      case 'X':
        v4 = 7;
        break;
      case 'a':
        v4 = 11;
        break;
      case 'b':
        v4 = 2;
        break;
      default:
        return result;
    }
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_299FA58F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 >= 0x20)
    {
      std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
    }

    v5 = 1 << v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & a4) == 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a3);
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_299FA5B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, void **a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v17);
    v12 = std::locale::use_facet(&v17, MEMORY[0x29EDC93F8]);
    std::locale::~locale(&v17);
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if ((v19 & 0x80u) == 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    v16 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, v15, *a2, a3, a4);
    if (v19 < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }
}

void sub_299FA5D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  *(a1 + 12);
  std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v15 = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, v13, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, v14, v5, 8u);
LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100]@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    MEMORY[0x29C2B8E50](&v5);
    std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }
}

uint64_t std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, a2);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v9, v10);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t std::__width_estimation_table::__estimated_width[abi:ne200100](unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = &std::__width_estimation_table::__entries[abi:ne200100];
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[v2 >> 1];
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != &std::__width_estimation_table::__entries[abi:ne200100])
  {
    if ((*(v3 - 1) & 0x3FFF) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](a1, a2, a3);
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = std::__indic_conjunct_break::__get_property[abi:ne200100](a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v14[23] = *MEMORY[0x29EDCA608];
  if ((*(a1 + 2) & 0x4000) != 0)
  {
    v4 = *(a1 + 4);
    v5 = a2[1];
    if (v5 <= v4)
    {
      LOBYTE(v6) = 0;
    }

    else if (v5 > 0xC)
    {
      v8 = a2[2] + 32 * v4;
      v4 = *v8;
      v2 = *(v8 + 8);
      LOBYTE(v6) = *(v8 + 16);
      v11[0] = *(v8 + 17);
      *(v11 + 7) = *(v8 + 24);
    }

    else
    {
      v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
      v7 = (a2[2] + 16 * v4);
      v4 = *v7;
      v2 = v7[1];
    }

    v12[0] = v4;
    v12[1] = v2;
    v13 = v6;
    *v14 = v11[0];
    *&v14[7] = *(v11 + 7);
    result = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v10, v12);
  }

  else
  {
    result = *(a1 + 4);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v14[23] = *MEMORY[0x29EDCA608];
  if (*(a1 + 2) < 0)
  {
    v4 = *(a1 + 8);
    v5 = a2[1];
    if (v5 <= v4)
    {
      LOBYTE(v6) = 0;
    }

    else if (v5 > 0xC)
    {
      v8 = a2[2] + 32 * v4;
      v4 = *v8;
      v2 = *(v8 + 8);
      LOBYTE(v6) = *(v8 + 16);
      v11[0] = *(v8 + 17);
      *(v11 + 7) = *(v8 + 24);
    }

    else
    {
      v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
      v7 = (a2[2] + 16 * v4);
      v4 = *v7;
      v2 = v7[1];
    }

    v12[0] = v4;
    v12[1] = v2;
    v13 = v6;
    *v14 = v11[0];
    *&v14[7] = *(v11 + 7);
    result = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v10, v12);
  }

  else
  {
    result = *(a1 + 8);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      return result;
    case 4:

      return std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(a1, a2);
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unint64_t std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
  }

  if (result >> 31)
  {
    std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
  }

  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned int>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_299FA6EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v13, v11, &v11[v29], std::__formatter::__hex_to_upper[abi:ne200100]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](v13, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v19, v15);
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v12, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v14, a1, a2, a6);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v14, v10, v11);
}

uint64_t std::__formatter::__hex_to_upper[abi:ne200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *std::__to_chars_integral[abi:ne200100]<unsigned int>(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = *(a1 + 1);
  if (v5 == 10 || v5 == 0)
  {
    v7 = *a3;
    v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
    __src = a2;
    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v7, v8, v9, 1);
  }

  else
  {
    v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v11, v12, 0);
  }
}

uint64_t std::__format_spec::__process_parsed_char[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v6 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

uint64_t std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v4 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    v11 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v12, v9, v7, v11);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    v11 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v12, &v13 + 2, 0, 10);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v12, &v13 + 5, v5, 8);
LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_299FA8208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v15 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = (v5 - 1);
      do
      {
        *v16-- = a0123456789abcd[(v4 % a4)];
        v17 = v4 >= a4;
        v4 /= a4;
      }

      while (v17);
      return v5;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (std::__itoa::__pow10_64[v8] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return v5;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  v2 %= 0x2710u;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v16 = *MEMORY[0x29EDCA608];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v12 = 2;
    if (BYTE1(a4) == 2)
    {
      v11 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v11 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v13, v9, v11, v12);
    goto LABEL_19;
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 16;
    if (BYTE1(a4) == 6)
    {
      v11 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v11 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v14;
    goto LABEL_18;
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v13, &v14 + 5, 0, 10);
    goto LABEL_19;
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v13, v15, v6, 8);
LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = std::__to_chars_integral[abi:ne200100]<unsigned __int128>(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a3, &v44);
  v22 = std::locale::use_facet(&v44, MEMORY[0x29EDC93F8]);
  std::locale::~locale(&v44);
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (v46 < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + v46;
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_299FA8CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned __int128>(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v17 = a1;
      v18 = a2 - a1;
      v19 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = (v7 - 1);
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= a5;
          *v20-- = a0123456789abcd[(v6 - v21 * a5)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < std::__itoa::__pow10_128[v11]) + 1)
      {
        return v7;
      }
    }

    return std::__itoa::__base_10_u128[abi:ne200100](a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (std::__itoa::__pow10_64[v12] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v6);
  }

  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *std::__itoa::__base_10_u128[abi:ne200100](char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = std::__itoa::__digits_base_10[v7 % 0x5F5E100 / 0xF4240uLL];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = std::__itoa::__digits_base_10[v8 / 0x2710uLL];
    v8 %= 0x2710u;
    *(v3 + 3) = std::__itoa::__digits_base_10[v8 / 0x64u];
    *(v3 + 4) = std::__itoa::__digits_base_10[v8 % 0x64u];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = std::__itoa::__digits_base_10[v14 / 0xF4240uLL];
  v14 %= 0xF4240u;
  *(v12 + 3) = std::__itoa::__digits_base_10[v14 / 0x2710uLL];
  v14 %= 0x2710u;
  *(v12 + 5) = std::__itoa::__digits_base_10[v14 / 0x64u];
  *(v12 + 7) = std::__itoa::__digits_base_10[v14 % 0x64u];

  return std::__itoa::__append10[abi:ne200100]<unsigned long long>(v12 + 9, v13 % 0x2540BE400);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, a4, v8, v7, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, float a4)
{
  v48[32] = *MEMORY[0x29EDCA608];
  v7 = LODWORD(a4) >> 31;
  if ((LODWORD(a4) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v8 = a2 >> 8;
    v9 = fabsf(a4);
    if (a3 == -1)
    {
      v10 = 149;
    }

    else
    {
      v10 = a3;
    }

    v44 = v10;
    v45 = 0;
    if (v10 < 150)
    {
      v46 = v10 + 45;
      if ((v10 + 45) >= 0x101)
      {
        v11 = operator new(v10 + 45);
LABEL_10:
        __p = v11;
        std::__formatter::__format_buffer[abi:ne200100]<float,float>(&v44, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v40, v9);
        if ((a2 & 0x20) != 0)
        {
          v12 = v41;
          v13 = *v43;
          if (v41 == *v43)
          {
            ++*v43;
            *v13 = 46;
            v14 = v42;
            v15 = (*v43 - 1);
            if (v42 != (*v43 - 1))
            {
              if (v42 + 1 == v15)
              {
                v17 = *v42;
                *v42 = v42[1];
                v14[1] = v17;
              }

              else
              {
                v16 = *(*v43 - 1);
                memmove(v42 + 1, v42, v15 - v42);
                *v14 = v16;
              }
            }

            v12 = v42;
            v41 = v42++;
          }

          if ((BYTE1(a2) - 17) <= 1u)
          {
            if (a3 <= 1)
            {
              v18 = 1;
            }

            else
            {
              v18 = a3;
            }

            if ((a3 & 0x80000000) != 0)
            {
              v18 = 6;
            }

            if (v42 == *v43)
            {
              v19 = v40 - v12;
            }

            else
            {
              v19 = -1;
            }

            v20 = v19 + v18;
            v21 = &v42[~v12];
            if (v21 < v20)
            {
              v45 += v20 - v21;
            }
          }
        }

        if ((a2 & 0x40) != 0)
        {
          v29 = *a1;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v39);
          v30 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v29, &v44, &v40, &v39, a2, a3);
          std::locale::~locale(&v39);
        }

        else
        {
          v22 = *v43;
          v23 = __p;
          v24 = *v43 - __p;
          v25 = v45;
          if (*v43 - __p + v45 >= a2 >> 32)
          {
            if (!v45 || (v31 = v42, v42 == *v43))
            {
              v30 = *a1;
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v43 - __p);
              std::__format::__output_buffer<char>::__fill[abi:ne200100](v30, v25, 48);
            }

            else
            {
              v30 = *a1;
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v42 - __p);
              std::__format::__output_buffer<char>::__fill[abi:ne200100](v30, v25, 48);
              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v30, v31, v22 - v31);
            }
          }

          else
          {
            v26 = *a1;
            if ((a2 & 7) == 4)
            {
              if (__p != v40)
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v26, *__p);
                ++v23;
              }

              v27 = a2 & 0xB8 | 3;
              v28 = 48;
            }

            else
            {
              v28 = BYTE4(a3);
              v27 = a2;
            }

            v32 = a2 & 0xFFFFFFFFFFFFFF00 | v27;
            v33 = a3 & 0xFFFFFF00FFFFFFFFLL | (v28 << 32);
            if (v25)
            {
              v34 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v23, *v43, v26, v32, v33, v24, v42, v25);
            }

            else
            {
              v34 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v23, *v43 - v23, v26, v32, v33, v24);
            }

            v30 = v34;
          }
        }

        if (v46 >= 0x101)
        {
          operator delete(__p);
        }

        v35 = *MEMORY[0x29EDCA608];
        return v30;
      }
    }

    else
    {
      v44 = 149;
      v45 = v10 - 149;
      v46 = 194;
    }

    v11 = v48;
    goto LABEL_10;
  }

  v37 = *a1;
  v38 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v37, a2, a3, a4 < 0.0, 0);
}

void sub_299FA9BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = v14;
  __src = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

char *std::__formatter::__format_buffer[abi:ne200100]<float,float>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x29C2B8F30](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<float,float>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>(a1, v17, v9, a6);
}

void *std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:ne200100](v35, v45);
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v35, v46, v44 - v46);
  }

  v47 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_299FAA2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:ne200100](v15, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v15, a7, a2 - a7);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v12, v14);
}