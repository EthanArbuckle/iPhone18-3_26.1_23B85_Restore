uint64_t IOABPClass::readAsync(IOABPClass *this, uint64_t a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v10;
  v21 = v10;
  *reference = v10;
  v19 = v10;
  pthread_mutex_lock((this + 16));
  v11 = *(this + 12);
  if (v11)
  {
    input[0] = a2;
    input[1] = a3;
    reference[1] = a4;
    *&v19 = a5;
    v12 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v11);
    v14 = IOConnectCallAsyncScalarMethod(v12, 3u, MachPort, reference, 3u, input, 2u, 0, 0);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "readAsync");
    }

    pthread_mutex_unlock((this + 16));
    v14 = 3758097112;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t IOABPClass::writeAsync(IOABPClass *this, const void *a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v10;
  v21 = v10;
  *reference = v10;
  v19 = v10;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: buff %p, size %u\n", "writeAsync", a2, a3);
  }

  v11 = *(this + 12);
  if (v11)
  {
    input[0] = a2;
    input[1] = a3;
    reference[1] = a4;
    *&v19 = a5;
    v12 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v11);
    v14 = IOConnectCallAsyncScalarMethod(v12, 2u, MachPort, reference, 3u, input, 2u, 0, 0);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "writeAsync");
    }

    pthread_mutex_unlock((this + 16));
    v14 = 3758097112;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

void IOABPControlClass::generalInterestCallback(IOABPControlClass *this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  _Block_copy(this);
  (*(this + 2))(this, a2, a3, a4);

  _Block_release(this);
}

uint64_t ___ZN17IOABPControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sU13block_pointerFv12abpErrorTypePvS5_E_block_invoke(uint64_t result, uint64_t a2, int a3, unsigned int *a4)
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

uint64_t IOABPControlClass::readLogsAsync(IOABPControlClass *this, void *a2, unsigned int a3, unsigned int a4, void (*a5)(void *, int, void *), void *a6)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v12;
  v23 = v12;
  *reference = v12;
  v21 = v12;
  pthread_mutex_lock((this + 8));
  if ((*this & 4) != 0)
  {
    syslog(5, "IOABPControlClass::%s: buff %p, size %u\n", "readLogsAsync", a2, a3);
  }

  v13 = *(this + 12);
  if (v13)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    reference[1] = a5;
    *&v21 = a6;
    v14 = *(this + 40);
    MachPort = IONotificationPortGetMachPort(v13);
    v16 = IOConnectCallAsyncScalarMethod(v14, 2u, MachPort, reference, 3u, input, 3u, 0, 0);
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPControlClass::%s: no async port\n", "readLogsAsync");
    }

    pthread_mutex_unlock((this + 8));
    v16 = 3758097112;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

void IOABPControlClass::IOABPControlClass(IOABPControlClass *this)
{
  *this = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  pthread_mutex_init((this + 8), 0);
}

{
  *this = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 164) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  pthread_mutex_init((this + 8), 0);
}

void IOABPControlClass::~IOABPControlClass(IOABPControlClass *this)
{
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: \n", "~IOABPControlClass");
  }

  IOABPControlClass::stop(this);
  pthread_mutex_destroy((this + 8));
}

uint64_t IOABPControlClass::stop(IOABPControlClass *this)
{
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: \n", "stop");
  }

  IOABPControlClass::close_nl(this);
  IOABPControlClass::deregisterEventNotification_nl(this, 0);
  v2 = *(this + 18);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 18) = 0;
  }

  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: --done\n", "stop");
  }

  pthread_mutex_unlock((this + 8));
  return 1;
}

BOOL IOABPControlClass::start(IOABPControlClass *this)
{
  pthread_mutex_lock((this + 8));
  if (*(this + 18))
  {
    v2 = 1;
  }

  else
  {
    v3 = IOServiceMatching("AppleBasebandPCIControl");
    if (v3)
    {
      MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v3);
      v2 = MatchingService != 0;
      if (!MatchingService && (*this & 2) != 0)
      {
        syslog(5, "IOABPControlClass::%s: could not get matching service\n", "start");
      }

      *(this + 18) = MatchingService;
    }

    else
    {
      if ((*this & 2) != 0)
      {
        syslog(5, "IOABPControlClass::%s: could not create matching dictionary\n", "start");
      }

      v2 = 0;
    }
  }

  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: --done\n", "start");
  }

  pthread_mutex_unlock((this + 8));
  return v2;
}

uint64_t IOABPControlClass::close_nl(IOABPControlClass *this)
{
  if (*(this + 164) != 1)
  {
    return 0;
  }

  *(this + 164) = 0;
  v2 = IOConnectCallScalarMethod(*(this + 40), 1u, 0, 0, 0, 0);
  v3 = *(this + 40);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 40) = 0;
  }

  IOABPControlClass::clearNotificationPort(this);
  v4 = *(this + 10);
  if (v4)
  {
    CFRelease(v4);
    *(this + 10) = 0;
  }

  v5 = *(this + 11);
  if (v5)
  {
    dispatch_release(v5);
    *(this + 11) = 0;
  }

  return v2;
}

