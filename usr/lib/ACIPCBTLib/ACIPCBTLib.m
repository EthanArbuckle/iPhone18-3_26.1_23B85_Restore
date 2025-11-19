void ACIPCBTControlClass::generalInterestCallback(ACIPCBTControlClass *this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  _Block_copy(this);
  (*(this + 2))(this, a2, a3, a4);

  _Block_release(this);
}

uint64_t ___ZN19ACIPCBTControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sP17ACIPCControlEvent_block_invoke(uint64_t result, uint64_t a2, int a3, unsigned int *a4)
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

uint64_t ___ZN19ACIPCBTControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sP17ACIPCControlEvent_block_invoke_12(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == -469794558 && a4 != 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, a4);
    }
  }

  return result;
}

const char *getACIPCErrorTypeString(unsigned int a1)
{
  if (a1 > 0x44)
  {
    return "invalid";
  }

  else
  {
    return acipcErrorTypeStrings[a1];
  }
}

const char *getACIPCBTIRegistersString(unsigned int a1)
{
  if (a1 > 1)
  {
    return "invalid";
  }

  else
  {
    return acipcBTIRegistersStrings[a1];
  }
}

const char *getACIPCDirectionString(unsigned int a1)
{
  if (a1 > 1)
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

void ACIPCBTClass::ACIPCBTClass(ACIPCBTClass *this)
{
  *this = 1;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 14) = "";
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0;
  pthread_mutex_init((this + 8), 0);
}

{
  *this = 1;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 14) = "";
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0;
  pthread_mutex_init((this + 8), 0);
}

void ACIPCBTClass::~ACIPCBTClass(ACIPCBTClass *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "~ACIPCBTClass";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: \n", &v3, 0xCu);
  }

  ACIPCBTClass::stop(this, 0);
  pthread_mutex_destroy((this + 8));
  v2 = *MEMORY[0x29EDCA608];
}

void sub_295FE7A30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ACIPCBTClass::stop(ACIPCBTClass *this, NSObject *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "stop";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: \n", buf, 0xCu);
  }

  if (*(this + 9) || *(this + 10))
  {
    ACIPCBTClass::close_nl(this);
    ACIPCBTClass::clearIterators(this);
    ACIPCBTClass::clearNotificationPort(this);
    v4 = a2;
    if (!a2)
    {
      if (*(this + 10))
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
    v6 = *(this + 17);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = ___ZN12ACIPCBTClass4stopEP16dispatch_group_s_block_invoke;
    v13[3] = &unk_29EDECDE0;
    v7 = *(this + 120);
    *(this + 15) = 0;
    *(this + 16) = 0;
    *(this + 17) = 0;
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v8 = *(this + 9);
    if (v8)
    {
      if (*(this + 10))
      {
        ACIPCBTClass::stop();
      }

      CFRunLoopPerformBlock(v8, *MEMORY[0x29EDB8FC0], v13);
      CFRunLoopWakeUp(*(this + 9));
      CFRelease(*(this + 9));
      *(this + 9) = 0;
    }

    v9 = *(this + 10);
    if (v9)
    {
      dispatch_async(v9, v13);
      dispatch_release(*(this + 10));
      *(this + 10) = 0;
    }

    pthread_mutex_unlock((this + 8));
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

    if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "stop";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: --done\n", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "stop";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: already stopped, returning true\n", buf, 0xCu);
  }

  pthread_mutex_unlock((this + 8));
LABEL_26:
  v11 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t ACIPCBTClass::start(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  pthread_mutex_lock((a1 + 8));
  started = ACIPCBTClass::start_nl(a1, a2, a3, 0, a4, a5, a6);
  pthread_mutex_unlock((a1 + 8));
  return started;
}

