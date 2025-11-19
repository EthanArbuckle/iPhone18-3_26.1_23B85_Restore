void IOACIPCTraceClass::IOACIPCTraceClass(IOACIPCTraceClass *this)
{
  *this = 0;
  *(this + 9) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  pthread_mutex_init((this + 8), 0);
}

{
  *this = 0;
  *(this + 9) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  pthread_mutex_init((this + 8), 0);
}

void IOACIPCTraceClass::~IOACIPCTraceClass(IOACIPCTraceClass *this)
{
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "~IOACIPCTraceClass");
  }

  IOACIPCTraceClass::stop(this);
  pthread_mutex_destroy((this + 8));
}

uint64_t IOACIPCTraceClass::stop(IOACIPCTraceClass *this)
{
  pthread_mutex_lock((this + 8));
  v2 = MEMORY[0x29EDCA610];
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "stop");
  }

  IOACIPCTraceClass::closeService(this);
  v3 = *(this + 18);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 18) = 0;
  }

  if (*this >= 2u)
  {
    fprintf(*v2, "IOACIPCTraceClass::%s: --done\n", "stop");
  }

  pthread_mutex_unlock((this + 8));
  return 1;
}

uint64_t IOACIPCTraceClass::start(IOACIPCTraceClass *this, __CFRunLoop *a2)
{
  pthread_mutex_lock((this + 8));
  v4 = IOACIPCTraceClass::connect(this, a2, 0);
  pthread_mutex_unlock((this + 8));
  return v4;
}

uint64_t IOACIPCTraceClass::connect(IOACIPCTraceClass *this, __CFRunLoop *a2, NSObject *a3)
{
  if (*(this + 18))
  {
LABEL_2:
    v4 = 1;
    goto LABEL_3;
  }

  v7 = IOServiceMatching("IOAppleConvergedIPCTraceBackendRaw");
  if (v7)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v7);
    *(this + 18) = MatchingService;
    if (MatchingService)
    {
      if (IOACIPCTraceClass::openService(this))
      {
        if (*this >= 2u)
        {
          fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: could not open service\n", "connect");
        }

        IOObjectRelease(*(this + 18));
        v4 = 0;
        *(this + 18) = 0;
        goto LABEL_3;
      }

      if (a2)
      {
        if (a3)
        {
          IOACIPCTraceClass::connect();
        }

        *(this + 11) = a2;
        CFRetain(a2);
      }

      else if (a3)
      {
        *(this + 12) = a3;
        dispatch_retain(a3);
      }

      IOACIPCTraceClass::setNotificationPort(this);
      goto LABEL_2;
    }

    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: could not get matching service\n");
      goto LABEL_15;
    }

    return 0;
  }

  if (*this < 2u)
  {
    return 0;
  }

  fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: could not create matching dictionary\n");
LABEL_15:
  v4 = 0;
LABEL_3:
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: --done\n", "connect");
  }

  return v4;
}

uint64_t IOACIPCTraceClass::start(IOACIPCTraceClass *this, NSObject *a2)
{
  pthread_mutex_lock((this + 8));
  v4 = IOACIPCTraceClass::connect(this, 0, a2);
  pthread_mutex_unlock((this + 8));
  return v4;
}

uint64_t IOACIPCTraceClass::openService(IOACIPCTraceClass *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    return 3758096385;
  }

  if (*(this + 19))
  {
    return 0;
  }

  if (*(this + 10))
  {
    CFRelease(*(this + 10));
    *(this + 10) = 0;
    v2 = *(this + 18);
  }

  *(this + 10) = IORegistryEntryCreateCFProperty(v2, @"TracePipes", *MEMORY[0x29EDB8ED8], 0);
  v3 = IOServiceOpen(*(this + 18), *MEMORY[0x29EDCA6B0], 0, this + 19);
  if (v3)
  {
    v4 = *(this + 10);
    if (v4)
    {
      CFRelease(v4);
      *(this + 10) = 0;
    }
  }

  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: ret = %x\n", "openService", v3);
  }

  return v3;
}

void IOACIPCTraceClass::setNotificationPort(IOACIPCTraceClass *this)
{
  if (!*(this + 13))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 13) = v2;
    if (!v2)
    {
      IOACIPCTraceClass::setNotificationPort();
    }

    if (*(this + 11))
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v2);
      *(this + 14) = RunLoopSource;
      CFRunLoopAddSource(*(this + 11), RunLoopSource, *MEMORY[0x29EDB8FC0]);
    }

    v4 = *(this + 12);
    if (v4)
    {
      v5 = *(this + 13);

      IONotificationPortSetDispatchQueue(v5, v4);
    }
  }
}

uint64_t IOACIPCTraceClass::closeService(IOACIPCTraceClass *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 19);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 19) = 0;
  }

  IOACIPCTraceClass::clearNotificationPort(this);
  v4 = *(this + 11);
  if (v4)
  {
    CFRelease(v4);
    *(this + 11) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {
    dispatch_release(v5);
    *(this + 12) = 0;
  }

  return 0;
}

void IOACIPCTraceClass::clearNotificationPort(IOACIPCTraceClass *this)
{
  v3 = (this + 104);
  v2 = *(this + 13);
  if (v2)
  {
    if (*(this + 11))
    {
      CFRunLoopRemoveSource(*(this + 11), *(this + 14), *MEMORY[0x29EDB8FC0]);
      v2 = *(this + 13);
    }

    IONotificationPortDestroy(v2);
    *v3 = 0;
    v3[1] = 0;
  }
}

const __CFArray *IOACIPCTraceClass::getPipeCount(IOACIPCTraceClass *this)
{
  result = *(this + 10);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IOACIPCTraceClass::getPipeCodeAndName(IOACIPCTraceClass *this, unsigned int a2, unsigned int *a3, char *a4, unsigned int a5)
{
  result = *(this + 10);
  if (result)
  {
    Count = CFArrayGetCount(result);
    result = 0;
    if (a3)
    {
      if (a4)
      {
        if (Count > a2)
        {
          result = CFArrayGetValueAtIndex(*(this + 10), a2);
          if (result)
          {
            v12 = result;
            Value = CFDictionaryGetValue(result, @"Code");
            result = CFNumberGetValue(Value, kCFNumberIntType, a3);
            if (result)
            {
              result = CFDictionaryGetValue(v12, @"Name");
              if (result)
              {
                v14 = result;
                if (CFStringGetLength(result))
                {
                  return CFStringGetCString(v14, a4, a5, 0x600u) != 0;
                }

                else
                {
                  strncpy(a4, "DEFAULT", a5);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t IOACIPCTraceClass::openPipe(IOACIPCTraceClass *this)
{
  pthread_mutex_lock((this + 8));
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "openPipe");
  }

  pthread_mutex_unlock((this + 8));
  return 0;
}

uint64_t IOACIPCTraceClass::closePipe(IOACIPCTraceClass *this)
{
  pthread_mutex_lock((this + 8));
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "closePipe");
  }

  pthread_mutex_unlock((this + 8));
  return 0;
}

BOOL IOACIPCTraceClass::getSnapshotBufferSize(IOACIPCTraceClass *this, unsigned int *a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = *(this + 18);
    if (v3)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v3, @"SnapshotBufferSize", *MEMORY[0x29EDB8ED8], 0);
      if (CFProperty)
      {
        v6 = CFProperty;
        v2 = CFNumberGetValue(CFProperty, kCFNumberSInt32Type, a2) != 0;
        CFRelease(v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t IOACIPCTraceClass::readLogsAsync(IOACIPCTraceClass *this, unsigned int a2, void *a3, unsigned int a4, unsigned int a5, void (*a6)(void *, int, void *), void *a7)
{
  input[4] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if (*this >= 3u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: buff %p, size %u\n", "readLogsAsync", a3, a4);
  }

  v14 = *(this + 13);
  if (v14)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    input[3] = a5;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v24 = v15;
    v25 = v15;
    reference[1] = a6;
    v22 = a7;
    v16 = *(this + 19);
    MachPort = IONotificationPortGetMachPort(v14);
    v18 = IOConnectCallAsyncScalarMethod(v16, 0, MachPort, reference, 3u, input, 4u, 0, 0);
    if (*this >= 3u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: ret = %x\n", "readLogsAsync", v18);
    }

    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no async port\n", "readLogsAsync");
    }

    pthread_mutex_unlock((this + 8));
    v18 = 3758097112;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t IOACIPCTraceClass::dumpRegistry(IOACIPCTraceClass *this)
{
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "dumpRegistry");
  }

  pthread_mutex_lock((this + 8));
  v2 = *(this + 19);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 2u, 0, 0, 0, 0);
  }

  else
  {
    v3 = 3758097112;
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "dumpRegistry");
    }
  }

  pthread_mutex_unlock((this + 8));
  return v3;
}

uint64_t IOACIPCTraceClass::flushTraceBuffers(IOACIPCTraceClass *this, unsigned int a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  input[2] = *MEMORY[0x29EDCA608];
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "flushTraceBuffers");
  }

  input[0] = a2;
  input[1] = a3;
  pthread_mutex_lock((this + 8));
  v10 = *(this + 19);
  if (v10)
  {
    if (a4)
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19 = 0xAAAAAAAAAAAAAAAALL;
      reference[0] = 0xAAAAAAAAAAAAAAAALL;
      v20 = v11;
      v21 = v11;
      reference[1] = a4;
      v18 = a5;
      MachPort = IONotificationPortGetMachPort(*(this + 13));
      v13 = IOConnectCallAsyncScalarMethod(v10, 1u, MachPort, reference, 3u, input, 2u, 0, 0);
    }

    else
    {
      v13 = IOConnectCallScalarMethod(*(this + 19), 1u, input, 2u, 0, 0);
    }

    v14 = v13;
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "flushTraceBuffers");
    }

    pthread_mutex_unlock((this + 8));
    v14 = 3758097112;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t IOACIPCTraceClass::demo(IOACIPCTraceClass *this)
{
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "demo");
  }

  pthread_mutex_lock((this + 8));
  v2 = *(this + 19);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 6u, 0, 0, 0, 0);
  }

  else
  {
    v3 = 3758097112;
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "demo");
    }
  }

  pthread_mutex_unlock((this + 8));
  return v3;
}