void IOABPControlClass::deregisterEventNotification_nl(IOABPControlClass *this, NSObject *a2)
{
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: +\n", "deregisterEventNotification_nl");
  }

  if (*(this + 14) || *(this + 15))
  {
    IOObjectRelease(*(this + 36));
    *(this + 36) = 0;
    IOABPControlClass::clearEventNotificationPort(this);
    if (*(this + 14))
    {
      Current = CFRunLoopGetCurrent();
      v5 = *(this + 14);
      if (Current == v5)
      {
        if (*(this + 19))
        {
          _Block_release(*(this + 19));
          *(this + 19) = 0;
          v5 = *(this + 14);
        }

        if (v5)
        {
          CFRelease(v5);
          *(this + 14) = 0;
        }

        goto LABEL_24;
      }
    }

    v6 = a2;
    if (!a2)
    {
      if (*(this + 15))
      {
        v7 = 0;
        v6 = 0;
        goto LABEL_11;
      }

      v6 = dispatch_group_create();
      if (!v6)
      {
        v7 = 0;
        goto LABEL_11;
      }
    }

    dispatch_retain(v6);
    dispatch_group_enter(v6);
    v7 = 1;
LABEL_11:
    v8 = *(this + 19);
    *(this + 19) = 0;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN17IOABPControlClass30deregisterEventNotification_nlEP16dispatch_group_s_block_invoke;
    block[3] = &unk_29EE81F88;
    block[4] = v8;
    block[5] = v6;
    v9 = *(this + 14);
    if (v9)
    {
      if (*(this + 15))
      {
        IOABPControlClass::deregisterEventNotification_nl();
      }

      CFRunLoopPerformBlock(v9, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 14));
      CFRelease(*(this + 14));
      *(this + 14) = 0;
    }

    v10 = *(this + 15);
    if (v10)
    {
      dispatch_async(v10, block);
      dispatch_release(*(this + 15));
      *(this + 15) = 0;
    }

    v11 = v7 ^ 1;
    if (a2)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      pthread_mutex_unlock((this + 8));
      dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v6);
      pthread_mutex_lock((this + 8));
    }

LABEL_24:
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPControlClass::%s: -\n", "deregisterEventNotification_nl");
    }
  }
}

void IOABPControlClass::setNotificationPort(IOABPControlClass *this)
{
  if (!*(this + 12))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 12) = v2;
    if (!v2)
    {
      IOABPControlClass::setNotificationPort();
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

void IOABPControlClass::clearNotificationPort(IOABPControlClass *this)
{
  v3 = (this + 96);
  v2 = *(this + 12);
  if (v2)
  {
    if (*(this + 10))
    {
      CFRunLoopRemoveSource(*(this + 10), *(this + 13), *MEMORY[0x29EDB8FC0]);
      v2 = *(this + 12);
    }

    IONotificationPortDestroy(v2);
    *v3 = 0;
    v3[1] = 0;
  }
}

void IOABPControlClass::setEventNotificationPort(IOABPControlClass *this)
{
  if (!*(this + 16))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 16) = v2;
    if (!v2)
    {
      IOABPControlClass::setEventNotificationPort();
    }

    if (*(this + 14))
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v2);
      *(this + 17) = RunLoopSource;
      CFRunLoopAddSource(*(this + 14), RunLoopSource, *MEMORY[0x29EDB8FC0]);
    }

    v4 = *(this + 15);
    if (v4)
    {
      v5 = *(this + 16);

      IONotificationPortSetDispatchQueue(v5, v4);
    }
  }
}

void IOABPControlClass::clearEventNotificationPort(IOABPControlClass *this)
{
  v2 = (this + 128);
  v1 = *(this + 16);
  if (v1)
  {
    v4 = *(this + 14);
    v5 = *(this + 17);
    v6 = MEMORY[0x29EDCA5F8];
    *v2 = 0;
    v2[1] = 0;
    block[0] = v6;
    block[1] = 0x40000000;
    block[2] = ___ZN17IOABPControlClass26clearEventNotificationPortEv_block_invoke;
    block[3] = &__block_descriptor_tmp;
    block[4] = v4;
    block[5] = v5;
    block[6] = v1;
    if (v4)
    {
      if (*(this + 15))
      {
        IOABPControlClass::clearEventNotificationPort();
      }

      CFRunLoopPerformBlock(v4, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 14));
    }

    v7 = *(this + 15);
    if (v7)
    {
      if (*(this + 14))
      {
        IOABPControlClass::clearEventNotificationPort();
      }

      dispatch_async(v7, block);
    }
  }
}

void ___ZN17IOABPControlClass26clearEventNotificationPortEv_block_invoke(__CFRunLoop **a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRunLoopRemoveSource(v2, a1[5], *MEMORY[0x29EDB8FC0]);
  }

  v3 = a1[6];

  IONotificationPortDestroy(v3);
}

uint64_t IOABPControlClass::open(IOABPControlClass *this, __CFRunLoop *a2)
{
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: \n", "open");
  }

  v4 = IOABPControlClass::open_nl(this, a2, 0);
  pthread_mutex_unlock((this + 8));
  return v4;
}