uint64_t ACIPCBTClass::start_nl(uint64_t a1, uint64_t a2, CFTypeRef cf, dispatch_object_t object, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = *MEMORY[0x29EDCA608];
  *(a1 + 112) = a2;
  if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "start_nl";
    v42 = 2080;
    v43 = a2;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: for %s\n", buf, 0x16u);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (cf)
  {
    if (object)
    {
      ACIPCBTClass::start_nl();
    }

    *(a1 + 72) = cf;
    CFRetain(cf);
  }

  else if (object)
  {
    *(a1 + 80) = object;
    dispatch_retain(object);
  }

  ACIPCBTClass::setNotificationPort(a1);
  v16 = IOServiceMatching("AppleConvergedIPCInterface");
  if (!v16 && (*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "start_nl";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: could not create matching dictionary\n", buf, 0xCu);
  }

  v17 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], *(a1 + 112), 0x600u);
  CFDictionarySetValue(v16, @"ACIPCInterfaceProtocol", v17);
  CFRelease(v17);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke;
  aBlock[3] = &unk_29EDECD18;
  aBlock[4] = a7;
  *(a1 + 136) = _Block_copy(aBlock);
  if (v16)
  {
    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 0x40000000;
    v38[2] = ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_2;
    v38[3] = &unk_29EDECD40;
    v38[4] = a5;
    *(a1 + 120) = _Block_copy(v38);
    CFRetain(v16);
    v18 = IOServiceAddMatchingNotification(*(a1 + 88), "IOServiceFirstMatch", v16, ACIPCBTClass::interfaceMatched, *(a1 + 120), (a1 + 104));
    if (v18)
    {
      if ((*a1 & 2) == 0)
      {
        goto LABEL_34;
      }

      v19 = v18;
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      v41 = "start_nl";
      v42 = 1024;
      LODWORD(v43) = v19;
      v20 = MEMORY[0x29EDCA988];
      v21 = "ACIPCBTClass::%s: IOServiceAddMatchingNotification (kIOFirstMatchNotification) failed, ret = 0x%08x";
    }

    else
    {
      v23 = *(a1 + 104);
      IOObjectRetain(v23);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_3;
      block[3] = &unk_29EDECD68;
      block[4] = v38;
      v37 = v23;
      v24 = *(a1 + 72);
      if (v24)
      {
        if (*(a1 + 80))
        {
          ACIPCBTClass::start_nl();
        }

        CFRunLoopPerformBlock(v24, *MEMORY[0x29EDB8FC0], block);
        CFRunLoopWakeUp(*(a1 + 72));
      }

      v25 = *(a1 + 80);
      if (v25)
      {
        if (*(a1 + 72))
        {
          ACIPCBTClass::start_nl();
        }

        dispatch_async(v25, block);
      }

      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 0x40000000;
      v35[2] = ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_15;
      v35[3] = &unk_29EDECD90;
      v35[4] = a6;
      *(a1 + 128) = _Block_copy(v35);
      CFRetain(v16);
      v26 = IOServiceAddMatchingNotification(*(a1 + 88), "IOServiceTerminate", v16, ACIPCBTClass::interfaceMatched, *(a1 + 128), (a1 + 108));
      if (!v26)
      {
        v30 = *(a1 + 108);
        IOObjectRetain(v30);
        v33[0] = MEMORY[0x29EDCA5F8];
        v33[1] = 0x40000000;
        v33[2] = ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_2_18;
        v33[3] = &unk_29EDECDB8;
        v33[4] = v35;
        v34 = v30;
        v31 = *(a1 + 72);
        if (v31)
        {
          if (*(a1 + 80))
          {
            ACIPCBTClass::start_nl();
          }

          CFRunLoopPerformBlock(v31, *MEMORY[0x29EDB8FC0], v33);
          CFRunLoopWakeUp(*(a1 + 72));
        }

        v32 = *(a1 + 80);
        if (v32)
        {
          if (*(a1 + 72))
          {
            ACIPCBTClass::start_nl();
          }

          dispatch_async(v32, v33);
        }

        v22 = 1;
        goto LABEL_35;
      }

      if ((*a1 & 2) == 0 || (v27 = v26, !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_34:
        v22 = 0;
LABEL_35:
        CFRelease(v16);
        goto LABEL_36;
      }

      *buf = 136315394;
      v41 = "start_nl";
      v42 = 1024;
      LODWORD(v43) = v27;
      v20 = MEMORY[0x29EDCA988];
      v21 = "ACIPCBTClass::%s: IOServiceAddMatchingNotification (kIOTerminatedNotification) failed, ret = 0x%08x";
    }

    _os_log_impl(&dword_295FE7000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x12u);
    goto LABEL_34;
  }

  v22 = 0;
LABEL_36:
  if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "start_nl";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: --done\n", buf, 0xCu);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v22;
}

uint64_t ACIPCBTClass::start(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  pthread_mutex_lock((a1 + 8));
  started = ACIPCBTClass::start_nl(a1, a2, 0, a3, a4, a5, a6);
  pthread_mutex_unlock((a1 + 8));
  return started;
}

void ACIPCBTClass::setNotificationPort(ACIPCBTClass *this)
{
  if (!*(this + 11))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 11) = v2;
    if (!v2)
    {
      ACIPCBTClass::setNotificationPort();
    }

    if (*(this + 9))
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v2);
      *(this + 12) = RunLoopSource;
      CFRunLoopAddSource(*(this + 9), RunLoopSource, *MEMORY[0x29EDB8FC0]);
    }

    v4 = *(this + 10);
    if (v4)
    {
      v5 = *(this + 11);

      IONotificationPortSetDispatchQueue(v5, v4);
    }
  }
}

uint64_t ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke(uint64_t result, uint64_t a2, int a3, unsigned int *a4)
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

uint64_t ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_2(uint64_t a1, io_iterator_t iterator)
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

