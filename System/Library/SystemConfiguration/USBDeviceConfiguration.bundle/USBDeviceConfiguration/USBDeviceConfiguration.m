uint64_t lockdownArrivalCallback()
{
  SCLog();
  sub_E30();
  CFRunLoopSourceInvalidate(qword_8070);
  CFRelease(qword_8070);
  qword_8070 = 0;
  CFMachPortInvalidate(qword_8078);
  CFRelease(qword_8078);
  qword_8078 = 0;
  v0 = dword_8080;

  return notify_cancel(v0);
}

uint64_t _usb_device_configuration_add_interface(uint64_t a1, const char *a2, _DWORD *a3)
{
  v4 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x8000100u, kCFAllocatorNull);
  *a3 = 0;
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock(&stru_8000);
    v6 = qword_8088;
    v9.length = CFArrayGetCount(qword_8088);
    v9.location = 0;
    if (CFArrayGetFirstIndexOfValue(v6, v9, v5) == -1)
    {
      CFArrayAppendValue(qword_8088, v5);
      Copy = CFArrayCreateCopy(kCFAllocatorDefault, qword_8088);
      pthread_mutex_unlock(&stru_8000);
      *a3 = sub_888();
      CFRelease(Copy);
      pthread_mutex_lock(&stru_8000);
    }

    pthread_mutex_unlock(&stru_8000);
    CFRelease(v5);
  }

  return 0;
}

BOOL sub_888()
{
  if (IOUSBDeviceControllerCreate())
  {
    return 0;
  }

  v1 = IOUSBDeviceDescriptionCreateFromController();
  if (v1)
  {
    v2 = v1;
    if (IOUSBDeviceDescriptionGetMatchingConfiguration())
    {
      v0 = IOUSBDeviceControllerSetPreferredConfiguration() == 0;
    }

    else
    {
      v0 = 1;
    }

    CFRelease(v2);
  }

  else
  {
    v0 = 1;
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  return v0;
}

uint64_t _usb_device_configuration_remove_interface(uint64_t a1, const char *a2, _DWORD *a3)
{
  v4 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x8000100u, kCFAllocatorNull);
  *a3 = 0;
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock(&stru_8000);
    v6 = qword_8088;
    v10.length = CFArrayGetCount(qword_8088);
    v10.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v10, v5);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(qword_8088, FirstIndexOfValue);
      Copy = CFArrayCreateCopy(kCFAllocatorDefault, qword_8088);
      pthread_mutex_unlock(&stru_8000);
      *a3 = sub_888();
      CFRelease(Copy);
      pthread_mutex_lock(&stru_8000);
    }

    pthread_mutex_unlock(&stru_8000);
    CFRelease(v5);
  }

  return 0;
}

uint64_t start()
{
  state64 = 0;
  if (notify_register_mach_port("com.apple.mobile.lockdown", &dword_8090, 0, &dword_8080) || notify_get_state(dword_8080, &state64))
  {
    SCLog();
    state64 = 1;
  }

  else if (!state64)
  {
    SCLog();
    qword_8078 = _SC_CFMachPortCreateWithPort();
    qword_8070 = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, qword_8078, 0);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, qword_8070, kCFRunLoopDefaultMode);
    goto LABEL_5;
  }

  SCLog();
  sub_E30();
LABEL_5:
  pthread_mutex_lock(&stru_8000);
  if (!qword_8098)
  {
    v3 = 0xAAAAAAAAAAAAAAAALL;
    *&v0 = 0xAAAAAAAAAAAAAAAALL;
    *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v5.__opaque[24] = v0;
    *&v5.__opaque[40] = v0;
    *&v5.__sig = v0;
    *&v5.__opaque[8] = v0;
    pthread_attr_init(&v5);
    pthread_attr_setdetachstate(&v5, 2);
    pthread_create(&v3, &v5, sub_C34, 0);
    pthread_attr_destroy(&v5);
    while (qword_8098)
    {
      pthread_cond_wait(&stru_8040, &stru_8000);
    }
  }

  return pthread_mutex_unlock(&stru_8000);
}