uint64_t IOABPControlClass::open_nl(IOABPControlClass *this, __CFRunLoop *a2, NSObject *a3)
{
  result = 0;
  outputCnt = 0;
  v8 = 0;
  if ((*(this + 164) & 1) == 0)
  {
    v5 = *(this + 18);
    if (v5)
    {
      result = IOServiceOpen(v5, *MEMORY[0x29EDCA6B0], 0, this + 40);
      if (!result)
      {
        result = IOConnectCallScalarMethod(*(this + 40), 0, &v8, 1u, 0, &outputCnt);
        if (!result)
        {
          *(this + 164) = 1;
          if (a2)
          {
            if (a3)
            {
              IOABPControlClass::open_nl();
            }

            *(this + 10) = a2;
            CFRetain(a2);
          }

          else if (a3)
          {
            *(this + 11) = a3;
            dispatch_retain(a3);
          }

          IOABPControlClass::setNotificationPort(this);
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

uint64_t IOABPControlClass::open(IOABPControlClass *this, NSObject *a2)
{
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: \n", "open");
  }

  v4 = IOABPControlClass::open_nl(this, 0, a2);
  pthread_mutex_unlock((this + 8));
  return v4;
}

uint64_t IOABPControlClass::close(IOABPControlClass *this)
{
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPControlClass::%s: \n", "close");
  }

  v2 = IOABPControlClass::close_nl(this);
  pthread_mutex_unlock((this + 8));
  return v2;
}

uint64_t IOABPControlClass::registerEventNotification(uint64_t a1, const void *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 8));
  v6 = IOABPControlClass::registerEventNotification_nl(a1, a2, 0, a3);
  pthread_mutex_unlock((a1 + 8));
  return v6;
}

uint64_t IOABPControlClass::registerEventNotification_nl(uint64_t a1, const void *a2, NSObject *a3, uint64_t a4)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 152))
    {
      v5 = 3758097093;
      if ((*a1 & 2) != 0)
      {
        syslog(5, "IOABPControlClass::%s: a notification block is already registered. deregister it before registering a new block");
      }
    }

    else if (a4)
    {
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZN17IOABPControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sU13block_pointerFv12abpErrorTypePvS5_E_block_invoke;
      aBlock[3] = &unk_29EE81F60;
      aBlock[4] = a4;
      *(a1 + 152) = _Block_copy(aBlock);
      if (a2)
      {
        if (a3)
        {
          IOABPControlClass::registerEventNotification_nl();
        }

        *(a1 + 112) = a2;
        CFRetain(a2);
      }

      else if (a3)
      {
        *(a1 + 120) = a3;
        dispatch_retain(a3);
      }

      IOABPControlClass::setEventNotificationPort(a1);
      v9 = IOServiceAddInterestNotification(*(a1 + 128), *(a1 + 72), "IOGeneralInterest", IOABPControlClass::generalInterestCallback, *(a1 + 152), (a1 + 144));
      if (v9)
      {
        if ((*a1 & 2) != 0)
        {
          syslog(5, "IOABPControlClass::%s: could not add interest notification on service: %#x\n", "registerEventNotification_nl", v9);
        }

        _Block_release(*(a1 + 152));
        *(a1 + 152) = 0;
        return 3758097084;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v5 = 3758097090;
      if ((*a1 & 2) != 0)
      {
        syslog(5, "IOABPControlClass::%s: block must be provided\n");
      }
    }
  }

  else
  {
    v5 = 3758097136;
    if ((*a1 & 2) != 0)
    {
      syslog(5, "IOABPControlClass::%s: service is NULL - must successfully start() first\n");
    }
  }

  return v5;
}

uint64_t IOABPControlClass::registerEventNotification(uint64_t a1, NSObject *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 8));
  v6 = IOABPControlClass::registerEventNotification_nl(a1, 0, a2, a3);
  pthread_mutex_unlock((a1 + 8));
  return v6;
}

uint64_t IOABPControlClass::deregisterEventNotification(IOABPControlClass *this, NSObject *a2)
{
  pthread_mutex_lock((this + 8));
  IOABPControlClass::deregisterEventNotification_nl(this, a2);

  return pthread_mutex_unlock((this + 8));
}

void ___ZN17IOABPControlClass30deregisterEventNotification_nlEP16dispatch_group_s_block_invoke(uint64_t a1)
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

BOOL IOABPControlClass::getLogInternalBufferSize(IOABPControlClass *this, unsigned int *a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = *(this + 18);
    if (v3)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v3, @"logSnapshotBufferSize", *MEMORY[0x29EDB8ED8], 0);
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

uint64_t IOABPControlClass::loggerTune(IOABPControlClass *this, unsigned int a2, unsigned int a3, void *a4, void *a5)
{
  input[4] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 4) != 0)
  {
    syslog(5, "IOABPControlClass::%s: subsystem %u, index %u, arg1 %p, arg2 %p\n", "loggerTune", a2, a3, a4, a5);
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  input[3] = a5;
  v10 = IOConnectCallScalarMethod(*(this + 40), 3u, input, 4u, 0, 0);
  pthread_mutex_unlock((this + 8));
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

BOOL IOABPControlClass::getLastKnownBootStage(IOABPControlClass *this, unsigned int *a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = *(this + 18);
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

const char *getABPErrorTypeString(unsigned int a1)
{
  if (a1 > 0x31)
  {
    return "invalid";
  }

  else
  {
    return abpErrorTypeStrings[a1];
  }
}

const char *getABPBHIRegistersString(unsigned int a1)
{
  if (a1 > 5)
  {
    return "invalid";
  }

  else
  {
    return abpBHIRegistersStrings[a1];
  }
}

const char *getABPBTIRegistersString(unsigned int a1)
{
  if (a1 > 1)
  {
    return "invalid";
  }

  else
  {
    return abpBTIRegistersStrings[a1];
  }
}

const char *getABPDirectionString(unsigned int a1)
{
  if (a1 > 1)
  {
    return "invalid";
  }

  else
  {
    return abpDirectionStrings[a1];
  }
}

const char *getABPLinkStateString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "invalid";
  }

  else
  {
    return abpLinkStateStrings[a1];
  }
}

const char *getABPAERErrorTypeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "invalid";
  }

  else
  {
    return abpAERErrorTypeStrings[a1];
  }
}

void IOABPClass::IOABPClass(IOABPClass *this)
{
  *this = &unk_2A1E5B928;
  *(this + 2) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 15) = &unk_297995FB5;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 160) = 0;
  pthread_mutex_init((this + 16), 0);
}

{
  *this = &unk_2A1E5B928;
  *(this + 2) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 15) = &unk_297995FB5;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 160) = 0;
  pthread_mutex_init((this + 16), 0);
}

void IOABPClass::~IOABPClass(IOABPClass *this)
{
  *this = &unk_2A1E5B928;
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: \n", "~IOABPClass");
  }

  IOABPClass::stop(this, 0);
  pthread_mutex_destroy((this + 16));
}

