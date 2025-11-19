SERestoreInfo::SN300V2DeviceInfo *SERestoreInfo::SN300V2DeviceInfo::SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2026CF0;
  if (*(v3 + 14) != 54)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::P73BaseDeviceInfo::~P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

void SERestoreInfo::SN300V2DeviceInfo::~SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this)
{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_2A2027278;
  v2 = *(this + 25);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t SERestoreInfo::P73BaseDeviceInfo::getOsKeyId@<X0>(SERestoreInfo::P73BaseDeviceInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 14), *(this + 15), *(this + 15) - *(this + 14));
}

SERestoreInfo::SEWrongDeviceInfo *SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(SERestoreInfo::SEWrongDeviceInfo *this)
{
  v4 = 16;
  strcpy(__p, "Wrong DeviceInfo");
  SERestoreInfo::SEException::SEException(this, __p, 2, @"SEUpdaterErrorDomain");
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A2026D58;
  return this;
}

void SERestoreInfo::SEWrongDeviceInfo::~SEWrongDeviceInfo(std::exception *this)
{
  SERestoreInfo::SEException::~SEException(this);

  JUMPOUT(0x29C2B5F30);
}

uint64_t SERestoreInfo::SEException::what(SERestoreInfo::SEException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void AlohaVerificationOptions::print(AlohaVerificationOptions *this)
{
  v2 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v3 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v2);
  }

  v4 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v3, 2, 0, 1, "print", "Verify options:\n");
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v6 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v5);
  }

  v7 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v6, 2, 0, 1, "print", "  useDebugSSEInterface: %d\n", this->var0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v9 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v8);
  }

  v10 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v9, 2, 0, 1, "print", "  restoreEnvironment: %d\n", this->var1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void verifyAlohaPairing(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [AlohaPairingVerifier alloc];
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = [(AlohaPairingVerifier *)v6 initWithController:&v10 options:a2];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = [(AlohaPairingVerifier *)v8 performAlohaVerification];
  _ObjCLog(2, "verifyAlohaPairing", &cfstr_VerifiedResult.isa, v9);
  [(AlohaPairingVerifier *)v8 invalidate];
  if (v9)
  {
    *a3 = v9;
    CFRetain(v9);
  }

  else
  {
    *a3 = 0;
  }
}

void sub_299ED3E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_299ED4358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void SERestoreInfo::RApdu::~RApdu(SERestoreInfo::RApdu *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t getSSEIOConnect(void)
{
  if ((_MergedGlobals_1 & 1) == 0)
  {
    v0 = *MEMORY[0x29EDBB110];
    v1 = IOServiceMatching("AppleSSE");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      v4 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, &dword_2A197E22C);
      IOObjectRelease(v3);
      if (!v4)
      {
        _MergedGlobals_1 = 1;
      }
    }
  }

  return dword_2A197E22C;
}

void sub_299ED4A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<SEUpdaterUtil::SELogObj>::shared_ptr[abi:ne200100]<SEUpdaterUtil::SELogObj,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_299ED4F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SEUpdaterUtil::SELogObj>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<SEUpdaterUtil::SELogObj>::__enable_weak_this[abi:ne200100]<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,0>(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t *std::unique_ptr<SEUpdaterUtil::SELogObj>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::destroy((v2 + 56));
    v3 = ctu::SharedSynchronizable<SEUpdaterUtil::Error>::~SharedSynchronizable(v2);
    MEMORY[0x29C2B5F30](v3, 0x10B0C409C89B6A6);
  }

  return a1;
}

void std::__shared_ptr_pointer<SEUpdaterUtil::SELogObj *,std::shared_ptr<SEUpdaterUtil::SELogObj>::__shared_ptr_default_delete<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj>,std::allocator<SEUpdaterUtil::SELogObj>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

uint64_t std::__shared_ptr_pointer<SEUpdaterUtil::SELogObj *,std::shared_ptr<SEUpdaterUtil::SELogObj>::__shared_ptr_default_delete<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj>,std::allocator<SEUpdaterUtil::SELogObj>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::destroy((v1 + 56));
    ctu::SharedSynchronizable<SEUpdaterUtil::Error>::~SharedSynchronizable(v1);

    JUMPOUT(0x29C2B5F30);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SEUpdaterUtil::SELogObj *,std::shared_ptr<SEUpdaterUtil::SELogObj>::__shared_ptr_default_delete<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj>,std::allocator<SEUpdaterUtil::SELogObj>>::__get_deleter(uint64_t a1, uint64_t a2)
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

uint64_t SEUpdaterUtil::SELogObj::printLogv(SEUpdaterUtil::SELogObj *this, SEUpdaterUtil::SELogObj *a2, int a3, int a4, const char *a5, SEUpdaterUtil::SELogObj *a6, va_list a7)
{
  v15[4] = *MEMORY[0x29EDCA608];
  SEUpdaterUtil::SELogObj::FormatMsgv(a6, a7, &v14);
  if (v14)
  {
    SEUpdaterUtil::SELogObj::printFormattedLog(this, a2, a3, a4, a5, &v14);
  }

  std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&v14, 0);
  result = std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v15);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299ED520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&a9, 0);
  std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v9 + 8);
  _Unwind_Resume(a1);
}

uint64_t SEUpdaterUtil::SELogObj::FormatMsgv@<X0>(SEUpdaterUtil::SELogObj *this@<X0>, va_list a2@<X1>, void *a3@<X8>)
{
  v9[4] = *MEMORY[0x29EDCA608];
  v8 = 0;
  result = vasprintf(&v8, this, a2);
  if (result < 1 || v8 == 0)
  {
    *a3 = 0;
    a3[4] = 0;
  }

  else
  {
    v9[0] = &unk_2A2026E58;
    v9[3] = v9;
    *a3 = v8;
    std::__function::__value_func<void ()(char const*)>::__value_func[abi:ne200100]((a3 + 1), v9);
    result = std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void SEUpdaterUtil::SELogObj::printFormattedLog(SEUpdaterUtil::SELogObj *a1, SEUpdaterUtil::SELogObj *this, int a3, int a4, uint64_t a5, const char **a6)
{
  v8 = this;
  v17[6] = *MEMORY[0x29EDCA608];
  v10 = *a6;
  if (!a4 || (SEUpdaterUtil::SELogObj::createVerboseLogString(this, *a6, 1, a5, &v16), std::unique_ptr<char const,std::function<void ()(char const*)>>::operator=[abi:ne200100](a6, &v16), std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&v16, 0), std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v17), (v10 = *a6) != 0))
  {
    v11 = strlen(v10);
    v16 = MEMORY[0x29EDCA5F8];
    v17[0] = 3221225472;
    v17[1] = ___ZN13SEUpdaterUtil8SELogObj6addLogEPKcm_block_invoke;
    v17[2] = &__block_descriptor_56_e5_v8__0l;
    v17[3] = a1;
    v17[4] = v10;
    v17[5] = v11;
    v15 = &v16;
    ctu::SharedSynchronizable<SEUpdaterUtil::SELogObj>::execute_wrapped_sync<void({block_pointer} {__strong}&)(void)>(a1, &v15);

    if (*(a1 + 12) > v8)
    {
      if (a3)
      {
        SEUpdaterUtil::SELogObj::print(a1, "********************************************************************************\n");
        SEUpdaterUtil::SELogObj::print(a1, *a6);
        v12 = a1;
        v13 = "********************************************************************************\n";
      }

      else
      {
        v13 = *a6;
        v12 = a1;
      }

      SEUpdaterUtil::SELogObj::print(v12, v13);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__func<SEUpdaterUtil::SELogObj::FormatMsgv(char const*,char *)::{lambda(char const*)#1},std::allocator<SEUpdaterUtil::SELogObj::FormatMsgv(char const*,char *)::{lambda(char const*)#1}>,void ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(char const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t SEUpdaterUtil::SELogObj::createVerboseLogString@<X0>(SEUpdaterUtil::SELogObj *this@<X0>, const char *a2@<X2>, const char *a3@<X3>, uint64_t a4@<X1>, void *a5@<X8>)
{
  if (this >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *(&v13.__r_.__value_.__s + 23) = 11;
    strcpy(&v13, "Assertion: ");
    v11 = std::string::append(&v13, "level >= 0 && level < _LOG_LEVEL_MAX && level is not good");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v14);
  }

  v7 = this;
  if (!a3)
  {
    return SEUpdaterUtil::SELogObj::FormatMsg("[%s] %s: %s", a5, SEUpdaterUtil::logLevelNames[this], a4, a2);
  }

  v14.tv_sec = 0;
  *&v14.tv_usec = 0;
  gettimeofday(&v14, 0);
  return SEUpdaterUtil::SELogObj::FormatMsg("[%3.3ld.%1.1d] [%s] %s: %s", a5, v14.tv_sec, (v14.tv_usec / 1000), SEUpdaterUtil::logLevelNames[v7], a4, a2);
}

void sub_299ED579C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

uint64_t *std::unique_ptr<char const,std::function<void ()(char const*)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(char const*)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

void SEUpdaterUtil::SELogObj::print(SEUpdaterUtil::SELogObj *this, const char *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = ___ZN13SEUpdaterUtil8SELogObj5printEPKc_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = this;
  v3[5] = a2;
  v4 = v3;
  ctu::SharedSynchronizable<SEUpdaterUtil::SELogObj>::execute_wrapped_sync<void({block_pointer} {__strong}&)(void)>(this, &v4);
}

uint64_t *std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(char const*)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::function<void ()(char const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(char const*)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(char const*)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(char const*)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *___ZN13SEUpdaterUtil8SELogObj6addLogEPKcm_block_invoke(void *a1)
{
  v1 = a1[5];
  v3[0] = (a1[4] + 56);
  v3[1] = 0;
  return boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::insert<char const*>(v3[0], v3, v1, v1 + a1[6]);
}

void ctu::SharedSynchronizable<SEUpdaterUtil::SELogObj>::execute_wrapped_sync<void({block_pointer} {__strong}&)(void)>(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN13SEUpdaterUtil8SELogObjEE20execute_wrapped_syncIRU8__strongU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = a2;
  v3 = MEMORY[0x29C2B64F0](v5);
  if (*(a1 + 24))
  {
    v4 = dispatch::queue::operator*((a1 + 16));
    dispatch_async_and_wait(v4, v3);
  }

  else
  {
    v4 = dispatch::queue::operator*((a1 + 16));
    dispatch_sync(v4, v3);
  }
}

void *boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::insert<char const*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 - a3);
  if (a4 != a3)
  {
    v7 = result;
    v9 = *result;
    v8 = result[1];
    v14[0] = result;
    v14[1] = 0;
    result = boost::cb_details::iterator<boost::circular_buffer<unsigned char,std::allocator<unsigned char>>,boost::cb_details::nonconst_traits<std::allocator<unsigned char>>>::operator-<boost::cb_details::nonconst_traits<std::allocator<unsigned char>>>(v14, a2);
    if (result + v9 != v8)
    {
      v10 = v8 - (result + v9);
      v11 = &v4[-v10];
      if (v4 < v10)
      {
        v11 = 0;
      }

      v12 = &v11[a3];
      if (v4 >= v10)
      {
        v13 = (v8 - (result + v9));
      }

      else
      {
        v13 = v4;
      }

      v14[0] = v12;
      return boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::insert_n<boost::cb_details::iterator_wrapper<char const*>>(v7, a2, v13, v14);
    }
  }

  return result;
}

uint64_t boost::cb_details::iterator<boost::circular_buffer<unsigned char,std::allocator<unsigned char>>,boost::cb_details::nonconst_traits<std::allocator<unsigned char>>>::operator-<boost::cb_details::nonconst_traits<std::allocator<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v3 = *v2;
    v5 = v2[4];
    goto LABEL_5;
  }

  v4 = v2[2];
  if (v3 < v4)
  {
    v5 = v2[1] - v4;
LABEL_5:
    v6 = v3 + v5;
    goto LABEL_7;
  }

  v6 = *v2 + v3 - v4;
LABEL_7:
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = v2[2];
    if (v7 >= v8)
    {
      v10 = *v2 + v7 - v8;
      return v6 - v10;
    }

    v9 = v2[1] - v8;
  }

  else
  {
    v7 = *v2;
    v9 = v2[4];
  }

  v10 = v7 + v9;
  return v6 - v10;
}

void *boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::insert_n<boost::cb_details::iterator_wrapper<char const*>>(void *result, uint64_t a2, _BYTE *a3, void *a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = result[3];
  v7 = result[4] + *result;
  v8 = &v4[-v7];
  if (&v4[-v7] >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = &v4[-v7];
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    if (v6 != v10)
    {
      v11 = v4 - v6;
      v12 = &v5[a3 - 1 - v4];
      if (v11 > (a3 - 1))
      {
        v12 = (a3 - 1);
      }

      v13 = &v6[v12];
      do
      {
        if (v6 == v5)
        {
          v6 = result[1];
        }

        v14 = *--v6;
        *v13 = v14;
        v5 = *result;
        if (v13 == *result)
        {
          v13 = result[1];
        }

        --v13;
      }

      while (v6 != *(a2 + 8));
    }

    if (a3)
    {
      v15 = a3;
      do
      {
        v16 = (*a4)++;
        *v10++ = *v16;
        v4 = result[1];
        if (v10 == v4)
        {
          v10 = *result;
        }

        --v15;
      }

      while (v15);
    }

    else
    {
      v4 = result[1];
    }
  }

  else
  {
    if (v9)
    {
      v17 = v9;
      do
      {
        v18 = (*a4)++;
        *v6++ = *v18;
        v4 = result[1];
        if (v6 == v4)
        {
          v6 = *result;
        }

        --v17;
      }

      while (v17);
    }

    if (v8 < a3)
    {
      v19 = a3 - v9;
      do
      {
        v20 = (*a4)++;
        *v6++ = *v20;
        v4 = result[1];
        if (v6 == v4)
        {
          v6 = *result;
        }

        --v19;
      }

      while (v19);
    }
  }

  v21 = result[3];
  v22 = a3;
  if (&v4[-v21] <= a3)
  {
    v22 = (a3 - v4 + *result);
  }

  result[3] = &v22[v21];
  v23 = result[2];
  v24 = a3 - v9;
  if (&v4[-v23] <= a3 - v9)
  {
    v24 = v24 - v4 + *result;
  }

  result[2] = v23 + v24;
  result[4] += v9;
  return result;
}

void sub_299ED5EF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SERestoreInfo::Apdu::updateSize(uint64_t this, unint64_t a2)
{
  v2 = *(this + 8);
  v3 = v2[1] - *v2;
  if (v3 < a2)
  {
    __assert_rtn("updateSize", "Apdu.hpp", 126, "len <= bytes->size()");
  }

  if (v3 > a2)
  {
    v2[1] = *v2 + a2;
  }

  return this;
}

void *SERestoreInfo::Apdu::assign(SERestoreInfo::Apdu *this, char *a2, unint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("assign", "Apdu.hpp", 134, "data");
  }

  if (a3 >> 3 >= 0x407)
  {
    __assert_rtn("assign", "Apdu.hpp", 135, "len <= MAX_APDU_LEN");
  }

  v4 = *(this + 1);
  v5 = &a2[a3];

  return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v4, a2, v5, a3);
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void SERestoreInfo::Apdu::~Apdu(SERestoreInfo::Apdu *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void *std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,std::allocator<std::vector<unsigned char>>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2026E08;
  std::vector<unsigned char>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2026E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_299ED6378(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

const void **ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFData const>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v6);
  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v6);
  return a1;
}