void ACIPCBTClass::interfaceMatched(ACIPCBTClass *this, void *a2)
{
  _Block_copy(this);
  (*(this + 2))(this, a2);

  _Block_release(this);
}

uint64_t ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  return IOObjectRelease(v3);
}

uint64_t ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_15(uint64_t a1, io_iterator_t iterator)
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

uint64_t ___ZN12ACIPCBTClass8start_nlEPKcP11__CFRunLoopP16dispatch_queue_sU13block_pointerFvjES7_U13block_pointerFv14acipcErrorTypejiE_block_invoke_2_18(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  return IOObjectRelease(v3);
}

uint64_t ACIPCBTClass::close_nl(ACIPCBTClass *this)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 152))
  {
    *(this + 152) = 0;
    v2 = IOConnectCallScalarMethod(*(this + 37), 1u, 0, 0, 0, 0);
    v3 = *(this + 37);
    if (v3)
    {
      IOServiceClose(v3);
      *(this + 37) = 0;
    }

    v4 = *(this + 36);
    if (v4)
    {
      IOObjectRelease(v4);
      *(this + 36) = 0;
    }
  }

  else
  {
    if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "close_nl";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: not open, return success\n", &v7, 0xCu);
    }

    v2 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t ACIPCBTClass::clearIterators(ACIPCBTClass *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 26) = 0;
  }

  result = *(this + 27);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 27) = 0;
  }

  return result;
}

void ACIPCBTClass::clearNotificationPort(ACIPCBTClass *this)
{
  v2 = (this + 88);
  v1 = *(this + 11);
  if (v1)
  {
    v4 = *(this + 9);
    v5 = *(this + 12);
    v6 = MEMORY[0x29EDCA5F8];
    *v2 = 0;
    v2[1] = 0;
    block[0] = v6;
    block[1] = 0x40000000;
    block[2] = ___ZN12ACIPCBTClass21clearNotificationPortEv_block_invoke;
    block[3] = &__block_descriptor_tmp_22;
    block[4] = v4;
    block[5] = v5;
    block[6] = v1;
    if (v4)
    {
      if (*(this + 10))
      {
        ACIPCBTClass::clearNotificationPort();
      }

      CFRunLoopPerformBlock(v4, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 9));
    }

    v7 = *(this + 10);
    if (v7)
    {
      if (*(this + 9))
      {
        ACIPCBTClass::clearNotificationPort();
      }

      dispatch_async(v7, block);
    }
  }
}

void ___ZN12ACIPCBTClass4stopEP16dispatch_group_s_block_invoke(void *a1)
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

void ___ZN12ACIPCBTClass21clearNotificationPortEv_block_invoke(__CFRunLoop **a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRunLoopRemoveSource(v2, a1[5], *MEMORY[0x29EDB8FC0]);
  }

  v3 = a1[6];

  IONotificationPortDestroy(v3);
}

uint64_t ACIPCBTClass::open(ACIPCBTClass *this, io_service_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "open";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: \n", &v7, 0xCu);
  }

  v4 = ACIPCBTClass::open_nl(this, a2);
  pthread_mutex_unlock((this + 8));
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t ACIPCBTClass::open_nl(io_connect_t *this, io_service_t a2)
{
  v2 = 0;
  outputCnt = 0;
  v9 = 0;
  if ((this[38] & 1) == 0)
  {
    if (ACIPCBTClass::setUpNotificationCallback(this, a2))
    {
      v5 = IOServiceOpen(a2, *MEMORY[0x29EDCA6B0], 0, this + 37);
      if (v5)
      {
        v2 = v5;
      }

      else
      {
        v2 = IOConnectCallScalarMethod(this[37], 0, &v9, 1u, 0, &outputCnt);
        if (!v2)
        {
          *(this + 152) = 1;
          return v2;
        }
      }
    }

    else
    {
      v2 = 3758097112;
    }

    v6 = this[37];
    if (v6)
    {
      IOServiceClose(v6);
      this[37] = 0;
    }

    v7 = this[36];
    if (v7)
    {
      IOObjectRelease(v7);
      this[36] = 0;
    }
  }

  return v2;
}

BOOL ACIPCBTClass::setUpNotificationCallback(ACIPCBTClass *this, io_service_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = IOServiceAddInterestNotification(*(this + 11), a2, "IOGeneralInterest", ACIPCBTClass::notificationCallback, *(this + 17), this + 36);
  if (v3 && (*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "setUpNotificationCallback";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: Could not add interest notification on service: %#x\n", &v6, 0x12u);
  }

  result = v3 == 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ACIPCBTClass::cleanUpNotificationCallback(ACIPCBTClass *this)
{
  result = *(this + 36);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 36) = 0;
  }

  return result;
}