uint64_t IOABPClass::stop(IOABPClass *this, NSObject *a2)
{
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: \n", "stop");
  }

  if (*(this + 10) || *(this + 11))
  {
    IOABPClass::close_nl(this);
    IOABPClass::clearIterators(this);
    IOABPClass::clearNotificationPort(this);
    v4 = a2;
    if (!a2)
    {
      if (*(this + 11))
      {
        v5 = 0;
        v4 = 0;
        goto LABEL_9;
      }

      v4 = dispatch_group_create();
      if (!v4)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }

    dispatch_retain(v4);
    dispatch_group_enter(v4);
    v5 = 1;
LABEL_9:
    v6 = *(this + 18);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN10IOABPClass4stopEP16dispatch_group_s_block_invoke;
    block[3] = &unk_29EE82298;
    v7 = *(this + 8);
    *(this + 16) = 0;
    *(this + 17) = 0;
    *(this + 18) = 0;
    v13 = v7;
    v14 = v6;
    v15 = v4;
    v8 = *(this + 10);
    if (v8)
    {
      if (*(this + 11))
      {
        IOABPClass::stop();
      }

      CFRunLoopPerformBlock(v8, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 10));
      CFRelease(*(this + 10));
      *(this + 10) = 0;
    }

    v9 = *(this + 11);
    if (v9)
    {
      dispatch_async(v9, block);
      dispatch_release(*(this + 11));
      *(this + 11) = 0;
    }

    pthread_mutex_unlock((this + 16));
    v10 = v5 ^ 1;
    if (a2)
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v4);
    }

    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: --done\n", "stop");
    }

    return 1;
  }

  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: already stopped, returning true\n", "stop");
  }

  pthread_mutex_unlock((this + 16));
  return 1;
}

uint64_t IOABPClass::start(uint64_t a1, const char *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  pthread_mutex_lock((a1 + 16));
  started = IOABPClass::start_nl(a1, a2, a3, 0, a4, a5, a6);
  pthread_mutex_unlock((a1 + 16));
  return started;
}

uint64_t IOABPClass::start_nl(uint64_t a1, const char *a2, CFTypeRef cf, dispatch_object_t object, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 120) = a2;
  if ((*(a1 + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: for %s\n", "start_nl", a2);
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (cf)
  {
    if (object)
    {
      IOABPClass::start_nl();
    }

    *(a1 + 80) = cf;
    CFRetain(cf);
  }

  else if (object)
  {
    *(a1 + 88) = object;
    dispatch_retain(object);
  }

  v15 = IOServiceMatching("AppleBasebandPCIInterface");
  if (!v15 && (*(a1 + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: could not create matching dictionary\n", "start_nl");
  }

  v16 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], *(a1 + 120), 0x600u);
  CFDictionarySetValue(v15, @"ABPInterfaceProtocol", v16);
  CFRelease(v16);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke;
  aBlock[3] = &unk_29EE821D0;
  aBlock[4] = a7;
  *(a1 + 144) = _Block_copy(aBlock);
  IOABPClass::setNotificationPort(a1);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_31;
  }

  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 0x40000000;
  v30[2] = ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_2;
  v30[3] = &unk_29EE821F8;
  v30[4] = a5;
  *(a1 + 128) = _Block_copy(v30);
  CFRetain(v15);
  if (IOServiceAddMatchingNotification(*(a1 + 96), "IOServiceFirstMatch", v15, IOABPClass::interfaceMatched, *(a1 + 128), (a1 + 112)))
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: IOServiceAddMatchingNotification (kIOFirstMatchNotification) failed, ret = 0x%08x");
    }
  }

  else
  {
    v18 = *(a1 + 112);
    IOObjectRetain(v18);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_3;
    block[3] = &unk_29EE82220;
    block[4] = v30;
    v29 = v18;
    v19 = *(a1 + 80);
    if (v19)
    {
      if (*(a1 + 88))
      {
        IOABPClass::start_nl();
      }

      CFRunLoopPerformBlock(v19, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(a1 + 80));
    }

    v20 = *(a1 + 88);
    if (v20)
    {
      if (*(a1 + 80))
      {
        IOABPClass::start_nl();
      }

      dispatch_async(v20, block);
    }

    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 0x40000000;
    v27[2] = ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_4;
    v27[3] = &unk_29EE82248;
    v27[4] = a6;
    *(a1 + 136) = _Block_copy(v27);
    CFRetain(v15);
    if (!IOServiceAddMatchingNotification(*(a1 + 96), "IOServiceTerminate", v15, IOABPClass::interfaceMatched, *(a1 + 136), (a1 + 116)))
    {
      v22 = *(a1 + 116);
      IOObjectRetain(v22);
      v25[0] = MEMORY[0x29EDCA5F8];
      v25[1] = 0x40000000;
      v25[2] = ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_5;
      v25[3] = &unk_29EE82270;
      v25[4] = v27;
      v26 = v22;
      v23 = *(a1 + 80);
      if (v23)
      {
        if (*(a1 + 88))
        {
          IOABPClass::start_nl();
        }

        CFRunLoopPerformBlock(v23, *MEMORY[0x29EDB8FC0], v25);
        CFRunLoopWakeUp(*(a1 + 80));
      }

      v24 = *(a1 + 88);
      if (v24)
      {
        if (*(a1 + 80))
        {
          IOABPClass::start_nl();
        }

        dispatch_async(v24, v25);
      }

      v17 = 1;
      goto LABEL_30;
    }

    if ((*(a1 + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: IOServiceAddMatchingNotification (kIOTerminatedNotification) failed, ret = 0x%08x");
    }
  }

  v17 = 0;
LABEL_30:
  CFRelease(v15);
LABEL_31:
  if ((*(a1 + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: --done\n", "start_nl");
  }

  return v17;
}

uint64_t IOABPClass::start(uint64_t a1, const char *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  pthread_mutex_lock((a1 + 16));
  started = IOABPClass::start_nl(a1, a2, 0, a3, a4, a5, a6);
  pthread_mutex_unlock((a1 + 16));
  return started;
}

uint64_t ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke(uint64_t result, uint64_t a2, int a3, unsigned int *a4)
{
  if (a3 == -469794559)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, *a4, a4[2], a4[4]);
    }
  }

  return result;
}