uint64_t DERParseDERSequenceSpecContent(unint64_t *a1, uint64_t a2, char *a3, size_t a4)
{
  if (a4)
  {
    bzero(a3, a4);
  }

  v23 = 0;
  v24 = 0;
  DERDecodeSeqContentInit(a1, &v23);
  if (!*(a2 + 8))
  {
LABEL_20:
    if (v23 > v24)
    {
      return 3;
    }

    if (v23 < v24 && *(a2 + 10) != 1)
    {
      return 2;
    }

    return 0;
  }

  v7 = 0;
  while (1)
  {
    v21 = 0;
    v22 = 0uLL;
    v8 = v23;
    result = DERDecodeSeqNext(&v23, &v21);
    if (result)
    {
      break;
    }

    v10 = *(a2 + 8);
    if (v7 >= v10)
    {
      if (*(a2 + 10) != 1)
      {
        return 2;
      }
    }

    else
    {
      v11 = v7;
      v12 = (*a2 + 24 * v7 + 16);
      while (1)
      {
        v13 = *v12;
        if ((*v12 & 2) != 0 || v21 == *(v12 - 1))
        {
          break;
        }

        if ((v13 & 1) == 0)
        {
          return 2;
        }

        ++v11;
        v12 += 12;
        if (v10 == v11)
        {
          goto LABEL_19;
        }
      }

      if ((v13 & 4) == 0)
      {
        v14 = &a3[*(v12 - 2)];
        *v14 = v22;
        if ((v13 & 8) != 0)
        {
          v15 = v22 - v8 + *(v14 + 1);
          *v14 = v8;
          *(v14 + 1) = v15;
        }
      }

      v7 = v11 + 1;
      LODWORD(v10) = *(a2 + 8);
      if (v7 == v10)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    if (v7 >= v10)
    {
      goto LABEL_20;
    }
  }

  if (result == 1)
  {
    v16 = *(a2 + 8);
    if (v7 < v16)
    {
      v17 = (*a2 + 24 * v7 + 16);
      v18 = v7 + 1;
      while (1)
      {
        v19 = *v17;
        v17 += 12;
        if ((v19 & 1) == 0)
        {
          break;
        }

        if (v16 == v18++)
        {
          return 0;
        }
      }

      return 5;
    }

    return 0;
  }

  return result;
}

void sub_299ED7090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 185) < 0)
  {
    operator delete(*(v54 - 208));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdater::CommandSelectISD::~CommandSelectISD(SEUpdater::CommandSelectISD *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

uint64_t SERestoreInfo::Apdu::SetP2(uint64_t this, char a2)
{
  v2 = *(this + 8);
  if (!v2 || (v3 = *v2, (*(*(this + 8) + 8) - v3) <= 4))
  {
    __assert_rtn("SetP2", "Apdu.hpp", 165, "bytes && bytes->size() >= sizeof(CApduHeader_t)");
  }

  *(v3 + 3) = a2;
  return this;
}

void SEUpdater::CommandGetStatusProprietaryPackages::~CommandGetStatusProprietaryPackages(SEUpdater::CommandGetStatusProprietaryPackages *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void sub_299ED7EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  __p = &unk_2A2026DD8;
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::vector<SEUpdater::InstanceInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  a21 = &unk_2A2026DD8;
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::CommandGetStatusProprietaryInstance::~CommandGetStatusProprietaryInstance(SEUpdater::CommandGetStatusProprietaryInstance *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void sub_299ED8A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::CommandGetAvailableMemory::~CommandGetAvailableMemory(SEUpdater::CommandGetAvailableMemory *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void sub_299ED8E78(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A2026DD8;
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *SERestoreInfo::CApdu::updateSize(SERestoreInfo::CApdu *this, unint64_t a2)
{
  v3 = *(this + 1);
  v4 = *v3;
  if (v3[1] - *v3 <= a2)
  {
    __assert_rtn("updateSize", "Apdu.hpp", 296, "len < bytes->size()");
  }

  v3[1] = v4 + a2;
  if (a2 >= 6)
  {
    v5 = a2 - 5;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >= 6)
  {
    v6 = v4 + 5;
  }

  else
  {
    v6 = 0;
  }

  *(this + 3) = v4;
  *(this + 4) = v6;
  *(this + 5) = v5;

  return SERestoreInfo::CApdu::validate(this);
}

void *SERestoreInfo::CApdu::assign(SERestoreInfo::CApdu *this, char *a2, unint64_t a3)
{
  result = SERestoreInfo::Apdu::assign(this, a2, a3);
  v5 = **(this + 1);
  v6 = *(*(this + 1) + 8) - v5;
  v7 = v6 >= 6;
  if (v6 >= 6)
  {
    v8 = v6 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v5 + 5;
  }

  else
  {
    v9 = 0;
  }

  *(this + 4) = v9;
  *(this + 5) = v8;
  *(this + 3) = v5;
  return result;
}

void SERestoreInfo::Apdu::Apdu(void *a1)
{
  *a1 = &unk_2A2026DD8;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_299ED907C(_Unwind_Exception *a1)
{
  MEMORY[0x29C2B5F30](v2, 0x10C402FEFCB83);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void *SERestoreInfo::CApdu::validate(void *this)
{
  v1 = this[3];
  v2 = this[1];
  if (v1 != *v2)
  {
    __assert_rtn("validate", "Apdu.hpp", 304, "header == reinterpret_cast<CApduHeader_t*>(&((*bytes)[0]))");
  }

  v3 = this[5];
  if (v3)
  {
    if (v3 + 5 != v2[1] - v1)
    {
      __assert_rtn("validate", "Apdu.hpp", 307, "sizeof(CApduHeader_t) + payloadLen == bytes->size()");
    }

    if (this[4] != *v2 + 5)
    {
      __assert_rtn("validate", "Apdu.hpp", 308, "payload == &((*bytes)[sizeof(CApduHeader_t)])");
    }
  }

  else
  {
    if ((v2[1] - v1) >= 6)
    {
      __assert_rtn("validate", "Apdu.hpp", 312, "sizeof(CApduHeader_t) >= bytes->size()");
    }

    if (this[4])
    {
      __assert_rtn("validate", "Apdu.hpp", 313, "payload == nullptr");
    }
  }

  return this;
}

void SERestoreInfo::CApdu::~CApdu(SERestoreInfo::CApdu *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void sub_299ED9330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::vector<unsigned char> *,std::shared_ptr<std::vector<unsigned char>>::__shared_ptr_default_delete<std::vector<unsigned char>,std::vector<unsigned char>>,std::allocator<std::vector<unsigned char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

uint64_t std::__shared_ptr_pointer<std::vector<unsigned char> *,std::shared_ptr<std::vector<unsigned char>>::__shared_ptr_default_delete<std::vector<unsigned char>,std::vector<unsigned char>>,std::allocator<std::vector<unsigned char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x29C2B5F30);
  }
}

uint64_t SERestoreInfo::CallAndThrow<DERReturn>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x48uLL);
    v5 = SERestoreInfo::SEException::SEException(exception, a2, v2, @"libDERErrorDomain");
  }

  return result;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 5) = *(a2 + 40);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  result = *(a2 + 64);
  *(a1 + 4) = result;
  a1[10] = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t ___ZN9SEUpdaterL11ParseE3TLVsERKN13SERestoreInfo5RApduERNSt3__16vectorINS_11PackageInfoENS4_9allocatorIS6_EEEE_block_invoke(uint64_t a1, void *a2)
{
  if (*a2 == 0x8000000000000004)
  {
    v7 = *(*(a1 + 32) + 8);
    v10 = a2[1];
    v9 = a2[2];
    v8 = a2 + 1;
    *&v14 = v10 + v9;
    v11 = *(v7 + 72);
    if (v11 >= *(v7 + 80))
    {
      v12 = std::vector<std::vector<unsigned char>>::__emplace_back_slow_path<unsigned char *&,unsigned char *>(v7 + 64, v8, &v14);
    }

    else
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v11, v10, v10 + v9, v9);
      v12 = (v11 + 3);
      *(v7 + 72) = v11 + 3;
    }

    *(v7 + 72) = v12;
  }

  else
  {
    if (*a2 != 0x400000000000000FLL)
    {
      __assert_rtn("ParseE3TLVs_block_invoke", "QueryAppletStatus.cpp", 75, "0");
    }

    v4 = a2[1];
    v3 = a2[2];
    v15 = 0;
    v14 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v14, v4, v4 + v3, v3);
    v5 = *(*(a1 + 32) + 8);
    v6 = v5[5];
    if (v6)
    {
      v5[6] = v6;
      operator delete(v6);
      v5[5] = 0;
      v5[6] = 0;
      v5[7] = 0;
    }

    *(v5 + 5) = v14;
    v5[7] = v15;
  }

  return 0;
}

void SEUpdater::PackageInfo::~PackageInfo(SEUpdater::PackageInfo *this)
{
  v3 = (this + 24);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<std::vector<unsigned char>>::__init_with_size[abi:ne200100]<std::vector<unsigned char>*,std::vector<unsigned char>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<unsigned char>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299ED975C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<unsigned char>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned char>>>(a1, a2);
  }

  std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned char>>,std::vector<unsigned char>*,std::vector<unsigned char>*,std::vector<unsigned char>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned char>>,std::vector<unsigned char>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned char>>,std::vector<unsigned char>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned char>>,std::vector<unsigned char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned char>>,std::vector<unsigned char>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::allocator<SEUpdater::PackageInfo>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

uint64_t std::__split_buffer<SEUpdater::PackageInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 48;
    std::allocator<SEUpdater::PackageInfo>::destroy[abi:ne200100](v4, i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 __Block_byref_object_copy__69(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 5) = *(a2 + 40);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  *(a1 + 4) = *(a2 + 64);
  a1[10] = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  result = *(a2 + 88);
  *(a1 + 11) = result;
  a1[13] = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

void __Block_byref_object_dispose__70(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;

    operator delete(v4);
  }
}

uint64_t ___ZN9SEUpdaterL11ParseE3TLVsERKN13SERestoreInfo5RApduERNSt3__16vectorINS_12InstanceInfoENS4_9allocatorIS6_EEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 == 0x400000000000000FLL)
  {
    v13 = a2[1];
    v12 = a2[2];
    v18 = 0;
    v17 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v17, v13, v13 + v12, v12);
    v14 = *(*(a1 + 32) + 8);
    v15 = v14[5];
    if (v15)
    {
      v14[6] = v15;
      operator delete(v15);
    }

    *(v14 + 5) = v17;
    v14[7] = v18;
  }

  else if (v3 == 0x8000000000000070)
  {
    v9 = a2[1];
    v8 = a2[2];
    v18 = 0;
    v17 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v17, v9, v9 + v8, v8);
    v10 = *(*(a1 + 32) + 8);
    v11 = v10[11];
    if (v11)
    {
      v10[12] = v11;
      operator delete(v11);
    }

    *(v10 + 11) = v17;
    v10[13] = v18;
  }

  else
  {
    if (v3 != 0x8000000000000004)
    {
      __assert_rtn("ParseE3TLVs_block_invoke", "QueryAppletStatus.cpp", 145, "0");
    }

    v5 = a2[1];
    v4 = a2[2];
    v18 = 0;
    v17 = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v17, v5, v5 + v4, v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = v6[8];
    if (v7)
    {
      v6[9] = v7;
      operator delete(v7);
    }

    *(v6 + 4) = v17;
    v6[10] = v18;
  }

  return 0;
}

void SEUpdater::InstanceInfo::~InstanceInfo(SEUpdater::InstanceInfo *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void std::allocator_traits<std::allocator<SEUpdater::InstanceInfo>>::destroy[abi:ne200100]<SEUpdater::InstanceInfo,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t std::__split_buffer<SEUpdater::InstanceInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator_traits<std::allocator<SEUpdater::InstanceInfo>>::destroy[abi:ne200100]<SEUpdater::InstanceInfo,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ___ZN9SEUpdaterL13ParseDF2ATLVsERKN13SERestoreInfo5RApduERNS_15AvailableMemoryE_block_invoke(uint64_t a1, uint64_t a2)
{
  switch(*a2)
  {
    case 0:
      v2 = *(a1 + 32);
      goto LABEL_15;
    case 1:
      v2 = (*(a1 + 32) + 4);
      goto LABEL_15;
    case 2:
      v2 = (*(a1 + 32) + 8);
      goto LABEL_15;
    case 3:
      v2 = (*(a1 + 32) + 12);
      goto LABEL_15;
    case 4:
      v2 = (*(a1 + 32) + 16);
      goto LABEL_15;
    case 5:
      v2 = (*(a1 + 32) + 20);
      goto LABEL_15;
    case 6:
      v2 = (*(a1 + 32) + 24);
      goto LABEL_15;
    case 0xCLL:
      v2 = (*(a1 + 32) + 28);
      goto LABEL_15;
    case 0xDLL:
      v2 = (*(a1 + 32) + 32);
      goto LABEL_15;
    case 0xELL:
      v2 = (*(a1 + 32) + 36);
      goto LABEL_15;
    case 0xFLL:
      v2 = (*(a1 + 32) + 40);
      goto LABEL_15;
    case 0x10:
      v2 = (*(a1 + 32) + 44);
      goto LABEL_15;
    case 0x11:
      v2 = (*(a1 + 32) + 48);
LABEL_15:
      *v2 = bswap32(**(a2 + 8));
      break;
    default:
      return 0;
  }

  return 0;
}

void std::vector<SEUpdater::PackageInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<SEUpdater::PackageInfo>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<SEUpdater::InstanceInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        std::allocator_traits<std::allocator<SEUpdater::InstanceInfo>>::destroy[abi:ne200100]<SEUpdater::InstanceInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

SEUpdaterUtil::Error *SEUpdaterUtil::Error::Error(SEUpdaterUtil::Error *this)
{
  v2 = dispatch_queue_create("Error", 0);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 3) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

uint64_t SEUpdaterUtil::Error::CreateCFError(SEUpdaterUtil::Error *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN13SEUpdaterUtil5Error13CreateCFErrorEv_block_invoke;
  v5[3] = &unk_29F290E38;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN13SEUpdaterUtil5ErrorEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_8;
  block[4] = this;
  block[5] = &v10;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZN13SEUpdaterUtil5Error13CreateCFErrorEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2 != v3)
  {
    v5 = 0;
    while (1)
    {
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

      *(*(*(a1 + 32) + 8) + 24) = SERestoreInfo::CreateCFError(&__p, *(v2 + 6), v5, @"SEUpdaterErrorDomain");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v5)
      {
        goto LABEL_8;
      }

LABEL_9:
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v2 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_8:
    CFRelease(v5);
    goto LABEL_9;
  }
}

void sub_299EDA1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SEUpdaterUtil::Error::getErrorCode(SEUpdaterUtil::Error *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN13SEUpdaterUtil5Error12getErrorCodeEv_block_invoke;
  v5[3] = &unk_29F290E60;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN13SEUpdaterUtil5ErrorEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_8;
  block[4] = this;
  block[5] = &v10;
  v2 = this + 16;
  v1 = *(this + 2);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN13SEUpdaterUtil5Error12getErrorCodeEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  if (v3 != v2)
  {
    *(*(*(result + 32) + 8) + 24) = *(v2 - 8);
  }

  return result;
}

void SEUpdaterUtil::Error::addError(uint64_t a1, uint64_t a2, int a3)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN13SEUpdaterUtil5Error8addErrorERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEi_block_invoke;
  v5[3] = &__block_descriptor_tmp_4;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3;
  v7 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN13SEUpdaterUtil5ErrorEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_8;
  block[4] = a1;
  block[5] = &v7;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void ___ZN13SEUpdaterUtil5Error8addErrorERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEi_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
  }

  else
  {
    v4 = *v2;
    __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&__p.__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a1 + 48);
  v19 = v5;
  v6 = v3[5];
  v7 = v3[6];
  if (v6 >= v7)
  {
    v9 = v3[4];
    v10 = v6 - v9;
    v11 = (v6 - v9) >> 5;
    v12 = v11 + 1;
    if ((v11 + 1) >> 59)
    {
      std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v9;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 32 * v11;
    *v15 = __p;
    memset(&__p, 0, sizeof(__p));
    *(v15 + 24) = v5;
    v16 = 32 * v11 + 32;
    memcpy(0, v9, v10);
    v3[4] = 0;
    v3[5] = v16;
    v3[6] = 0;
    if (v9)
    {
      operator delete(v9);
      v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v3[5] = v16;
      if (v17 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v3[5] = v16;
    }
  }

  else
  {
    v8 = *&__p.__r_.__value_.__l.__data_;
    *(v6 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v6 = v8;
    *(v6 + 24) = v19;
    v3[5] = v6 + 32;
  }
}

void sub_299EDA560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t RootCA::getRootKeyId@<X0>(int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 > 199)
  {
    if (a2 != 210 && a2 != 200)
    {
LABEL_14:
      if (a1 == 1)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v4 = &unk_2A197E1F8;
      }

      else
      {
        if (a1)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          std::to_string(&v27, a1);
          v18 = std::string::insert(&v27, 0, "Unknown RootCAId: ");
          v19 = *&v18->__r_.__value_.__l.__data_;
          v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v28.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = std::string::append(&v28, " for SEChipType ");
          v21 = *&v20->__r_.__value_.__l.__data_;
          v29.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v29.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v26, a2);
          if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v26;
          }

          else
          {
            v22 = v26.__r_.__value_.__r.__words[0];
          }

          if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v26.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v29, v22, size);
          v30 = *v24;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v25 = SERestoreInfo::SEException::SEException(exception, &v30, 16, @"SEUpdaterErrorDomain");
        }

        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v4 = &unk_2A197E1D8;
      }

      goto LABEL_11;
    }
  }

  else if (a2 != 100 && a2 != 115)
  {
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = &unk_2A197E1B8;
  }

  else
  {
    if (a1)
    {
      v7 = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v27, a1);
      v8 = std::string::insert(&v27, 0, "Unknown RootCAId: ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v28, " for SEChipType ");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v26, a2);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v26.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v29, v12, v13);
      v30 = *v14;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v15 = SERestoreInfo::SEException::SEException(v7, &v30, 16, @"SEUpdaterErrorDomain");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = &_MergedGlobals;
  }

LABEL_11:

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v4, v4 + 32, 32);
}