uint64_t IOACIPCTraceClass::enablePipe(IOACIPCTraceClass *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "enablePipe");
  }

  input[0] = a2;
  input[1] = a3;
  pthread_mutex_lock((this + 8));
  v6 = *(this + 19);
  if (v6)
  {
    v7 = IOConnectCallScalarMethod(v6, 7u, input, 2u, 0, 0);
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "enablePipe");
    }

    pthread_mutex_unlock((this + 8));
    v7 = 3758097112;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t IOACIPCTraceClass::activateAllTracePoints(IOACIPCTraceClass *this)
{
  input[1] = *MEMORY[0x29EDCA608];
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "activateAllTracePoints");
  }

  input[0] = 1;
  pthread_mutex_lock((this + 8));
  v2 = *(this + 19);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 8u, input, 1u, 0, 0);
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "activateAllTracePoints");
    }

    pthread_mutex_unlock((this + 8));
    v3 = 3758097112;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t IOACIPCTraceClass::deactivateAllTracePoints(IOACIPCTraceClass *this)
{
  input[1] = *MEMORY[0x29EDCA608];
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "deactivateAllTracePoints");
  }

  input[0] = 0;
  pthread_mutex_lock((this + 8));
  v2 = *(this + 19);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 8u, input, 1u, 0, 0);
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "deactivateAllTracePoints");
    }

    pthread_mutex_unlock((this + 8));
    v3 = 3758097112;
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t IOACIPCTraceClass::activateTracePoint(IOACIPCTraceClass *this, unsigned int a2)
{
  input[2] = *MEMORY[0x29EDCA608];
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "activateTracePoint");
  }

  input[0] = 1;
  input[1] = a2;
  pthread_mutex_lock((this + 8));
  v4 = *(this + 19);
  if (v4)
  {
    v5 = IOConnectCallScalarMethod(v4, 9u, input, 2u, 0, 0);
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "activateTracePoint");
    }

    pthread_mutex_unlock((this + 8));
    v5 = 3758097112;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t IOACIPCTraceClass::deactivateTracePoint(IOACIPCTraceClass *this, unsigned int a2)
{
  input[2] = *MEMORY[0x29EDCA608];
  if (*this >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "deactivateTracePoint");
  }

  input[0] = 0;
  input[1] = a2;
  pthread_mutex_lock((this + 8));
  v4 = *(this + 19);
  if (v4)
  {
    v5 = IOConnectCallScalarMethod(v4, 9u, input, 2u, 0, 0);
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if (*this >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "deactivateTracePoint");
    }

    pthread_mutex_unlock((this + 8));
    v5 = 3758097112;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

BOOL IOACIPCTraceClass::getRegistryInfo(uint64_t a1, void *a2)
{
  if (*a1 >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "getRegistryInfo");
  }

  pthread_mutex_lock((a1 + 8));
  v4 = *(a1 + 76);
  if (v4)
  {
    outputStructCnt = 36;
    v5 = IOConnectCallStructMethod(v4, 3u, 0, 0, a2, &outputStructCnt);
    pthread_mutex_unlock((a1 + 8));
    return v5 == 0;
  }

  else
  {
    if (*a1 >= 2u)
    {
      fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "getRegistryInfo");
    }

    pthread_mutex_unlock((a1 + 8));
    return 0;
  }
}

uint64_t IOACIPCTraceClass::getTraceCode(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*a1 >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: \n", "getTraceCode");
  }

  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 76))
  {
    operator new();
  }

  if (*a1 >= 2u)
  {
    fprintf(*MEMORY[0x29EDCA610], "IOACIPCTraceClass::%s: no connection\n", "getTraceCode");
  }

  pthread_mutex_unlock((a1 + 8));
  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297999018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
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

void std::vector<IOACIPCTraceCodeAttachment>::clear[abi:ne200100](void ***a1)
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__shared_ptr_emplace<IOAppleConvergedIPCTraceRegistryTracePoint>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5BD58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C277BF0);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE82338, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__shared_ptr_emplace<IOAppleConvergedIPCTraceRegistryAttachment>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5BDA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C277BF0);
}

uint64_t std::vector<IOACIPCTraceCodeAttachment>::__emplace_back_slow_path<IOACIPCTraceCodeAttachment>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<IOACIPCTraceCodeAttachment>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<IOACIPCTraceCodeAttachment>>(a1, v7);
  }

  v18 = 0uLL;
  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 6);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IOACIPCTraceCodeAttachment>,IOACIPCTraceCodeAttachment*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<IOACIPCTraceCodeAttachment>::~__split_buffer(&v16);
  return v15;
}

void sub_297999518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<IOACIPCTraceCodeAttachment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IOACIPCTraceCodeAttachment>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IOACIPCTraceCodeAttachment>,IOACIPCTraceCodeAttachment*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = a4;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IOACIPCTraceCodeAttachment>,IOACIPCTraceCodeAttachment*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IOACIPCTraceCodeAttachment>,IOACIPCTraceCodeAttachment*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<IOACIPCTraceCodeAttachment>,IOACIPCTraceCodeAttachment*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<IOACIPCTraceCodeAttachment>,IOACIPCTraceCodeAttachment*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<IOACIPCTraceCodeAttachment>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<IOACIPCTraceCodeAttachment>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<IOACIPCTraceCodeAttachment>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void IOACIPCControlClass::IOACIPCControlClass(IOACIPCControlClass *this)
{
  *this = &unk_2A1E5BDF8;
  *(this + 2) = 1;
  *(this + 20) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 172) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  pthread_mutex_init((this + 16), 0);
}

{
  *this = &unk_2A1E5BDF8;
  *(this + 2) = 1;
  *(this + 20) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 172) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  pthread_mutex_init((this + 16), 0);
}