void IOABPClass::setNotificationPort(IOABPClass *this)
{
  if (!*(this + 12))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 12) = v2;
    if (!v2)
    {
      IOABPClass::setNotificationPort();
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

uint64_t ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_2(uint64_t a1, io_iterator_t iterator)
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

void IOABPClass::interfaceMatched(IOABPClass *this, void *a2)
{
  _Block_copy(this);
  (*(this + 2))(this, a2);

  _Block_release(this);
}

uint64_t ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  return IOObjectRelease(v3);
}

uint64_t ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_4(uint64_t a1, io_iterator_t iterator)
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

uint64_t ___ZN10IOABPClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv12abpErrorTypejiE_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  return IOObjectRelease(v3);
}

uint64_t IOABPClass::close_nl(IOABPClass *this)
{
  if (*(this + 160))
  {
    *(this + 160) = 0;
    v2 = IOConnectCallScalarMethod(*(this + 39), 1u, 0, 0, 0, 0);
    v3 = *(this + 39);
    if (v3)
    {
      IOServiceClose(v3);
      *(this + 39) = 0;
    }

    v4 = *(this + 38);
    if (v4)
    {
      IOObjectRelease(v4);
      *(this + 38) = 0;
    }
  }

  else
  {
    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: not open, return success\n", "close_nl");
    }

    return 0;
  }

  return v2;
}

uint64_t IOABPClass::clearIterators(IOABPClass *this)
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

void IOABPClass::clearNotificationPort(IOABPClass *this)
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
    block[2] = ___ZN10IOABPClass21clearNotificationPortEv_block_invoke;
    block[3] = &__block_descriptor_tmp_28;
    block[4] = v4;
    block[5] = v5;
    block[6] = v1;
    if (v4)
    {
      if (*(this + 11))
      {
        IOABPClass::clearNotificationPort();
      }

      CFRunLoopPerformBlock(v4, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 10));
    }

    v7 = *(this + 11);
    if (v7)
    {
      if (*(this + 10))
      {
        IOABPClass::clearNotificationPort();
      }

      dispatch_async(v7, block);
    }
  }
}

void ___ZN10IOABPClass4stopEP16dispatch_group_s_block_invoke(void *a1)
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

void ___ZN10IOABPClass21clearNotificationPortEv_block_invoke(__CFRunLoop **a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRunLoopRemoveSource(v2, a1[5], *MEMORY[0x29EDB8FC0]);
  }

  v3 = a1[6];

  IONotificationPortDestroy(v3);
}

uint64_t IOABPClass::open(IOABPClass *this, io_service_t a2)
{
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: \n", "open");
  }

  v4 = IOABPClass::open_nl(this, a2);
  pthread_mutex_unlock((this + 16));
  return v4;
}

uint64_t IOABPClass::open_nl(io_connect_t *this, io_service_t a2)
{
  v2 = 0;
  outputCnt = 0;
  v9 = 0;
  if ((this[40] & 1) == 0)
  {
    if (IOABPClass::setUpNotificationCallback(this, a2))
    {
      v5 = IOServiceOpen(a2, *MEMORY[0x29EDCA6B0], 0, this + 39);
      if (v5)
      {
        v2 = v5;
      }

      else
      {
        v2 = IOConnectCallScalarMethod(this[39], 0, &v9, 1u, 0, &outputCnt);
        if (!v2)
        {
          *(this + 160) = 1;
          return v2;
        }
      }
    }

    else
    {
      v2 = 3758097112;
    }

    v6 = this[39];
    if (v6)
    {
      IOServiceClose(v6);
      this[39] = 0;
    }

    v7 = this[38];
    if (v7)
    {
      IOObjectRelease(v7);
      this[38] = 0;
    }
  }

  return v2;
}

BOOL IOABPClass::setUpNotificationCallback(IOABPClass *this, io_service_t a2)
{
  v3 = IOServiceAddInterestNotification(*(this + 12), a2, "IOGeneralInterest", IOABPClass::notificationCallback, *(this + 18), this + 38);
  v4 = v3;
  if (v3 && (*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: Could not add interest notification on service: %#x\n", "setUpNotificationCallback", v3);
  }

  return v4 == 0;
}

uint64_t IOABPClass::cleanUpNotificationCallback(IOABPClass *this)
{
  result = *(this + 38);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 38) = 0;
  }

  return result;
}

uint64_t IOABPClass::close(IOABPClass *this)
{
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: \n", "close");
  }

  v2 = IOABPClass::close_nl(this);
  pthread_mutex_unlock((this + 16));
  return v2;
}

void IOABPClass::notificationCallback(IOABPClass *this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  _Block_copy(this);
  (*(this + 2))(this, a2, a3, a4);

  _Block_release(this);
}