void sub_299EDA8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F290CB0, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void _ObjcLogInternal(SEUpdaterUtil::SELogObj *a1, const char *a2, NSString *a3)
{
  v14[4] = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = strdup([(NSString *)v5 UTF8String]);
  if (v6)
  {
    *&v11 = &unk_2A2027140;
    v12 = &v11;
    v13 = v6;
    std::__function::__value_func<void ()(char const*)>::__value_func[abi:ne200100](v14, &v11);
    std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](&v11);
    v7 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v8 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v7);
    }

    v9 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printFormattedLog(v8, a1, 0, 1, a2, &v13);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&v13, 0);
    std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v14);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_299EDABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](va, 0);
  std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v6 + 8);

  _Unwind_Resume(a1);
}

void _ObjCLog(SEUpdaterUtil::SELogObj *a1, const char *a2, NSString *a3, ...)
{
  va_start(va, a3);
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:v5 arguments:va];
  _ObjcLogInternal(a1, a2, v6);
}

id _ObjCLogNSError(NSError *a1, uint64_t a2, const char *a3, NSString *a4, ...)
{
  va_start(va, a4);
  v20[2] = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:v8 arguments:va];
  _ObjcLogInternal(0, a3, v9);
  v10 = *MEMORY[0x29EDB9ED8];
  if (v7)
  {
    v11 = *MEMORY[0x29EDB9F18];
    v19[0] = *MEMORY[0x29EDB9ED8];
    v19[1] = v11;
    v20[0] = v9;
    v20[1] = v7;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v17 = *MEMORY[0x29EDB9ED8];
    v18 = v9;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  v13 = v12;
  v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"helsinki" code:a2 userInfo:{v12, va}];

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

void _ObjCLogOutError(uint64_t *a1, uint64_t a2, const char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v12 = a4;
  v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:v12 arguments:&a9];
  _ObjcLogInternal(0, a3, v13);
  if (a1)
  {
    v14 = *a1;
    v15 = MEMORY[0x29EDB9FA0];
    v16 = *MEMORY[0x29EDB9ED8];
    if (*a1)
    {
      v17 = *MEMORY[0x29EDB9F18];
      v21[0] = *MEMORY[0x29EDB9ED8];
      v21[1] = v17;
      v22[0] = v13;
      v22[1] = v14;
      v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v19 = [v15 errorWithDomain:@"helsinki" code:a2 userInfo:v18];
    }

    else
    {
      v23 = *MEMORY[0x29EDB9ED8];
      v24[0] = v13;
      v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v19 = [v15 errorWithDomain:@"helsinki" code:a2 userInfo:v18];
    }

    *a1 = v19;
  }

  v20 = *MEMORY[0x29EDCA608];
}

void _ObjCLogWrapOutError(void *a1, void *a2, uint64_t a3, const char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[2] = *MEMORY[0x29EDCA608];
  v13 = a2;
  v14 = a5;
  v15 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:v14 arguments:&a9];
  _ObjcLogInternal(0, a4, v15);
  if (a1)
  {
    v16 = *MEMORY[0x29EDB9ED8];
    if (v13)
    {
      v17 = *MEMORY[0x29EDB9F18];
      v23[0] = *MEMORY[0x29EDB9ED8];
      v23[1] = v17;
      v24[0] = v15;
      v24[1] = v13;
      v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    }

    else
    {
      v21 = *MEMORY[0x29EDB9ED8];
      v22 = v15;
      v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    }

    v19 = v18;
    *a1 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"helsinki" code:a3 userInfo:{v18, &a9}];
  }

  v20 = *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__func<_ObjcLogInternal(int,char const*,NSString *)::$_0,std::allocator<_ObjcLogInternal(int,char const*,NSString *)::$_0>,void ()(char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t SEUpdaterUtil::SN200VImage4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN200VImage4Signer::getSigningKey(void)const::signingKey, &SEUpdaterUtil::SN200VImage4Signer::getSigningCert(void)const::signingCert, 121);
}

uint64_t SEUpdaterUtil::SN200VImage4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN200VImage4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil18SN200VImage4SignerE", 637);
}

void SEUpdaterUtil::SN200VImage4Signer::~SN200VImage4Signer(SEUpdaterUtil::SN200VImage4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(SEUpdaterUtil::SEImage4Signer *this)
{
  *this = &unk_2A20288A0;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void *SERestoreInfo::BLOB::operator=(void *a1, void *a2)
{
  if (a2 != a1)
  {
    v4 = a2[2];
    a1[1] = a2[1];
    a1[2] = v4;
    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
      a1[3] = 0;
    }

    v6 = a2[3];
    if (v6)
    {
      a1[3] = CFRetain(v6);
    }
  }

  return a1;
}

void SERestoreInfo::BLOB::~BLOB(SERestoreInfo::BLOB *this)
{
  SERestoreInfo::BLOB::~BLOB(this);

  JUMPOUT(0x29C2B5F30);
}

{
  *this = &unk_2A2027230;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }
}

void SERestoreInfo::SEFirmwareBase::~SEFirmwareBase(SERestoreInfo::SEFirmwareBase *this)
{
  *this = &unk_2A2028788;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }

  v3 = (this + 16);
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _GLOBAL__sub_I_P73BaseUpdateControllerSpec_cpp()
{
  v12 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(_MergedGlobals_2, "4143_WeakPullDown");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[24], "4143_HiZ");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[48], "412A_Default");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[72], "415E_Value0C");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[96], "415E_Value00");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[120], "40BD_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[144], "40BD_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[168], "4108_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[192], "4108_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[216], "40D0_Disable");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[240], "40D0_Enable_WithFilters_SW");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[264], "40D0_Enable_WithFilters_SW_ISO");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_2[288], "40D0_Enable_WithFilters_SW_ISO_Type");
  LODWORD(v1) = 0;
  WORD2(v1) = -28672;
  BYTE6(v1) = 0;
  qword_2A197E370 = 0;
  unk_2A197E378 = 0;
  qword_2A197E368 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E368, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28670;
  BYTE6(v1) = 0;
  qword_2A197E388 = 0;
  unk_2A197E390 = 0;
  qword_2A197E380 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E380, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28671;
  BYTE6(v1) = 0;
  qword_2A197E3A0 = 0;
  unk_2A197E3A8 = 0;
  qword_2A197E398 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E398, &v1, &v1 + 7, 7);
  v3 = xmmword_299F29550;
  *v4 = unk_299F29560;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F29530;
  v2 = unk_299F29540;
  qword_2A197E3B8 = 0;
  unk_2A197E3C0 = 0;
  qword_2A197E3B0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E3B0, &v1, &v4[22], 70);
  v3 = xmmword_299F29596;
  *v4 = unk_299F295A6;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F29576;
  v2 = unk_299F29586;
  qword_2A197E3D0 = 0;
  unk_2A197E3D8 = 0;
  qword_2A197E3C8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E3C8, &v1, &v4[22], 70);
  v3 = xmmword_299F295DC;
  *v4 = unk_299F295EC;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F295BC;
  v2 = unk_299F295CC;
  qword_2A197E3E8 = 0;
  unk_2A197E3F0 = 0;
  qword_2A197E3E0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E3E0, &v1, &v4[22], 70);
  *&v1 = 0x90000000000000;
  qword_2A197E400 = 0;
  unk_2A197E408 = 0;
  qword_2A197E3F8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E3F8, &v1, &v1 + 8, 8);
  *&v1 = 0x900000025E4103;
  qword_2A197E418 = 0;
  unk_2A197E420 = 0;
  qword_2A197E410 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E410, &v1, &v1 + 8, 8);
  *&v1 = 0x900C00025E4103;
  qword_2A197E438 = 0;
  qword_2A197E428 = 0;
  unk_2A197E430 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E428, &v1, &v1 + 8, 8);
  *&v1 = 0xA5A5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197E440 = 0;
  qword_2A197E450 = 0;
  qword_2A197E448 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E440, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197E458 = 0;
  qword_2A197E468 = 0;
  qword_2A197E460 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E458, &v1, &v1 + 10, 10);
  *&v1 = 0xA5A5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197E470 = 0;
  qword_2A197E480 = 0;
  qword_2A197E478 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E470, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197E488 = 0;
  qword_2A197E498 = 0;
  qword_2A197E490 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E488, &v1, &v1 + 10, 10);
  *&v1 = 0x5A5A5A5A05D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E4A0 = 0;
  qword_2A197E4B0 = 0;
  qword_2A197E4A8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E4A0, &v1, &v1 + 11, 11);
  *&v1 = 0x5A5AA5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E4B8 = 0;
  qword_2A197E4C8 = 0;
  qword_2A197E4C0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E4B8, &v1, &v1 + 11, 11);
  *&v1 = 0x5AA5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E4D0 = 0;
  qword_2A197E4E0 = 0;
  qword_2A197E4D8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E4D0, &v1, &v1 + 11, 11);
  *&v1 = 0xA5A5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197E4E8 = 0;
  qword_2A197E4F8 = 0;
  qword_2A197E4F0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197E4E8, &v1, &v1 + 11, 11);
  v7 = unk_299F29840;
  v8 = xmmword_299F29850;
  v9 = unk_299F29860;
  v10 = xmmword_299F29870;
  v5 = unk_299F29820;
  v6 = xmmword_299F29830;
  v1 = xmmword_299F297D0;
  v2 = unk_299F297E0;
  *v4 = unk_299F29800;
  *&v4[16] = xmmword_299F29810;
  v3 = xmmword_299F297F0;
  v11 = -57;
  SERestoreInfo::CApdu::CApdu(&v0);
}

void SEUpdaterUtil::P73BaseImage4Signer::doObjectPropertiesCB(SEUpdaterUtil::P73BaseImage4Signer *this, unsigned __int8 **a2, unsigned int *a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v61, "Assertion: ");
    v40 = std::string::append(&v61, "outdata && outlength");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v63 = v40->__r_.__value_.__r.__words[2];
    v62 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v62);
  }

  if (!*(this + 1))
  {
    v42 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v61, "Assertion: ");
    v43 = std::string::append(&v61, "fRequestDict");
    v44 = *&v43->__r_.__value_.__l.__data_;
    v63 = v43->__r_.__value_.__r.__words[2];
    v62 = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v42, &v62);
  }

  v61.__r_.__value_.__r.__words[0] = 0;
  v4 = Img4EncodeItemBegin();
  SEUpdaterUtil::Img4EncodeCallAndThrow(v4, "Fail to Img4EncodeItemBegin: %d", v5);
  value = 0;
  if (!CFDictionaryGetValueIfPresent(*(this + 1), @"SE,UpdatePayload", &value) || (v6 = CFGetTypeID(value), v6 != CFDictionaryGetTypeID()))
  {
    v45 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v62, "Missing kSETagMeasurementUpdatePayload or wrong type");
    v46 = SERestoreInfo::SEException::SEException(v45, &v62, 2, @"SEUpdaterErrorDomain");
  }

  v7 = value;
  if (CFDictionaryGetValueIfPresent(value, @"DevelopmentUpdatePayloadHash", &value))
  {
    v8 = CFGetTypeID(value);
    if (v8 == CFDataGetTypeID())
    {
      v9 = value;
      CFDataGetBytePtr(value);
      CFDataGetLength(v9);
      v10 = Img4EncodeItemPropertyData();
      SEUpdaterUtil::Img4EncodeCallAndThrow(v10, "Fail to add sedh", v11);
    }
  }

  if (CFDictionaryGetValueIfPresent(v7, @"ProductionUpdatePayloadHash", &value))
  {
    v12 = CFGetTypeID(value);
    if (v12 == CFDataGetTypeID())
    {
      v13 = value;
      CFDataGetBytePtr(value);
      CFDataGetLength(v13);
      v14 = Img4EncodeItemPropertyData();
      SEUpdaterUtil::Img4EncodeCallAndThrow(v14, "Fail to add seph", v15);
    }
  }

  cf = 0;
  if (CFDictionaryGetValueIfPresent(*(this + 1), @"SEAC", &cf))
  {
    v16 = CFGetTypeID(cf);
    if (v16 == CFNumberGetTypeID())
    {
      v17 = Img4EncodeItemPropertyBool();
      SEUpdaterUtil::Img4EncodeCallAndThrow(v17, "Failed to add seac", v18);
    }
  }

  if (CFDictionaryGetValueIfPresent(*(this + 1), @"SERS", &cf))
  {
    v19 = CFGetTypeID(cf);
    if (v19 == CFNumberGetTypeID())
    {
      v20 = Img4EncodeItemPropertyBool();
      SEUpdaterUtil::Img4EncodeCallAndThrow(v20, "Failed to add sers", v21);
    }
  }

  if (CFDictionaryGetValueIfPresent(*(this + 1), @"SESA", &cf))
  {
    v22 = CFGetTypeID(cf);
    if (v22 == CFNumberGetTypeID())
    {
      v23 = Img4EncodeItemPropertyBool();
      SEUpdaterUtil::Img4EncodeCallAndThrow(v23, "Failed to add sesa", v24);
    }
  }

  if (CFDictionaryGetValueIfPresent(*(this + 1), @"SE,RapRTKitOS", &value))
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(value))
    {
      v47 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v62, "Wrong type for kRoseTagMeasurementRTKitOS");
      v48 = SERestoreInfo::SEException::SEException(v47, &v62, 2, @"SEUpdaterErrorDomain");
    }

    if (!CFDictionaryGetValueIfPresent(value, @"Digest", &value))
    {
      v49 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v62, "Missing kRoseTagDigest in kRoseTagMeasurementRTKitOS");
      v50 = SERestoreInfo::SEException::SEException(v49, &v62, 2, @"SEUpdaterErrorDomain");
    }

    v26 = CFDataGetTypeID();
    if (v26 != CFGetTypeID(value))
    {
      v51 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v62, "Wrong type for kRoseTagDigest");
      v52 = SERestoreInfo::SEException::SEException(v51, &v62, 2, @"SEUpdaterErrorDomain");
    }

    v27 = value;
    CFDataGetBytePtr(value);
    CFDataGetLength(v27);
    v28 = Img4EncodeItemPropertyData();
    SEUpdaterUtil::Img4EncodeCallAndThrow(v28, "Failed to add rtod", v29);
  }

  if (CFDictionaryGetValueIfPresent(*(this + 1), @"SE,RapSwBinDsp", &value))
  {
    v30 = CFDictionaryGetTypeID();
    if (v30 != CFGetTypeID(value))
    {
      v53 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v62, "Wrong type for kRoseTagMeasurementSwBinDsp1");
      v54 = SERestoreInfo::SEException::SEException(v53, &v62, 2, @"SEUpdaterErrorDomain");
    }

    if (!CFDictionaryGetValueIfPresent(value, @"Digest", &value))
    {
      v55 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v62, "Missing kRoseTagDigest in kRoseTagMeasurementSwBinDsp1");
      v56 = SERestoreInfo::SEException::SEException(v55, &v62, 2, @"SEUpdaterErrorDomain");
    }

    v31 = CFDataGetTypeID();
    if (v31 != CFGetTypeID(value))
    {
      v57 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v62, "Wrong type for kRoseTagDigest");
      v58 = SERestoreInfo::SEException::SEException(v57, &v62, 2, @"SEUpdaterErrorDomain");
    }

    v32 = value;
    CFDataGetBytePtr(value);
    CFDataGetLength(v32);
    v33 = Img4EncodeItemPropertyData();
    SEUpdaterUtil::Img4EncodeCallAndThrow(v33, "Failed to add rbdd", v34);
  }

  v35 = Img4EncodeItemEnd();
  SEUpdaterUtil::Img4EncodeCallAndThrow(v35, "Fail to Img4EncodeItemEnd", v36);
  v37 = Img4EncodeItemCopyBuffer();
  SEUpdaterUtil::Img4EncodeCallAndThrow(v37, "Fail to Img4EncodeItemCopyBuffer", v38);
  SEUpdaterUtil::SEImg4EncodeContext::~SEImg4EncodeContext(&v61);
}

void sub_299EDC864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  SEUpdaterUtil::SEImg4EncodeContext::~SEImg4EncodeContext(&a12);
  _Unwind_Resume(a1);
}

