void sub_100000D60(id a1)
{
  qword_100011968 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RDClient];

  _objc_release_x1();
}

void sub_100000DEC(id a1)
{
  qword_100011978 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDBubbled];

  _objc_release_x1();
}

void sub_100001094(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) xpcConnection];
    NSLog(@"Could not get proxy object for client connection: %@", v2);
  }
}

void sub_10000118C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) xpcConnection];
    NSLog(@"Could not get proxy object for client connection: %@", v2);
  }
}

uint64_t sub_100001700(uint64_t a1)
{
  [*(a1 + 32) setWasToldWillSwitchUser:1];
  if (qword_100011990 != -1)
  {
    sub_1000056B8();
  }

  v2 = qword_100011988;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100003A58();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      [v4 pid];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100003A60();
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
}

uint64_t sub_100001934(uint64_t a1)
{
  if (qword_100011990 != -1)
  {
    sub_1000056B8();
  }

  v2 = qword_100011988;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100003A58();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      [v4 pid];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100003A60();
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
}

uint64_t sub_100001C78(uint64_t a1)
{
  if (qword_100011990 != -1)
  {
    sub_1000056B8();
  }

  v2 = qword_100011988;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100003A58();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      [v4 pid];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100003A60();
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
}

void sub_1000024C8(id a1)
{
  qword_100011988 = os_log_create(off_100011960, "legacy");

  _objc_release_x1();
}