void IOACIPCControlClass::~IOACIPCControlClass(IOACIPCControlClass *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = &unk_2A1E5BDF8;
  *this = &unk_2A1E5BDF8;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "~IOACIPCControlClass";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: \n", &v4, 0xCu);
    v2 = *this;
  }

  v2[3](this);
  pthread_mutex_destroy((this + 16));
  v3 = *MEMORY[0x29EDCA608];
}

{
  IOACIPCControlClass::~IOACIPCControlClass(this);

  JUMPOUT(0x29C277BF0);
}

void sub_297999960(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL IOACIPCControlClass::start(IOACIPCControlClass *this, const __CFDictionary *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if (*(this + 20))
  {
    v4 = 1;
  }

  else
  {
    CFRetain(a2);
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], a2);
    v4 = MatchingService != 0;
    if (!MatchingService && (*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "start";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: could not get matching service\n", &v8, 0xCu);
    }

    *(this + 20) = MatchingService;
  }

  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "start";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: --done\n", &v8, 0xCu);
  }

  pthread_mutex_unlock((this + 16));
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOACIPCControlClass::stop(IOACIPCControlClass *this)
{
  v7 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "stop";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: \n", &v5, 0xCu);
  }

  IOACIPCControlClass::close_nl(this);
  IOACIPCControlClass::deregisterEventNotification_nl(this, 0);
  v2 = *(this + 20);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 20) = 0;
  }

  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "stop";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: --done\n", &v5, 0xCu);
  }

  pthread_mutex_unlock((this + 16));
  v3 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t IOACIPCControlClass::close_nl(IOACIPCControlClass *this)
{
  if (*(this + 172) != 1)
  {
    return 0;
  }

  *(this + 172) = 0;
  v2 = IOConnectCallScalarMethod(*(this + 42), 1u, 0, 0, 0, 0);
  v3 = *(this + 42);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 42) = 0;
  }

  IOACIPCControlClass::clearNotificationPort(this);
  v4 = *(this + 11);
  if (v4)
  {
    CFRelease(v4);
    *(this + 11) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {
    dispatch_release(v5);
    *(this + 12) = 0;
  }

  return v2;
}

void IOACIPCControlClass::deregisterEventNotification_nl(IOACIPCControlClass *this, NSObject *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "deregisterEventNotification_nl";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: +\n", buf, 0xCu);
  }

  if (*(this + 15) || *(this + 16))
  {
    IOObjectRelease(*(this + 38));
    *(this + 38) = 0;
    IOACIPCControlClass::clearEventNotificationPort(this);
    if (*(this + 15))
    {
      Current = CFRunLoopGetCurrent();
      v5 = *(this + 15);
      if (Current == v5)
      {
        if (*(this + 20))
        {
          _Block_release(*(this + 20));
          *(this + 20) = 0;
          v5 = *(this + 15);
        }

        if (v5)
        {
          CFRelease(v5);
          *(this + 15) = 0;
        }

        goto LABEL_25;
      }
    }

    v6 = a2;
    if (!a2)
    {
      if (*(this + 16))
      {
        v7 = 0;
        v6 = 0;
        goto LABEL_12;
      }

      v6 = dispatch_group_create();
      if (!v6)
      {
        v7 = 0;
        goto LABEL_12;
      }
    }

    dispatch_retain(v6);
    dispatch_group_enter(v6);
    v7 = 1;
LABEL_12:
    v8 = *(this + 20);
    *(this + 20) = 0;
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = ___ZN19IOACIPCControlClass30deregisterEventNotification_nlEP16dispatch_group_s_block_invoke;
    v13[3] = &unk_29EE82390;
    v13[4] = v8;
    v13[5] = v6;
    v9 = *(this + 15);
    if (v9)
    {
      if (*(this + 16))
      {
        IOACIPCControlClass::deregisterEventNotification_nl();
      }

      CFRunLoopPerformBlock(v9, *MEMORY[0x29EDB8FC0], v13);
      CFRunLoopWakeUp(*(this + 15));
      CFRelease(*(this + 15));
      *(this + 15) = 0;
    }

    v10 = *(this + 16);
    if (v10)
    {
      dispatch_async(v10, v13);
      dispatch_release(*(this + 16));
      *(this + 16) = 0;
    }

    v11 = v7 ^ 1;
    if (a2)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      pthread_mutex_unlock((this + 16));
      dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v6);
      pthread_mutex_lock((this + 16));
    }

LABEL_25:
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "deregisterEventNotification_nl";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: -\n", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void IOACIPCControlClass::setNotificationPort(IOACIPCControlClass *this)
{
  if (!*(this + 13))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 13) = v2;
    if (!v2)
    {
      IOACIPCControlClass::setNotificationPort();
    }

    if (*(this + 11))
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v2);
      *(this + 14) = RunLoopSource;
      CFRunLoopAddSource(*(this + 11), RunLoopSource, *MEMORY[0x29EDB8FC0]);
    }

    v4 = *(this + 12);
    if (v4)
    {
      v5 = *(this + 13);

      IONotificationPortSetDispatchQueue(v5, v4);
    }
  }
}

void IOACIPCControlClass::clearNotificationPort(IOACIPCControlClass *this)
{
  v3 = (this + 104);
  v2 = *(this + 13);
  if (v2)
  {
    if (*(this + 11))
    {
      CFRunLoopRemoveSource(*(this + 11), *(this + 14), *MEMORY[0x29EDB8FC0]);
      v2 = *(this + 13);
    }

    IONotificationPortDestroy(v2);
    *v3 = 0;
    v3[1] = 0;
  }
}

void IOACIPCControlClass::setEventNotificationPort(IOACIPCControlClass *this)
{
  if (!*(this + 17))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 17) = v2;
    if (!v2)
    {
      IOACIPCControlClass::setEventNotificationPort();
    }

    if (*(this + 15))
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v2);
      *(this + 18) = RunLoopSource;
      CFRunLoopAddSource(*(this + 15), RunLoopSource, *MEMORY[0x29EDB8FC0]);
    }

    v4 = *(this + 16);
    if (v4)
    {
      v5 = *(this + 17);

      IONotificationPortSetDispatchQueue(v5, v4);
    }
  }
}

void IOACIPCControlClass::clearEventNotificationPort(IOACIPCControlClass *this)
{
  v2 = (this + 136);
  v1 = *(this + 17);
  if (v1)
  {
    v4 = *(this + 15);
    v5 = *(this + 18);
    v6 = MEMORY[0x29EDCA5F8];
    *v2 = 0;
    v2[1] = 0;
    block[0] = v6;
    block[1] = 0x40000000;
    block[2] = ___ZN19IOACIPCControlClass26clearEventNotificationPortEv_block_invoke;
    block[3] = &__block_descriptor_tmp;
    block[4] = v4;
    block[5] = v5;
    block[6] = v1;
    if (v4)
    {
      if (*(this + 16))
      {
        IOACIPCControlClass::clearEventNotificationPort();
      }

      CFRunLoopPerformBlock(v4, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 15));
    }

    v7 = *(this + 16);
    if (v7)
    {
      if (*(this + 15))
      {
        IOACIPCControlClass::clearEventNotificationPort();
      }

      dispatch_async(v7, block);
    }
  }
}

void ___ZN19IOACIPCControlClass26clearEventNotificationPortEv_block_invoke(__CFRunLoop **a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRunLoopRemoveSource(v2, a1[5], *MEMORY[0x29EDB8FC0]);
  }

  v3 = a1[6];

  IONotificationPortDestroy(v3);
}