void SEUpdaterUtil::SEImg4EncodeContext::~SEImg4EncodeContext(SEUpdaterUtil::SEImg4EncodeContext *this)
{
  if (*this)
  {
    Img4EncodeItemDestroy();
    *this = 0;
  }
}

void SERestoreInfo::P73BaseDeviceInfo::parseManifest(SERestoreInfo::P73BaseDeviceInfo *this@<X0>, unsigned __int8 **a2@<X8>)
{
  v4 = *(this + 2);
  v27[0] = *(this + 1);
  v27[1] = v4;
  v5 = DERDecodeItem(v27, &v28);
  std::string::basic_string[abi:ne200100]<0>(v25, "Fail to parse MQR: cannot decode top level tag");
  SERestoreInfo::CallAndThrow<DERReturn>(v5, v25);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v28 != 0xE00000000000001ELL)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v24, "Fail to parse MQR: wrong top level tag");
    v11 = SERestoreInfo::SEException::SEException(exception, &v24, 2, @"SEUpdaterErrorDomain");
  }

  v23[0] = 0;
  v23[1] = 0;
  v6 = DERParseSequenceContent(&v29, 1u, &P73BaseManifestQueryResponseDerSpec::ManifestResponseItemSpec, v23, 0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, "Fail to parse MQR");
  SERestoreInfo::CallAndThrow<DERReturn>(v6, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v7 = DERParseSequenceContent(v23, 0xFu, &P73BaseManifestQueryResponseDerSpec::ManifestResponseDataItemSpec, a2, 0xF0uLL);
  std::string::basic_string[abi:ne200100]<0>(v19, "Fail to parse MQR.data");
  SERestoreInfo::CallAndThrow<DERReturn>(v7, v19);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (a2[1] != 1 || a2[3] > 2 || a2[5] > 2 || a2[7] > 2 || a2[9] > 2 || a2[15] != 1 || a2[25] > 2 || a2[13] != 24 || a2[17] != 20 || a2[19] != 32 || a2[21] != 32 || a2[11] != 2 || a2[23] != 1)
  {
    v8 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v24, "size of MQRD doesn't match");
    v9 = SERestoreInfo::SEException::SEException(v8, &v24, 2, @"SEUpdaterErrorDomain");
  }

  if (**a2 == 1)
  {
    if (a2[27] != 3 || a2[29] != 32)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (**a2)
    {
      v14 = **a2;
      v15 = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v18, v14);
      v16 = std::string::insert(&v18, 0, "Unsupported manifest query version: ");
      v24 = *v16;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v17 = SERestoreInfo::SEException::SEException(v15, &v24, 7, @"SEUpdaterErrorDomain");
    }

    if (a2[27] | a2[29])
    {
LABEL_30:
      v12 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v24, "size of factoryPostflightState or cometRootKeyId doesn't match");
      v13 = SERestoreInfo::SEException::SEException(v12, &v24, 2, @"SEUpdaterErrorDomain");
    }
  }
}

void sub_299EDCD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

SERestoreInfo::P73BaseDeviceInfo *SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this)
{
  *(this + 4) = 0;
  *this = &unk_2A2027278;
  *(this + 4) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  SERestoreInfo::P73BaseDeviceInfo::init(this);
  return this;
}

void sub_299EDCE78(_Unwind_Exception *exception_object)
{
  v6 = v1[25];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  v8 = v1[14];
  if (v8)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = v1[11];
  if (v9)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v1[9] = v10;
    operator delete(v10);
  }

  v11 = *v2;
  if (*v2)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

double SERestoreInfo::P73BaseDeviceInfo::init(SERestoreInfo::P73BaseDeviceInfo *this)
{
  *(this + 14) = 0;
  *(this + 2) = 1;
  v7 = 0;
  std::vector<unsigned char>::assign(this + 4, 0x18uLL, &v7);
  v6 = 0;
  std::vector<unsigned char>::assign(this + 8, 0x14uLL, &v6);
  v5 = 0;
  std::vector<unsigned char>::assign(this + 11, 0x20uLL, &v5);
  v4 = 0;
  std::vector<unsigned char>::assign(this + 14, 0x20uLL, &v4);
  *(this + 17) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 7) = 23195;
  *(this + 36) = 0;
  v3 = 0;
  std::vector<unsigned char>::assign(this + 19, 0x20uLL, &v3);
  result = 0.0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  return result;
}

SERestoreInfo::P73BaseDeviceInfo *SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A2027278;
  *(this + 4) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  SERestoreInfo::P73BaseDeviceInfo::init(this);
  memset(v5, 0, sizeof(v5));
  SERestoreInfo::P73BaseDeviceInfo::parseManifest(a2, v5);
  SERestoreInfo::P73BaseDeviceInfo::updateDeviceInfo(this, v5);
  return this;
}

void sub_299EDD070(_Unwind_Exception *exception_object)
{
  v6 = v1[25];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  v8 = v1[14];
  if (v8)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = v1[11];
  if (v9)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v1[9] = v10;
    operator delete(v10);
  }

  v11 = *v2;
  if (*v2)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void *SERestoreInfo::P73BaseDeviceInfo::updateDeviceInfo(uint64_t a1, unsigned __int8 **a2)
{
  v74[3] = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = *v6++;
      v5 = v7 | (v5 << 8);
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  v8 = a2[3];
  if (v8)
  {
    v9 = 0;
    v10 = a2[2];
    do
    {
      v11 = *v10++;
      v9 = v11 | (v9 << 8);
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 12) = v9;
  v12 = a2[5];
  if (v12)
  {
    v13 = 0;
    v14 = a2[4];
    do
    {
      v15 = *v14++;
      v13 = v15 | (v13 << 8);
      --v12;
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = v13;
  v16 = a2[7];
  if (v16)
  {
    v17 = 0;
    v18 = a2[6];
    do
    {
      v19 = *v18++;
      v17 = v19 | (v17 << 8);
      --v16;
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 20) = v17;
  v20 = a2[9];
  if (v20)
  {
    v21 = 0;
    v22 = a2[8];
    do
    {
      v23 = *v22++;
      v21 = v23 | (v21 << 8);
      --v20;
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 24) = v21;
  v24 = a2[15];
  if (!v24)
  {
    *(a1 + 56) = 0;
    goto LABEL_90;
  }

  v25 = 0;
  v26 = a2[14];
  do
  {
    v27 = *v26++;
    v25 = v27 | (v25 << 8);
    --v24;
  }

  while (v24);
  *(a1 + 56) = v25;
  if (v25 > 99)
  {
    if (v25 > 199)
    {
      if (v25 != 210 && v25 != 200)
      {
        goto LABEL_90;
      }
    }

    else if (v25 != 100)
    {
      if (v25 != 115)
      {
        goto LABEL_90;
      }

      v28 = 2;
      goto LABEL_43;
    }

    v28 = 3;
    goto LABEL_43;
  }

  if ((v25 - 54) < 2)
  {
    v28 = 5;
  }

  else
  {
    if (v25 != 44)
    {
      if (v25 == 56)
      {
        v28 = 6;
        goto LABEL_43;
      }

LABEL_90:
      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(v70, "Unsupported chip ID");
      v58 = SERestoreInfo::SEException::SEException(exception, v70, 2, @"SEUpdaterErrorDomain");
    }

    v28 = 4;
  }

LABEL_43:
  *(a1 + 180) = v28;
  if ((atomic_load_explicit(&_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    v61 = v28;
    v59 = __cxa_guard_acquire(&_MergedGlobals_3);
    v28 = v61;
    if (v59)
    {
      v69 = xmmword_299F29C20;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v65, &v69, 2);
      LODWORD(v70[0]) = 3;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v70 + 8, v65);
      v68 = xmmword_299F29C30;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v64, &v68, 2);
      v71 = 4;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v72, v64);
      v67 = xmmword_299F29C40;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v63, &v67, 2);
      v72[6] = 5;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v73, v63);
      v66 = xmmword_299F29C50;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v62, &v66, 2);
      v73[6] = 6;
      std::map<unsigned int,unsigned int>::map[abi:ne200100](v74, v62);
      std::map<unsigned int,std::map<unsigned int,unsigned int>>::map[abi:ne200100](v70, 4);
      for (i = 7; i != -1; i -= 2)
      {
        std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(*&v70[i]);
      }

      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v62[1]);
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v63[1]);
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v64[1]);
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v65[1]);
      __cxa_guard_release(&_MergedGlobals_3);
      v28 = v61;
    }
  }

  v29 = qword_2A197E660;
  if (!qword_2A197E660)
  {
LABEL_50:
    v32 = -1;
    goto LABEL_66;
  }

  v30 = qword_2A197E660;
  while (1)
  {
    v31 = *(v30 + 32);
    if (v28 >= v31)
    {
      break;
    }

LABEL_49:
    v30 = *v30;
    if (!v30)
    {
      goto LABEL_50;
    }
  }

  if (v31 < v28)
  {
    v30 += 8;
    goto LABEL_49;
  }

  while (1)
  {
    while (1)
    {
      v33 = *(v29 + 32);
      if (v33 <= v28)
      {
        break;
      }

      v29 = *v29;
      if (!v29)
      {
LABEL_88:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    if (v33 >= v28)
    {
      break;
    }

    v29 = *(v29 + 8);
    if (!v29)
    {
      goto LABEL_88;
    }
  }

  std::map<unsigned int,unsigned int>::map[abi:ne200100](v70, (v29 + 40));
  v34 = *&v70[0];
  v32 = -1;
  if (*&v70[0] != (v70 + 8))
  {
    do
    {
      if (*(v34 + 7) <= v9)
      {
        v32 = *(v34 + 8);
      }

      v35 = *(v34 + 1);
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = *(v34 + 2);
          v37 = *v36 == v34;
          v34 = v36;
        }

        while (!v37);
      }

      v34 = v36;
    }

    while (v36 != (v70 + 8));
  }

  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(*(&v70[0] + 1));
LABEL_66:
  *(a1 + 184) = v32;
  v38 = a2[25];
  if (v38)
  {
    v39 = 0;
    v40 = a2[24];
    do
    {
      v41 = *v40++;
      v39 = v41 | (v39 << 8);
      --v38;
    }

    while (v38);
  }

  else
  {
    v39 = 0;
  }

  *(a1 + 140) = v39;
  v42 = a2[23];
  if (v42)
  {
    v43 = 0;
    v44 = a2[22];
    do
    {
      v45 = *v44++;
      v43 = v45 | (v43 << 8);
      --v42;
    }

    while (v42);
  }

  else
  {
    v43 = 0;
  }

  *(a1 + 136) = v43;
  v46 = a2[27];
  if (v46)
  {
    v47 = 0;
    v48 = a2[26];
    do
    {
      v49 = *v48++;
      v47 = v49 | (v47 << 8);
      --v46;
    }

    while (v46);
    *(a1 + 144) = v47;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 32), a2[12], &a2[13][a2[12]], a2[13]);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 64), a2[16], &a2[17][a2[16]], a2[17]);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 88), a2[18], &a2[19][a2[18]], a2[19]);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 112), a2[20], &a2[21][a2[20]], a2[21]);
  v51 = a2[29];
  if (v51)
  {
    result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 152), a2[28], &a2[28][v51], v51);
  }

  v52 = a2[11];
  if (v52)
  {
    v53 = 0;
    v54 = a2[10];
    do
    {
      v55 = *v54++;
      v53 = v55 | (v53 << 8);
      --v52;
    }

    while (v52);
  }

  else
  {
    v53 = 0;
  }

  *(a1 + 28) = v53;
  v56 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299EDD650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  for (i = 112; i != -16; i -= 32)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(*(v37 + i));
  }

  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a12);
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a15);
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a18);
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a21);
  __cxa_guard_abort(&_MergedGlobals_3);
  _Unwind_Resume(a1);
}

void SERestoreInfo::P73BaseDeviceInfo::updateDict(SERestoreInfo::P73BaseDeviceInfo *this, __CFDictionary *a2, char a3)
{
  valuePtr = *(this + 14);
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    __assert_rtn("_CFDictionarySetInteger32", "SERestoreInfoHelpers.hpp", 42, "num != nullptr");
  }

  v7 = v6;
  CFDictionarySetValue(a2, @"SE,ChipID", v6);
  CFRelease(v7);
  v8 = CFDataCreate(0, *(this + 4), *(this + 5) - *(this + 4));
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  CFDictionarySetValue(a2, @"SE,ID", v8);
  CFRelease(v9);
  v10 = CFDataCreate(0, *(this + 8), *(this + 9) - *(this + 8));
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  CFDictionarySetValue(a2, @"SE,Nonce", v10);
  CFRelease(v11);
  v12 = CFDataCreate(0, *(this + 11), *(this + 12) - *(this + 11));
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  CFDictionarySetValue(a2, @"SE,RootKeyIdentifier", v12);
  CFRelease(v13);
  if (a3)
  {
    return;
  }

  v14 = CFDataCreate(0, *(this + 14), *(this + 15) - *(this + 14));
  if (!v14)
  {
LABEL_9:
    __assert_rtn("_CFDictionarySetData", "SERestoreInfoHelpers.hpp", 59, "tmpData");
  }

  v15 = v14;
  CFDictionarySetValue(a2, @"SE,OSUPubKeyID", v14);
  CFRelease(v15);
}

uint64_t SERestoreInfo::P73BaseDeviceInfo::getSEConfiguration(SERestoreInfo::P73BaseDeviceInfo *this)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v1 = *(this + 24);
  if (!v1)
  {
    v16 = xmmword_299F29DE0;
    v17 = unk_299F29DF0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v13, &v16, v18, 32);
    v16 = xmmword_299F29E00;
    v17 = unk_299F29E10;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v16, v18, 32);
    if (!SERestoreInfo::P73BaseDeviceInfo::isDevIM4(this))
    {
      operator new();
    }

    v3 = *(this + 14);
    if (v3 == 56)
    {
      v4 = *(this + 14);
      v5 = *(this + 15) - v4;
      v6 = __p;
      v7 = v11;
    }

    else
    {
      if (v3 != 54)
      {
        goto LABEL_10;
      }

      v4 = *(this + 14);
      v5 = *(this + 15) - v4;
      v6 = v13;
      v7 = v14;
    }

    if (v5 == v7 - v6 && !memcmp(v4, v6, v5))
    {
      operator new();
    }

LABEL_10:
    operator new();
  }

  result = *v1;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299EDDB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseDeviceInfo::getStateName()
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = 23195;
  std::string::basic_string[abi:ne200100]<0>(v3, "EXPORT_REQUIRED");
  v4 = 47411;
  std::string::basic_string[abi:ne200100]<0>(v5, "IMPORT_REQUIRED");
  v6 = 47361;
  std::string::basic_string[abi:ne200100]<0>(v7, "UOS1");
  v8 = 47362;
  std::string::basic_string[abi:ne200100]<0>(v9, "UOS2");
  v10 = 42241;
  std::string::basic_string[abi:ne200100]<0>(v11, "UOS1_ERROR");
  v12 = 42242;
  std::string::basic_string[abi:ne200100]<0>(v13, "UOS2_ERROR");
  v14 = 47545;
  std::string::basic_string[abi:ne200100]<0>(v15, "EXPORT_FINISHED");
  v16 = 47377;
  std::string::basic_string[abi:ne200100]<0>(v17, "UOS1_KTP");
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_299EDDF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  while (1)
  {
    if (*(v13 - 1) < 0)
    {
      operator delete(*(v13 - 3));
    }

    v13 -= 32;
    if (v13 == &a13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void SERestoreInfo::P73BaseDeviceInfo::getIm4State(SERestoreInfo::P73BaseDeviceInfo *this)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = 23130;
  std::string::basic_string[abi:ne200100]<0>(v4, "Idle");
  v5 = 47545;
  std::string::basic_string[abi:ne200100]<0>(v6, "IM4M_validated");
  v7 = 26471;
  std::string::basic_string[abi:ne200100]<0>(v8, "IM4P_validated");
  v9 = 59367;
  std::string::basic_string[abi:ne200100]<0>(v10, "IM4P_Resent");
  v11 = 42405;
  std::string::basic_string[abi:ne200100]<0>(v12, "Im4_error");
  v1 = 0;
  v2 = 0;
  operator new();
}

void sub_299EDE2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  while (1)
  {
    if (*(v13 - 1) < 0)
    {
      operator delete(*(v13 - 3));
    }

    v13 -= 32;
    if (v13 == &a13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t SERestoreInfo::P73BaseDeviceInfo::print(SERestoreInfo::P73BaseDeviceInfo *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  isDevIM4 = SERestoreInfo::P73BaseDeviceInfo::isDevIM4(this);
  if (isDevIM4)
  {
    v3 = "DEV ";
  }

  else
  {
    v3 = "PROD ";
  }

  if (isDevIM4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v3, v4);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "{ ", 2);
  v6 = *(this + 7);
  SERestoreInfo::P73BaseDeviceInfo::getStateName();
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, v8);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  *(&v26 + *(v26 - 24) + 8) = *(&v26 + *(v26 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " rsn=0x", 7);
  v10 = MEMORY[0x29C2B5CD0](v9, *(this + 4));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " csn=0x", 7);
  v12 = MEMORY[0x29C2B5CD0](v11, *(this + 3));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " fsn=0x", 7);
  v14 = MEMORY[0x29C2B5CD0](v13, *(this + 5));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " bsn=0x", 7);
  v16 = MEMORY[0x29C2B5CD0](v15, *(this + 6));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " FPState=0x", 11);
  MEMORY[0x29C2B5CD0](v17, *(this + 36));
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " ", 1);
  SERestoreInfo::P73BaseDeviceInfo::getIm4State(*(this + 35));
  if ((v25 & 0x80u) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v20 = v25;
  }

  else
  {
    v20 = v24;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " }", 2);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  v26 = *MEMORY[0x29EDC9538];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v27 = MEMORY[0x29EDC9570] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  return MEMORY[0x29C2B5E80](&v30);
}