uint64_t sub_C34()
{
  sp = -1431655766;
  CStringPtr = CFStringGetCStringPtr(@"com.apple.SystemConfiguration.USBDeviceConfig", 0);
  if (!bootstrap_check_in(bootstrap_port, CStringPtr, &sp))
  {
    qword_80A0 = IOMIGMachPortCreate();
    if (qword_80A0)
    {
      IOMIGMachPortRegisterDemuxCallback();
      CFRunLoopGetCurrent();
      IOMIGMachPortScheduleWithRunLoop();
    }
  }

  pthread_mutex_lock(&stru_8000);
  qword_8088 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  qword_8098 = CFRunLoopGetCurrent();
  pthread_mutex_unlock(&stru_8000);
  pthread_cond_signal(&stru_8040);
  CFRunLoopRun();
  if (qword_80A0)
  {
    CFRunLoopGetCurrent();
    IOMIGMachPortUnscheduleFromRunLoop();
    Port = IOMIGMachPortGetPort();
    CFRelease(qword_80A0);
    if (Port)
    {
      mach_port_mod_refs(mach_task_self_, Port, 1u, -1);
    }

    qword_80A0 = 0;
  }

  pthread_mutex_lock(&stru_8000);
  if (qword_8088)
  {
    CFRelease(qword_8088);
    qword_8088 = 0;
  }

  pthread_mutex_unlock(&stru_8000);
  return 0;
}

void stop(__CFRunLoopSource *a1)
{
  pthread_mutex_lock(&stru_8000);
  if (qword_8098)
  {
    CFRunLoopStop(qword_8098);
  }

  pthread_mutex_unlock(&stru_8000);

  CFRunLoopSourceSignal(a1);
}

uint64_t sub_E30()
{
  SCLog();
  Current = CFRunLoopGetCurrent();

  return _IOUSBDeviceControllerRegisterArrivalCallback(sub_E90, 0, Current, kCFRunLoopDefaultMode);
}

void sub_E90()
{
  SCLog();
  SCLog();
  if (IOUSBDeviceControllerCreate())
  {
    SCLog();
LABEL_3:
    SCLog();
    goto LABEL_11;
  }

  v0 = IOUSBDeviceDescriptionCreateFromDefaultsAndController();
  if (v0)
  {
    v1 = v0;
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v2);
      v6.length = CFStringGetLength(v3);
      v6.location = 0;
      CFStringFindAndReplace(MutableCopy, @"-", &stru_43B0, v6, 0);
      IOUSBDeviceDescriptionSetSerialString();
      CFRelease(MutableCopy);
      IOUSBDeviceDescriptionSetUDIDString();
      CFRelease(v3);
      if (IOUSBDeviceControllerSetDescription())
      {
        SCLog();
        CFRelease(v1);
        CFRelease(0);
        goto LABEL_3;
      }
    }

    else
    {
      SCLog();
    }

    CFRelease(v1);
  }

  CFRelease(0);
LABEL_11:
  pthread_mutex_lock(&stru_8000);
  if (qword_8088)
  {
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, qword_8088);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock(&stru_8000);
  sub_888();
  if (Copy)
  {
    CFRelease(Copy);
  }
}

uint64_t sub_1074(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2[5];
  if (v3 >= 30050 && v3 < 30052)
  {
    LOBYTE(result) = usb_device_configuration_server(a2, a3);
  }

  else
  {
    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t usb_device_configuration_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 30052) >= 0xFFFFFFFE)
  {
    return *(&_usb_device_configuration_subsystem + 5 * (v1 - 30050) + 5);
  }

  else
  {
    return 0;
  }
}

const char *sub_10FC(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = *(result + 1), (v4 - 297) >= 0xFFFFFEFF) && ((v5 = *(result + 9), v5 <= 0x100) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x3FC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr((result + 40), 0, v4 - 40)) != 0))
  {
    result = _usb_device_configuration_add_interface(*(v3 + 3), v3 + 40, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

const char *sub_11BC(const char *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = *(result + 1), (v4 - 297) >= 0xFFFFFEFF) && ((v5 = *(result + 9), v5 <= 0x100) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0x3FC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr((result + 40), 0, v4 - 40)) != 0))
  {
    result = _usb_device_configuration_remove_interface(*(v3 + 3), v3 + 40, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  return result;
}

uint64_t usb_device_configuration_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 30052) >= 0xFFFFFFFE && (v5 = *(&_usb_device_configuration_subsystem + 5 * (v4 - 30050) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}