uint64_t IOACIPCControlClass::open(IOACIPCControlClass *this, __CFRunLoop *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "open";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: \n", &v7, 0xCu);
  }

  v4 = IOACIPCControlClass::open_nl(this, a2, 0);
  pthread_mutex_unlock((this + 16));
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOACIPCControlClass::open_nl(IOACIPCControlClass *this, __CFRunLoop *a2, NSObject *a3)
{
  result = 0;
  outputCnt = 0;
  v8 = 0;
  if ((*(this + 172) & 1) == 0)
  {
    v5 = *(this + 20);
    if (v5)
    {
      result = IOServiceOpen(v5, *MEMORY[0x29EDCA6B0], 0, this + 42);
      if (!result)
      {
        result = IOConnectCallScalarMethod(*(this + 42), 0, &v8, 1u, 0, &outputCnt);
        if (!result)
        {
          *(this + 172) = 1;
          if (a2)
          {
            if (a3)
            {
              IOACIPCControlClass::open_nl();
            }

            *(this + 11) = a2;
            CFRetain(a2);
          }

          else if (a3)
          {
            *(this + 12) = a3;
            dispatch_retain(a3);
          }

          IOACIPCControlClass::setNotificationPort(this);
          return 0;
        }
      }
    }

    else
    {
      return 3758096385;
    }
  }

  return result;
}

uint64_t IOACIPCControlClass::open(IOACIPCControlClass *this, NSObject *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "open";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: \n", &v7, 0xCu);
  }

  v4 = IOACIPCControlClass::open_nl(this, 0, a2);
  pthread_mutex_unlock((this + 16));
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOACIPCControlClass::close(IOACIPCControlClass *this)
{
  v7 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "close";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: \n", &v5, 0xCu);
  }

  v2 = IOACIPCControlClass::close_nl(this);
  pthread_mutex_unlock((this + 16));
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t IOACIPCControlClass::readLogsAsync(IOACIPCControlClass *this, void *a2, unsigned int a3, unsigned int a4, void (*a5)(void *, int, void *), void *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v12;
  v24 = v12;
  *reference = v12;
  v22 = v12;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 4) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "readLogsAsync";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    *&buf[22] = 1024;
    v20 = a3;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  v13 = *(this + 13);
  if (v13)
  {
    *buf = a2;
    *&buf[8] = a3;
    *&buf[16] = a4;
    reference[1] = a5;
    *&v22 = a6;
    v14 = *(this + 42);
    MachPort = IONotificationPortGetMachPort(v13);
    v16 = IOConnectCallAsyncScalarMethod(v14, 2u, MachPort, reference, 3u, buf, 3u, 0, 0);
  }

  else
  {
    v16 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "readLogsAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t IOACIPCControlClass::triggerTrap(IOACIPCControlClass *this)
{
  pthread_mutex_lock((this + 16));
  v2 = IOConnectCallScalarMethod(*(this + 42), 4u, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  return v2;
}

uint64_t IOACIPCControlClass::collectSnapshotAsync(IOACIPCControlClass *this, void *a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v10;
  v23 = v10;
  *reference = v10;
  v21 = v10;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "collectSnapshotAsync";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  v11 = *(this + 13);
  if (v11)
  {
    *buf = a2;
    *&buf[8] = a3;
    reference[1] = a4;
    *&v21 = a5;
    v12 = *(this + 42);
    MachPort = IONotificationPortGetMachPort(v11);
    v14 = IOConnectCallAsyncScalarMethod(v12, 5u, MachPort, reference, 3u, buf, 2u, 0, 0);
  }

  else
  {
    v14 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "collectSnapshotAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t IOACIPCControlClass::registerEventNotification(uint64_t a1, const void *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 16));
  v6 = IOACIPCControlClass::registerEventNotification_nl(a1, a2, 0, a3);
  pthread_mutex_unlock((a1 + 16));
  return v6;
}

uint64_t IOACIPCControlClass::registerEventNotification_nl(uint64_t a1, const void *a2, NSObject *a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80))
  {
    if (*(a1 + 160))
    {
      v5 = 3758097093;
      if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "registerEventNotification_nl";
        _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: a notification block is already registered. deregister it before registering a new block", buf, 0xCu);
        v5 = 3758097093;
      }
    }

    else if (a4)
    {
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZN19IOACIPCControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjPvS4_E_block_invoke;
      aBlock[3] = &unk_29EE82368;
      aBlock[4] = a4;
      *(a1 + 160) = _Block_copy(aBlock);
      if (a2)
      {
        if (a3)
        {
          IOACIPCControlClass::registerEventNotification_nl();
        }

        *(a1 + 120) = a2;
        CFRetain(a2);
      }

      else if (a3)
      {
        *(a1 + 128) = a3;
        dispatch_retain(a3);
      }

      IOACIPCControlClass::setEventNotificationPort(a1);
      v5 = IOServiceAddInterestNotification(*(a1 + 136), *(a1 + 80), "IOGeneralInterest", IOACIPCControlClass::generalInterestCallback, *(a1 + 160), (a1 + 152));
      if (v5)
      {
        if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v12 = "registerEventNotification_nl";
          v13 = 1024;
          v14 = v5;
          _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: could not add interest notification on service: %#x\n", buf, 0x12u);
        }

        _Block_release(*(a1 + 160));
        *(a1 + 160) = 0;
        v5 = 3758097084;
      }
    }

    else
    {
      v5 = 3758097090;
      if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "registerEventNotification_nl";
        _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: block must be provided\n", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = 3758097136;
    if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "registerEventNotification_nl";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: service is NULL - must successfully start() first\n", buf, 0xCu);
      v5 = 3758097136;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t IOACIPCControlClass::registerEventNotification(uint64_t a1, NSObject *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 16));
  v6 = IOACIPCControlClass::registerEventNotification_nl(a1, 0, a2, a3);
  pthread_mutex_unlock((a1 + 16));
  return v6;
}

uint64_t ___ZN19IOACIPCControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjPvS4_E_block_invoke(uint64_t result, uint64_t a2, int a3, unsigned int *a4)
{
  if (a3 == -469794560 && a4 != 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, *a4, *(a4 + 1), *(a4 + 2));
    }
  }

  return result;
}

void IOACIPCControlClass::generalInterestCallback(IOACIPCControlClass *this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  _Block_copy(this);
  (*(this + 2))(this, a2, a3, a4);

  _Block_release(this);
}

uint64_t IOACIPCControlClass::deregisterEventNotification(IOACIPCControlClass *this, NSObject *a2)
{
  pthread_mutex_lock((this + 16));
  IOACIPCControlClass::deregisterEventNotification_nl(this, a2);

  return pthread_mutex_unlock((this + 16));
}

void ___ZN19IOACIPCControlClass30deregisterEventNotification_nlEP16dispatch_group_s_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);

    dispatch_release(v4);
  }
}

BOOL IOACIPCControlClass::getLogInternalBufferSize(IOACIPCControlClass *this, unsigned int *a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = *(this + 20);
    if (v3)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v3, @"currentLogSnapshotBufferSize", *MEMORY[0x29EDB8ED8], 0);
      if (CFProperty)
      {
        v6 = CFProperty;
        v2 = CFNumberGetValue(CFProperty, kCFNumberSInt32Type, a2) != 0;
        CFRelease(v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t IOACIPCControlClass::loggerTune(IOACIPCControlClass *this, unsigned int a2, unsigned int a3, void *a4, void *a5)
{
  v17 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 4) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136316162;
    *&v13[4] = "loggerTune";
    *&v13[12] = 1024;
    *&v13[14] = a2;
    *&v13[18] = 1024;
    *&v13[20] = a3;
    *v14 = 2048;
    *&v14[2] = a4;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCControlClass::%s: subsystem %u, index %u, arg1 %p, arg2 %p\n", v13, 0x2Cu);
  }

  *v13 = a2;
  *&v13[8] = a3;
  *&v13[16] = a4;
  *v14 = a5;
  v10 = IOConnectCallScalarMethod(*(this + 42), 3u, v13, 4u, 0, 0);
  pthread_mutex_unlock((this + 16));
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

BOOL IOACIPCControlClass::getLastKnownBootStage(IOACIPCControlClass *this, unsigned int *a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = *(this + 20);
    if (v3)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v3, @"bootstage", *MEMORY[0x29EDB8ED8], 0);
      if (CFProperty)
      {
        v6 = CFProperty;
        v2 = CFNumberGetValue(CFProperty, kCFNumberSInt32Type, a2) != 0;
        CFRelease(v6);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

const char *getACIPCErrorTypeString(unsigned int a1)
{
  if (a1 > 0x39)
  {
    return "invalid";
  }

  else
  {
    return acipcErrorTypeStrings[a1];
  }
}

const char *getACIPCDirectionString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "invalid";
  }

  else
  {
    return acipcDirectionStrings[a1];
  }
}