void sub_299EDE664(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x29EDC9538]);
  MEMORY[0x29C2B5E80](va);
  _Unwind_Resume(a1);
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

void sub_299EDE7F4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2B5E80](v1);
  _Unwind_Resume(a1);
}

BOOL SERestoreInfo::P73BaseDeviceInfo::isDevIM4(SERestoreInfo::P73BaseDeviceInfo *this)
{
  v2 = (*(*this + 32))(this);
  v3 = 1;
  RootCA::getRootKeyId(1, v2, &v8);
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
  v6 = v8;
  if (v5 == v9 - v8)
  {
    v3 = memcmp(v4, v8, v5) != 0;
  }

  if (v6)
  {
    v9 = v6;
    operator delete(v6);
  }

  return v3;
}

void *std::vector<unsigned char>::assign(void **a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 2 * v6;
      if (2 * v6 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 - result;
  }

  if (v12)
  {
    result = memset(result, *a3, v12);
  }

  v13 = a2 >= v11;
  v14 = a2 - v11;
  if (v14 != 0 && v13)
  {
    v15 = a1[1];
    result = memset(v15, *a3, v14);
    v16 = &v15[v14];
  }

  else
  {
    v16 = *a1 + a2;
  }

  a1[1] = v16;
  return result;
}

uint64_t std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, v4, *a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(uint64_t **result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
    }

    else
    {
      if (v5)
      {
        v6 = *a2;
        do
        {
          v7 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        v11 = a2;
        do
        {
          v7 = v11[2];
          v12 = *v7 == v11;
          v11 = v7;
        }

        while (v12);
      }

      if (*(v7 + 7) >= a3)
      {
        v14 = *v3;
        if (!*v3)
        {
          goto LABEL_38;
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = *(v14 + 7);
            if (v16 <= a3)
            {
              break;
            }

            v14 = *v14;
            if (!*v15)
            {
              goto LABEL_38;
            }
          }

          if (v16 >= a3)
          {
            return result;
          }

          v14 = v14[1];
          if (!v14)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (v5)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = a2;
    }

    if (!*v13)
    {
      goto LABEL_38;
    }
  }

  else if (v4 < a3)
  {
    v8 = a2[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
        v10 = v9;
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v17 = v10;
        v10 = v10[2];
      }

      while (*v10 != v17);
    }

    if (v10 == v3 || *(v10 + 7) > a3 || (v18 = *v3) == 0)
    {
LABEL_38:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 7);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v18;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

  return result;
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::map<unsigned int,std::map<unsigned int,unsigned int>>::map[abi:ne200100](uint64_t a1, uint64_t a2)
{
  qword_2A197E668 = 0;
  qword_2A197E660 = 0;
  qword_2A197E658 = &qword_2A197E660;
  if (a2)
  {
    operator new();
  }
}

void std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

uint64_t std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, v3, *(v5 + 7));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
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

void std::__shared_ptr_emplace<SEConfiguration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20272D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2B5E20](a1 + 8);
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

void sub_299EDF428(_Unwind_Exception *a1)
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
  MEMORY[0x29C2B5CA0](v13, a1);
  if (v13[0] == 1)
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

  MEMORY[0x29C2B5CB0](v13);
  return a1;
}

void sub_299EDF698(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C2B5CB0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x299EDF678);
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
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

void sub_299EDF8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::UpdateTableEntry::~UpdateTableEntry(SERestoreInfo::UpdateTableEntry *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t SERestoreInfo::ImageBinary::print(int *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[", 1);
  v9 = MEMORY[0x29C2B5CD0](v8, a1[10]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "{", 1);
  v12 = strlen(off_29F290F00[*a1]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, off_29F290F00[*a1], v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "}: ", 3);
  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, *(a1 + 2), (*(a1 + 2) + *(a1 + 3)), *(a1 + 3));
  if ((v21 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v16 = v21;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v27, MEMORY[0x29EDC93D0]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v27);
  std::ostream::put();
  std::ostream::flush();
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v23 = MEMORY[0x29EDC9570] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x29C2B5E80](&v26);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C2B5E80](a1 + 112);
  return a1;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::updateMeasurement(SERestoreInfo::P73BaseDeliveryObject *this, CFDictionaryRef theDict, __CFError **a3)
{
  if (!theDict || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v27, "Assertion: ");
    v21 = std::string::append(&v27, "outError && outMeasurementDict");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v29 = v21->__r_.__value_.__r.__words[2];
    *value = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, value);
  }

  value[0] = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"SE,UpdatePayload", value))
  {
    v6 = value[0] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = CFGetTypeID(value[0]);
    if (v7 == CFDictionaryGetTypeID())
    {
      if (value[0])
      {
        v8 = CFRetain(value[0]);
      }

      else
      {
        v8 = 0;
      }

LABEL_12:
      v10 = ccsha256_di();
      if (*v10)
      {
        if ((*v10 & 0x8000000000000000) == 0)
        {
          v11 = *v10;
          operator new();
        }

        std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
      }

      v13 = *(this + 5);
      v12 = *(this + 6);
      ccdigest();
      v14 = CFDataCreate(0, 0, 0);
      if (v14)
      {
        isDev = SERestoreInfo::P73BaseDeliveryObject::isDev(*(this + 8), *(this + 9));
        v16 = kSETagMeasurementDevHash;
        if (!isDev)
        {
          v16 = kSETagMeasurementProdHash;
        }

        CFDictionarySetValue(v8, *v16, v14);
        v17 = 0;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Fail to allocate tmpData");
        *a3 = SERestoreInfo::CreateCFError(__p, 3, 0, @"SEUpdaterErrorDomain");
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = 6;
      }

      if (v17 == 6)
      {
        v18 = 0;
        if (!v8)
        {
LABEL_22:
          if (v14)
          {
            CFRelease(v14);
          }

          return v18 & 1;
        }
      }

      else
      {
        v18 = 1;
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      CFRelease(v8);
      goto LABEL_22;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(theDict, @"SE,UpdatePayload", Mutable);
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(v25, "Fail to allocate imageProps");
  *a3 = SERestoreInfo::CreateCFError(v25, 3, 0, @"SEUpdaterErrorDomain");
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v18 = 0;
  return v18 & 1;
}

void sub_299EE0014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SERestoreInfo::P73BaseDeliveryObject::isDev(SERestoreInfo::P73BaseDeliveryObject *this, uint64_t a2)
{
  if (a2 - this != 32)
  {
    return 0;
  }

  if (*this == 0x7B77E47DEC309FF8 && *(this + 1) == 0x8BF8D2A44AE3A97CLL && *(this + 2) == 0xAD34DB13A59CC364 && *(this + 3) == 0xAC0A2E6B4C223984)
  {
    return 1;
  }

  v5 = *this == 0x74975A216330E276 && *(this + 1) == 0x1F7F7DD3B6FB8D34;
  v6 = v5 && *(this + 2) == 0x3FA240FAC488FFFLL;
  if (v6 && *(this + 3) == 0x21EC7881080683DALL)
  {
    return 1;
  }

  v8 = *this == 0xD314CD88B2A173ABLL && *(this + 1) == 0xD0014B39DB0B4552;
  v9 = v8 && *(this + 2) == 0xC3B3802C47832D1BLL;
  if (v9 && *(this + 3) == 0x102CA645D536B9F3)
  {
    return 1;
  }

  v11 = *this == 0x43028028D9EE140FLL && *(this + 1) == 0x764EF91F0B455B82;
  v12 = v11 && *(this + 2) == 0x74D2E6CF8CD1659BLL;
  if (v12 && *(this + 3) == 0xBD4FC5BCF7FB4792)
  {
    return 1;
  }

  v14 = *this == 0x19016EC184635976 && *(this + 1) == 0xD25BD62A9019D9A3;
  v15 = v14 && *(this + 2) == 0xFD6855BA8DAED7D1;
  if (v15 && *(this + 3) == 0x3E6F156DACCAB98)
  {
    return 1;
  }

  v17 = *this == 0x4B4B6EEF8151F8B0 && *(this + 1) == 0x80D0BF7EE34277A5;
  v18 = v17 && *(this + 2) == 0xA6421FFAFBC6C2D3;
  if (v18 && *(this + 3) == 0x11CF79E52F051694)
  {
    return 1;
  }

  v20 = *this == 0x3B369AD4F6E8946ALL && *(this + 1) == 0x3A6B9A9BB3089AACLL;
  v21 = v20 && *(this + 2) == 0x8FA19016C1B6DB7CLL;
  if (v21 && *(this + 3) == 0x40ACEFB5D4F4787)
  {
    return 1;
  }

  v23 = *this == 0xFC41962122793EF7 && *(this + 1) == 0xB912209BBCCC0208;
  v24 = v23 && *(this + 2) == 0xA845838AEC9D85B0;
  if (v24 && *(this + 3) == 0x1DAD2E5A3D9AD8A8)
  {
    return 1;
  }

  return *this == 0xCBD1BDB61BAAD564 && *(this + 1) == 0x957F8100699D3DAALL && *(this + 2) == 0xB07184D6337E1DBCLL && *(this + 3) == 0x710CE2BFF2A6DF1CLL;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::updateVersionDict(SERestoreInfo::P73BaseDeliveryObject *this, __CFDictionary *a2, __CFError **a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Assertion: ");
    v10 = std::string::append(&v12, "outError && outDict");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v13);
  }

  v5 = CFStringCreateWithBytes(0, *(this + 12), *(this + 13), 0x8000100u, 0);
  isDev = SERestoreInfo::P73BaseDeliveryObject::isDev(*(this + 8), *(this + 9));
  v7 = kSETagVersionDev;
  if (!isDev)
  {
    v7 = kSETagVersionProd;
  }

  CFDictionarySetValue(a2, *v7, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

void sub_299EE052C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

BOOL SERestoreInfo::P73BaseDeliveryObject::matchID(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v2;
  v7 = v2[1];
  v9 = v3[2];
  v8 = v3[3];
  v11 = v2[2];
  v10 = v2[3];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::print(SERestoreInfo::P73BaseDeliveryObject *this)
{
  v67 = *MEMORY[0x29EDCA608];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v53);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "Details: ", 9);
  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, *(this + 12), (*(this + 12) + *(this + 13)), *(this + 13));
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0].__r_.__value_.__r.__words[0];
  }

  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p[0].__r_.__value_.__l.__size_;
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, size);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v59, MEMORY[0x29EDC93D0]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v59);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "FactoryPostflight revision: ", 28);
  std::to_string(__p, *(this + 152));
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0].__r_.__value_.__r.__words[0];
  }

  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p[0].__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v59, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v59);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "UpdateTable: ", 13);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  std::string::basic_string[abi:ne200100]<0>(&v50, "\t");
  std::ostringstream::basic_ostringstream[abi:ne200100](&v59);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v50;
  }

  else
  {
    v14 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v50.__r_.__value_.__l.__size_;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v59, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "BSN: ", 5);
  *(v17 + *(*v17 - 24) + 8) = *(v17 + *(*v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "0x", 2);
  v19 = MEMORY[0x29C2B5CD0](v18, *(this + 30));
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v47 = *(this + 16);
  if (v47 != *(this + 17))
  {
    v21 = *MEMORY[0x29EDC9538];
    v45 = *MEMORY[0x29EDC9538];
    v46 = *(MEMORY[0x29EDC9538] + 24);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = v50;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v58;
    }

    else
    {
      v22 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v58.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v22, v23);
    if (v47[1] != *v47)
    {
      v24 = ***v47;
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "|", 1);
      SERestoreInfo::P73BaseDeviceInfo::getStateName();
      if ((v66 & 0x80u) == 0)
      {
        v26 = v65;
      }

      else
      {
        v26 = v65[0];
      }

      if ((v66 & 0x80u) == 0)
      {
        v27 = v66;
      }

      else
      {
        v27 = v65[1];
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "| ", 2);
      if (v66 < 0)
      {
        operator delete(v65[0]);
      }

      operator new();
    }

    std::vector<std::vector<unsigned short>>::__throw_out_of_range[abi:ne200100]();
  }

  std::stringbuf::str();
  v59.__locale_ = *MEMORY[0x29EDC9538];
  locale = v59.__locale_;
  v30 = *(MEMORY[0x29EDC9538] + 24);
  *(&v59.__locale_ + *(v59.__locale_ - 3)) = v30;
  v60 = MEMORY[0x29EDC9570] + 16;
  if (v62 < 0)
  {
    operator delete(v61[7].__locale_);
  }

  v60 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v61);
  std::ostream::~ostream();
  MEMORY[0x29C2B5E80](&v63);
  if ((v52 & 0x80u) == 0)
  {
    v31 = v51;
  }

  else
  {
    v31 = v51[0];
  }

  if ((v52 & 0x80u) == 0)
  {
    v32 = v52;
  }

  else
  {
    v32 = v51[1];
  }

  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v31, v32);
  std::ios_base::getloc((v33 + *(*v33 - 24)));
  v34 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "Binaries: ", 10);
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(__p, MEMORY[0x29EDC93D0]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v37 = *(this + 1);
  if (v37 != (this + 16))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v48, "\t");
      SERestoreInfo::ImageBinary::print(v37 + 10, v48);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v39 = __p[0].__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v38, v39);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      v40 = *(v37 + 1);
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = *(v37 + 2);
          v42 = *v41 == v37;
          v37 = v41;
        }

        while (!v42);
      }

      v37 = v41;
    }

    while (v41 != (this + 16));
  }

  std::stringbuf::str();
  v53 = locale;
  *(&v53 + *(locale - 3)) = v30;
  v54 = MEMORY[0x29EDC9570] + 16;
  if (v56 < 0)
  {
    operator delete(v55[7].__locale_);
  }

  v54 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v55);
  std::ostream::~ostream();
  result = MEMORY[0x29C2B5E80](&v57);
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299EE12A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a37);
  _Unwind_Resume(a1);
}

BOOL SERestoreInfo::P73BaseDeliveryObject::isFpAvailable(SERestoreInfo::P73BaseDeliveryObject *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == this + 16)
  {
    return 0;
  }

  do
  {
    v3 = *(v1 + 10);
    result = v3 == 3;
    if (v3 == 3)
    {
      break;
    }

    v5 = *(v1 + 1);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = *(v1 + 2);
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::findNextAction(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v2 == v3)
  {
LABEL_42:
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v27, "No update table entry match found.");
    v26 = SERestoreInfo::SEException::SEException(exception, &v27, 32, @"SEUpdaterErrorDomain");
  }

  v4 = 0;
  v5 = *(*a2 + 28);
  v6 = *(*a2 + 12);
  v7 = *(*a2 + 16);
  v8 = v7;
  v9 = v6;
  v10 = *(*a2 + 20);
  v13 = v5 != 23195 || v7 != v6 || v6 != v10;
  v14 = HIWORD(v7);
  v15 = HIWORD(v6);
  while (1)
  {
    v16 = *v2;
    v17 = v2[1];
    v18 = v17 - *v2;
    if (v17 == *v2)
    {
      goto LABEL_43;
    }

    if (v5 != **v16)
    {
      goto LABEL_37;
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
    if (v19 <= 1)
    {
      goto LABEL_43;
    }

    if (v14)
    {
      goto LABEL_37;
    }

    v20 = v16[3];
    v21 = v16[4];
    if (v20 != v21)
    {
      while (*v20 != v8)
      {
        if (++v20 == v21)
        {
          goto LABEL_37;
        }
      }
    }

    if (v20 == v21)
    {
      goto LABEL_37;
    }

    if (v18 == 48)
    {
      goto LABEL_43;
    }

    if (v15)
    {
      goto LABEL_37;
    }

    v22 = v16[6];
    v23 = v16[7];
    if (v22 != v23)
    {
      while (*v22 != v9)
      {
        if (++v22 == v23)
        {
          goto LABEL_37;
        }
      }
    }

    if (v22 == v23)
    {
      goto LABEL_37;
    }

    if (!v13)
    {
      if (!v4)
      {
        goto LABEL_36;
      }

      if (0xAAAAAAAAAAAAAAABLL * (v4[1] - *v4) <= 3 || v19 <= 3)
      {
        goto LABEL_43;
      }

      if (*(*v4)[9] < *v16[9])
      {
LABEL_36:
        v4 = v2;
      }

      goto LABEL_37;
    }

    if (v19 <= 3)
    {
      goto LABEL_43;
    }

    if (v10 == *v16[9])
    {
      break;
    }

LABEL_37:
    v2 += 6;
    if (v2 == v3)
    {
      if (!v4)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }
  }

  v4 = v2;
  if (!v2)
  {
    goto LABEL_42;
  }

LABEL_39:
  if (0xAAAAAAAAAAAAAAABLL * (v4[1] - *v4) <= 4)
  {
LABEL_43:
    std::vector<std::vector<unsigned short>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*v4)[12];
}