uint64_t IOABPClass::write(IOABPClass *this, const void *a2, unsigned int a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: buff %p, size %u\n", "write", a2, a3);
  }

  input[0] = 0;
  input[1] = 0;
  v6 = IOConnectCallMethod(*(this + 39), 2u, input, 2u, a2, a3, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 16));
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t IOABPClass::read(IOABPClass *this, void *a2, unsigned int *a3)
{
  input[2] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: buff %p, size %u\n", "read", a2, *a3);
  }

  input[0] = 0;
  input[1] = 0;
  outputStructCnt = *a3;
  v6 = IOConnectCallMethod(*(this + 39), 3u, input, 2u, 0, 0, 0, 0, a2, &outputStructCnt);
  if (!v6)
  {
    *a3 = outputStructCnt;
  }

  pthread_mutex_unlock((this + 16));
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t IOABPClass::sendImage(IOABPClass *this, const void *a2, unsigned int a3, unsigned int *a4)
{
  input[2] = *MEMORY[0x29EDCA608];
  outputCnt = 2;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: buff %p, size %u\n", "sendImage", a2, a3);
  }

  input[0] = 0;
  input[1] = 0;
  output = 0;
  v13 = 0;
  v8 = IOConnectCallMethod(*(this + 39), 4u, input, 2u, a2, a3, &output, &outputCnt, 0, 0);
  if (!v8)
  {
    *a4 = output;
    v8 = v13;
  }

  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: ret 0x%x, buff %p, size %u, cookie %u\n", "sendImage", v8, a2, a3, *a4);
  }

  pthread_mutex_unlock((this + 16));
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t IOABPClass::sendImageAsync(IOABPClass *this, const void *a2, unsigned int a3, void (*a4)(void *, int, void *, void *), void *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v10;
  v23 = v10;
  *reference = v10;
  v21 = v10;
  outputCnt = 2;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: buff %p, size %u\n", "sendImageAsync", a2, a3);
  }

  v11 = *(this + 12);
  if (v11)
  {
    input[0] = a2;
    input[1] = a3;
    output[0] = 0;
    output[1] = 0;
    reference[1] = a4;
    *&v21 = a5;
    v12 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v11);
    v14 = IOConnectCallAsyncScalarMethod(v12, 4u, MachPort, reference, 3u, input, 2u, output, &outputCnt);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "sendImageAsync");
    }

    pthread_mutex_unlock((this + 16));
    v14 = 3758097112;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t IOABPClass::readRegister(IOABPClass *this, unsigned int a2, void *a3, unsigned int *a4)
{
  input[1] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: reg %u, buff %p, size %u\n", "readRegister", a2, a3, *a4);
  }

  v11 = *a4;
  input[0] = a2;
  v8 = IOConnectCallMethod(*(this + 39), 5u, input, 1u, 0, 0, 0, 0, a3, &v11);
  if (!v8)
  {
    *a4 = v11;
  }

  pthread_mutex_unlock((this + 16));
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t IOABPClass::abortChannelAsync(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v8;
  v20 = v8;
  *reference = v8;
  v18 = v8;
  input[1] = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 8) & 2) != 0)
  {
    if (a2 > 1)
    {
      v9 = "invalid";
    }

    else
    {
      v9 = abpDirectionStrings[a2];
    }

    syslog(5, "IOABPClass::%s: direction %s\n", "abortChannelAsync", v9);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    input[0] = a2;
    reference[1] = a3;
    *&v18 = a4;
    v11 = *(a1 + 156);
    MachPort = IONotificationPortGetMachPort(v10);
    v13 = IOConnectCallAsyncScalarMethod(v11, 6u, MachPort, reference, 3u, input, 1u, 0, 0);
    pthread_mutex_unlock((a1 + 16));
  }

  else
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "abortChannelAsync");
    }

    pthread_mutex_unlock((a1 + 16));
    v13 = 3758097112;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t IOABPClass::startChannelAsync(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v8;
  v20 = v8;
  *reference = v8;
  v18 = v8;
  input[1] = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 8) & 2) != 0)
  {
    if (a2 > 1)
    {
      v9 = "invalid";
    }

    else
    {
      v9 = abpDirectionStrings[a2];
    }

    syslog(5, "IOABPClass::%s: direction %s\n", "startChannelAsync", v9);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    input[0] = a2;
    reference[1] = a3;
    *&v18 = a4;
    v11 = *(a1 + 156);
    MachPort = IONotificationPortGetMachPort(v10);
    v13 = IOConnectCallAsyncScalarMethod(v11, 7u, MachPort, reference, 3u, input, 1u, 0, 0);
    pthread_mutex_unlock((a1 + 16));
  }

  else
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "startChannelAsync");
    }

    pthread_mutex_unlock((a1 + 16));
    v13 = 3758097112;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t IOABPClass::timeSyncAsync(IOABPClass *this, unsigned int a2, void *a3, unsigned int a4, void (*a5)(void *, int, void *), void *a6)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v12;
  v23 = v12;
  *reference = v12;
  v21 = v12;
  pthread_mutex_lock((this + 16));
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: buff %p, size %u\n", "timeSyncAsync", a3, a4);
  }

  v13 = *(this + 12);
  if (v13)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    reference[1] = a5;
    *&v21 = a6;
    v14 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v13);
    v16 = IOConnectCallAsyncScalarMethod(v14, 8u, MachPort, reference, 3u, input, 3u, 0, 0);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "timeSyncAsync");
    }

    pthread_mutex_unlock((this + 16));
    v16 = 3758097112;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t IOABPClass::mapMemoryAsync(IOABPClass *this, unsigned int a2, uint64_t a3, unsigned int a4, void (*a5)(void *, int), void *a6)
{
  v20 = *MEMORY[0x29EDCA608];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v7;
  v19 = v7;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  reference[1] = a5;
  v16 = a6;
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: region %u, size %u\n", "mapMemoryAsync", a2, a4);
  }

  pthread_mutex_lock((this + 16));
  v8 = *(this + 12);
  if (v8)
  {
    v9 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v8);
    v11 = IOConnectCallAsyncScalarMethod(v9, 9u, MachPort, reference, 3u, input, 3u, 0, 0);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "mapMemoryAsync");
    }

    pthread_mutex_unlock((this + 16));
    v11 = 3758097112;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t IOABPClass::unmapMemoryAsync(IOABPClass *this, unsigned int a2, void (*a3)(void *, int), void *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v5;
  v17 = v5;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  reference[0] = 0xAAAAAAAAAAAAAAAALL;
  input = a2;
  reference[1] = a3;
  v14 = a4;
  if ((*(this + 8) & 2) != 0)
  {
    syslog(5, "IOABPClass::%s: region %u\n", "unmapMemoryAsync", a2);
  }

  pthread_mutex_lock((this + 16));
  v6 = *(this + 12);
  if (v6)
  {
    v7 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v6);
    v9 = IOConnectCallAsyncScalarMethod(v7, 0xAu, MachPort, reference, 3u, &input, 1u, 0, 0);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    if ((*(this + 8) & 2) != 0)
    {
      syslog(5, "IOABPClass::%s: no async port\n", "unmapMemoryAsync");
    }

    pthread_mutex_unlock((this + 16));
    v9 = 3758097112;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t IOABPClass::registerTimeEvent(IOABPClass *this, unsigned int a2, void (*a3)(void *, int, void **, unsigned int), void *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  v8 = *(this + 12);
  if (v8)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v19 = v9;
    v20 = v9;
    input = a2;
    reference[1] = a3;
    v17 = a4;
    v10 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v8);
    v12 = IOConnectCallAsyncScalarMethod(v10, 0xBu, MachPort, reference, 3u, &input, 1u, 0, 0);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    pthread_mutex_unlock((this + 16));
    v12 = 3758097112;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t IOABPClass::deregisterTimeEvent(IOABPClass *this, unsigned int a2, void (*a3)(void *, int), void *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 16));
  v8 = *(this + 12);
  if (v8)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    reference[0] = 0xAAAAAAAAAAAAAAAALL;
    v19 = v9;
    v20 = v9;
    input = a2;
    reference[1] = a3;
    v17 = a4;
    v10 = *(this + 39);
    MachPort = IONotificationPortGetMachPort(v8);
    v12 = IOConnectCallAsyncScalarMethod(v10, 0xCu, MachPort, reference, 3u, &input, 1u, 0, 0);
    pthread_mutex_unlock((this + 16));
  }

  else
  {
    pthread_mutex_unlock((this + 16));
    v12 = 3758097112;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

void IOABPTraceClass::IOABPTraceClass(IOABPTraceClass *this)
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

void IOABPTraceClass::~IOABPTraceClass(IOABPTraceClass *this)
{
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "~IOABPTraceClass");
  }

  IOABPTraceClass::stop(this);
  pthread_mutex_destroy((this + 8));
}