uint64_t ACIPCBTClass::close(ACIPCBTClass *this)
{
  v7 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "close";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: \n", &v5, 0xCu);
  }

  v2 = ACIPCBTClass::close_nl(this);
  pthread_mutex_unlock((this + 8));
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

void ACIPCBTClass::notificationCallback(ACIPCBTClass *this, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  _Block_copy(this);
  (*(this + 2))(this, a2, a3, a4);

  _Block_release(this);
}

uint64_t ACIPCBTClass::write(ACIPCBTClass *this, const void *a2, unsigned int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "write";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = 0;
  v6 = IOConnectCallMethod(*(this + 37), 2u, buf, 2u, a2, a3, 0, 0, 0, 0);
  pthread_mutex_unlock((this + 8));
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t ACIPCBTClass::writeAsync(ACIPCBTClass *this, const void *a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v10;
  v23 = v10;
  *reference = v10;
  v21 = v10;
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "writeAsync";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  v11 = *(this + 11);
  if (v11)
  {
    *buf = a2;
    *&buf[8] = a3;
    reference[1] = a4;
    *&v21 = a5;
    v12 = *(this + 37);
    MachPort = IONotificationPortGetMachPort(v11);
    v14 = IOConnectCallAsyncScalarMethod(v12, 2u, MachPort, reference, 3u, buf, 2u, 0, 0);
  }

  else
  {
    v14 = 3758097112;
    if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "writeAsync";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 8));
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t ACIPCBTClass::read(ACIPCBTClass *this, void *a2, unsigned int *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a3;
    *buf = 136315650;
    *&buf[4] = "read";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = 0;
  v10 = *a3;
  v7 = IOConnectCallMethod(*(this + 37), 3u, buf, 2u, 0, 0, 0, 0, a2, &v10);
  if (!v7)
  {
    *a3 = v10;
  }

  pthread_mutex_unlock((this + 8));
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t ACIPCBTClass::readAsync(ACIPCBTClass *this, void *a2, unsigned int a3, void (*a4)(void *, int, void *), void *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v10;
  v23 = v10;
  *reference = v10;
  v21 = v10;
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "readAsync";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  v11 = *(this + 11);
  if (v11)
  {
    *buf = a2;
    *&buf[8] = a3;
    reference[1] = a4;
    *&v21 = a5;
    v12 = *(this + 37);
    MachPort = IONotificationPortGetMachPort(v11);
    v14 = IOConnectCallAsyncScalarMethod(v12, 3u, MachPort, reference, 3u, buf, 2u, 0, 0);
  }

  else
  {
    v14 = 3758097112;
    if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "readAsync";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 8));
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t ACIPCBTClass::sendImage(ACIPCBTClass *this, const void *a2, unsigned int a3, unsigned int *a4)
{
  input[2] = *MEMORY[0x29EDCA608];
  outputCnt = 2;
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "sendImage";
    v15 = 2048;
    *v16 = a2;
    *&v16[8] = 1024;
    *&v16[10] = a3;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  input[0] = 0;
  input[1] = 0;
  output = 0;
  v22 = 0;
  v8 = IOConnectCallMethod(*(this + 37), 4u, input, 2u, a2, a3, &output, &outputCnt, 0, 0);
  if (!v8)
  {
    *a4 = output;
    v8 = v22;
  }

  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a4;
    *buf = 136316162;
    v14 = "sendImage";
    v15 = 1024;
    *v16 = v8;
    *&v16[4] = 2048;
    *&v16[6] = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = v9;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: ret 0x%x, buff %p, size %u, cookie %u\n", buf, 0x28u);
  }

  pthread_mutex_unlock((this + 8));
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t ACIPCBTClass::sendImageAsync(ACIPCBTClass *this, const void *a2, unsigned int a3, void (*a4)(void *, int, void *, void *), void *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v10;
  v25 = v10;
  *reference = v10;
  v23 = v10;
  outputCnt = 2;
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "sendImageAsync";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  v11 = *(this + 11);
  if (v11)
  {
    *buf = a2;
    *&buf[8] = a3;
    output[0] = 0;
    output[1] = 0;
    reference[1] = a4;
    *&v23 = a5;
    v12 = *(this + 37);
    MachPort = IONotificationPortGetMachPort(v11);
    v14 = IOConnectCallAsyncScalarMethod(v12, 4u, MachPort, reference, 3u, buf, 2u, output, &outputCnt);
  }

  else
  {
    v14 = 3758097112;
    if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "sendImageAsync";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 8));
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t ACIPCBTClass::readRegister(ACIPCBTClass *this, unsigned int a2, void *a3, unsigned int *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a4;
    *buf = 136315906;
    *&buf[4] = "readRegister";
    v14 = 1024;
    v15 = a2;
    v16 = 2048;
    v17 = a3;
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: reg %u, buff %p, size %u\n", buf, 0x22u);
  }

  v12 = *a4;
  *buf = a2;
  v9 = IOConnectCallMethod(*(this + 37), 5u, buf, 1u, 0, 0, 0, 0, a3, &v12);
  if (!v9)
  {
    *a4 = v12;
  }

  pthread_mutex_unlock((this + 8));
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t ACIPCBTClass::abortChannelAsync(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v8;
  v24 = v8;
  *reference = v8;
  v22 = v8;
  input[1] = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock((a1 + 8));
  if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 1)
    {
      v9 = "invalid";
    }

    else
    {
      v9 = acipcDirectionStrings[a2];
    }

    *buf = 136315394;
    v17 = "abortChannelAsync";
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: direction %s\n", buf, 0x16u);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    input[0] = a2;
    reference[1] = a3;
    *&v22 = a4;
    v11 = *(a1 + 148);
    MachPort = IONotificationPortGetMachPort(v10);
    v13 = IOConnectCallAsyncScalarMethod(v11, 6u, MachPort, reference, 3u, input, 1u, 0, 0);
  }

  else
  {
    v13 = 3758097112;
    if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "abortChannelAsync";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((a1 + 8));
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t ACIPCBTClass::startChannelAsync(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v8;
  v24 = v8;
  *reference = v8;
  v22 = v8;
  input[1] = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock((a1 + 8));
  if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 1)
    {
      v9 = "invalid";
    }

    else
    {
      v9 = acipcDirectionStrings[a2];
    }

    *buf = 136315394;
    v17 = "startChannelAsync";
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: direction %s\n", buf, 0x16u);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    input[0] = a2;
    reference[1] = a3;
    *&v22 = a4;
    v11 = *(a1 + 148);
    MachPort = IONotificationPortGetMachPort(v10);
    v13 = IOConnectCallAsyncScalarMethod(v11, 7u, MachPort, reference, 3u, input, 1u, 0, 0);
  }

  else
  {
    v13 = 3758097112;
    if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "startChannelAsync";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((a1 + 8));
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void ACIPCBTControlClass::ACIPCBTControlClass(ACIPCBTControlClass *this)
{
  *this = 1;
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
  *this = 1;
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

void ACIPCBTControlClass::~ACIPCBTControlClass(ACIPCBTControlClass *this)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "~ACIPCBTControlClass";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: \n", &v3, 0xCu);
  }

  ACIPCBTControlClass::stop(this);
  pthread_mutex_destroy((this + 8));
  v2 = *MEMORY[0x29EDCA608];
}

void sub_295FE9D14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ACIPCBTControlClass::stop(ACIPCBTControlClass *this)
{
  v7 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "stop";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: \n", &v5, 0xCu);
  }

  ACIPCBTControlClass::close_nl(this);
  ACIPCBTControlClass::deregisterEventNotification_nl(this, 0);
  v2 = *(this + 18);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 18) = 0;
  }

  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "stop";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: --done\n", &v5, 0xCu);
  }

  pthread_mutex_unlock((this + 8));
  v3 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t ACIPCBTControlClass::waitforService(ACIPCBTControlClass *this)
{
  v25 = *MEMORY[0x29EDCA608];
  notification = 0;
  Current = CFRunLoopGetCurrent();
  v3 = IOServiceMatching("AppleConvergedIPCControl");
  if (!v3)
  {
    if ((*this & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "waitforService";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: could not create matching dictionary\n", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v4 = v3;
  v5 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
  if (!v5)
  {
    if ((*this & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "waitforService";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: Failed to create notification port\n", buf, 0xCu);
    }

    CFRelease(v4);
LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  v6 = v5;
  RunLoopSource = IONotificationPortGetRunLoopSource(v5);
  v8 = *MEMORY[0x29EDB8FC0];
  CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x29EDB8FC0]);
  v9 = IOServiceAddMatchingNotification(v6, "IOServiceFirstMatch", v4, __serviceCallback, Current, &notification);
  if (v9)
  {
    if ((*this & 1) == 0)
    {
      goto LABEL_8;
    }

    v10 = v9;
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v22 = "waitforService";
    v23 = 1024;
    v24 = v10;
    v11 = MEMORY[0x29EDCA988];
    v12 = "ACIPCBTControlClass::%s: Failed to add notification for service %#x\n";
    v13 = 18;
    goto LABEL_7;
  }

  do
  {
    v14 = v9;
    v9 = IOIteratorNext(notification);
  }

  while (v9);
  if (v14)
  {
    goto LABEL_20;
  }

  if ((*this & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "waitforService";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: AppleConvergedIPCControl service not found, waiting 90 seconds for it to appear", buf, 0xCu);
  }

  v15 = CFRunLoopRunInMode(v8, 90.0, 0);
  v16 = *this;
  if (v15 == kCFRunLoopRunStopped)
  {
    if ((v16 & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "waitforService";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: AppleConvergedIPCControl service found", buf, 0xCu);
    }

    v17 = 0;
    do
    {
      v14 = v17;
      v17 = IOIteratorNext(notification);
    }

    while (v17);
    goto LABEL_20;
  }

  if ((v16 & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "waitforService";
    v11 = MEMORY[0x29EDCA988];
    v12 = "ACIPCBTControlClass::%s: Runloop timed out while finding AppleConvergedIPCControl";
    v13 = 12;
LABEL_7:
    _os_log_impl(&dword_295FE7000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
  }

LABEL_8:
  v14 = 0;
LABEL_20:
  CFRunLoopRemoveSource(Current, RunLoopSource, v8);
  IONotificationPortDestroy(v6);
LABEL_29:
  v18 = *MEMORY[0x29EDCA608];
  return v14;
}

void __serviceCallback(__CFRunLoop *a1)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "AppleConvergedIPCControl found, releasing waiting thread", v2, 2u);
  }

  CFRunLoopStop(a1);
}

BOOL ACIPCBTControlClass::start(ACIPCBTControlClass *this)
{
  v8 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if (*(this + 18))
  {
    v2 = 1;
  }

  else
  {
    v3 = ACIPCBTControlClass::waitforService(this);
    v2 = v3 != 0;
    if (!v3 && (*this & 1) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "start";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: could not get matching service\n", &v6, 0xCu);
    }

    *(this + 18) = v3;
  }

  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "start";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: --done\n", &v6, 0xCu);
  }

  pthread_mutex_unlock((this + 8));
  v4 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t ACIPCBTControlClass::close_nl(ACIPCBTControlClass *this)
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

  ACIPCBTControlClass::clearNotificationPort(this);
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

void ACIPCBTControlClass::deregisterEventNotification_nl(ACIPCBTControlClass *this, NSObject *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "deregisterEventNotification_nl";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: +\n", buf, 0xCu);
  }

  if (*(this + 14) || *(this + 15))
  {
    IOObjectRelease(*(this + 36));
    *(this + 36) = 0;
    ACIPCBTControlClass::clearEventNotificationPort(this);
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

        goto LABEL_25;
      }
    }

    v6 = a2;
    if (!a2)
    {
      if (*(this + 15))
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
    v8 = *(this + 19);
    *(this + 19) = 0;
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = ___ZN19ACIPCBTControlClass30deregisterEventNotification_nlEP16dispatch_group_s_block_invoke;
    v13[3] = &unk_29EDECE98;
    v13[4] = v8;
    v13[5] = v6;
    v9 = *(this + 14);
    if (v9)
    {
      if (*(this + 15))
      {
        ACIPCBTControlClass::deregisterEventNotification_nl();
      }

      CFRunLoopPerformBlock(v9, *MEMORY[0x29EDB8FC0], v13);
      CFRunLoopWakeUp(*(this + 14));
      CFRelease(*(this + 14));
      *(this + 14) = 0;
    }

    v10 = *(this + 15);
    if (v10)
    {
      dispatch_async(v10, v13);
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

LABEL_25:
    if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "deregisterEventNotification_nl";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: -\n", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void ACIPCBTControlClass::setNotificationPort(ACIPCBTControlClass *this)
{
  if (!*(this + 12))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 12) = v2;
    if (!v2)
    {
      ACIPCBTControlClass::setNotificationPort();
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

void ACIPCBTControlClass::clearNotificationPort(ACIPCBTControlClass *this)
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

void ACIPCBTControlClass::setEventNotificationPort(ACIPCBTControlClass *this)
{
  if (!*(this + 16))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 16) = v2;
    if (!v2)
    {
      ACIPCBTControlClass::setEventNotificationPort();
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

void ACIPCBTControlClass::clearEventNotificationPort(ACIPCBTControlClass *this)
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
    block[2] = ___ZN19ACIPCBTControlClass26clearEventNotificationPortEv_block_invoke;
    block[3] = &__block_descriptor_tmp_0;
    block[4] = v4;
    block[5] = v5;
    block[6] = v1;
    if (v4)
    {
      if (*(this + 15))
      {
        ACIPCBTControlClass::clearEventNotificationPort();
      }

      CFRunLoopPerformBlock(v4, *MEMORY[0x29EDB8FC0], block);
      CFRunLoopWakeUp(*(this + 14));
    }

    v7 = *(this + 15);
    if (v7)
    {
      if (*(this + 14))
      {
        ACIPCBTControlClass::clearEventNotificationPort();
      }

      dispatch_async(v7, block);
    }
  }
}

void ___ZN19ACIPCBTControlClass26clearEventNotificationPortEv_block_invoke(__CFRunLoop **a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRunLoopRemoveSource(v2, a1[5], *MEMORY[0x29EDB8FC0]);
  }

  v3 = a1[6];

  IONotificationPortDestroy(v3);
}

uint64_t ACIPCBTControlClass::open(ACIPCBTControlClass *this, __CFRunLoop *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "open";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: \n", &v7, 0xCu);
  }

  v4 = ACIPCBTControlClass::open_nl(this, a2, 0);
  pthread_mutex_unlock((this + 8));
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t ACIPCBTControlClass::open_nl(ACIPCBTControlClass *this, __CFRunLoop *a2, NSObject *a3)
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
              ACIPCBTControlClass::open_nl();
            }

            *(this + 10) = a2;
            CFRetain(a2);
          }

          else if (a3)
          {
            *(this + 11) = a3;
            dispatch_retain(a3);
          }

          ACIPCBTControlClass::setNotificationPort(this);
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

uint64_t ACIPCBTControlClass::open(ACIPCBTControlClass *this, NSObject *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "open";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: \n", &v7, 0xCu);
  }

  v4 = ACIPCBTControlClass::open_nl(this, 0, a2);
  pthread_mutex_unlock((this + 8));
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t ACIPCBTControlClass::close(ACIPCBTControlClass *this)
{
  v7 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "close";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: \n", &v5, 0xCu);
  }

  v2 = ACIPCBTControlClass::close_nl(this);
  pthread_mutex_unlock((this + 8));
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t ACIPCBTControlClass::readLogsAsync(ACIPCBTControlClass *this, void *a2, unsigned int a3, unsigned int a4, void (*a5)(void *, int, void *), void *a6)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v12;
  v24 = v12;
  *reference = v12;
  v22 = v12;
  pthread_mutex_lock((this + 8));
  if ((*this & 4) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "readLogsAsync";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    *&buf[22] = 1024;
    v20 = a3;
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: buff %p, size %u\n", buf, 0x1Cu);
  }

  v13 = *(this + 12);
  if (v13)
  {
    *buf = a2;
    *&buf[8] = a3;
    *&buf[16] = a4;
    reference[1] = a5;
    *&v22 = a6;
    v14 = *(this + 40);
    MachPort = IONotificationPortGetMachPort(v13);
    v16 = IOConnectCallAsyncScalarMethod(v14, 2u, MachPort, reference, 3u, buf, 3u, 0, 0);
  }

  else
  {
    v16 = 3758097112;
    if ((*this & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "readLogsAsync";
      _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: no async port\n", buf, 0xCu);
    }
  }

  pthread_mutex_unlock((this + 8));
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t ACIPCBTControlClass::registerEventNotification(uint64_t a1, const void *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 8));
  v6 = ACIPCBTControlClass::registerEventNotification_nl(a1, a2, 0, a3);
  pthread_mutex_unlock((a1 + 8));
  return v6;
}

uint64_t ACIPCBTControlClass::registerEventNotification_nl(uint64_t a1, const void *a2, NSObject *a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(a1 + 72))
  {
    if (*(a1 + 152))
    {
      v5 = 3758097093;
      if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "registerEventNotification_nl";
        _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: a notification block is already registered. deregister it before registering a new block", buf, 0xCu);
        v5 = 3758097093;
      }

      goto LABEL_39;
    }

    if (a4)
    {
      if (*a4 == 1)
      {
        v8 = *(a4 + 8);
        if (v8)
        {
          v9 = v16;
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 0x40000000;
          v10 = &unk_29EDECE70;
          v11 = ___ZN19ACIPCBTControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sP17ACIPCControlEvent_block_invoke_12;
          goto LABEL_19;
        }

        v5 = 3758097090;
        if ((*a1 & 2) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315138;
        v19 = "registerEventNotification_nl";
        v12 = MEMORY[0x29EDCA988];
        v13 = "ACIPCBTControlClass::%s: timesync block must be provided\n";
      }

      else if (*a4)
      {
        v5 = 3758097090;
        if ((*a1 & 1) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315138;
        v19 = "registerEventNotification_nl";
        v12 = MEMORY[0x29EDCA988];
        v13 = "ACIPCBTControlClass::%s: invalid event type\n";
      }

      else
      {
        v8 = *(a4 + 8);
        if (v8)
        {
          v9 = v17;
          v17[0] = MEMORY[0x29EDCA5F8];
          v17[1] = 0x40000000;
          v10 = &unk_29EDECE48;
          v11 = ___ZN19ACIPCBTControlClass28registerEventNotification_nlEP11__CFRunLoopP16dispatch_queue_sP17ACIPCControlEvent_block_invoke;
LABEL_19:
          v9[2] = v11;
          v9[3] = v10;
          v9[4] = v8;
          *(a1 + 152) = _Block_copy(v9);
          if (a2)
          {
            if (a3)
            {
              ACIPCBTControlClass::registerEventNotification_nl();
            }

            *(a1 + 112) = a2;
            CFRetain(a2);
          }

          else if (a3)
          {
            *(a1 + 120) = a3;
            dispatch_retain(a3);
          }

          ACIPCBTControlClass::setEventNotificationPort(a1);
          v5 = IOServiceAddInterestNotification(*(a1 + 128), *(a1 + 72), "IOGeneralInterest", ACIPCBTControlClass::generalInterestCallback, *(a1 + 152), (a1 + 144));
          if (v5)
          {
            if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v19 = "registerEventNotification_nl";
              v20 = 1024;
              v21 = v5;
              _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: could not add interest notification on service: %#x\n", buf, 0x12u);
            }

            _Block_release(*(a1 + 152));
            *(a1 + 152) = 0;
            v5 = 3758097084;
          }

          goto LABEL_39;
        }

        v5 = 3758097090;
        if ((*a1 & 2) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *buf = 136315138;
        v19 = "registerEventNotification_nl";
        v12 = MEMORY[0x29EDCA988];
        v13 = "ACIPCBTControlClass::%s: error block must be provided\n";
      }
    }

    else
    {
      v5 = 3758097090;
      if ((*a1 & 2) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *buf = 136315138;
      v19 = "registerEventNotification_nl";
      v12 = MEMORY[0x29EDCA988];
      v13 = "ACIPCBTControlClass::%s: event parameters must be provided\n";
    }

    _os_log_impl(&dword_295FE7000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    goto LABEL_39;
  }

  v5 = 3758097136;
  if ((*a1 & 2) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "registerEventNotification_nl";
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: service is NULL - must successfully start() first\n", buf, 0xCu);
    v5 = 3758097136;
  }

LABEL_39:
  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t ACIPCBTControlClass::registerEventNotification(uint64_t a1, NSObject *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 8));
  v6 = ACIPCBTControlClass::registerEventNotification_nl(a1, 0, a2, a3);
  pthread_mutex_unlock((a1 + 8));
  return v6;
}

uint64_t ACIPCBTControlClass::deregisterEventNotification(ACIPCBTControlClass *this, NSObject *a2)
{
  pthread_mutex_lock((this + 8));
  ACIPCBTControlClass::deregisterEventNotification_nl(this, a2);

  return pthread_mutex_unlock((this + 8));
}

void ___ZN19ACIPCBTControlClass30deregisterEventNotification_nlEP16dispatch_group_s_block_invoke(uint64_t a1)
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

BOOL ACIPCBTControlClass::getLogInternalBufferSize(ACIPCBTControlClass *this, unsigned int *a2)
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

uint64_t ACIPCBTControlClass::loggerTune(ACIPCBTControlClass *this, unsigned int a2, unsigned int a3, void *a4, void *a5)
{
  v17 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((this + 8));
  if ((*this & 4) != 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_295FE7000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "ACIPCBTControlClass::%s: subsystem %u, index %u, arg1 %p, arg2 %p\n", v13, 0x2Cu);
  }

  *v13 = a2;
  *&v13[8] = a3;
  *&v13[16] = a4;
  *v14 = a5;
  v10 = IOConnectCallScalarMethod(*(this + 40), 3u, v13, 4u, 0, 0);
  pthread_mutex_unlock((this + 8));
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

BOOL ACIPCBTControlClass::getLastKnownBootStage(ACIPCBTControlClass *this, unsigned int *a2)
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

void ACIPCBTClass::start_nl()
{
  __assert_rtn("start_nl", "ACIPCBTClass.cpp", 187, "!queue");
}

{
  __assert_rtn("start_nl", "ACIPCBTClass.cpp", 269, "!fQueue");
}

{
  __assert_rtn("start_nl", "ACIPCBTClass.cpp", 275, "!fRunLoopRef");
}

{
  __assert_rtn("start_nl", "ACIPCBTClass.cpp", 326, "!fQueue");
}

{
  __assert_rtn("start_nl", "ACIPCBTClass.cpp", 332, "!fRunLoopRef");
}

void ACIPCBTClass::clearNotificationPort()
{
  __assert_rtn("clearNotificationPort", "ACIPCBTClass.cpp", 500, "!fQueue");
}

{
  __assert_rtn("clearNotificationPort", "ACIPCBTClass.cpp", 506, "!fRunLoopRef");
}

void ACIPCBTControlClass::clearEventNotificationPort()
{
  __assert_rtn("clearEventNotificationPort", "ACIPCBTControlClass.cpp", 278, "!fEventQueue");
}

{
  __assert_rtn("clearEventNotificationPort", "ACIPCBTControlClass.cpp", 284, "!fEventRunLoopRef");
}