const void *sub_100002510(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDataGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_10000254C(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFArrayGetTypeID())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002588(const __CFDictionary *a1, const void *a2)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t sub_1000025F4(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

uint64_t sub_100002660(const __CFDictionary *a1, const void *a2)
{
  v2 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

const __CFBoolean *sub_1000026CC(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_100002720(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  return v3;
}

CFTypeRef sub_1000027B4(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v3);
}

CFTypeRef sub_100002814(const void *a1)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    if (CFPropertyListWrite(a1, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = CFWriteStreamCopyProperty(v3, kCFStreamPropertyDataWritten);
    }

    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

CFPropertyListRef sub_1000028BC(UInt8 *bytes, CFIndex length)
{
  format = kCFPropertyListBinaryFormat_v1_0;
  v2 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
  if (v2)
  {
    v3 = v2;
    if (CFReadStreamOpen(v2))
    {
      v4 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v3, 0, 2uLL, &format, 0);
      if (!v4)
      {
        syslog(7, "Could not create object from stream");
      }

      CFReadStreamClose(v3);
    }

    else
    {
      syslog(7, "Could not open the stream");
      v4 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    syslog(7, "Could not create stream for serialized data");
    return 0;
  }

  return v4;
}

const void *sub_10000299C(const char *a1)
{
  memset(&v8.st_size, 0, 48);
  v2 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v2 == -1)
  {
    sub_100005898(a1);
    v4 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v3 = v2;
  if (fstat(v2, &v8))
  {
    sub_1000057E4(a1);
    v6 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v4 = malloc_type_malloc(LODWORD(v8.st_size), 0x7C088C14uLL);
  if (!v4)
  {
    sub_100005874();
LABEL_12:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = read(v3, v4, v8.st_size);
  if (v5 != v8.st_size)
  {
    sub_10000582C(a1);
    goto LABEL_12;
  }

  v6 = sub_1000056CC(v4, v5);
LABEL_6:
  close(v3);
LABEL_7:
  free(v4);
  return v6;
}

CFMutableDictionaryRef sub_100002A9C()
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFMutableDictionaryRef sub_100002AF0(CFDictionaryRef theDict)
{
  result = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFMutableArrayRef sub_100002B38()
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

CFStringRef sub_100002B84(char *cStr)
{
  result = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!result)
  {
    syslog(7, "Out of Memory!!! Dying!...so...cold....");
    exit(-1);
  }

  return result;
}

uint64_t sub_100002BD0(uint32_t *a1)
{
  multiuser_flags = 0;
  v2 = mach_host_self();
  result = host_get_multiuser_config_flags(v2, &multiuser_flags);
  if (a1)
  {
    if (!result)
    {
      *a1 = multiuser_flags;
    }
  }

  return result;
}

uint64_t sub_100002C18(mach_port_name_t name)
{
  ptype = 0;
  if (mach_port_type(mach_task_self_, name, &ptype))
  {
    return 0;
  }

  else
  {
    return ptype;
  }
}

void sub_100002C5C(mach_port_name_t name)
{
  ptype = 0;
  v2 = mach_port_type(mach_task_self_, name, &ptype);
  v3 = ptype;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = ptype == 0;
  }

  if (v4)
  {
    syslog(7, "Port:%d has NORIGHTS");
    return;
  }

  if ((ptype & 0x10000) != 0)
  {
    syslog(7, "Port:%d has SENDRIGHT", name);
    if ((v3 & 0x20000) == 0)
    {
LABEL_9:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      syslog(7, "Port:%d has SENDONCERIGHT", name);
      if ((v3 & 0x100000) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((ptype & 0x20000) == 0)
  {
    goto LABEL_9;
  }

  syslog(7, "Port:%d has RECEIVERIGHT", name);
  if ((v3 & 0x40000) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v3 & 0x100000) != 0)
  {
LABEL_15:
    syslog(7, "Port:%d has DEADNAME");
  }
}

uint64_t sub_100002D38()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (sysctlbyname("kern.bootargs", __big, &__len, 0, 0) || strnstr(__big, "um-migration-debug=0", __len))
  {
    return 0;
  }

  if (strnstr(__big, "um-migration-debug=1", __len))
  {
    return 1;
  }

  if (strnstr(__big, "um-migration-debug=2", __len))
  {
    return 2;
  }

  if (strnstr(__big, "um-migration-debug=3", __len))
  {
    return 3;
  }

  if (strnstr(__big, "um-migration-debug=4", __len))
  {
    return 4;
  }

  if (strnstr(__big, "um-migration-debug=5", __len))
  {
    return 5;
  }

  if (strnstr(__big, "um-migration-debug=100", __len))
  {
    return 100;
  }

  if (strnstr(__big, "um-migration-debug=101", __len))
  {
    return 101;
  }

  return 0;
}

id sub_100002F5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_100011998;
  qword_100011998 = v2;

  v4 = qword_100011998;

  return [v4 setSwitchState:0];
}

void sub_100002FEC(id a1)
{
  qword_1000119A8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDServer];

  _objc_release_x1();
}

void sub_100003078(id a1)
{
  qword_1000119B8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDKeybagd];

  _objc_release_x1();
}

void sub_100003A10(id a1)
{
  qword_1000119C8 = os_log_create(off_100011960, "legacy");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_1000119E8 != -1)
  {
    sub_100005944();
  }

  v1 = qword_1000119E0;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 2;
      if (_os_log_send_and_compose_impl())
      {
        sub_100003A60();
      }
    }
  }

  v2 = NSTemporaryDirectory();
  NSLog(@"NSTemDir is %@", v2);
  bzero(v10, 0x400uLL);
  if (confstr(65537, v10, 0x400uLL))
  {
    NSLog(@"confstr returns %s", v10, v9);
  }

  else
  {
    NSLog(@"confstr failed", v7, v9);
  }

  bzero(v10, 0x400uLL);
  if (getenv("TMPDIR"))
  {
    NSLog(@"getenv TMPDIR returns %s", v10);
  }

  else
  {
    NSLog(@"getenv failed", v8);
  }

  v3 = objc_opt_new();
  v4 = qword_1000119D8;
  qword_1000119D8 = v3;

  [qword_1000119D8 start];
  v5 = +[NSRunLoop currentRunLoop];
  [v5 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100003C58(id a1)
{
  qword_1000119E0 = os_log_create(off_100011960, "default");

  _objc_release_x1();
}

void sub_100003CE0(id a1)
{
  qword_1000119F0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDBubbled];

  _objc_release_x1();
}

void sub_100003D7C(id a1, NSError *a2)
{
  if (a2)
  {
    NSLog(@"Could not get keybagd remote object proxy, error: %@", a2);
  }
}

void sub_1000040BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004104(uint64_t a1)
{
  NSLog(@"BUBBLED: invalidationHandler");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained keybagdConnection];
  [v3 suspend];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setKeybagdConnection:0];
}