const char *getACIPCLinkStateString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "invalid";
  }

  else
  {
    return acipcLinkStateStrings[a1];
  }
}

const char *getACIPCAERErrorTypeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "invalid";
  }

  else
  {
    return acipcAERErrorTypeStrings[a1];
  }
}

void IOACIPCClass::IOACIPCClass(IOACIPCClass *this)
{
  v4 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1E5BE98;
  *(this + 2) = 1;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 176) = 0;
  v3.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v3.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init((this + 16), &v3);
  v2 = *MEMORY[0x29EDCA608];
}

void IOACIPCClass::~IOACIPCClass(IOACIPCClass *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = &unk_2A1E5BE98;
  *this = &unk_2A1E5BE98;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "~IOACIPCClass";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: \n", &v4, 0xCu);
    v2 = *this;
  }

  v2[4](this, 0);
  pthread_mutex_destroy((this + 16));
  v3 = *MEMORY[0x29EDCA608];
}

{
  IOACIPCClass::~IOACIPCClass(this);

  JUMPOUT(0x29C277BF0);
}

void sub_29799B30C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t IOACIPCClass::start(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  pthread_mutex_lock((a1 + 16));
  started = IOACIPCClass::start_nl(a1, a2, a3, 0, a4, a5, a6);
  pthread_mutex_unlock((a1 + 16));
  return started;
}

uint64_t IOACIPCClass::start_nl(uint64_t a1, const void *a2, CFTypeRef cf, dispatch_object_t object, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = *MEMORY[0x29EDCA608];
  v14 = *(a1 + 80);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (cf)
  {
    if (object)
    {
      IOACIPCClass::start_nl();
    }

    *(a1 + 80) = cf;
    CFRetain(cf);
  }

  else if (object)
  {
    *(a1 + 88) = object;
    dispatch_retain(object);
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3002000000;
  v42[3] = __Block_byref_object_copy_;
  v42[4] = __Block_byref_object_dispose_;
  v42[5] = 0xAAAAAA0000000000;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke;
  aBlock[3] = &unk_29EE825E0;
  aBlock[4] = v42;
  aBlock[5] = a1;
  *(a1 + 152) = _Block_copy(aBlock);
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v40[2] = ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_2;
  v40[3] = &unk_29EE82608;
  v40[4] = v42;
  *(a1 + 160) = _Block_copy(v40);
  if (a7)
  {
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 0x40000000;
    v39[2] = ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_3;
    v39[3] = &unk_29EE82630;
    v39[4] = a7;
    *(a1 + 136) = _Block_copy(v39);
  }

  IOACIPCClass::setNotificationPort(a1);
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 0x40000000;
  v38[2] = ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_4;
  v38[3] = &unk_29EE82658;
  v38[4] = a5;
  *(a1 + 120) = _Block_copy(v38);
  CFRetain(a2);
  v16 = IOServiceAddMatchingNotification(*(a1 + 96), "IOServiceFirstMatch", a2, IOACIPCClass::interfaceMatched, *(a1 + 120), (a1 + 112));
  if (!v16)
  {
    v19 = *(a1 + 112);
    IOObjectRetain(v19);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_5;
    block[3] = &unk_29EE82680;
    block[4] = v38;
    v37 = v19;
    v20 = *(a1 + 80);
    if (v20)
    {
      if (*(a1 + 88))
      {
        v29 = "!fQueue";
        v30 = 283;
        goto LABEL_42;
      }

      CFRunLoopPerformBlock(v20, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(a1 + 80));
    }

    v21 = *(a1 + 88);
    if (!v21)
    {
      goto LABEL_22;
    }

    if (!*(a1 + 80))
    {
      dispatch_async(v21, block);
LABEL_22:
      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 0x40000000;
      v35[2] = ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_15;
      v35[3] = &unk_29EE826A8;
      v35[4] = a6;
      *(a1 + 128) = _Block_copy(v35);
      CFRetain(a2);
      v22 = IOServiceAddMatchingNotification(*(a1 + 96), "IOServiceTerminate", a2, IOACIPCClass::interfaceMatched, *(a1 + 128), (a1 + 116));
      if (v22)
      {
        if ((*(a1 + 8) & 2) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 136315394;
        v44 = "start_nl";
        v45 = 1024;
        v46 = v22;
        v17 = MEMORY[0x29EDCA988];
        v18 = "IOACIPCClass::%s: IOServiceAddMatchingNotification (kIOTerminatedNotification) failed, ret = 0x%08x";
        goto LABEL_26;
      }

      v26 = *(a1 + 116);
      IOObjectRetain(v26);
      v33[0] = MEMORY[0x29EDCA5F8];
      v33[1] = 0x40000000;
      v33[2] = ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_2_18;
      v33[3] = &unk_29EE826D0;
      v33[4] = v35;
      v34 = v26;
      v27 = *(a1 + 80);
      if (v27)
      {
        if (*(a1 + 88))
        {
          v31 = "!fQueue";
          v32 = 340;
          goto LABEL_45;
        }

        CFRunLoopPerformBlock(v27, *MEMORY[0x29EDB8FC0], v33);
        CFRunLoopWakeUp(*(a1 + 80));
      }

      v28 = *(a1 + 88);
      if (!v28)
      {
LABEL_38:
        v23 = 1;
        goto LABEL_28;
      }

      if (!*(a1 + 80))
      {
        dispatch_async(v28, v33);
        goto LABEL_38;
      }

      v31 = "!fRunLoopRef";
      v32 = 346;
LABEL_45:
      __assert_rtn("start_nl", "IOACIPCClass.cpp", v32, v31);
    }

    v29 = "!fRunLoopRef";
    v30 = 289;
LABEL_42:
    __assert_rtn("start_nl", "IOACIPCClass.cpp", v30, v29);
  }

  if ((*(a1 + 8) & 2) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  *buf = 136315394;
  v44 = "start_nl";
  v45 = 1024;
  v46 = v16;
  v17 = MEMORY[0x29EDCA988];
  v18 = "IOACIPCClass::%s: IOServiceAddMatchingNotification (kIOFirstMatchNotification) failed, ret = 0x%08x";
LABEL_26:
  _os_log_impl(&dword_297997000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x12u);
LABEL_27:
  v23 = 0;
LABEL_28:
  if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "start_nl";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: --done\n", buf, 0xCu);
  }

  _Block_object_dispose(v42, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t IOACIPCClass::start(uint64_t a1, const void *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  pthread_mutex_lock((a1 + 16));
  started = IOACIPCClass::start_nl(a1, a2, 0, a3, a4, a5, a6);
  pthread_mutex_unlock((a1 + 16));
  return started;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 44) = *(a2 + 44);
  *(result + 40) = v2;
  return result;
}

void ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 40));
  v8 = *(*(a1 + 32) + 8);
  if (*(v8 + 44) == 1)
  {

    os_unfair_lock_unlock((v8 + 40));
  }

  else
  {
    os_unfair_lock_lock(v7 + 36);
    v9 = (*(*&v7->_os_unfair_lock_opaque + 232))(v7, a3, a4);
    os_unfair_lock_unlock(v7 + 36);
    os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 40));
    if (v9)
    {
      v9[2](v9, a3, a4);

      _Block_release(v9);
    }
  }
}

void ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 40));
  *(*(*(a1 + 32) + 8) + 44) = 1;
  v2 = (*(*(a1 + 32) + 8) + 40);

  os_unfair_lock_unlock(v2);
}

uint64_t ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_3(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = a3[2];
  v5 = a3[4];
  return (*(*(a1 + 32) + 16))();
}