uint64_t IOABPTraceClass::stop(IOABPTraceClass *this)
{
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "stop");
  }

  IOABPTraceClass::closeService(this);
  v2 = *(this + 18);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 18) = 0;
  }

  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: --done\n", "stop");
  }

  pthread_mutex_unlock((this + 8));
  return 1;
}

uint64_t IOABPTraceClass::start(IOABPTraceClass *this, __CFRunLoop *a2)
{
  pthread_mutex_lock((this + 8));
  v4 = IOABPTraceClass::connect(this, a2, 0);
  pthread_mutex_unlock((this + 8));
  return v4;
}

uint64_t IOABPTraceClass::connect(IOABPTraceClass *this, __CFRunLoop *a2, NSObject *a3)
{
  if (*(this + 18))
  {
LABEL_2:
    v4 = 1;
    goto LABEL_14;
  }

  v7 = IOServiceMatching("AppleBasebandPCITraceBackendRaw");
  if (!v7)
  {
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPTraceClass::%s: could not create matching dictionary\n");
    }

    goto LABEL_13;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v7);
  *(this + 18) = MatchingService;
  if (!MatchingService)
  {
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPTraceClass::%s: could not get matching service\n");
    }

LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  if (!IOABPTraceClass::openService(this))
  {
    if (a2)
    {
      if (a3)
      {
        IOABPTraceClass::connect();
      }

      *(this + 11) = a2;
      CFRetain(a2);
    }

    else if (a3)
    {
      *(this + 12) = a3;
      dispatch_retain(a3);
    }

    IOABPTraceClass::setNotificationPort(this);
    goto LABEL_2;
  }

  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: could not open service\n", "connect");
  }

  IOObjectRelease(*(this + 18));
  v4 = 0;
  *(this + 18) = 0;
LABEL_14:
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: --done\n", "connect");
  }

  return v4;
}

uint64_t IOABPTraceClass::start(IOABPTraceClass *this, NSObject *a2)
{
  pthread_mutex_lock((this + 8));
  v4 = IOABPTraceClass::connect(this, 0, a2);
  pthread_mutex_unlock((this + 8));
  return v4;
}

uint64_t IOABPTraceClass::openService(IOABPTraceClass *this)
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
    v5 = *(this + 10);
    if (v5)
    {
      CFRelease(v5);
      *(this + 10) = 0;
    }
  }

  return v3;
}