void sub_299EE18F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299EE19B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseFirmware::getDeliveryObject(SERestoreInfo::SEFirmwareBase *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(a1 + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v29, "Assertion: ");
    v26 = std::string::append(&v29, "fSource");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v31 = v26->__r_.__value_.__r.__words[2];
    *__p = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, __p);
  }

  (*(**a2 + 16))(__p);
  v6 = *(*a2 + 176);
  memset(&v29, 0, sizeof(v29));
  v7 = (*(a1 + 3) - *(a1 + 2)) >> 5;
  if (v7)
  {
    v8 = 0;
    do
    {
      SERestoreInfo::SEFirmwareBase::get(a1, v8);
      v9 = *(&v28 + 1);
      if (*(&v28 + 1))
      {
        atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if ((*(*v28 + 32))(v28, __p))
      {
        v10 = *(v28 + 160);
        if (!v10 || v10 == v6)
        {
          size = v29.__r_.__value_.__l.__size_;
          if (v29.__r_.__value_.__l.__size_ >= v29.__r_.__value_.__r.__words[2])
          {
            v14 = (v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0]) >> 4;
            v15 = v14 + 1;
            if ((v14 + 1) >> 60)
            {
              std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
            }

            v16 = v29.__r_.__value_.__r.__words[2] - v29.__r_.__value_.__r.__words[0];
            if ((v29.__r_.__value_.__r.__words[2] - v29.__r_.__value_.__r.__words[0]) >> 3 > v15)
            {
              v15 = v16 >> 3;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF0)
            {
              v17 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              if (!(v17 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v18 = 16 * v14;
            *(16 * v14) = v28;
            if (v9)
            {
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v13 = v18 + 16;
            v19 = v29.__r_.__value_.__r.__words[0];
            v20 = (v18 - (v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0]));
            memcpy(v20, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0]);
            v29.__r_.__value_.__r.__words[0] = v20;
            *&v29.__r_.__value_.__r.__words[1] = v13;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v29.__r_.__value_.__l.__size_ = v28;
            *(size + 8) = v9;
            if (v9)
            {
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v13 = size + 16;
          }

          v29.__r_.__value_.__l.__size_ = v13;
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (*(&v28 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
      }

      ++v8;
    }

    while (v7 != v8);
    v22 = v29.__r_.__value_.__l.__size_;
    v21 = v29.__r_.__value_.__r.__words[0];
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v22 - v21 == 16)
  {
    v24 = *v21;
    v23 = v21[1];
    *a3 = v24;
    a3[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  *&v28 = &v29;
  std::vector<std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_299EE1CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  *(v28 - 88) = &a16;
  std::vector<std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>::__destroy_vector::operator()[abi:ne200100]((v28 - 88));
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SERestoreInfo::P73BaseFirmware::updateMeasurementDict(SERestoreInfo::SEFirmwareBase *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v56 = *MEMORY[0x29EDCA608];
  *v53 = 0;
  if (*a3)
  {
    (*(**a3 + 16))(__p);
    operator new();
  }

  v4 = &v51;
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  v5 = *(this + 3) - *(this + 2);
  v6 = v5 >> 5;
  if (!(v5 >> 5))
  {
LABEL_61:
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "No matching delivery object found.");
    v42 = SERestoreInfo::SEException::SEException(exception, __p, 24, @"SEUpdaterErrorDomain");
  }

  v44 = v5 >> 5;
  v7 = 0;
  do
  {
    SERestoreInfo::SEFirmwareBase::get(v3, v7);
    v8 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = v48[4];
    v10 = v48[4].n128_i64[1];
    if (*v53)
    {
      if (v10 - v9.n128_u64[0] != *(*v53 + 8) - **v53)
      {
        goto LABEL_36;
      }

      v46 = v48[4];
      v11 = memcmp(v9.n128_u64[0], **v53, v10 - v9.n128_u64[0]);
      v9 = v46;
      if (v11)
      {
        goto LABEL_36;
      }
    }

    v12 = v51;
    if (!v51)
    {
      goto LABEL_34;
    }

    v47 = v9;
    v13 = v9.n128_u64[0];
    v14 = v10 - v9.n128_u64[0];
    v15 = v4;
    v16 = v4;
    do
    {
      v17 = v12[4];
      v18 = v12[5];
      v19 = v18 - v17;
      if (v14 >= v18 - v17)
      {
        v20 = v18 - v17;
      }

      else
      {
        v20 = v14;
      }

      v21 = memcmp(v17, v13, v20);
      v22 = v19 < v14;
      if (v21)
      {
        v22 = v21 < 0;
      }

      v23 = !v22;
      v24 = v22;
      if (v23)
      {
        v16 = v12;
      }

      v12 = v12[v24];
    }

    while (v12);
    v4 = v15;
    v9.n128_u64[0] = v47.n128_u64[0];
    if (v15 == v16)
    {
      goto LABEL_34;
    }

    v25 = v16[4];
    v26 = v16[5];
    v27 = v26 - v25;
    if (v26 - v25 >= v14)
    {
      v28 = v14;
    }

    else
    {
      v28 = v26 - v25;
    }

    v29 = memcmp(v13, v25, v28);
    v9 = v47;
    v30 = v14 < v27;
    v4 = v15;
    v31 = v30;
    if (v29)
    {
      v31 = v29 < 0;
    }

    if (v31)
    {
LABEL_34:
      if (!*std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(&v50, &v54, v9.n128_u64[0], v10))
      {
        operator new();
      }

LABEL_35:
      LODWORD(v6) = v44;
      v3 = this;
LABEL_36:
      if (!v49)
      {
        goto LABEL_38;
      }

LABEL_37:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      goto LABEL_38;
    }

    if (v48[10].n128_u32[0] <= *(v16[7] + 160))
    {
      goto LABEL_35;
    }

    v32 = *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(&v50, &v54, v13, v10);
    LODWORD(v6) = v44;
    v3 = this;
    if (!v32)
    {
      operator new();
    }

    v33 = *(v32 + 64);
    *(v32 + 56) = v48;
    *(v32 + 64) = v49;
    v8 = v33;
    if (v33)
    {
      goto LABEL_37;
    }

LABEL_38:
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    ++v7;
  }

  while (v7 != v6);
  if (!v52)
  {
    goto LABEL_61;
  }

  v34 = v50;
  if (v50 != v4)
  {
    do
    {
      __p[0] = 0;
      (*(*v34[7] + 16))(v34[7], a2, __p, v9);
      if (__p[0])
      {
        v39 = __cxa_allocate_exception(0x48uLL);
        v40 = SERestoreInfo::SEException::SEException(v39, __p[0]);
      }

      v35 = v34[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v34[2];
          v23 = *v36 == v34;
          v34 = v36;
        }

        while (!v23);
      }

      v34 = v36;
    }

    while (v36 != v4);
  }

  std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(v51);
  v37 = *v53;
  *v53 = 0;
  if (v37)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](v53, v37);
  }

  v38 = *MEMORY[0x29EDCA608];
}

void sub_299EE2578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = a23;
  a23 = 0;
  if (v31)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&a23, v31);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseFirmware::makeDeliveryObject(SERestoreInfo::P73BaseFirmware *this, DERItem *a2)
{
  if (a2->data)
  {
    v2 = a2->length == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = DERParseSequenceContent(a2, 5u, &P73BaseFirmwareDERSpec::DeliveryObjectItemSpec, &v12, 0x50uLL);
    if (!v3)
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = 0;
      if (!DERParseInteger(&v12, &__str) && !LODWORD(__str.__r_.__value_.__l.__data_) && v14 == 32)
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&__str, "Failed to validate delivery object");
      v11 = SERestoreInfo::SEException::SEException(exception, &__str, 15, @"SEUpdaterErrorDomain");
    }

    v7 = v3;
    v8 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&__str, "Failed to parse as per DeliveryObjectItemSpec");
    v9 = SERestoreInfo::SEException::SEException(v8, &__str, v7, @"libDERErrorDomain");
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&__str, "Assertion: ");
  v5 = std::string::append(&__str, "input.data && input.length");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v13 = v5->__r_.__value_.__r.__words[2];
  v12 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x29C2B5B50](v4, &v12);
}

void sub_299EE3F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  SERestoreInfo::BLOB::~BLOB(&a17);
  std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  _Unwind_Resume(a1);
}

void SERestoreInfo::P73BaseFirmware::~P73BaseFirmware(SERestoreInfo::P73BaseFirmware *this)
{
  SERestoreInfo::SEFirmwareBase::~SEFirmwareBase(this);

  JUMPOUT(0x29C2B5F30);
}

void SERestoreInfo::P73BaseDeliveryObject::~P73BaseDeliveryObject(SERestoreInfo::P73BaseDeliveryObject *this)
{
  *this = &unk_2A2027370;
  v3 = (this + 128);
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  SERestoreInfo::BLOB::~BLOB((this + 88));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SERestoreInfo::BLOB::~BLOB((this + 32));
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(*(this + 2));
}

{
  *this = &unk_2A2027370;
  v3 = (this + 128);
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  SERestoreInfo::BLOB::~BLOB((this + 88));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SERestoreInfo::BLOB::~BLOB((this + 32));
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(*(this + 2));

  JUMPOUT(0x29C2B5F30);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<unsigned short>>::__emplace_back_slow_path<std::vector<unsigned short>&>(const void **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned short>>>(v5);
  }

  v6 = 24 * v2;
  v13 = 0;
  v14 = v6;
  v15 = 24 * v2;
  v16 = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 1);
  v7 = v15 + 24;
  v8 = a1[1] - *a1;
  v9 = &v14[-v8];
  memcpy(&v14[-v8], *a1, v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(&v13);
  return v7;
}

void sub_299EE46B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned short>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = a1;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void SERestoreInfo::ImageBinary::~ImageBinary(SERestoreInfo::ImageBinary *this)
{
  v2 = (this + 48);
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v2);
  SERestoreInfo::BLOB::~BLOB((this + 8));
}

void (***std::vector<SERestoreInfo::BLOB>::__swap_out_circular_buffer(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 32 * ((v6 - result) >> 5);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_2A2027230;
      v12 = *(v10 + 1);
      v11[3] = v10[3];
      *(v11 + 1) = v12;
      v10 += 4;
      v11 += 4;
      v9 += 32;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 4;
      (*v15)();
      v13 += 4;
    }

    while (v14 != v6);
    result = *a1;
  }

  a2[1] = v8;
  *a1 = v8;
  a1[1] = result;
  a2[1] = result;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<SERestoreInfo::BLOB>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<SERestoreInfo::BLOB>::__init_with_size[abi:ne200100]<SERestoreInfo::BLOB*,SERestoreInfo::BLOB*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SERestoreInfo::BLOB>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<SERestoreInfo::BLOB>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(a1, a2);
  }

  std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
}

void std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(*(a1 + 1));
    v2 = (a1 + 88);
    std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v2);
    SERestoreInfo::BLOB::~BLOB((a1 + 48));
    operator delete(a1);
  }
}

void std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned short>>>(a4);
    }

    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<SERestoreInfo::UpdateTableEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a4);
    }

    std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_299EE4F38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN13SERestoreInfo17P73BaseDeviceInfoENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20273C8;
  SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::P73BaseDeviceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20273C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void std::vector<std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(uint64_t a1, void *a2, void *__s1, uint64_t a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v8 = a4 - __s1;
    do
    {
      while (1)
      {
        v9 = v5;
        v11 = v5[4];
        v10 = v5[5];
        v12 = v10 - v11;
        if (v10 - v11 >= v8)
        {
          v13 = v8;
        }

        else
        {
          v13 = v10 - v11;
        }

        v14 = memcmp(__s1, v11, v13);
        v15 = v8 < v12;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (!v15)
        {
          break;
        }

        v5 = *v9;
        v6 = v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      v16 = memcmp(v11, __s1, v13);
      v17 = v12 < v8;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (!v17)
      {
        break;
      }

      v6 = v9 + 1;
      v5 = v9[1];
    }

    while (v5);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_17:
  *a2 = v9;
  return v6;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<SERestoreInfo::P73BaseDeliveryObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2027418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

uint64_t SEUpdaterUtil::SE310SImage4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SE310SImage4Signer::getSigningKey(void)const::signingKey, &SEUpdaterUtil::SE310SImage4Signer::getSigningCert(void)const::signingCert, 167);
}

uint64_t SEUpdaterUtil::SE310SImage4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SE310SImage4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil18SE310SImage4SignerE", 736);
}

void SEUpdaterUtil::SE310SImage4Signer::~SE310SImage4Signer(SEUpdaterUtil::SE310SImage4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseSEController::~P73BaseSEController(const void **this)
{
  *this = &unk_2A20274C8;
  v2 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v3 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v2);
  }

  v4 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v3, 2, 0, 1, "~P73BaseSEController", "Destroy BaseSEController\n");
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  SEUpdater::SEControllerBase::shutdown(this);
  SEUpdater::SEControllerBase::~SEControllerBase(this);
}

{
  SEUpdater::P73BaseSEController::~P73BaseSEController(this);

  JUMPOUT(0x29C2B5F30);
}

uint64_t SEUpdater::P73BaseSEController::initDevice(SEUpdater::P73BaseSEController *this)
{
  if (*(this + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v5 = std::string::basic_string[abi:ne200100]<0>(&v21, "Assertion: ");
    v6 = std::string::append(v5, "fSeHandle == nullptr");
    v7 = *&v6->__r_.__value_.__l.__data_;
    *&v11 = *(&v6->__r_.__value_.__l + 2);
    v10 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v10);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = NfRestoreOpenWithSE();
  *(this + 1) = v2;
  if (!v2)
  {
    v8 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v21, "Fail to enumerate");
    v9 = SERestoreInfo::SEException::SEException(v8, &v21, 17, @"SEUpdaterErrorDomain");
  }

  return 1;
}

void sub_299EE56FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
    if ((v15 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v14);
  goto LABEL_8;
}

uint64_t SEUpdater::P73BaseSEController::reboot(SEUpdater::P73BaseSEController *this)
{
  v2 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v3 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v2);
  }

  v4 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v3, 2, 0, 1, "reboot", "rebooting\n");
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!*(this + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v16, "Assertion: ");
    v10 = std::string::append(&v16, "fSeHandle");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v18 = v10->__r_.__value_.__r.__words[2];
    v17 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v17);
  }

  v5 = NfRestoreToggleSEPower();
  std::string::basic_string[abi:ne200100]<0>(__p, "Failed to toggle SE power off");
  SERestoreInfo::CallAndThrow<NfResult>(v5, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(this + 1);
  v7 = NfRestoreToggleSEPower();
  std::string::basic_string[abi:ne200100]<0>(v12, "Failed to toggle SE power on");
  SERestoreInfo::CallAndThrow<NfResult>(v7, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return 1;
}

uint64_t SERestoreInfo::CallAndThrow<NfResult>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x48uLL);
    v5 = SERestoreInfo::SEException::SEException(exception, a2, v2, @"libNfRestoreErrorDomain");
  }

  return result;
}

BOOL SEUpdater::P73BaseSEController::invalidateProhibitTimer(SEUpdater::P73BaseSEController *this)
{
  if (!*(this + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, "Assertion: ");
    v7 = std::string::append(&v9, "fSeHandle");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v10);
  }

  v1 = NfRestoreInvalidateProhibitTimer();
  v2 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v3 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v2);
  }

  v4 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v3, 2, 0, 1, "invalidateProhibitTimer", "Invalidated prohibit timer with rc %d\n", v1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1 == 0;
}