void IOACIPCClass::setNotificationPort(IOACIPCClass *this)
{
  if (!*(this + 12))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 12) = v2;
    if (!v2)
    {
      IOACIPCClass::setNotificationPort();
    }

    if (*(this + 10))
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v2);
      *(this + 13) = RunLoopSource;
      CFRunLoopAddSource(*(this + 10), RunLoopSource, *MEMORY[0x29EDB8FC0]);
    }

    v4 = *(this + 11);
    if (v4)
    {
      v5 = *(this + 12);

      IONotificationPortSetDispatchQueue(v5, v4);
    }
  }
}

uint64_t ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_4(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      if (!v6)
      {
        (*(*(a1 + 32) + 16))();
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
      --v6;
    }

    while (result);
  }

  return result;
}

void IOACIPCClass::interfaceMatched(IOACIPCClass *this, void *a2)
{
  _Block_copy(this);
  (*(this + 2))(this, a2);

  _Block_release(this);
}

uint64_t ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  return IOObjectRelease(v3);
}

uint64_t ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_15(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      if (!v6)
      {
        (*(*(a1 + 32) + 16))();
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
      --v6;
    }

    while (result);
  }

  return result;
}

uint64_t ___ZN12IOACIPCClass8start_nlEPK14__CFDictionaryP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES8_U13block_pointerFvjjiE_block_invoke_2_18(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  return IOObjectRelease(v3);
}

uint64_t IOACIPCClass::stop(IOACIPCClass *this, NSObject *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "stop";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: \n", buf, 0xCu);
  }

  if (*(this + 10) || *(this + 11))
  {
    IOACIPCClass::close_nl(this);
    IOACIPCClass::clearIterators(this);
    IOACIPCClass::clearNotificationPort(this);
    v4 = a2;
    if (!a2)
    {
      if (*(this + 11))
      {
        v5 = 0;
        v4 = 0;
        goto LABEL_10;
      }

      v4 = dispatch_group_create();
      if (!v4)
      {
        v5 = 0;
        goto LABEL_10;
      }
    }

    dispatch_retain(v4);
    dispatch_group_enter(v4);
    v5 = 1;
LABEL_10:
    v6 = *(this + 20);
    if (v6)
    {
      (*(v6 + 16))();
      _Block_release(*(this + 20));
      *(this + 20) = 0;
    }

    v7 = *(this + 17);
    if (v7)
    {
      _Block_release(v7);
      *(this + 17) = 0;
    }

    v8 = *(this + 19);
    *(this + 19) = 0;
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 0x40000000;
    v15[2] = ___ZN12IOACIPCClass4stopEP16dispatch_group_s_block_invoke;
    v15[3] = &unk_29EE826F8;
    v9 = *(this + 120);
    *(this + 15) = 0;
    *(this + 16) = 0;
    v16 = v9;
    v17 = v8;
    v18 = v4;
    v10 = *(this + 10);
    if (v10)
    {
      if (*(this + 11))
      {
        IOACIPCClass::stop();
      }

      CFRunLoopPerformBlock(v10, *MEMORY[0x29EDB8FC0], v15);
      CFRunLoopWakeUp(*(this + 10));
      CFRelease(*(this + 10));
      *(this + 10) = 0;
    }

    v11 = *(this + 11);
    if (v11)
    {
      dispatch_async(v11, v15);
      dispatch_release(*(this + 11));
      *(this + 11) = 0;
    }

    pthread_mutex_unlock((this + 16));
    v12 = v5 ^ 1;
    if (a2)
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v4);
    }

    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "stop";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: --done\n", buf, 0xCu);
    }

    goto LABEL_30;
  }

  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "stop";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: already stopped, returning true\n", buf, 0xCu);
  }

  pthread_mutex_unlock((this + 16));
LABEL_30:
  v13 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t IOACIPCClass::close_nl(IOACIPCClass *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(this + 176))
  {
    *(this + 176) = 0;
    v2 = *(this + 43);
    v3 = (*(*this + 224))(this, 1);
    v4 = IOConnectCallScalarMethod(v2, v3, 0, 0, 0, 0);
    v5 = *(this + 43);
    if (v5)
    {
      IOServiceClose(v5);
      *(this + 43) = 0;
    }

    v6 = *(this + 42);
    if (v6)
    {
      IOObjectRelease(v6);
      *(this + 42) = 0;
    }
  }

  else
  {
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "close_nl";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: not open, return success\n", &v9, 0xCu);
    }

    v4 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOACIPCClass::clearIterators(IOACIPCClass *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 28) = 0;
  }

  result = *(this + 29);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 29) = 0;
  }

  return result;
}

void IOACIPCClass::clearNotificationPort(IOACIPCClass *this)
{
  v2 = (this + 96);
  v1 = *(this + 12);
  if (v1)
  {
    v4 = *(this + 10);
    v5 = *(this + 13);
    v6 = MEMORY[0x29EDCA5F8];
    *v2 = 0;
    v2[1] = 0;
    block[0] = v6;
    block[1] = 0x40000000;
    block[2] = ___ZN12IOACIPCClass21clearNotificationPortEv_block_invoke;
    block[3] = &__block_descriptor_tmp_22;
    block[4] = v4;
    block[5] = v5;
    block[6] = v1;
    if (v4)
    {
      if (*(this + 11))
      {
        IOACIPCClass::clearNotificationPort();
      }

      CFRunLoopPerformBlock(v4, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 10));
    }

    v7 = *(this + 11);
    if (v7)
    {
      if (*(this + 10))
      {
        IOACIPCClass::clearNotificationPort();
      }

      dispatch_async(v7, block);
    }
  }
}

void ___ZN12IOACIPCClass4stopEP16dispatch_group_s_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = a1[7];

    dispatch_release(v6);
  }
}

void ___ZN12IOACIPCClass21clearNotificationPortEv_block_invoke(__CFRunLoop **a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRunLoopRemoveSource(v2, a1[5], *MEMORY[0x29EDB8FC0]);
  }

  v3 = a1[6];

  IONotificationPortDestroy(v3);
}