void IOABPTraceClass::setNotificationPort(IOABPTraceClass *this)
{
  if (!*(this + 13))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 13) = v2;
    if (!v2)
    {
      IOABPTraceClass::setNotificationPort();
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

uint64_t IOABPTraceClass::closeService(IOABPTraceClass *this)
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

  IOABPTraceClass::clearNotificationPort(this);
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

void IOABPTraceClass::clearNotificationPort(IOABPTraceClass *this)
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

const __CFArray *IOABPTraceClass::getPipeCount(IOABPTraceClass *this)
{
  result = *(this + 10);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IOABPTraceClass::getPipeCodeAndName(IOABPTraceClass *this, unsigned int a2, unsigned int *a3, char *a4, unsigned int a5)
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

uint64_t IOABPTraceClass::openPipe(IOABPTraceClass *this)
{
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "openPipe");
  }

  pthread_mutex_unlock((this + 8));
  return 0;
}

uint64_t IOABPTraceClass::closePipe(IOABPTraceClass *this)
{
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "closePipe");
  }

  pthread_mutex_unlock((this + 8));
  return 0;
}

BOOL IOABPTraceClass::getSnapshotBufferSize(IOABPTraceClass *this, unsigned int *a2)
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

uint64_t IOABPTraceClass::readLogsAsync(IOABPTraceClass *this, unsigned int a2, void *a3, unsigned int a4, unsigned int a5, void (*a6)(void *, int, void *), void *a7)
{
  input[4] = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 4) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: buff %p, size %u\n", "readLogsAsync", a3, a4);
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
    pthread_mutex_unlock((this + 8));
  }

  else
  {
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPTraceClass::%s: no async port\n", "readLogsAsync");
    }

    pthread_mutex_unlock((this + 8));
    v18 = 3758097112;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t IOABPTraceClass::dumpRegistry(IOABPTraceClass *this)
{
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "dumpRegistry");
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
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPTraceClass::%s: no connection\n", "dumpRegistry");
    }
  }

  pthread_mutex_unlock((this + 8));
  return v3;
}

uint64_t IOABPTraceClass::flushTraceBuffers(IOABPTraceClass *this, unsigned int a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  input[2] = *MEMORY[0x29EDCA608];
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "flushTraceBuffers");
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
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPTraceClass::%s: no connection\n", "flushTraceBuffers");
    }

    pthread_mutex_unlock((this + 8));
    v14 = 3758097112;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t IOABPTraceClass::demo(IOABPTraceClass *this)
{
  if ((*this & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "demo");
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
    if ((*this & 2) != 0)
    {
      syslog(5, "IOABPTraceClass::%s: no connection\n", "demo");
    }
  }

  pthread_mutex_unlock((this + 8));
  return v3;
}

BOOL IOABPTraceClass::getRegistryInfo(uint64_t a1, void *a2)
{
  if ((*a1 & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "getRegistryInfo");
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
    if ((*a1 & 2) != 0)
    {
      syslog(5, "IOABPTraceClass::%s: no connection\n", "getRegistryInfo");
    }

    pthread_mutex_unlock((a1 + 8));
    return 0;
  }
}

uint64_t IOABPTraceClass::getTraceCode(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((*a1 & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: \n", "getTraceCode");
  }

  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 76))
  {
    operator new();
  }

  if ((*a1 & 2) != 0)
  {
    syslog(5, "IOABPTraceClass::%s: no connection\n", "getTraceCode");
  }

  pthread_mutex_unlock((a1 + 8));
  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_297994A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
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

void std::vector<IOABPTraceCodeAttachment>::clear[abi:ne200100](void ***a1)
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE81F30, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t std::vector<IOABPTraceCodeAttachment>::__emplace_back_slow_path<IOABPTraceCodeAttachment>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<IOABPTraceCodeAttachment>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<IOABPTraceCodeAttachment>>(a1, v7);
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
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IOABPTraceCodeAttachment>,IOABPTraceCodeAttachment*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<IOABPTraceCodeAttachment>::~__split_buffer(&v16);
  return v15;
}

void sub_297994EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<IOABPTraceCodeAttachment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IOABPTraceCodeAttachment>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IOABPTraceCodeAttachment>,IOABPTraceCodeAttachment*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IOABPTraceCodeAttachment>,IOABPTraceCodeAttachment*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<IOABPTraceCodeAttachment>,IOABPTraceCodeAttachment*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<IOABPTraceCodeAttachment>,IOABPTraceCodeAttachment*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<IOABPTraceCodeAttachment>,IOABPTraceCodeAttachment*>::operator()[abi:ne200100](uint64_t a1)
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

uint64_t std::__split_buffer<IOABPTraceCodeAttachment>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<IOABPTraceCodeAttachment>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<IOABPTraceCodeAttachment>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
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

void std::__shared_ptr_emplace<ABPTraceRegistryTracePoint>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5B958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C277760);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<ABPTraceRegistryAttachment>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E5B9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C277760);
}

void IOABPControlClass::clearEventNotificationPort()
{
  __assert_rtn("clearEventNotificationPort", "IOABPControlClass.cpp", 213, "!fEventQueue");
}

{
  __assert_rtn("clearEventNotificationPort", "IOABPControlClass.cpp", 219, "!fEventRunLoopRef");
}

void IOABPClass::start_nl()
{
  __assert_rtn("start_nl", "IOABPClass.cpp", 202, "!queue");
}

{
  __assert_rtn("start_nl", "IOABPClass.cpp", 284, "!fQueue");
}

{
  __assert_rtn("start_nl", "IOABPClass.cpp", 290, "!fRunLoopRef");
}

{
  __assert_rtn("start_nl", "IOABPClass.cpp", 341, "!fQueue");
}

{
  __assert_rtn("start_nl", "IOABPClass.cpp", 347, "!fRunLoopRef");
}

void IOABPClass::clearNotificationPort()
{
  __assert_rtn("clearNotificationPort", "IOABPClass.cpp", 516, "!fQueue");
}

{
  __assert_rtn("clearNotificationPort", "IOABPClass.cpp", 522, "!fRunLoopRef");
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