void SEUpdater::P73BaseSEController::doRestrictedMode(SEUpdater::P73BaseSEController *this)
{
  v4[12] = *MEMORY[0x29EDCA608];
  v1 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v2 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v1);
  }

  v3 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v2, 1, 0, 1, "doRestrictedMode", "This process may take a long time (~16 min)\n");
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  SERestoreInfo::Apdu::Apdu(v4);
}

void sub_299EE63DC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_299EE6558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    JUMPOUT(0x299EE6588);
  }

  JUMPOUT(0x299EE658CLL);
}

void sub_299EE666C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  __cxa_end_catch();
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::P73BaseSEController::transceive(uint64_t a1, uint64_t a2, uint64_t a3, int a4, SEUpdaterUtil::SELogObj *a5)
{
  v9 = *(a3 + 8);
  v10 = *(v9 + 16) - *v9;
  LOBYTE(v16) = 0;
  std::vector<unsigned char>::assign(v9, v10, &v16);
  v15 = *(*(a3 + 8) + 8) - **(a3 + 8);
  v11 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v12 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v11);
  }

  v13 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v12, a5, 0, 1, "transceive", "Transmitting C-APDU %d: %zu\n", a4, *(*(a2 + 8) + 8) - **(a2 + 8));
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(*(a2 + 8) + 8) - **(a2 + 8) >= 5uLL)
  {
    v14 = 5;
  }

  else
  {
    v14 = *(*(a2 + 8) + 8) - **(a2 + 8);
  }

  SEUpdaterUtil::SELogPrintBinary(a5, *(a2 + 24), v14);
}

void *SEUpdater::P73BaseSEController::doRestrictedMode(void)::FakeInitializeUpdate::~FakeInitializeUpdate(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *SEUpdater::P73BaseSEController::doRestrictedMode(void)::FakeExternalAuthenticate::~FakeExternalAuthenticate(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void SEUpdater::P73BaseSEController::transceive(SEUpdater::P73BaseSEController *this, const unsigned __int8 *a2, const unsigned __int8 *a3, unsigned __int8 *a4, unint64_t *a5, SEUpdaterUtil::SELogObj *a6)
{
  v8 = a2;
  if (*(this + 16))
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v11 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v10);
  }

  v12 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v11, a6, 0, 1, "transceive", "Transmitting C-APDU %d: %zu\n", v9, a3);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  SEUpdaterUtil::SELogPrintBinary(a6, v8, a3);
}

void SEUpdater::P73BaseSEController::transceiveInternal(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, "Assertion: ");
    v3 = std::string::append(&v7, "fSeHandle");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v9 = v3->__r_.__value_.__r.__words[2];
    v8 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v8);
  }

  v1 = NfRestoreSETransceiveToOS();
  std::string::basic_string[abi:ne200100]<0>(__p, "Fail to NfRestoreSETransceive");
  SERestoreInfo::CallAndThrow<NfResult>(v1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299EE6D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdater::P73BaseSEController::transceive(SEUpdater::P73BaseSEController *this, const SERestoreInfo::CApdu *a2, SERestoreInfo::RApdu *a3, SEUpdaterUtil::SELogObj *a4)
{
  if (*(this + 16))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  SEUpdater::P73BaseSEController::transceive(this, a2, a3, v5, a4);
}

uint64_t SEUpdater::P73BaseSEController::transceiveInternal(SEUpdater::P73BaseSEController *this, const unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4, unint64_t *a5)
{
  *(this + 16);
  SEUpdater::P73BaseSEController::transceiveInternal(*(this + 1));
  return 0;
}

void SEUpdater::P73BaseSEController::doRestrictedMode(void)::FakeInitializeUpdate::~FakeInitializeUpdate(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseSEController::doRestrictedMode(void)::FakeExternalAuthenticate::~FakeExternalAuthenticate(void *a1)
{
  *a1 = &unk_2A2026DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::P73BaseUpdateController(SEUpdater::P73BaseUpdateController *this)
{
  updated = SEUpdater::UpdateControllerBase::UpdateControllerBase(this);
  *updated = &unk_2A20275C0;
  *(updated + 8) = 0u;
  *(updated + 9) = 0u;
  *(updated + 10) = 0u;
  *(updated + 11) = 0u;
  *(updated + 12) = 0u;
  *(updated + 13) = 0u;
  *(updated + 112) = 0;
  operator new();
}

void sub_299EE71A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 223) < 0)
  {
    operator delete(*(v21 + 200));
  }

  if (*(v21 + 199) < 0)
  {
    operator delete(*(v21 + 176));
  }

  v23 = *(v21 + 168);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = *(v21 + 152);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(v21 + 136);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  SEUpdater::UpdateControllerBase::~UpdateControllerBase(v21);
  _Unwind_Resume(a1);
}

void SEUpdater::UpdateControllerBase::~UpdateControllerBase(SEUpdater::UpdateControllerBase *this)
{
  *this = &unk_2A20283A8;
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(this + 14);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 88, *(this + 12));
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(this + 9);
  if (*(this + 56) == 1)
  {
    v3 = *(this + 5);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(this + 4);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(this + 3);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void SEUpdater::P73BaseUpdateController::~P73BaseUpdateController(void **this)
{
  *this = &unk_2A20275C0;
  v2 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v3 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v2);
  }

  v4 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v3, 0, 0, 1, "~P73BaseUpdateController", "Destroying Update Controller\n");
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  v5 = this[21];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[19];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[17];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  SEUpdater::UpdateControllerBase::~UpdateControllerBase(this);
}

{
  SEUpdater::P73BaseUpdateController::~P73BaseUpdateController(this);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::doStart(SEUpdater::P73BaseUpdateController *this)
{
  v51 = *MEMORY[0x29EDCA608];
  SEUpdater::UpdateControllerBase::parseStartOptions(this);
  SEUpdater::UpdateControllerBase::getStringfromOption(this, __p);
  v2 = (this + 176);
  if (*(this + 199) < 0)
  {
    operator delete(*v2);
  }

  *v2 = *__p;
  *(this + 24) = v47;
  std::string::basic_string[abi:ne200100]<0>(__p, &unk_299F305FF);
  v43 = this;
  std::string::basic_string[abi:ne200100]<0>(v48, "Default");
  std::string::basic_string[abi:ne200100]<0>(v49, "Force");
  std::string::basic_string[abi:ne200100]<0>(v50, "Skip");
  v3 = 0;
  v4 = 0;
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  v5 = v45;
  while (1)
  {
    v6 = v45;
    if (v5 == v45)
    {
      goto LABEL_10;
    }

    v7 = v3;
    v8 = v45;
    if (v3)
    {
      do
      {
        v6 = v7;
        v7 = *(v7 + 1);
      }

      while (v7);
    }

    else
    {
      do
      {
        v6 = v8[2];
        v9 = *v6 == v8;
        v8 = v6;
      }

      while (v9);
    }

    if (std::less<std::string>::operator()[abi:ne200100](v6 + 4, &__p[v4]))
    {
LABEL_10:
      if (v3)
      {
        v10 = v6;
      }

      else
      {
        v10 = &v44;
      }

      if (!v10[1])
      {
LABEL_21:
        operator new();
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_21;
      }

      while (1)
      {
        while (1)
        {
          v11 = v3;
          if (!std::less<std::string>::operator()[abi:ne200100](&__p[v4], v3 + 4))
          {
            break;
          }

          v3 = *v3;
          if (!*v11)
          {
            goto LABEL_21;
          }
        }

        if (!std::less<std::string>::operator()[abi:ne200100](v3 + 4, &__p[v4]))
        {
          break;
        }

        v3 = *(v3 + 1);
        if (!v3)
        {
          goto LABEL_21;
        }
      }
    }

    v4 += 3;
    if (v4 == 12)
    {
      v12 = 0;
      while (1)
      {
        if (v50[v12 + 23] < 0)
        {
          operator delete(*&v50[v12]);
        }

        v12 -= 24;
        if (v12 == -96)
        {
          v13 = v45[0];
          if (v45[0])
          {
            v14 = v45;
            do
            {
              v15 = v14;
              v16 = v13 + 32;
              v17 = std::less<std::string>::operator()[abi:ne200100](v13 + 4, v2);
              if (v17)
              {
                v18 = 8;
              }

              else
              {
                v18 = 0;
              }

              if (v17)
              {
                v14 = v15;
              }

              else
              {
                v14 = v13;
              }

              v13 = *&v13[v18];
            }

            while (v13);
            if (v14 != v45)
            {
              v19 = v17 ? v15 + 4 : v16;
              if (!std::less<std::string>::operator()[abi:ne200100](v2, v19))
              {
                v20 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                v21 = off_2A14F2360;
                if (!off_2A14F2360)
                {
                  SEUpdaterUtil::SELogObj::create_default_global(v20);
                }

                v22 = *(&off_2A14F2360 + 1);
                if (*(&off_2A14F2360 + 1))
                {
                  atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                v23 = v2;
                if (*(v43 + 199) < 0)
                {
                  v23 = *v2;
                }

                SEUpdaterUtil::SELogObj::printLog(v21, 2, 0, 1, "parseStartOptions", "SE Health Test Policy: %s\n", v23);
                if (v22)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
                }

                *(v43 + 224) = SEUpdater::UpdateControllerBase::getBooleanOption(v43, @"performFactoryConfiguration", 0);
                v24 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                v25 = off_2A14F2360;
                if (!off_2A14F2360)
                {
                  SEUpdaterUtil::SELogObj::create_default_global(v24);
                }

                v26 = *(&off_2A14F2360 + 1);
                if (*(&off_2A14F2360 + 1))
                {
                  atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                if (*(v43 + 224))
                {
                  v27 = "YES";
                }

                else
                {
                  v27 = "NO";
                }

                SEUpdaterUtil::SELogObj::printLog(v25, 2, 0, 1, "parseStartOptions", "Perform Factory Postflight requested? %s\n", v27);
                if (v26)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
                }

                *(v43 + 225) = SEUpdater::UpdateControllerBase::getBooleanOption(v43, @"InstallSEAppletTool", 0);
                v28 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                v29 = off_2A14F2360;
                if (!off_2A14F2360)
                {
                  SEUpdaterUtil::SELogObj::create_default_global(v28);
                }

                v30 = *(&off_2A14F2360 + 1);
                if (*(&off_2A14F2360 + 1))
                {
                  atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                if (*(v43 + 225))
                {
                  v31 = "YES";
                }

                else
                {
                  v31 = "NO";
                }

                SEUpdaterUtil::SELogObj::printLog(v29, 2, 0, 1, "parseStartOptions", "Install SEAppletTool: %s\n", v31);
                if (v30)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
                }

                std::string::basic_string[abi:ne200100]<0>(__p, "dumpSE");
                v32 = v43 + 96;
                v33 = *(v43 + 12);
                if (!v33)
                {
                  goto LABEL_78;
                }

                v34 = v43 + 96;
                do
                {
                  v35 = std::less<std::string>::operator()[abi:ne200100](v33 + 4, __p);
                  if (v35)
                  {
                    v36 = 8;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (!v35)
                  {
                    v34 = v33;
                  }

                  v33 = *&v33[v36];
                }

                while (v33);
                if (v34 == v32 || std::less<std::string>::operator()[abi:ne200100](__p, v34 + 4))
                {
LABEL_78:
                  v34 = v43 + 96;
                }

                if (SHIBYTE(v47) < 0)
                {
                  operator delete(__p[0]);
                }

                if (v32 != v34)
                {
                  v37 = v43 + 200;
                  std::string::operator=((v43 + 200), (v34 + 56));
                  v38 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                  v39 = off_2A14F2360;
                  if (!off_2A14F2360)
                  {
                    SEUpdaterUtil::SELogObj::create_default_global(v38);
                  }

                  v40 = *(&off_2A14F2360 + 1);
                  if (*(&off_2A14F2360 + 1))
                  {
                    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
                  if (*(v43 + 223) < 0)
                  {
                    v37 = *v37;
                  }

                  SEUpdaterUtil::SELogObj::printLog(v39, 2, 0, 1, "parseStartOptions", "Will dump SE to file --> %s\n", v37);
                  if (v40)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
                  }
                }

                std::__tree<std::string>::destroy(v45[0]);
                (*(**(v43 + 20) + 40))(*(v43 + 20), 0);
                SEUpdater::P73BaseUpdateController::doQuery(v43);
              }
            }
          }

          exception = __cxa_allocate_exception(0x48uLL);
          std::operator+<char>();
          v42 = SERestoreInfo::SEException::SEException(exception, __p, 2, @"SEUpdaterErrorDomain");
        }
      }
    }

    v5 = v44;
    v3 = v45[0];
  }
}

void sub_299EE7CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::__tree<std::string>::destroy(a13);
  _Unwind_Resume(a1);
}

void sub_299EE7CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::__tree<std::string>::destroy(a13);
  JUMPOUT(0x299EE81B0);
}

void sub_299EE7D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::__tree<std::string>::destroy(a13);
  JUMPOUT(0x299EE81B0);
}

void sub_299EE7D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::__tree<std::string>::destroy(a13);
  JUMPOUT(0x299EE81B0);
}

void sub_299EE7D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__tree<std::string>::destroy(a13);
  JUMPOUT(0x299EE81B0);
}

void sub_299EE7D54(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_299EE7FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_299EE80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  if (v13)
  {
    JUMPOUT(0x299EE80E0);
  }

  std::__tree<std::string>::destroy(a13);
  JUMPOUT(0x299EE81B0);
}

void sub_299EE80E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_299EE8108(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(a13);
  JUMPOUT(0x299EE81B0);
}

void sub_299EE8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  __cxa_free_exception(v13);
  std::__tree<std::string>::destroy(a13);
  JUMPOUT(0x299EE81B0);
}

void sub_299EE8140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  while (1)
  {
    v17 = *(v15 - 1);
    v15 -= 3;
    if (v17 < 0)
    {
      operator delete(*v15);
    }

    if (v15 == &a15)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_299EE8168(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  operator delete(v29);
  std::__tree<std::string>::destroy(a13);
  v30 = &a29;
  v31 = -96;
  v32 = &a29;
  while (1)
  {
    v33 = *v32;
    v32 -= 24;
    if (v33 < 0)
    {
      operator delete(*(v30 - 23));
    }

    v30 = v32;
    v31 += 24;
    if (!v31)
    {
      JUMPOUT(0x299EE81B0);
    }
  }
}

void SEUpdater::P73BaseUpdateController::doQuery(SEUpdater::P73BaseUpdateController *this)
{
  if (*(this + 20))
  {
    SERestoreInfo::Apdu::Apdu(&v5);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "Assertion: ");
  v2 = std::string::append(&v4, "fSeController");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6 = v2->__r_.__value_.__r.__words[2];
  v5 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x29C2B5B50](exception, &v5);
}