void sub_10000427C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000042A0(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMachServiceNames:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 machServiceNames];
  NSLog(@"BUBBLED: MachService received:%@", v6);

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 beginNextClient];
}

void sub_1000045E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100004618(uint64_t a1)
{
  NSLog(@"interruptionHandler  Bubbled-nextclient");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained kickstartCurrentClient];
}

void sub_100004670(uint64_t a1)
{
  NSLog(@"Invalidation Handler Bubbled-nextclient");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeCurrentClient];
}

void sub_100004818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_100004854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000486C(uint64_t a1)
{
  NSLog(@"*** Upload completion handler for MACHService ***");
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentClient];
  v4 = [v3 hasUserSyncTasks];

  if (v4)
  {
    NSLog(@"*** Has Pending sync tasks ***");
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 machServiceNames];
    v7 = [v6 firstObject];
    v8 = [v7 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (v8)
    {
      NSLog(@"***** Removing Current Service:%@ ********", *(*(*(a1 + 32) + 8) + 40));
      v10 = objc_loadWeakRetained((a1 + 40));
      [v10 removeCurrentClientAndMachServiceName];
    }

    else
    {
      NSLog(@"*** completion handler for %@ does not match current service, ignoring.. ***", *(*(*(a1 + 32) + 8) + 40));
    }
  }
}

void sub_100004C44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100004C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained currentClient];
  v4 = [v3 hasUserSwitchTasks];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 bubbleIsOkayToPop];
  }
}

void sub_100004ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained currentClient];
  [v2 addUserSwitchTask:*(a1 + 32)];
}

void sub_10000505C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000507C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentClient];
  [v3 removeUserSwitchTask:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 currentClient];
  v6 = [v5 hasUserSwitchTasks];

  if ((v6 & 1) == 0)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 bubbleIsOkayToPop];
  }
}

void sub_100005258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005278(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained currentClient];
  [v2 addUserSyncTask:*(a1 + 32)];
}

void sub_1000053E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005408(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentClient];
  [v3 removeUserSyncTask:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 currentClient];
  v6 = [v5 hasUserSyncTasks];

  if ((v6 & 1) == 0)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 removeCurrentClientAndMachServiceName];
  }
}

const void *sub_1000056CC(UInt8 *bytes, CFIndex length)
{
  v2 = 0;
  format = kCFPropertyListBinaryFormat_v1_0;
  if (bytes && length)
  {
    v4 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
    if (!v4)
    {
      syslog(7, "Could not create stream from serialized data");
      return 0;
    }

    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v5, length, 2uLL, &format, 0);
      v2 = v6;
      if (!v6)
      {
        syslog(7, "Could not create dictionary from stream");
        goto LABEL_9;
      }

      v7 = CFGetTypeID(v6);
      if (v7 == CFDictionaryGetTypeID())
      {
LABEL_9:
        CFReadStreamClose(v5);
        CFRelease(v5);
        return v2;
      }

      CFRelease(v2);
    }

    else
    {
      syslog(7, "Could not open the stream");
    }

    v2 = 0;
    goto LABEL_9;
  }

  return v2;
}

void sub_1000057E4(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not fstat %s: %s", a1, v3);
}

void sub_10000582C(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not read %s: %s", a1, v3);
}

void sub_100005898(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not open %s: %s", a1, v3);
}