const void *IOACIPCClass::getTransferRingInfo(IOACIPCClass *this, io_registry_entry_t entry)
{
  v10 = *MEMORY[0x29EDCA608];
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"AppleConvergedIPCTransferRingProperties", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    if ((*(this + 8) & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "getTransferRingInfo";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: TR properties are not available\n", &v8, 0xCu);
    }

    goto LABEL_10;
  }

  v4 = CFProperty;
  v5 = CFGetTypeID(CFProperty);
  if (v5 != CFArrayGetTypeID())
  {
    if ((*(this + 8) & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "getTransferRingInfo";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: TR properties has invalid type\n", &v8, 0xCu);
    }

    CFRelease(v4);
LABEL_10:
    v4 = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

const void *IOACIPCClass::getCompletionRingInfo(IOACIPCClass *this, io_registry_entry_t entry)
{
  v10 = *MEMORY[0x29EDCA608];
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"AppleConvergedIPCCompletionRingProperties", *MEMORY[0x29EDB8ED8], 0);
  if (!CFProperty)
  {
    if ((*(this + 8) & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "getCompletionRingInfo";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: CR properties are not available\n", &v8, 0xCu);
    }

    goto LABEL_10;
  }

  v4 = CFProperty;
  v5 = CFGetTypeID(CFProperty);
  if (v5 != CFArrayGetTypeID())
  {
    if ((*(this + 8) & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "getCompletionRingInfo";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: CR properties has invalid type\n", &v8, 0xCu);
    }

    CFRelease(v4);
LABEL_10:
    v4 = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOACIPCClass::open(IOACIPCClass *this, io_service_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "open";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: \n", &v7, 0xCu);
  }

  v4 = IOACIPCClass::open_nl(this, a2);
  pthread_mutex_unlock((this + 16));
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOACIPCClass::open_nl(io_connect_t *this, io_service_t a2)
{
  v2 = 0;
  outputCnt = 0;
  v11 = 0;
  if ((this[44] & 1) == 0)
  {
    if (IOACIPCClass::setUpNotificationCallback(this, a2))
    {
      v5 = IOServiceOpen(a2, *MEMORY[0x29EDCA6B0], 0, this + 43);
      if (v5)
      {
        v2 = v5;
      }

      else
      {
        v9 = this[43];
        v10 = (*(*this + 224))(this, 0);
        v2 = IOConnectCallScalarMethod(v9, v10, &v11, 1u, 0, &outputCnt);
        if (!v2)
        {
          *(this + 176) = 1;
          return v2;
        }
      }
    }

    else
    {
      v2 = 3758097112;
    }

    v6 = this[43];
    if (v6)
    {
      IOServiceClose(v6);
      this[43] = 0;
    }

    v7 = this[42];
    if (v7)
    {
      IOObjectRelease(v7);
      this[42] = 0;
    }
  }

  return v2;
}

BOOL IOACIPCClass::setUpNotificationCallback(IOACIPCClass *this, io_service_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = IOServiceAddInterestNotification(*(this + 12), a2, "IOGeneralInterest", IOACIPCClass::notificationCallback, *(this + 19), this + 42);
  if (v3 && (*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "setUpNotificationCallback";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: Could not add interest notification on service: %#x\n", &v6, 0x12u);
  }

  result = v3 == 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOACIPCClass::cleanUpNotificationCallback(IOACIPCClass *this)
{
  result = *(this + 42);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 42) = 0;
  }

  return result;
}

uint64_t IOACIPCClass::close(IOACIPCClass *this)
{
  v7 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "close";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: \n", &v5, 0xCu);
  }

  v2 = IOACIPCClass::close_nl(this);
  pthread_mutex_unlock((this + 16));
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void *IOACIPCClass::copyNotificationHandler(IOACIPCClass *this, int a2, void *a3)
{
  if (a2 == -469794559 && (v3 = *(this + 17)) != 0)
  {
    return _Block_copy(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t IOACIPCClass::io(uint64_t a1, unsigned int a2, void *a3, unsigned int *a4, unsigned int a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v26 = 0;
  *input = 0u;
  v25 = 0u;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a4;
    *buf = 136315906;
    *&buf[4] = "io";
    v18 = 1024;
    v19 = a2;
    v20 = 2048;
    v21 = a3;
    v22 = 1024;
    v23 = v10;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: trIndex %u, buff %p, size %u\n", buf, 0x22u);
  }

  input[0] = a2;
  input[1] = a5;
  v26 = 0;
  v25 = 0uLL;
  v11 = *a4;
  *buf = v11;
  v12 = *(a1 + 172);
  v13 = (*(*a1 + 224))(a1, 2);
  if (a5 == 1)
  {
    v14 = IOConnectCallMethod(v12, v13, input, 5u, a3, v11, 0, 0, 0, 0);
  }

  else
  {
    v14 = IOConnectCallMethod(v12, v13, input, 5u, 0, 0, 0, 0, a3, buf);
    if (!v14)
    {
      *a4 = *buf;
    }
  }

  pthread_mutex_unlock((a1 + 16));
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t IOACIPCClass::ioAsync(IOACIPCClass *this, unsigned int a2, uint64_t a3, unsigned int a4, void *a5, unsigned int a6, void (*a7)(void *, int, void *), void *a8)
{
  v42 = *MEMORY[0x29EDCA608];
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v16;
  v41 = v16;
  *reference = v16;
  v39 = v16;
  v37 = 0;
  *input = 0u;
  v36 = 0u;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v24 = "ioAsync";
    v25 = 1024;
    v26 = a2;
    v27 = 2048;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    v31 = 2048;
    v32 = a5;
    v33 = 1024;
    v34 = a6;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: trIndex %u, buff %p, size %u, footer %p, size %u\n", buf, 0x32u);
  }

  if (*(this + 12))
  {
    input[0] = a3;
    input[1] = a4;
    *&v36 = a5;
    *(&v36 + 1) = a6;
    v37 = a2;
    reference[1] = a7;
    *&v39 = a8;
    v17 = *(this + 43);
    v18 = (*(*this + 224))(this, 2);
    MachPort = IONotificationPortGetMachPort(*(this + 12));
    v20 = IOConnectCallAsyncScalarMethod(v17, v18, MachPort, reference, 3u, input, 5u, 0, 0);
  }

  else
  {
    v20 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "ioAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t IOACIPCClass::sendImage(IOACIPCClass *this, const void *a2, unsigned int a3, unsigned int *a4, unsigned int a5)
{
  input[3] = *MEMORY[0x29EDCA608];
  outputCnt = 2;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "sendImage";
    v19 = 2048;
    *v20 = a2;
    *&v20[8] = 1024;
    *&v20[10] = a3;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  input[0] = 0;
  input[1] = 0;
  input[2] = a5;
  output = 0;
  v26 = 0;
  v10 = *(this + 43);
  v11 = (*(*this + 224))(this, 3);
  v12 = IOConnectCallMethod(v10, v11, input, 3u, a2, a3, &output, &outputCnt, 0, 0);
  if (!v12)
  {
    *a4 = output;
    v12 = v26;
  }

  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a4;
    *buf = 136316162;
    v18 = "sendImage";
    v19 = 1024;
    *v20 = v12;
    *&v20[4] = 2048;
    *&v20[6] = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = v13;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: ret 0x%x, buff %p, size %u, cookie %u\n", buf, 0x28u);
  }

  pthread_mutex_unlock((this + 16));
  v14 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t IOACIPCClass::sendImageAsync(IOACIPCClass *this, const void *a2, unsigned int a3, void (*a4)(void *, int, void *, void *), void *a5, unsigned int a6)
{
  v27 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v12;
  v26 = v12;
  *reference = v12;
  v24 = v12;
  outputCnt = 2;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "sendImageAsync";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    *&buf[22] = 1024;
    v21 = a3;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  if (*(this + 12))
  {
    *buf = a2;
    *&buf[8] = a3;
    *&buf[16] = a6;
    output[0] = 0;
    output[1] = 0;
    reference[1] = a4;
    *&v24 = a5;
    v13 = *(this + 43);
    v14 = (*(*this + 224))(this, 3);
    MachPort = IONotificationPortGetMachPort(*(this + 12));
    v16 = IOConnectCallAsyncScalarMethod(v13, v14, MachPort, reference, 3u, buf, 3u, output, &outputCnt);
  }

  else
  {
    v16 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "sendImageAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t IOACIPCClass::generateNonce(IOACIPCClass *this)
{
  v11 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "generateNonce";
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: \n", &v7, 0xCu);
  }

  v2 = *(this + 43);
  v3 = (*(*this + 224))(this, 12);
  v4 = IOConnectCallScalarMethod(v2, v3, 0, 0, 0, 0);
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "generateNonce";
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: ret 0x%x\n", &v7, 0x12u);
  }

  pthread_mutex_unlock((this + 16));
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t IOACIPCClass::readRegister(IOACIPCClass *this, unsigned int a2, void *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a4;
    *buf = 136315906;
    *&buf[4] = "readRegister";
    v16 = 1024;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: reg %u, buff %p, size %u\n", buf, 0x22u);
  }

  v14 = *a4;
  *buf = a2;
  v9 = *(this + 43);
  v10 = (*(*this + 224))(this, 4);
  v11 = IOConnectCallMethod(v9, v10, buf, 1u, 0, 0, 0, 0, a3, &v14);
  if (!v11)
  {
    *a4 = v14;
  }

  pthread_mutex_unlock((this + 16));
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t IOACIPCClass::writeRegister(IOACIPCClass *this, unsigned int a2, void *a3, unsigned int a4)
{
  v20 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "writeRegister";
    v14 = 1024;
    v15 = a2;
    v16 = 2048;
    v17 = a3;
    v18 = 1024;
    v19 = a4;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: reg %u, buff %p, size %u\n", buf, 0x22u);
  }

  *buf = a2;
  v8 = *(this + 43);
  v9 = (*(*this + 224))(this, 13);
  v10 = IOConnectCallMethod(v8, v9, buf, 1u, a3, a4, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t IOACIPCClass::queryTransferCredit(IOACIPCClass *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x29EDCA608];
  output = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  pthread_mutex_lock((this + 16));
  input[0] = a2;
  *a3 = 0;
  v6 = *(this + 43);
  v7 = (*(*this + 224))(this, 5);
  v8 = IOConnectCallMethod(v6, v7, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = outputCnt == 1;
  }

  if (v9)
  {
    *a3 = output;
  }

  pthread_mutex_unlock((this + 16));
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t IOACIPCClass::getIOMMUPageSize(IOACIPCClass *this, unsigned int *a2)
{
  output[1] = *MEMORY[0x29EDCA608];
  output[0] = 0xAAAAAAAAAAAAAAAALL;
  outputCnt = 1;
  pthread_mutex_lock((this + 16));
  *a2 = 0;
  v4 = *(this + 43);
  v5 = (*(*this + 224))(this, 6);
  v6 = IOConnectCallMethod(v4, v5, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = outputCnt == 1;
  }

  if (v7)
  {
    *a2 = output[0];
  }

  pthread_mutex_unlock((this + 16));
  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t IOACIPCClass::mapMemory(IOACIPCClass *this, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  input[7] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  input[3] = a5;
  input[4] = a6;
  input[5] = a7;
  input[6] = a8;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "mapMemory";
    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = a4;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u, size %u\n", buf, 0x18u);
  }

  pthread_mutex_lock((this + 16));
  v11 = *(this + 43);
  v12 = (*(*this + 224))(this, 7);
  v13 = IOConnectCallMethod(v11, v12, input, 7u, 0, 0, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t IOACIPCClass::mapMemoryAsync(IOACIPCClass *this, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, void (*a9)(void *, int), void *a10)
{
  v32 = *MEMORY[0x29EDCA608];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v11;
  v31 = v11;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  input[3] = a5;
  input[4] = a6;
  input[5] = a7;
  input[6] = a8;
  reference[1] = a9;
  v28 = a10;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "mapMemoryAsync";
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u, size %u\n", buf, 0x18u);
  }

  pthread_mutex_lock((this + 16));
  if (*(this + 12))
  {
    v14 = *(this + 43);
    v15 = (*(*this + 224))(this, 7);
    MachPort = IONotificationPortGetMachPort(*(this + 12));
    v17 = IOConnectCallAsyncScalarMethod(v14, v15, MachPort, reference, 3u, input, 7u, 0, 0);
  }

  else
  {
    v17 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "mapMemoryAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t IOACIPCClass::unmapMemory(IOACIPCClass *this, unsigned int a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "unmapMemory";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u\n", buf, 0x12u);
  }

  pthread_mutex_lock((this + 16));
  v4 = *(this + 43);
  v5 = (*(*this + 224))(this, 8);
  v6 = IOConnectCallMethod(v4, v5, input, 1u, 0, 0, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t IOACIPCClass::unmapMemoryAsync(IOACIPCClass *this, unsigned int a2, void (*a3)(void *, int), void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v5;
  v22 = v5;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  input = a2;
  reference[1] = a3;
  v19 = a4;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "unmapMemoryAsync";
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u\n", buf, 0x12u);
  }

  pthread_mutex_lock((this + 16));
  if (*(this + 12))
  {
    v7 = *(this + 43);
    v8 = (*(*this + 224))(this, 8);
    MachPort = IONotificationPortGetMachPort(*(this + 12));
    v10 = IOConnectCallAsyncScalarMethod(v7, v8, MachPort, reference, 3u, &input, 1u, 0, 0);
  }

  else
  {
    v10 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "unmapMemoryAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t IOACIPCClass::updateMemory(IOACIPCClass *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v14 = "updateMemory";
    v15 = 1024;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u, prio -> %u, tc -> %u\n", buf, 0x1Eu);
  }

  pthread_mutex_lock((this + 16));
  v8 = *(this + 43);
  v9 = (*(*this + 224))(this, 9);
  v10 = IOConnectCallMethod(v8, v9, input, 3u, 0, 0, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t IOACIPCClass::updateMemoryAsync(IOACIPCClass *this, unsigned int a2, unsigned int a3, unsigned int a4, void (*a5)(void *, int), void *a6)
{
  v31 = *MEMORY[0x29EDCA608];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v7;
  v30 = v7;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  reference[1] = a5;
  v27 = a6;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "updateMemoryAsync";
    v19 = 1024;
    v20 = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u, prio -> %u, tc -> %u\n", buf, 0x1Eu);
  }

  pthread_mutex_lock((this + 16));
  if (*(this + 12))
  {
    v11 = *(this + 43);
    v12 = (*(*this + 224))(this, 9);
    MachPort = IONotificationPortGetMachPort(*(this + 12));
    v14 = IOConnectCallAsyncScalarMethod(v11, v12, MachPort, reference, 3u, input, 3u, 0, 0);
  }

  else
  {
    v14 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "updateMemoryAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t IOACIPCClass::notifyMemory(IOACIPCClass *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  input[3] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "notifyMemory";
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u\n", buf, 0x12u);
  }

  pthread_mutex_lock((this + 16));
  v6 = *(this + 43);
  v7 = (*(*this + 224))(this, 10);
  v8 = IOConnectCallMethod(v6, v7, input, 3u, 0, 0, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t IOACIPCClass::notifyMemoryAsync(IOACIPCClass *this, unsigned int a2, uint64_t a3, unsigned int a4, void (*a5)(void *, int), void *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v7;
  v24 = v7;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  reference[1] = a5;
  v21 = a6;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "notifyMemoryAsync";
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: region %u\n", buf, 0x12u);
  }

  pthread_mutex_lock((this + 16));
  if (*(this + 12))
  {
    v9 = *(this + 43);
    v10 = (*(*this + 224))(this, 10);
    MachPort = IONotificationPortGetMachPort(*(this + 12));
    v12 = IOConnectCallAsyncScalarMethod(v9, v10, MachPort, reference, 3u, input, 3u, 0, 0);
  }

  else
  {
    v12 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "notifyMemoryAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t IOACIPCClass::abortTransferRing(IOACIPCClass *this, unsigned int a2)
{
  input[1] = *MEMORY[0x29EDCA608];
  input[0] = a2;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "abortTransferRing";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: TR index %u\n", buf, 0x12u);
  }

  pthread_mutex_lock((this + 16));
  v4 = *(this + 43);
  v5 = (*(*this + 224))(this, 11);
  v6 = IOConnectCallMethod(v4, v5, input, 1u, 0, 0, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t IOACIPCClass::abortTransferRingAsync(IOACIPCClass *this, unsigned int a2, void (*a3)(void *, int), void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v5;
  v22 = v5;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  input = a2;
  reference[1] = a3;
  v19 = a4;
  if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "abortTransferRingAsync";
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: TR index %u\n", buf, 0x12u);
  }

  pthread_mutex_lock((this + 16));
  if (*(this + 12))
  {
    v7 = *(this + 43);
    v8 = (*(*this + 224))(this, 11);
    MachPort = IONotificationPortGetMachPort(*(this + 12));
    v10 = IOConnectCallAsyncScalarMethod(v7, v8, MachPort, reference, 3u, &input, 1u, 0, 0);
  }

  else
  {
    v10 = 3758097112;
    if ((*(this + 8) & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "abortTransferRingAsync";
      _os_log_impl(&dword_297997000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOACIPCClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 16));
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

void IOACIPCControlClass::clearEventNotificationPort()
{
  __assert_rtn("clearEventNotificationPort", "IOACIPCControlClass.cpp", 196, "!fEventQueue");
}

{
  __assert_rtn("clearEventNotificationPort", "IOACIPCControlClass.cpp", 202, "!fEventRunLoopRef");
}

void IOACIPCClass::clearNotificationPort()
{
  __assert_rtn("clearNotificationPort", "IOACIPCClass.cpp", 522, "!fQueue");
}

{
  __assert_rtn("clearNotificationPort", "IOACIPCClass.cpp", 528, "!fRunLoopRef");
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