void sub_299EE82EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void SEUpdaterUtil::SELogObj::dumpLogBuffer(SEUpdaterUtil::SELogObj *this)
{
  v15[5] = *MEMORY[0x29EDCA608];
  v7 = 0;
  v8 = &v7;
  v9 = 0x4002000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  std::vector<unsigned char>::vector[abi:ne200100](__p, 61441);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZN13SEUpdaterUtil8SELogObj13dumpLogBufferEv_block_invoke;
  v6[3] = &unk_29F290F50;
  v6[4] = &v7;
  v6[5] = this;
  v13 = v6;
  block = MEMORY[0x29EDCA5F8];
  v15[0] = 0x40000000;
  v15[1] = ___ZNK3ctu20SharedSynchronizableIN13SEUpdaterUtil8SELogObjEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v15[2] = &__block_descriptor_tmp_351;
  v15[3] = this;
  v15[4] = &v13;
  v2 = *(this + 2);
  if (*(this + 3))
  {
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    dispatch_sync(v2, &block);
  }

  SEUpdaterUtil::SELogObj::print(this, "********************************************************************************\n");
  SEUpdaterUtil::SELogObj::print(this, "Start of LogBuffer\n");
  SEUpdaterUtil::SELogObj::print(this, "********************************************************************************\n");
  v3 = strtok(v8[5], "\n");
  if (v3)
  {
    v4 = v3;
    do
    {
      SEUpdaterUtil::SELogObj::FormatMsg("%s\n", &block, v4);
      SEUpdaterUtil::SELogObj::print(this, block);
      v4 = strtok(0, "\n");
      std::unique_ptr<char const,std::function<void ()(char const*)>>::reset[abi:ne200100](&block, 0);
      std::__function::__value_func<void ()(char const*)>::~__value_func[abi:ne200100](v15);
    }

    while (v4);
  }

  SEUpdaterUtil::SELogObj::print(this, "********************************************************************************\n");
  SEUpdaterUtil::SELogObj::print(this, "End of LogBuffer\n");
  SEUpdaterUtil::SELogObj::print(this, "********************************************************************************\n");
  _Block_object_dispose(&v7, 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void SEUpdater::P73BaseUpdateController::dumpDebugInfo(SEUpdater::P73BaseUpdateController *this)
{
  v3 = *MEMORY[0x29EDCA608];
  (*(**(this + 20) + 48))(*(this + 20), 0);
  v1[8] = xmmword_299F2AE1D;
  LOWORD(v2) = 0;
  SERestoreInfo::CApdu::CApdu(v1);
}

void SEUpdater::P73BaseUpdateController::printManifest(SEUpdater::P73BaseUpdateController *this)
{
  v2 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v3 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v2);
  }

  v4 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v5 = *(this + 16);
  if (v5)
  {
    SERestoreInfo::P73BaseDeviceInfo::print(v5);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }
  }

  else
  {
    v6 = "NULL deviceInfo";
  }

  SEUpdaterUtil::SELogObj::printLog(v3, 2, 0, 1, "printManifest", "MQ: %s\n", v6);
  if (v5 && v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t SEUpdater::P73BaseUpdateController::doCommand(std::__shared_weak_count **this, CFStringRef theString1, const __CFDictionary **a3)
{
  if (!theString1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v22, "Assertion: ");
    v18 = std::string::append(&v22, "command");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v24 = v18->__r_.__value_.__r.__words[2];
    *err = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, err);
  }

  if (CFStringCompare(theString1, @"queryInfo", 0) == kCFCompareEqualTo)
  {
    SEUpdater::P73BaseUpdateController::doQuery(this);
  }

  if (CFStringCompare(theString1, @"performNextStage", 0) == kCFCompareEqualTo)
  {
    SEUpdater::P73BaseUpdateController::doPerform(this);
  }

  if (CFStringCompare(theString1, @"verifyPairing", 0))
  {
    return 0;
  }

  v6 = this[16];
  if (*(v6 + 14) == 54)
  {
    if (SERestoreInfo::P73BaseDeviceInfo::getSEConfiguration(v6) == 2)
    {
      v7 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v8 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v7);
      }

      v9 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      SEUpdaterUtil::SELogObj::printLog(v8, 2, 0, 1, "doCommand", "SE is PROD_EVAL -> Skip SE-SEP pairing verification\n");
      goto LABEL_31;
    }

    v6 = this[16];
  }

  v10 = (*(*v6 + 32))(v6);
  if (SEUpdater::UpdateControllerBase::usesPORSecureElement(this, v10))
  {
    v11 = this[21];
    v20 = this[20];
    v21 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(this + 66) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    verifyAlohaPairing(&v20, (this + 8), err);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (err[0])
    {
      v12 = __cxa_allocate_exception(0x48uLL);
      v13 = SERestoreInfo::SEException::SEException(v12, err[0]);
    }

    return 1;
  }

  v14 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v15 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v14);
  }

  v9 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v16 = (this[16]->__on_zero_shared_weak)(this[16]);
  SEUpdaterUtil::SELogObj::printLog(v15, 2, 0, 1, "doCommand", "Skip SE-SEP pairing verification due to non-POR SE 0x%02X\n", v16);
LABEL_31:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return 1;
}

void sub_299EE9DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_299EE9E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void SEUpdater::P73BaseUpdateController::doPerform(SEUpdater::P73BaseUpdateController *this)
{
  v18[7] = *MEMORY[0x29EDCA608];
  if (!*(this + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v7 = std::string::basic_string[abi:ne200100]<0>(v18, "Assertion: ");
    v8 = std::string::append(v7, "fDeviceInfo");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    value = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &value);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&theDict, this + 9);
  if (!@"FirmwareData")
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    v11 = std::string::basic_string[abi:ne200100]<0>(v18, "Assertion: ");
    v12 = std::string::append(v11, "key");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16 = v12->__r_.__value_.__r.__words[2];
    value = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v10, &value);
  }

  *&value = 0;
  v18[0] = 0;
  if (theDict)
  {
    if (!CFDictionaryGetValueIfPresent(theDict, @"FirmwareData", &value) || (v2 = CFGetTypeID(value), v2 != CFDataGetTypeID()))
    {
      v3 = "data is either not found or in wrong CFType";
LABEL_10:
      SEUpdaterUtil::_AddError(2, 1, "getDataFromDict", v3, v1);
      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
      v4 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&value, "Not FW found in option");
      v5 = SERestoreInfo::SEException::SEException(v4, &value, 2, @"SEUpdaterErrorDomain");
    }

    __p = value;
    ctu::cf::CFSharedRef<__CFData const>::reset<void const,void>(v18, &__p);
    if (v18[0])
    {
      operator new();
    }
  }

  v3 = "fail to get Data";
  goto LABEL_10;
}

void sub_299EF3D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  __cxa_guard_abort(&qword_2A197E680);
  std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  _Unwind_Resume(a1);
}

uint64_t std::map<std::string,std::string>::at(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void SEUpdater::CommandGetOsInfo::~CommandGetOsInfo(SEUpdater::CommandGetOsInfo *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSelectOSU::~CommandSelectOSU(SEUpdater::CommandSelectOSU *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandGetAMExportInfo::~CommandGetAMExportInfo(SEUpdater::CommandGetAMExportInfo *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::sendManifestQuery(SEUpdater::P73BaseUpdateController *this)
{
  v1[21] = *MEMORY[0x29EDCA608];
  (*(**(this + 20) + 48))(*(this + 20), 0);
  SERestoreInfo::Apdu::Apdu(v1);
}

void sub_299EF7BC0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  *(v1 - 200) = &unk_2A2026DD8;
  v3 = *(v1 - 184);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *(v1 - 144) = &unk_2A2026DD8;
  v4 = *(v1 - 128);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(v1 - 224) = &unk_2A2026DD8;
  v5 = *(v1 - 208);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void sub_299EF7E48(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  *(v2 - 224) = &unk_2A2026DD8;
  v4 = *(v2 - 208);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void sub_299EF7E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>((v15 - 144), "Failed to parse forceDeviceHwVersion debug argument");
    v18 = SERestoreInfo::SEException::SEException(exception, (v15 - 144), 2, @"SEUpdaterErrorDomain");
  }

  *(v15 - 224) = &unk_2A2026DD8;
  v19 = *(v15 - 208);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void sub_299EF7F00(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  __cxa_end_catch();
  *(v1 - 224) = &unk_2A2026DD8;
  v3 = *(v1 - 208);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_299EF7F2C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x299EF80A0);
}

void sub_299EF7F44(_Unwind_Exception *exception_object)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  *(v1 - 224) = &unk_2A2026DD8;
  v3 = *(v1 - 208);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299EF7F60(_Unwind_Exception *a1)
{
  SERestoreInfo::BLOB::~BLOB((v1 - 144));
  *(v1 - 224) = &unk_2A2026DD8;
  v3 = *(v1 - 208);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_299EF7FD8(_Unwind_Exception *a1)
{
  *(v1 - 224) = &unk_2A2026DD8;
  v3 = *(v1 - 208);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_299EF7FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  if (*(v19 - 177) < 0)
  {
    operator delete(*(v19 - 200));
    if ((v18 & 1) == 0)
    {
LABEL_7:
      *(v19 - 224) = &unk_2A2026DD8;
      v21 = *(v19 - 208);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_7;
  }

  JUMPOUT(0x299EF806CLL);
}

void sub_299EF8050()
{
  if (*(v0 - 121) < 0)
  {
    v1 = *(v0 - 144);
    JUMPOUT(0x299EF8060);
  }

  JUMPOUT(0x299EF806CLL);
}

void SEUpdater::CommandMQ::~CommandMQ(SEUpdater::CommandMQ *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::sendIm4M(const void **this)
{
  v64 = *MEMORY[0x29EDCA608];
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&theDict, this + 9);
  v2 = (*(*this[16] + 32))(this[16]);
  v5 = kSETagResponseTicket;
  if (v2 <= 199)
  {
    if (v2 != 100 && v2 != 115)
    {
LABEL_10:
      v5 = kSETagResponseTicketEC384;
    }
  }

  else if (v2 != 200 && v2 != 210 && v2 != 131601)
  {
    goto LABEL_10;
  }

  SEUpdaterUtil::getDataFromDict<SERestoreInfo::BLOB>(&v30, theDict, *v5, v3, v4);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  v7 = v30;
  if (!v30 || !*(v30 + 8) || !*(v30 + 16))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find SE ticket in restore option");
    v24 = SERestoreInfo::SEException::SEException(exception, &__p, 9, @"SEUpdaterErrorDomain");
  }

  v8 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
  }

  v33 = 0;
  v34 = 0;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  __p = 0u;
  v36 = 0u;
  if (Img4DecodeInitManifest())
  {
    v25 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v32, "Failed to decode manifest");
    v26 = SERestoreInfo::SEException::SEException(v25, &v32, 18, @"SEUpdaterErrorDomain");
  }

  if (Img4DecodeGetObjectPropertyData() || !v34 || v33 != 20)
  {
    v27 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v32, "Failed to get nonce from manifest");
    v28 = SERestoreInfo::SEException::SEException(v27, &v32, 18, @"SEUpdaterErrorDomain");
  }

  v11 = this[16];
  v12 = v11[8];
  if (v11[9] - v12 != 20)
  {
    v18 = 0;
    if (!v8)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 4);
  v18 = v13 == *v34 && v14 == *(v34 + 8) && v15 == *(v34 + 16);
  if (v8)
  {
LABEL_33:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

LABEL_34:
  if (v18)
  {
    (*(*this[20] + 48))(this[20], 0);
    SERestoreInfo::Apdu::Apdu(&v32);
  }

  v19 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v20 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v19);
  }

  v21 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v20, 2, 0, 1, "sendIm4M", "Skip sending the Manifest because of nonce mismatch\n");
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_299EF87C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::P73BaseUpdateController::sendIm4P(SEUpdater::P73BaseUpdateController *this)
{
  v2 = *(*(this + 16) + 140);
  if (v2 == 47545 || v2 == 59367)
  {
    (*(**(this + 20) + 48))(*(this + 20), 0);
    SERestoreInfo::Apdu::Apdu(&v10);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v5 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v4);
  }

  v6 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SERestoreInfo::P73BaseDeviceInfo::getIm4State(*(*(this + 16) + 140));
  if (v9 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v5, 2, 0, 1, "sendIm4P", "Skip sending the Update Payload because of IM4 state %s\n", v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void SEUpdaterUtil::getDataFromDict<SERestoreInfo::BLOB>(void *a1, CFDictionaryRef theDict, void *key, uint64_t a4, const char *a5)
{
  if (!key)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Assertion: ");
    v9 = std::string::append(&v12, "key");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v14 = v9->__r_.__value_.__r.__words[2];
    *value = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, value);
  }

  value[0] = 0;
  v12.__r_.__value_.__r.__words[0] = 0;
  if (theDict)
  {
    if (!CFDictionaryGetValueIfPresent(theDict, key, value) || (v6 = CFGetTypeID(value[0]), v6 != CFDataGetTypeID()))
    {
      v7 = "data is either not found or in wrong CFType";
      goto LABEL_9;
    }

    v11 = value[0];
    ctu::cf::CFSharedRef<__CFData const>::reset<void const,void>(&v12.__r_.__value_.__l.__data_, &v11);
    if (v12.__r_.__value_.__r.__words[0])
    {
      v11 = v12.__r_.__value_.__r.__words[0];
      std::allocate_shared[abi:ne200100]<SERestoreInfo::BLOB,std::allocator<SERestoreInfo::BLOB>,__CFData const*,0>();
    }
  }

  v7 = "fail to get Data";
LABEL_9:
  SEUpdaterUtil::_AddError(2, 1, "getDataFromDict", v7, a5);
  *a1 = 0;
  a1[1] = 0;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void SEUpdater::CommandTriggerImg4::~CommandTriggerImg4(SEUpdater::CommandTriggerImg4 *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::sendImage4Apdu(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *(a2 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    SERestoreInfo::Apdu::Apdu(&v7);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v6, "Assertion: ");
  v4 = std::string::append(&v6, "b.data && b.length");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8 = v4->__r_.__value_.__r.__words[2];
  v7 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x29C2B5B50](exception, &v7);
}

void sub_299EF9414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void SEUpdater::CommandImage4::~CommandImage4(SEUpdater::CommandImage4 *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandIm4m::~CommandIm4m(SEUpdater::CommandIm4m *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandUpdatePayload::~CommandUpdatePayload(SEUpdater::CommandUpdatePayload *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::P73BaseUpdateController::doOneAction(SEUpdater::P73BaseUpdateController *this, unsigned int a2)
{
  v3 = *(*(this + 18) + 16);
  if (!v3)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x48uLL);
    std::to_string(&v44, a2);
    v8 = std::string::insert(&v44, 0, "No update item with index: ");
    v37 = *&v8->__r_.__value_.__l.__data_;
    *&v38 = *(&v8->__r_.__value_.__l + 2);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v9 = SERestoreInfo::SEException::SEException(exception, &v37, 31, @"SEUpdaterErrorDomain");
  }

  v5 = *(*(this + 18) + 16);
  while (1)
  {
    v6 = *(v5 + 16);
    if (v6 <= a2)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_6;
  }

  while (1)
  {
    while (1)
    {
      v10 = *(v3 + 16);
      if (v10 <= a2)
      {
        break;
      }

      v3 = *v3;
      if (!v3)
      {
LABEL_53:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    if (v10 >= a2)
    {
      break;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  LODWORD(v37) = *(v3 + 10);
  v38 = *(v3 + 7);
  v11 = v3[9];
  *(&v37 + 1) = &unk_2A2027230;
  v39 = v11;
  v40 = *(v3 + 20);
  v42 = 0;
  v43 = 0;
  v41 = 0;
  std::vector<SERestoreInfo::BLOB>::__init_with_size[abi:ne200100]<SERestoreInfo::BLOB*,SERestoreInfo::BLOB*>(&v41, v3[11], v3[12], (v3[12] - v3[11]) >> 5);
  v12 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v13 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v12);
  }

  v14 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, &unk_299F305FF);
  SERestoreInfo::ImageBinary::print(&v37, __p);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v44;
  }

  else
  {
    v15 = v44.__r_.__value_.__r.__words[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v13, 3, 0, 1, "doOneAction", "%s: \n", v15);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v27 = v37;
  v28 = &unk_2A2027230;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  std::vector<SERestoreInfo::BLOB>::__init_with_size[abi:ne200100]<SERestoreInfo::BLOB*,SERestoreInfo::BLOB*>(&v32, v41, v42, (v42 - v41) >> 5);
  v16 = 0;
  do
  {
    if (v32 != v33)
    {
      SERestoreInfo::Apdu::Apdu(&v45);
    }

    v17 = v16;
    v16 = 1;
  }

  while ((v17 & 1) != 0);
  v44.__r_.__value_.__r.__words[0] = &v32;
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v44);
  SERestoreInfo::BLOB::~BLOB(&v28);
  v18 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v19 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v18);
  }

  v20 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(v25, &unk_299F305FF);
  SERestoreInfo::ImageBinary::print(&v37, v25);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v44;
  }

  else
  {
    v21 = v44.__r_.__value_.__r.__words[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v19, 2, 0, 1, "doOneAction", "Successfully pushed binary: %s\n", v21);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "singleStep");
  v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, &v44);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v22)
  {
    puts("type return to continue");
    do
    {
      v23 = getchar();
    }

    while (v23 != 10 && v23 != 13);
  }

  v44.__r_.__value_.__r.__words[0] = &v41;
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v44);
  SERestoreInfo::BLOB::~BLOB((&v37 + 8));
}

void sub_299EF9E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, SERestoreInfo::BLOB *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  *(v44 - 128) = &unk_2A2026DD8;
  v46 = *(v44 - 112);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  SERestoreInfo::ImageBinary::~ImageBinary(&a24);
  SERestoreInfo::ImageBinary::~ImageBinary(&a39);
  _Unwind_Resume(a1);
}

void SEUpdater::CommandTriggerOSU::~CommandTriggerOSU(SEUpdater::CommandTriggerOSU *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSelectCRS::~CommandSelectCRS(SEUpdater::CommandSelectCRS *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::CommandSetFTAActivation::~CommandSetFTAActivation(SEUpdater::CommandSetFTAActivation *this)
{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2026DD8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C2B5F30);
}

void sub_299EFAE08(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  *(v1 - 104) = &unk_2A2026DD8;
  v3 = *(v1 - 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}