void sub_1000007D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_1000007E4(uint64_t *a1)
{
  if (isatty(2))
  {
    qword_1000101B8 = __stderrp;
    v2 = sub_1000008AC;
  }

  else
  {
    v2 = 0;
  }

  if (sub_100000F80())
  {
    v3 = open("/dev/console", 131073);
    qword_1000101B8 = fdopen(v3, "w");
    v2 = sub_1000008AC;
  }

  result = sub_100000C28(&off_100010000, 40);
  *(result + 16) = 5;
  *(result + 24) = 0;
  *(result + 32) = v2;
  *a1 = result;
  byte_1000101B0 = 1;
  return result;
}

uint64_t sub_1000008AC(int a1, int a2, char *a3)
{
  if (qword_1000101B8)
  {
    return fputs(a3, qword_1000101B8);
  }

  return result;
}

void sub_1000008C4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const __CFString *a7, uint64_t a8, uint64_t a9)
{
  v16 = getprogname();
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  arguments = &a9;
  if (*(a2 + 32))
  {
    v39 = time(0);
    memset(&v38, 0, sizeof(v38));
    localtime_r(&v39, &v38);
    if (strftime(cStr, 0x63uLL, "%b %d %H:%M:%S ", &v38) && (v18 = CFStringCreateWithCString(0, cStr, 0x8000100u)) != 0)
    {
      cf = v18;
      CFArrayAppendValue(Mutable, v18);
    }

    else
    {
      cf = 0;
    }

    v19 = getpid();
    if (a1 >= 7)
    {
      v20 = 7;
    }

    else
    {
      v20 = a1;
    }

    v21 = CFStringCreateWithFormat(0, 0, @"%s[%d] <%s>: ", v16, v19, (&off_10000C470)[v20]);
    if (v21)
    {
      CFArrayAppendValue(Mutable, v21);
    }
  }

  else
  {
    cf = 0;
    v21 = 0;
  }

  v22 = CFStringCreateWithFormat(0, 0, @"%s:%d(%s): ", a3, a4, a5);
  if (v22)
  {
    CFArrayAppendValue(Mutable, v22);
  }

  v23 = CFStringCreateWithFormatAndArguments(0, 0, a7, arguments);
  if (v23)
  {
    CFArrayAppendValue(Mutable, v23);
  }

  if (a6)
  {
    CFArrayAppendValue(Mutable, @": ");
    CFArrayAppendValue(Mutable, a6);
  }

  v35 = v21;
  v37 = a6;
  v24 = CFStringCreateByCombiningStrings(0, Mutable, &stru_10000C988);
  v25 = v24;
  v26 = "failed to convert string\n";
  if (v24)
  {
    Length = CFStringGetLength(v24);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v29 = malloc_type_malloc(MaximumSizeForEncoding + 2, 0x100004077774924uLL);
    if (CFStringGetCString(v25, v29, MaximumSizeForEncoding + 2, 0x8000100u))
    {
      v26 = v29;
    }
  }

  else
  {
    v29 = 0;
  }

  if (a1 >= 7)
  {
    v30 = 7;
  }

  else
  {
    v30 = a1;
  }

  v31 = a2;
  v32 = *(a2 + 32);
  if (v32)
  {
    v33 = strlen(v26);
    if (v26[v33 - 1] != 10)
    {
      *&v26[v33] = 10;
      v32 = *(v31 + 32);
    }

    v32(v30, *(v31 + 24), v26);
  }

  else
  {
    if (a1 >= 5)
    {
      v34 = 5;
    }

    else
    {
      v34 = a1;
    }

    asl_log(0, 0, v34, "%s", v26);
  }

  if (v29)
  {
    free(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v37)
  {
    CFRelease(v37);
  }
}

uint64_t sub_100000C28(dispatch_once_t *context, uint64_t a2)
{
  v5 = context[16];
  v4 = context + 16;
  if (v5 != -1)
  {
    dispatch_once_f(v4, context, sub_100000CA4);
  }

  v6 = a2 - 16;
  v7 = context[3];
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), v6);
  }

  return v9;
}

uint64_t sub_100000CA4(void *a1)
{
  v2 = a1[1];
  a1[5] = *a1;
  a1[8] = v2;
  a1[12] = a1[2];
  result = _CFRuntimeRegisterClass();
  a1[3] = result;
  return result;
}

__CFDictionary *sub_100000CE4(const void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"Command", a1);
  v17 = &a10;
  v13 = key;
  if (key)
  {
    while (1)
    {
      v14 = v17;
      v18 = v17 + 1;
      if (!*v14)
      {
        break;
      }

      CFDictionarySetValue(Mutable, v13, *v14);
      v15 = v18;
      v17 = v18 + 1;
      v13 = *v15;
      if (!*v15)
      {
        return Mutable;
      }
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "Utilities.c", 113, "createCommandDictionaryWithArgs", 0, @"no value for key %@", v12, v13);
    }
  }

  return Mutable;
}

void sub_100000E08(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

const __CFNumber *sub_100000E6C(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      return (CFNumberGetValue(v5, kCFNumberIntType, a3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100000ED4(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"ClientListenerDelay", @"com.apple.PurpleReverseProxy");
  if (v1 || (v1 = CFPreferencesCopyValue(@"ClientListenerDelay", @"com.apple.PurpleReverseProxy", @"mobile", kCFPreferencesAnyHost)) != 0)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v2, kCFNumberSInt32Type, &dword_100010088);
    }

    CFRelease(v2);
  }
}

uint64_t sub_100000F80()
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__s1 = 0u;
  v21 = 0u;
  v19 = 256;
  v0 = MGCopyAnswerWithError();
  if (v0)
  {
    v2 = v0;
    v3 = CFStringCompare(v0, @"Restore", 0);
    v5 = v3 == kCFCompareEqualTo;
    if (byte_1000101B0 == 1)
    {
      v6 = v3;
      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 5)
      {
        sub_1000008C4(5u, qword_1000101A8, "Utilities.c", 366, "isRestoreOS", 0, @"Asking MobileGestalt for ReleaseType, isRestoreOS: %d\n", v4, v6 == kCFCompareEqualTo);
      }
    }

    goto LABEL_17;
  }

  if (byte_1000101B0 == 1)
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "Utilities.c", 370, "isRestoreOS", 0, @"Asking for kMGQReleaseType failed: %d\n", v1, 0);
    }
  }

  v7 = _CFCopySystemVersionDictionary();
  if (!v7)
  {
    if (byte_1000101B0 != 1)
    {
      goto LABEL_38;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "Utilities.c", 312, "isRestoreOSSystemVersion", 0, @"CFCopySystemVersionDictionary failed\n", v8, v17);
    }

LABEL_32:
    if (byte_1000101B0 == 1)
    {
      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
      {
        sub_1000008C4(3u, qword_1000101A8, "Utilities.c", 377, "isRestoreOS", 0, @"Checking SystemVersion failed: %d\n", v8, 0xFFFFFFFFLL);
      }
    }

LABEL_38:
    v18 = sysctlbyname("kern.bootargs", __s1, &v19, 0, 0);
    if (v18)
    {
      if (byte_1000101B0 != 1)
      {
        return 0;
      }

      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v13 = qword_1000101A8;
      if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 3)
      {
        return 0;
      }

      v17 = v18;
      v14 = @"Calling sysctlbyname for kern.bootargs failed: %d\n";
      v15 = 3;
      v16 = 386;
    }

    else
    {
      if (strstr(__s1, "rd=md0"))
      {
        return 1;
      }

      if (byte_1000101B0 != 1)
      {
        return 0;
      }

      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v13 = qword_1000101A8;
      if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 5)
      {
        return 0;
      }

      v14 = @"Did not find rd=md0 in bootargs, assuming not RestoreOS\n";
      v15 = 5;
      v16 = 384;
    }

    sub_1000008C4(v15, v13, "Utilities.c", v16, "isRestoreOS", 0, v14, v12, v17);
    return 0;
  }

  v2 = v7;
  Value = CFDictionaryGetValue(v7, @"ReleaseType");
  if (!Value)
  {
    if (byte_1000101B0 == 1)
    {
      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
      {
        sub_1000008C4(3u, qword_1000101A8, "Utilities.c", 319, "isRestoreOSSystemVersion", 0, @"CFDictionaryGetValue for ReleaseType failed\n", v10, v17);
      }
    }

    CFRelease(v2);
    goto LABEL_32;
  }

  v5 = CFEqual(Value, @"Restore") != 0;
LABEL_17:
  CFRelease(v2);
  return v5;
}

void sub_1000014A4(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100001528;
  block[3] = &unk_10000C4F0;
  block[4] = a1;
  dispatch_async(global_queue, block);
}

void sub_100001530(uint64_t a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  v4 = *(a1 + 16);
  pthread_mutex_lock((v4 + 144));
  if (v3)
  {
    CFRetain(v3);
  }

  v5 = *(v4 + 16);
  *(v4 + 16) = v3;
  if (v5)
  {
    CFRelease(v5);
  }

  pthread_mutex_unlock((v4 + 144));
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t sub_1000015B4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40);
  if (v11)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v11 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v11 + 16) >= 5)
    {
      v14 = *(a1 + 24);
      sub_1000008C4(5u, v11, "RPSocket.cpp", 312, "set_client", 0, @"RPSocket %p: setting client. old: %p. new: %p", a8, a1);
    }
  }

  pthread_mutex_lock((a1 + 144));
  *(a1 + 24) = a2;
  if (a3)
  {
    CFRetain(a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 32) = a3;

  return pthread_mutex_unlock((a1 + 144));
}

void sub_1000016B4(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  sub_1000015B4(*(a1 + 16), sub_100001710, v3, v4, v5, v6, v7, v8);

  _Block_release(v3);
}

uint64_t sub_10000171C(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 216) - 1;
  *(a1 + 216) = v2;
  if (!v2)
  {
    (*(*a1 + 16))(a1);
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t sub_100001790(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 216);
  *(a1 + 216) = v2 + 1;
  if (!v2)
  {
    if (!dispatch_queue_get_specific(*(a1 + 48), *(a1 + 56)))
    {
      (*(*a1 + 96))(a1);
    }

    (*(*a1 + 24))(a1);
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t sub_100001844(uint64_t a1, uint64_t a2)
{
  v4 = os_transaction_create();
  v5 = (*(**(a1 + 16) + 48))(*(a1 + 16), a2);
  v6 = v5;
  if (v5)
  {
    *(*(v5 + 16) + 208) = v4;
  }

  else
  {
    os_release(v4);
  }

  return v6;
}

unint64_t sub_1000018CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(*(a1 + 16) + 40);
  if (v11)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v11 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v11 + 16) >= 5)
    {
      sub_1000008C4(5u, v11, "RPSocket.cpp", 590, "RPSocketRead", 0, @"Reading %lu bytes from socket %p to buffer %p", a8, a3);
    }
  }

  result = (***(a1 + 16))(*(a1 + 16), a2, a3);
  if (result != -1)
  {
    atomic_fetch_add_explicit(*(*(a1 + 16) + 232), result, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1000019D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 1;
  }

  v8 = a3;
  while (1)
  {
    v11 = sub_1000018CC(a1, a2, v8, a4, a5, a6, a7, a8);
    if (v11 == -1)
    {
      break;
    }

    if (!v11)
    {
      v13 = *(*(a1 + 16) + 40);
      if (v13)
      {
        goto LABEL_12;
      }

      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v13 = qword_1000101A8;
      if (qword_1000101A8)
      {
LABEL_12:
        if (*(v13 + 16) >= 3)
        {
          sub_1000008C4(3u, v13, "RPSocket.cpp", 605, "RPSocketReadBuffer", 0, @"EOF on %@\n", a8, a1);
        }
      }

      return 0;
    }

    a2 += v11;
    v8 -= v11;
    if (!v8)
    {
      return 1;
    }
  }

  v14 = *(*(a1 + 16) + 40);
  if (v14)
  {
    goto LABEL_18;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v14 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_18:
    if (*(v14 + 16) >= 3)
    {
      v15 = __error();
      v16 = strerror(*v15);
      v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
      sub_1000008C4(3u, v14, "RPSocket.cpp", 609, "RPSocketReadBuffer", v17, @"read error on %@", v18, a1);
    }
  }

  return 0;
}

const void *sub_100001B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error = 0;
  v33 = -1;
  if (!sub_1000019D4(a1, &v33, 4, a4, a5, a6, a7, a8) || v33 == -1)
  {
    v27 = *(*(a1 + 16) + 40);
    if (v27)
    {
      goto LABEL_19;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v27 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_19:
      if (*(v27 + 16) >= 3)
      {
        sub_1000008C4(3u, v27, "RPSocket.cpp", 650, "RPSocketReadDictionary", 0, @"failed to read length from %@\n", v9, a1);
      }
    }
  }

  else
  {
    v10 = v33;
    Mutable = CFDataCreateMutable(0, v33);
    if (Mutable)
    {
      v13 = Mutable;
      CFDataSetLength(Mutable, v10);
      MutableBytePtr = CFDataGetMutableBytePtr(v13);
      if (sub_1000019D4(a1, MutableBytePtr, v10, v15, v16, v17, v18, v19))
      {
        v21 = CFPropertyListCreateWithData(0, v13, 2uLL, 0, &error);
        v23 = v21;
        if (!v21 || error)
        {
          v31 = *(*(a1 + 16) + 40);
          if (v31)
          {
            goto LABEL_41;
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          v31 = qword_1000101A8;
          if (qword_1000101A8)
          {
LABEL_41:
            if (*(v31 + 16) >= 3)
            {
              sub_1000008C4(3u, v31, "RPSocket.cpp", 668, "RPSocketReadDictionary", 0, @"failed to deserialize dictionary from %@: %@\n", v22, a1);
            }
          }

          goto LABEL_35;
        }

        v24 = CFGetTypeID(v21);
        if (v24 == CFDictionaryGetTypeID())
        {
LABEL_35:
          CFRelease(v13);
          return v23;
        }

        v26 = *(*(a1 + 16) + 40);
        if (v26)
        {
          goto LABEL_12;
        }

        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v26 = qword_1000101A8;
        if (qword_1000101A8)
        {
LABEL_12:
          if (*(v26 + 16) >= 3)
          {
            sub_1000008C4(3u, v26, "RPSocket.cpp", 673, "RPSocketReadDictionary", 0, @"plist from %@ was not a dictionary\n", v25, a1);
          }
        }

        CFRelease(v23);
      }

      else
      {
        v29 = *(*(a1 + 16) + 40);
        if (v29)
        {
          goto LABEL_32;
        }

        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v29 = qword_1000101A8;
        if (qword_1000101A8)
        {
LABEL_32:
          if (*(v29 + 16) >= 3)
          {
            sub_1000008C4(3u, v29, "RPSocket.cpp", 662, "RPSocketReadDictionary", 0, @"RPSocketReadBuffer failed from %@\n", v20, a1);
          }
        }
      }

      v23 = 0;
      goto LABEL_35;
    }

    v28 = *(*(a1 + 16) + 40);
    if (v28)
    {
      goto LABEL_25;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v28 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_25:
      if (*(v28 + 16) >= 3)
      {
        sub_1000008C4(3u, v28, "RPSocket.cpp", 656, "RPSocketReadDictionary", 0, @"CFDataCreateMutable failed for len %d for %@\n", v12, v10);
      }
    }
  }

  return 0;
}

uint64_t sub_100001F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  while (1)
  {
    v6 = (*(**(a1 + 16) + 8))(*(a1 + 16), a2, v3);
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    a2 += v6;
    atomic_fetch_add_explicit((*(*(a1 + 16) + 232) + 8), v6, memory_order_relaxed);
    v3 -= v6;
    if (!v3)
    {
      return 1;
    }
  }

  v9 = *(*(a1 + 16) + 40);
  if (v9)
  {
    goto LABEL_11;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v9 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_11:
    if (*(v9 + 16) >= 3)
    {
      sub_1000008C4(3u, v9, "RPSocket.cpp", 691, "RPSocketWrite", 0, @"failed to write %zu bytes to %@\n", v7, v3);
    }
  }

  return 0;
}

uint64_t sub_100002054(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error = 0;
  if (a2)
  {
    v9 = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    v11 = v9;
    if (v9 && !error)
    {
      Length = CFDataGetLength(v9);
      v14 = Length;
      if (Length < 0x80000000)
      {
        v26 = Length;
        if (sub_100001F28(a1, &v26, 4))
        {
          BytePtr = CFDataGetBytePtr(v11);
          if (sub_100001F28(a1, BytePtr, v14))
          {
            v17 = 1;
LABEL_42:
            CFRelease(v11);
            goto LABEL_43;
          }

          v23 = *(*(a1 + 16) + 40);
          if (v23)
          {
            goto LABEL_39;
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          v23 = qword_1000101A8;
          if (qword_1000101A8)
          {
LABEL_39:
            if (*(v23 + 16) >= 3)
            {
              sub_1000008C4(3u, v23, "RPSocket.cpp", 741, "RPSocketWriteDictionary", 0, @"failed to write length to %@\n", v21, a1);
            }
          }
        }

        else
        {
          v22 = *(*(a1 + 16) + 40);
          if (v22)
          {
            goto LABEL_33;
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          v22 = qword_1000101A8;
          if (qword_1000101A8)
          {
LABEL_33:
            if (*(v22 + 16) >= 3)
            {
              sub_1000008C4(3u, v22, "RPSocket.cpp", 736, "RPSocketWriteDictionary", 0, @"failed to write length to %@\n", v19, a1);
            }
          }
        }
      }

      else
      {
        v15 = *(*(a1 + 16) + 40);
        if (v15)
        {
          goto LABEL_9;
        }

        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v15 = qword_1000101A8;
        if (qword_1000101A8)
        {
LABEL_9:
          if (*(v15 + 16) >= 3)
          {
            sub_1000008C4(3u, v15, "RPSocket.cpp", 731, "RPSocketWriteDictionary", 0, @"data too big for %@: %lu\n", v13, a1);
          }
        }
      }

      v17 = 0;
      goto LABEL_42;
    }

    v18 = *(*(a1 + 16) + 40);
    if (v18)
    {
      goto LABEL_22;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v18 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_22:
      if (*(v18 + 16) >= 3)
      {
        sub_1000008C4(3u, v18, "RPSocket.cpp", 725, "RPSocketWriteDictionary", 0, @"failed to serialize dictionary to %@: %@\n", v10, a1);
      }
    }

    v17 = 0;
    if (v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v16 = *(*(a1 + 16) + 40);
    if (v16)
    {
      goto LABEL_15;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v16 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_15:
      if (*(v16 + 16) >= 3)
      {
        sub_1000008C4(3u, v16, "RPSocket.cpp", 719, "RPSocketWriteDictionary", 0, @"no dictionary to send to %@\n", a8, a1);
      }
    }

    v17 = 0;
  }

LABEL_43:
  if (error)
  {
    CFRelease(error);
  }

  return v17;
}

void sub_1000023D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[29];
  if (*v9 || v9[1])
  {
    v10 = a1[5];
    if (v10)
    {
      goto LABEL_7;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v10 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_7:
      if (*(v10 + 16) >= 5)
      {
        v11 = a1[29];
        v13 = *v11;
        v14 = v11[1];
        sub_1000008C4(5u, v10, "RPSocket.cpp", 258, "reset_stats", 0, @"Reset stats for %@ after reading %lld bytes and writing %lld bytes\n", a8, a1[1]);
      }
    }

    v12 = a1[29];
    *v12 = 0;
    v12[1] = 0;
  }
}

void sub_1000024B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v11 = *(*(a1 + 16) + 224);
      if (!v11)
      {
        v11 = malloc_type_calloc(1uLL, 0x10000uLL, 0x100004077774924uLL);
        *(*(a1 + 16) + 224) = v11;
      }

      v12 = sub_1000018CC(a1, v11, 0x10000, a4, a5, a6, a7, a8);
      if (v12)
      {
        if (v12 == -1)
        {
          v14 = *(*(a1 + 16) + 40);
          if (v14)
          {
            goto LABEL_18;
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          v14 = qword_1000101A8;
          if (qword_1000101A8)
          {
LABEL_18:
            if (*(v14 + 16) >= 3)
            {
              v15 = __error();
              v16 = strerror(*v15);
              v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
              sub_1000008C4(3u, v14, "RPSocket.cpp", 778, "ExchangeDataHelper", v17, @"RPSocketRead from %@", v18, a1);
            }
          }
        }

        else
        {
          if (sub_100001F28(a3, v11, v12))
          {
            return;
          }

          v22 = *(*(a1 + 16) + 40);
          if (v22)
          {
            goto LABEL_40;
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          v22 = qword_1000101A8;
          if (qword_1000101A8)
          {
LABEL_40:
            if (*(v22 + 16) >= 3)
            {
              sub_1000008C4(3u, v22, "RPSocket.cpp", 786, "ExchangeDataHelper", 0, @"RPSocketWrite failed to %@", v21, a3);
            }
          }
        }
      }

      else
      {
        v20 = *(*(a1 + 16) + 40);
        if (v20)
        {
          goto LABEL_33;
        }

        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v20 = qword_1000101A8;
        if (qword_1000101A8)
        {
LABEL_33:
          if (*(v20 + 16) >= 3)
          {
            sub_1000008C4(3u, v20, "RPSocket.cpp", 782, "ExchangeDataHelper", 0, @"EOF from %@\n", v13, a1);
          }
        }
      }
    }

    else if (a2 == 16)
    {
      v10 = *(*(a1 + 16) + 40);
      if (v10)
      {
        goto LABEL_8;
      }

      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v10 = qword_1000101A8;
      if (qword_1000101A8)
      {
LABEL_8:
        if (*(v10 + 16) >= 3)
        {
          sub_1000008C4(3u, v10, "RPSocket.cpp", 760, "ExchangeDataHelper", 0, @"kCFStreamEventEndEncountered from %@\n", a8, a1);
        }
      }
    }

    else if (!a1)
    {
      if (!a3)
      {
        return;
      }

      goto LABEL_43;
    }

    (*(**(a1 + 16) + 32))(*(a1 + 16));
    if (!a3)
    {
      return;
    }

LABEL_43:
    v23 = *(**(a3 + 16) + 32);

    v23();
    return;
  }

  v19 = *(*(a1 + 16) + 40);
  if (v19)
  {
    goto LABEL_24;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v19 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_24:
    if (*(v19 + 16) >= 3)
    {
      sub_1000008C4(3u, v19, "RPSocket.cpp", 766, "ExchangeDataHelper", 0, @"wrong kCFStreamEventOpenCompleted from %@\n", a8, a1);
    }
  }
}

uint64_t sub_100002924(uint64_t a1, int a2, int a3)
{
  v6 = sub_100002F60(a1);
  *v6 = off_10000C5A0;
  *(v6 + 240) = -1;
  *(v6 + 376) = 0;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  v8 = *(v6 + 40);
  if (v8)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v8 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v8 + 16) >= 5)
    {
      sub_1000008C4(5u, v8, "RPSocket.cpp", 1003, "RPSocket_fd", 0, @"Creating RPSocket_fd: %p for fd: %d and mode: %d", v7, a1);
    }
  }

  *(a1 + 240) = a2;
  *(a1 + 248) = dispatch_queue_create("com.apple.PurpleReverseProxy.FDQueue", 0);
  v30 = 1;
  if (setsockopt(*(a1 + 240), 0xFFFF, 4130, &v30, 4u) == -1)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      goto LABEL_12;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v9 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_12:
      if (*(v9 + 16) >= 3)
      {
        v10 = __error();
        v11 = strerror(*v10);
        v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
        sub_1000008C4(3u, v9, "RPSocket.cpp", 1009, "RPSocket_fd", v12, @"setsockopt for %@", v13, *(a1 + 8));
      }
    }
  }

  bzero(v40, 0x401uLL);
  bzero(v39, 0x401uLL);
  v29 = 128;
  if (getsockname(a2, (a1 + 256), &v29))
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      goto LABEL_19;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v14 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_19:
      if (*(v14 + 16) >= 3)
      {
        v15 = __error();
        v16 = strerror(*v15);
        v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
        sub_1000008C4(3u, v14, "RPSocket.cpp", 1020, "RPSocket_fd", v17, @"getsockname for %@", v18, *(a1 + 8));
      }
    }
  }

  sub_100003138(v40, (a1 + 256));
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0;
    v32 = 0u;
    v28 = 128;
    if (getpeername(a2, &v31, &v28))
    {
      v20 = *(a1 + 40);
      if (v20)
      {
        goto LABEL_27;
      }

      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v20 = qword_1000101A8;
      if (qword_1000101A8)
      {
LABEL_27:
        if (*(v20 + 16) >= 3)
        {
          v21 = __error();
          v22 = strerror(*v21);
          v23 = CFStringCreateWithCString(0, v22, 0x8000100u);
          sub_1000008C4(3u, v20, "RPSocket.cpp", 1030, "RPSocket_fd", v23, @"getpeername for %@", v24, *(a1 + 8));
        }
      }
    }

    sub_100003138(v39, &v31);
  }

  v25 = *(a1 + 40);
  if (a3 == 2)
  {
    if (v25)
    {
      goto LABEL_42;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v25 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_42:
      if (*(v25 + 16) >= 5)
      {
        sub_1000008C4(5u, v25, "RPSocket.cpp", 1044, "RPSocket_fd", 0, @"%@: accepted %s <- %s", v19, *(a1 + 8));
      }
    }
  }

  else if (a3 == 1)
  {
    if (v25)
    {
      goto LABEL_36;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v25 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_36:
      if (*(v25 + 16) >= 5)
      {
        sub_1000008C4(5u, v25, "RPSocket.cpp", 1041, "RPSocket_fd", 0, @"%@: listening on %s", v19, *(a1 + 8));
      }
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_48;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v25 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_48:
      if (*(v25 + 16) >= 5)
      {
        sub_1000008C4(5u, v25, "RPSocket.cpp", 1038, "RPSocket_fd", 0, @"%@: with unknown mode with address: %s", v19, *(a1 + 8));
      }
    }
  }

  CFRetain(*(a1 + 8));
  v26 = dispatch_source_create(&_dispatch_source_type_read, *(a1 + 240), 0, 0);
  *(a1 + 384) = v26;
  dispatch_set_context(v26, a1);
  dispatch_source_set_cancel_handler_f(*(a1 + 384), sub_100003960);
  dispatch_source_set_event_handler_f(*(a1 + 384), sub_10000389C);
  return a1;
}

uint64_t sub_100002F60(uint64_t a1)
{
  *a1 = &off_10000C660;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = dispatch_queue_create(0, 0);
  v2 = dispatch_queue_create("com.apple.PurpleReverseProxy.RPSocket", 0);
  *(a1 + 56) = v2;
  sub_100003488(v2, v2);
  *(a1 + 64) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a1 + 224) = 0;
  *(a1 + 232) = v3;
  pthread_mutex_init((a1 + 144), 0);
  pthread_mutex_init((a1 + 72), 0);
  v4 = sub_100000C28(&off_100010090, 24);
  *(a1 + 8) = v4;
  if (v4)
  {
    *(v4 + 16) = a1;
LABEL_3:
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  if (qword_1000101A8)
  {
    if (*(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "RPSocket.cpp", 161, "RPSocket", 0, @"could not allocate socket\n", v5, v7);
    }

    goto LABEL_3;
  }

LABEL_5:
  if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 5)
  {
    v8 = *(a1 + 8);
    sub_1000008C4(5u, qword_1000101A8, "RPSocket.cpp", 165, "RPSocket", 0, @"Creating RPSocket: %p (_sockRef: %p)", v5, a1);
  }

  return a1;
}

uint64_t sub_100003138(uint64_t result, sockaddr *a2)
{
  v3 = result;
  sa_family = a2->sa_family;
  if (sa_family != 30 && sa_family != 1 && !a2->sa_family)
  {
    *(result + 8) = 62;
    v5 = *"<unknown>";
LABEL_19:
    *v3 = v5;
    return result;
  }

  sa_len = a2->sa_len;
  if (sa_family == 30)
  {
    v7 = 28;
  }

  else
  {
    v7 = 0;
  }

  if (sa_family == 2)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  if (a2->sa_len)
  {
    v9 = a2->sa_len;
  }

  else
  {
    v9 = v8;
  }

  result = getnameinfo(a2, v9, v11, 0x401u, v10, 0x20u, 10);
  if (result)
  {
    if (a2->sa_family == 1 && a2->sa_len != 2)
    {
      return snprintf(v3, 0x401uLL, "%s%.*s%s");
    }

    *(v3 + 8) = 62;
    v5 = *"<unknown>";
    goto LABEL_19;
  }

  if (!v10[0] || *v10 == 48)
  {
    v10[0] = 0;
  }

  return snprintf(v3, 0x401uLL, "%s%s%s%s%s");
}

uint64_t sub_1000032F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &off_10000C660;
  v9 = *(a1 + 40);
  if (v9)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v9 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v9 + 16) >= 5)
    {
      v18 = *(a1 + 8);
      sub_1000008C4(5u, v9, "RPSocket.cpp", 128, "~RPSocket", 0, @"Releasing RPSocket: %p (_sockRef: %p)", a8, a1);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    dispatch_release(v14);
  }

  pthread_mutex_destroy((a1 + 144));
  pthread_mutex_destroy((a1 + 72));
  v15 = *(a1 + 232);
  if (v15)
  {
    free(v15);
  }

  v16 = *(a1 + 224);
  if (v16)
  {
    free(v16);
  }

  return a1;
}

void sub_100003448(uint64_t a1)
{
  sub_100003488(*(a1 + 48), *(a1 + 56));
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  dispatch_set_target_queue(v2, v3);
}

void sub_100003488(NSObject *a1, void *a2)
{
  if (a2 && !dispatch_queue_get_specific(a1, a2))
  {

    dispatch_queue_set_specific(a1, a2, a2, 0);
  }
}

CFTypeRef sub_1000035F0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_retain(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRetain(v4);
  }

  result = *(a1 + 40);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void sub_100003658(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000036BC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a1)
  {
    sub_100003834(a1);

    operator delete();
  }
}

void sub_1000036BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  if (v9)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v9 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v9 + 16) >= 5)
    {
      v16 = a1[4];
      v17 = a1[2];
      sub_1000008C4(5u, v9, "RPSocket.cpp", 228, "invoke", 0, @"RPSocket %p (ref: %p): got signal with event %d and current _cb: %p", a8, *(a1[3] + 16));
    }
  }

  v10 = a1[2];
  if (v10)
  {
    v11 = a1[3];
    v12 = a1[4];
    v13 = a1[5];

    v10(v11, v12, v13);
  }

  else
  {
    v14 = a1[1];
    if (v14)
    {
      goto LABEL_15;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v14 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_15:
      if (*(v14 + 16) >= 3)
      {
        v15 = *(a1[3] + 16);
        sub_1000008C4(3u, v14, "RPSocket.cpp", 232, "invoke", 0, @"No client callback, missing event %d for socket %p", a8, a1[4]);
      }
    }
  }
}

void sub_100003834(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    sub_1000014A4(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1000038A0(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13[0] = *(a1 + 56);
  v2 = v13[0];
  v13[1] = v3;
  v5 = *(a1 + 8);
  v13[2] = *(a1 + 24);
  v13[3] = v5;
  v13[4] = 2;
  v13[5] = v4;
  sub_1000035F0(v13);
  pthread_mutex_unlock((a1 + 144));
  if (v2 && !dispatch_get_specific(v2))
  {
    dispatch_sync_f(v2, v13, sub_10000395C);
  }

  else
  {
    sub_1000036BC(v13, v6, v7, v8, v9, v10, v11, v12);
  }

  sub_100003834(v13);
}

void sub_100003960(dispatch_queue_t *context)
{
  dispatch_sync_f(context[31], context, sub_1000039B0);
  v2 = context[1];

  sub_1000014A4(v2);
}

uint64_t sub_1000039D4(uint64_t a1)
{
  result = *(a1 + 240);
  if (result != -1)
  {
    result = close(result);
  }

  *(a1 + 240) = -1;
  return result;
}

uint64_t sub_100003A0C(uint64_t a1)
{
  result = *(a1 + 240);
  if (result != -1)
  {
    return shutdown(result, 2);
  }

  return result;
}

void sub_100003A24(uint64_t a1)
{
  sub_100003488(*(a1 + 48), *(a1 + 56));
  dispatch_set_target_queue(*(a1 + 56), *(a1 + 48));
  v2 = *(a1 + 384);
  v3 = *(a1 + 56);

  dispatch_set_target_queue(v2, v3);
}

void sub_100003A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003AA8(a1, a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

uint64_t sub_100003AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = off_10000C5A0;
  v9 = *(a1 + 40);
  if (v9)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v9 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v9 + 16) >= 5)
    {
      sub_1000008C4(5u, v9, "RPSocket.cpp", 1070, "~RPSocket_fd", 0, @"Releasing RPSocket_fd: %p", a8, a1);
    }
  }

  dispatch_source_cancel(*(a1 + 384));
  dispatch_release(*(a1 + 384));
  dispatch_release(*(a1 + 248));

  return sub_1000032F4(a1, v10, v11, v12, v13, v14, v15, v16);
}

const void *sub_100003BA0(uint64_t a1)
{
  v1 = *(a1 + 240);
  v25 = 4;
  if (qword_1000101C0 != -1)
  {
    dispatch_once(&qword_1000101C0, &stru_10000C4D0);
  }

  v26 = 0;
  usleep(1000 * dword_100010088);
  if (getsockopt(v1, 6, 516, &v26, &v25))
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v2 = qword_1000101A8;
    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      v3 = __error();
      v4 = strerror(*v3);
      v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
      sub_1000008C4(3u, v2, "Utilities.c", 292, "copyEntitlementsForSocketPeer", v5, @"getsockopt", v6, v24);
    }

    return 0;
  }

  v7 = v26;
  v27 = 0;
  if (!csops())
  {
    return 0;
  }

  if (*__error() != 34)
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v13 = qword_1000101A8;
    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      v14 = __error();
      strerror(*v14);
      sub_1000008C4(3u, v13, "Utilities.c", 238, "copyEntitlementsForPid", 0, @"csops1(%d): %s\n", v15, v7);
    }

    return 0;
  }

  v8 = malloc_type_calloc(1uLL, bswap32(HIDWORD(v27)), 0xB769B7DuLL);
  if (csops())
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v10 = qword_1000101A8;
    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      v11 = __error();
      strerror(*v11);
      sub_1000008C4(3u, v10, "Utilities.c", 246, "copyEntitlementsForPid", 0, @"csops2(%d): %s\n", v12, v7);
    }

    if (!v8)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (*v8 != 1903288058)
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "Utilities.c", 251, "copyEntitlementsForPid", 0, @"bad magic 0x%08x\n", v9, *v8);
    }

    goto LABEL_18;
  }

  v18 = bswap32(*(v8 + 1));
  if (v18 < 9 || (v19 = v18 - 8, *(v8 + 1) = v19, (v20 = CFDataCreateWithBytesNoCopy(0, v8 + 8, v19, kCFAllocatorNull)) == 0))
  {
LABEL_18:
    free(v8);
    return 0;
  }

  v21 = v20;
  v22 = CFPropertyListCreateWithData(0, v20, 0, 0, 0);
  v16 = v22;
  if (v22)
  {
    v23 = CFGetTypeID(v22);
    if (v23 != CFDictionaryGetTypeID())
    {
      CFRelease(v16);
      v16 = 0;
    }
  }

  free(v8);
  CFRelease(v21);
  return v16;
}

uint64_t sub_100003F94(uint64_t a1)
{
  v1 = *(a1 + 257);
  if (v1 == 30 || v1 == 2)
  {
    return bswap32(*(a1 + 258)) >> 16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003FBC(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
LABEL_5:
    if (accept(*(a1 + 240), 0, 0) != -1)
    {

      sub_1000028B0();
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      goto LABEL_18;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v19 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_18:
      if (*(v19 + 16) >= 3)
      {
        v20 = __error();
        v21 = strerror(*v20);
        v12 = CFStringCreateWithCString(0, v21, 0x8000100u);
        v14 = "RPSocket.cpp";
        v28 = *(a1 + 8);
        v15 = "accept";
        v16 = @"accept for %@";
        v17 = v19;
        v18 = 1152;
        goto LABEL_20;
      }
    }

    return 0;
  }

  v4 = *(a1 + 240);
  v5 = kqueue();
  if (v5 != -1)
  {
    v6 = v5;
    timeout.tv_sec = (a2 / 0x3B9ACA00);
    timeout.tv_nsec = a2 % 0x3B9ACA00;
    eventlist.ident = v4;
    *&eventlist.filter = 1179647;
    memset(&eventlist.fflags, 0, 20);
    v7 = kevent(v5, &eventlist, 1, &eventlist, 1, &timeout);
    if (v7 == -1)
    {
      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v22 = qword_1000101A8;
      if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
      {
        v23 = __error();
        v24 = strerror(*v23);
        v25 = CFStringCreateWithCString(0, v24, 0x8000100u);
        sub_1000008C4(3u, v22, "Utilities.c", 210, "WaitSocket", v25, @"kevent", v26, v28);
      }

      close(v6);
      return 0;
    }

    v8 = v7;
    close(v6);
    if (v8 < 1)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v9 = qword_1000101A8;
  if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
  {
    v10 = __error();
    v11 = strerror(*v10);
    v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
    v14 = "Utilities.c";
    v15 = "WaitSocket";
    v16 = @"kqueue";
    v17 = v9;
    v18 = 200;
LABEL_20:
    sub_1000008C4(3u, v17, v14, v18, v15, v12, v16, v13, v28);
  }

  return 0;
}

void sub_1000042F0(dispatch_queue_t *a1)
{
  dispatch_suspend(a1[48]);
  dispatch_source_cancel(a1[48]);
  dispatch_sync_f(a1[31], a1, sub_100004358);
  sub_100003510(a1);
}

CFStringRef sub_10000439C(uint64_t a1)
{
  v1 = *(a1 + 16);
  pthread_mutex_lock((v1 + 144));
  v2 = *(v1 + 16);
  if (v2)
  {
    CFRetain(*(v1 + 16));
  }

  pthread_mutex_unlock((v1 + 144));
  v3 = (*(*v1 + 40))(v1);
  v4 = v3;
  if (v3)
  {
    v5 = CFStringCreateWithFormat(0, 0, @"<RPSocket %p %p: %@ %@>", v1, *(v1 + 8), v2, v3);
  }

  else
  {
    v5 = CFStringCreateWithFormat(0, 0, @"<RPSocket %p %p: %@>", v1, *(v1 + 8), v2);
  }

  v6 = v5;
  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

uint64_t sub_100004470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  v10 = *(v9 + 40);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v10 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v10 + 16) >= 5)
    {
      v11 = *(v9 + 232);
      v15 = *v11;
      v16 = v11[1];
      sub_1000008C4(5u, v10, "RPSocket.cpp", 455, "FinalizeRPSocket", 0, @"Closed %@ after reading %lld bytes and writing %lld bytes\n", a8, a1);
    }
  }

  if (*(v9 + 208))
  {
    v12 = *(v9 + 40);
    if (v12)
    {
      goto LABEL_12;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v12 = qword_1000101A8;
    if (qword_1000101A8)
    {
LABEL_12:
      if (*(v12 + 16) >= 5)
      {
        sub_1000008C4(5u, v12, "RPSocket.cpp", 458, "FinalizeRPSocket", 0, @"Ending os transaction for %@\n", a8, a1);
      }
    }

    os_release(*(v9 + 208));
    *(v9 + 208) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    v14 = *(*result + 88);

    return v14();
  }

  return result;
}

void sub_100004620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100003AA8(a1, a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

void sub_1000046B4(id a1)
{
  v1 = dlopen("/usr/lib/liblockdown.dylib", 1);
  if (v1)
  {
    v2 = v1;
    off_1000101C8 = dlsym(v1, "lockdown_send");
    off_1000101D0 = dlsym(v2, "lockdown_recv");
    off_1000101D8 = dlsym(v2, "lockdown_disconnect");
    off_1000101E0 = dlsym(v2, "lockdown_get_socket");
  }
}

uint64_t sub_100004744()
{
  if (qword_1000101F8 != -1)
  {
    dispatch_once(&qword_1000101F8, &stru_10000C570);
  }

  if (off_1000101F0)
  {
    operator new();
  }

  return 0;
}

void sub_100004854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000488C(a1, a2, a3, a4, a5, a6, a7, a8);

  operator delete();
}

uint64_t sub_10000488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = off_10000C798;
  v9 = *(a1 + 40);
  if (v9)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v9 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v9 + 16) >= 5)
    {
      sub_1000008C4(5u, v9, "RPSocket.cpp", 1305, "~RPSocket_lockdown_service", 0, @"Releasing RPSocket_lockdown_service: %p", a8, a1);
    }
  }

  Count = CFArrayGetCount(*(a1 + 256));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 256), i);
      if (ValueAtIndex)
      {
        (*(*ValueAtIndex[2] + 32))(ValueAtIndex[2]);
      }
    }
  }

  CFRelease(*(a1 + 256));
  free(*(a1 + 240));
  pthread_mutex_destroy((a1 + 264));
  pthread_cond_destroy((a1 + 328));

  return sub_1000032F4(a1, v13, v14, v15, v16, v17, v18, v19);
}

const void *sub_1000049F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    gettimeofday(&v17, 0);
    v4 = a2 + 1000 * v17.tv_usec;
    tv_sec = v17.tv_sec;
    v6 = (a1 + 264);
    pthread_mutex_lock((a1 + 264));
    if (v4)
    {
      v7 = tv_sec + v4 / 0x3B9ACA00;
      v8 = v4 % 0x3B9ACA00;
      while (!CFArrayGetCount(*(a1 + 256)))
      {
        v16.tv_sec = v7;
        v16.tv_nsec = v8;
        v9 = pthread_cond_timedwait((a1 + 328), (a1 + 264), &v16);
        if (v9)
        {
          v10 = *(a1 + 40);
          if (v10)
          {
            goto LABEL_10;
          }

          if (qword_1000101A0 != -1)
          {
            v15 = v9;
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
            v9 = v15;
          }

          v10 = qword_1000101A8;
          if (qword_1000101A8)
          {
LABEL_10:
            if (*(v10 + 16) >= 3)
            {
              v11 = *(a1 + 8);
              strerror(v9);
              sub_1000008C4(3u, v10, "RPSocket.cpp", 1359, "accept", 0, @"pthread_cond_timedwait from %@: %s\n", v12, v11);
            }
          }

          break;
        }
      }
    }
  }

  else
  {
    v6 = (a1 + 264);
    pthread_mutex_lock((a1 + 264));
  }

  if (CFArrayGetCount(*(a1 + 256)) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 256), 0);
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(*(a1 + 256), 0);
  }

  pthread_mutex_unlock(v6);
  return ValueAtIndex;
}

uint64_t sub_100004BE8(uint64_t result)
{
  if ((*(result + 248) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 240);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = sub_100004C88;
    v3[3] = &unk_10000C828;
    v3[4] = v1;
    result = off_1000101F0(v2, 0, 0, v3);
    *(v1 + 248) = 1;
  }

  return result;
}

void sub_100004C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  if (v9)
  {
    goto LABEL_5;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v9 = qword_1000101A8;
  if (qword_1000101A8)
  {
LABEL_5:
    if (*(v9 + 16) >= 7)
    {
      v10 = *(v8 + 8);
      sub_1000008C4(7u, v9, "RPSocket.cpp", 1320, "unpause_block_invoke", 0, @"got a %s connection for %@\n", a8, *(v8 + 240));
    }
  }

  if (qword_1000101E8 != -1)
  {
    dispatch_once(&qword_1000101E8, &stru_10000C530);
  }

  if (off_1000101C8 && off_1000101D0 && off_1000101D8 && off_1000101E0)
  {
    operator new();
  }

  pthread_mutex_lock((v8 + 264));
  CFArrayAppendValue(*(v8 + 256), 0);
  CFRelease(0);
  pthread_cond_broadcast((v8 + 328));
  pthread_mutex_unlock((v8 + 264));

  sub_1000038A0(v8);
}

void sub_100004E94(id a1)
{
  v1 = dlopen("/usr/lib/liblockdown.dylib", 1);
  if (v1)
  {
    off_1000101F0 = dlsym(v1, "lockdown_checkin_xpc");
  }
}

void start(int a1, uint64_t a2)
{
  v3 = a1 >= 2 && (v2 = *(a2 + 8)) != 0 && strcmp(v2, "--ramdisk") == 0;
  v4 = sub_1000055D0("notify");
  if (!v4)
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v6 = qword_1000101A8;
    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      v7 = @"notify socket checkin failed\n";
      v8 = 398;
LABEL_51:
      sub_1000008C4(3u, v6, "PurpleReverseProxyService.c", v8, "main", 0, v7, v5, v33);
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  v9 = v4;
  v10 = sub_1000055D0("socks");
  if (!v10)
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v6 = qword_1000101A8;
    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      v7 = @"socks socket checkin failed\n";
      v8 = 404;
      goto LABEL_51;
    }

LABEL_52:
    exit(1);
  }

  v11 = v10;
  if (v3)
  {
    *v36 = xmmword_100007968;
    *&v36[12] = *(&xmmword_100007968 + 12);
    v12 = sub_1000055D0("ctrl");
    v13 = socket(30, 1, 0);
    if (v13 != -1)
    {
      v19 = v13;
      if (bind(v13, v36, 0x1Cu) == -1)
      {
        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v20 = qword_1000101A8;
        if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
        {
          v21 = __error();
          v22 = strerror(*v21);
          v23 = CFStringCreateWithCString(0, v22, 0x8000100u);
          sub_1000008C4(3u, v20, "RPSocket.cpp", 1215, "RPCreateSocketAcceptingWithAddress", v23, @"bind(port=%d)", v24, 0);
        }
      }

      else
      {
        if (listen(v19, 128) != -1)
        {
          sub_1000028B0();
        }

        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v25 = qword_1000101A8;
        if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
        {
          v26 = __error();
          v27 = strerror(*v26);
          v28 = CFStringCreateWithCString(0, v27, 0x8000100u);
          sub_1000008C4(3u, v25, "RPSocket.cpp", 1220, "RPCreateSocketAcceptingWithAddress", v28, @"listen(port=%d)", v29, 0);
        }
      }

      close(v19);
LABEL_44:
      v14 = 0;
      if (v12)
      {
LABEL_45:
        if (v14)
        {
          v30 = (sub_100000F80() & 1) == 0 && (MGGetBoolAnswer() & 1) != 0 && !v3;
          v31 = (*(**(v14 + 16) + 56))(*(v14 + 16));
          qword_100010200 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 0x40000000;
          aBlock[2] = sub_10000574C;
          aBlock[3] = &unk_10000C868;
          aBlock[4] = v9;
          v41 = v30;
          sub_1000016B4(v9, aBlock);
          *v36 = _NSConcreteStackBlock;
          *&v36[8] = 0x40000000;
          *&v36[16] = sub_10000588C;
          *&v36[24] = &unk_10000C888;
          v39 = v30;
          v37 = v11;
          v38 = v14;
          sub_1000016B4(v11, v36);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 0x40000000;
          v34[2] = sub_10000600C;
          v34[3] = &unk_10000C8C8;
          v34[4] = v12;
          v35 = v31;
          sub_1000016B4(v12, v34);
          sub_100001790(*(v9 + 16));
          sub_100001790(*(v12 + 16));
          sub_100001790(*(v11 + 16));
          if (!v3)
          {
            sub_100001790(*(v14 + 16));
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 7)
          {
            sub_1000008C4(7u, qword_1000101A8, "PurpleReverseProxyService.c", 460, "main", 0, @"proxy running\n", v32, v33);
          }

          CFRunLoopRun();
          exit(0);
        }

        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v6 = qword_1000101A8;
        if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
        {
          v7 = @"no conn listener\n";
          v8 = 443;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

LABEL_26:
      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v6 = qword_1000101A8;
      if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
      {
        v7 = @"no ctrl listener\n";
        v8 = 438;
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v14 = qword_1000101A8;
    if (qword_1000101A8)
    {
      if (*(qword_1000101A8 + 16) >= 3)
      {
        v15 = __error();
        v16 = strerror(*v15);
        v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
        sub_1000008C4(3u, v14, "RPSocket.cpp", 1202, "RPCreateSocketAcceptingWithAddress", v17, @"socket(%d, SOCK_STREAM)", v18, 30);
      }

      goto LABEL_44;
    }
  }

  else
  {
    v12 = sub_100004744();
    v14 = sub_100004744();
  }

  if (v12)
  {
    goto LABEL_45;
  }

  goto LABEL_26;
}

int *sub_1000055D0(const char *a1)
{
  cnt = 0;
  fds = 0;
  v2 = launch_activate_socket(a1, &fds, &cnt);
  if (v2)
  {
    v4 = v2;
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v5 = qword_1000101A8;
    if (qword_1000101A8)
    {
      if (*(qword_1000101A8 + 16) >= 3)
      {
        v9 = strerror(v4);
        sub_1000008C4(3u, v5, "PurpleReverseProxyService.c", 22, "get_launchd_socket", 0, @"launch_activate_socket: %s\n", v6, v9);
      }
    }
  }

  else
  {
    if (cnt)
    {
      v8 = *fds;
      free(fds);
      if (v8 != -1)
      {
        sub_1000028B0();
      }

      return 0;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 26, "get_launchd_socket", 0, @"launch_activate_socket: no sockets for %s\n", v3, a1);
    }
  }

  result = fds;
  if (fds)
  {
    free(fds);
    return 0;
  }

  return result;
}

void sub_10000574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_100006570(*(a1 + 32), a2, *(a1 + 40), a4, a5, a6, a7, a8);
  if (v9)
  {
    v11 = v9;
    sub_100001530(v9, @"NotifyConn");
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100006D00;
    aBlock[3] = &unk_10000C848;
    aBlock[4] = v11;
    sub_1000016B4(v11, aBlock);
    sub_100001790(v11[2]);
    CFRelease(v11);
  }

  else
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v12 = qword_1000101A8;
    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {

      sub_1000008C4(3u, v12, "PurpleReverseProxyService.c", 139, "startProxy_block_invoke", 0, @"acceptConnection failed\n", v10, a9);
    }
  }
}

void sub_10000588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = sub_100006570(*(a1 + 32), a2, *(a1 + 48), a4, a5, a6, a7, a8);
  if (v10)
  {
    v12 = v10;
    pthread_mutex_lock(&stru_100010158);
    v13 = qword_100010208;
    if (qword_100010208)
    {
      CFRetain(qword_100010208);
      v14 = dword_100010198;
      pthread_mutex_unlock(&stru_100010158);
      LODWORD(__buf) = 1;
      if (sub_100001F28(v13, &__buf, 4))
      {
        v15 = sub_100001844(*(a1 + 40), 10000000000);
        if (v15)
        {
          v17 = v15;
          v18 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
          if (sub_1000019D4(v17, v18, 10, v19, v20, v21, v22, v23))
          {
            if (*v18 == 0x6E6F436F6C6C6548 && v18[4] == 110)
            {
              v27 = 1;
              if (!v18)
              {
LABEL_18:
                if (v27)
                {
                  v81 = 0;
                  __buf = 0;
                  arc4random_buf(&__buf, 0xCuLL);
                  v28 = CFStringCreateWithFormat(0, 0, @"%08x%08x%08x", __buf, HIDWORD(__buf), v81);
                  v36 = v28;
                  if (v14 == 1)
                  {
                    v37 = 0;
                    if (sub_100001F28(v17, "HelloConn", 10))
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v37 = sub_100000CE4(@"HelloConn", v29, v30, v31, v32, v33, v34, v35, @"Identifier", v28);
                    sub_100000E08(v37, @"ConnProtoVersion", 2);
                    if (sub_100002054(v17, v37, v40, v41, v42, v43, v44, v45))
                    {
LABEL_55:
                      sub_100001530(v17, @"Host-%@", v36);
                      sub_100001530(v12, @"Client-%@", v36);
                      v46 = v12[2];
                      pthread_mutex_lock((v46 + 144));
                      v47 = *(v46 + 48);
                      dispatch_retain(v47);
                      pthread_mutex_unlock((v46 + 144));
                      v48 = v17[2];
                      dispatch_retain(v47);
                      pthread_mutex_lock((v48 + 144));
                      v49 = *(v48 + 48);
                      if (dispatch_queue_get_specific(v49, *(v48 + 56)))
                      {
                        __assert_rtn("set_target_queue", "RPSocket.cpp", 348, "!has_synced_to_queue_hint(oldTargetQ, _queue)");
                      }

                      *(v48 + 48) = v47;
                      pthread_mutex_unlock((v48 + 144));
                      dispatch_release(v49);
                      dispatch_release(v47);
                      v51 = v17[2];
                      v52 = v12[2];
                      if (v51[6] != v52[6])
                      {
                        __assert_rtn("RPSocketExchangeData", "RPSocket.cpp", 801, "fromSock->_targetQueue == toSock->_targetQueue");
                      }

                      v53 = v51[5];
                      if (v53)
                      {
                        goto LABEL_61;
                      }

                      if (qword_1000101A0 != -1)
                      {
                        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
                      }

                      v53 = qword_1000101A8;
                      if (qword_1000101A8)
                      {
LABEL_61:
                        if (*(v53 + 16) >= 5)
                        {
                          sub_1000008C4(5u, v53, "RPSocket.cpp", 803, "RPSocketExchangeData", 0, @"RPSocketExchangeData:   %p  <==>  %p\n", v50, v51);
                        }
                      }

                      sub_10000171C(v17[2]);
                      sub_10000171C(v12[2]);
                      sub_1000023D8(v51, v54, v55, v56, v57, v58, v59, v60);
                      sub_1000023D8(v52, v61, v62, v63, v64, v65, v66, v67);
                      v73 = *(v17[2] + 40);
                      if (v73)
                      {
                        goto LABEL_67;
                      }

                      if (qword_1000101A0 != -1)
                      {
                        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
                      }

                      v73 = qword_1000101A8;
                      if (qword_1000101A8)
                      {
LABEL_67:
                        if (*(v73 + 16) >= 5)
                        {
                          sub_1000008C4(5u, v73, "RPSocket.cpp", 811, "RPSocketExchangeData", 0, @"Beginning data exchange:   %@  <==>  %@\n", v72, v17);
                        }
                      }

                      sub_1000015B4(v17[2], sub_1000024B8, v12, v68, v69, v70, v71, v72);
                      sub_1000015B4(v12[2], sub_1000024B8, v17, v74, v75, v76, v77, v78);
                      sub_100001790(v17[2]);
                      sub_100001790(v12[2]);
                      sub_100001790(v17[2]);
                      sub_100001790(v12[2]);
                      CFRelease(v12);
LABEL_41:
                      CFRelease(v13);
LABEL_42:
                      if (v17)
                      {
                        CFRelease(v17);
                      }

                      if (v36)
                      {
                        CFRelease(v36);
                      }

                      if (v37)
                      {
                        CFRelease(v37);
                      }

                      return;
                    }
                  }

LABEL_38:
                  (*(*v12[2] + 32))(v12[2]);
                  if (v17)
                  {
                    (*(*v17[2] + 32))(v17[2]);
                  }

                  CFRelease(v12);
                  if (!v13)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_41;
                }

LABEL_37:
                v36 = 0;
                v37 = 0;
                goto LABEL_38;
              }

LABEL_17:
              free(v18);
              goto LABEL_18;
            }

            v26 = *(v17[2] + 40);
            if (v26)
            {
              goto LABEL_14;
            }

            if (qword_1000101A0 != -1)
            {
              dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
            }

            v26 = qword_1000101A8;
            if (qword_1000101A8)
            {
LABEL_14:
              if (*(v26 + 16) >= 3)
              {
                sub_1000008C4(3u, v26, "RPSocket.cpp", 632, "RPSocketReceiveExpectedMessage", 0, @"invalid message from %@, expecting '%s'\n", v24, v17);
              }
            }
          }

          v27 = 0;
          if (!v18)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
        {
          sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 241, "startProxy_block_invoke_3", 0, @"RPSocketCreateAccepted failed\n", v16, key);
        }
      }

      else
      {
        (*(*v13[2] + 32))(v13[2]);
      }
    }

    else
    {
      pthread_mutex_unlock(&stru_100010158);
      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
      {
        sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 228, "startProxy_block_invoke_3", 0, @"no current ctrl connection exists from the host so we can't accept socks connections right now\n", v39, key);
      }

      v13 = 0;
    }

    v17 = 0;
    goto LABEL_37;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v38 = qword_1000101A8;
  if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
  {

    sub_1000008C4(3u, v38, "PurpleReverseProxyService.c", 216, "startProxy_block_invoke_3", 0, @"acceptConnection failed\n", v11, a9);
  }
}

void sub_10000600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = -1;
  v9 = sub_100006570(*(a1 + 32), a2, 0, a4, a5, a6, a7, a8);
  if (v9)
  {
    v11 = v9;
    sub_100001530(v9, @"CtrlConn");
    if (sub_1000019D4(v11, &v48, 10, v12, v13, v14, v15, v16))
    {
      if (v48 == 0x7274436E69676542 && v49 == 108)
      {
        v30 = sub_100001B84(v11, v17, v18, v19, v20, v21, v22, v23);
        v26 = v30;
        if (v30)
        {
          if (sub_100000E6C(v30, @"CtrlProtoVersion", &v47))
          {
            if (v47 != 2)
            {
              if (qword_1000101A0 != -1)
              {
                dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
              }

              v31 = qword_1000101A8;
              if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
              {
                v45 = v47;
                sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 315, "startProxy_block_invoke_4", 0, @"Mismatched ctrl proto version (expected %d, got %d); this may or may not work\n", v37, 2);
              }
            }

            v27 = sub_100000CE4(@"BeginCtrl", v31, v32, v33, v34, v35, v36, v37, 0, v45);
            sub_100000E08(v27, @"CtrlProtoVersion", 2);
            sub_100000E08(v27, @"ConnPort", *(a1 + 40));
            if (sub_100002054(v11, v27, v38, v39, v40, v41, v42, v43))
            {
              goto LABEL_12;
            }

LABEL_46:
            (*(*v11[2] + 32))(v11[2]);
LABEL_47:
            CFRelease(v11);
            if (v26)
            {
              CFRelease(v26);
            }

            if (v27)
            {
              CFRelease(v27);
            }

            return;
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
          {
            sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 310, "startProxy_block_invoke_4", 0, @"Host didn't specify ctrl proto version\n", v37, key);
          }
        }

LABEL_45:
        v27 = 0;
        goto LABEL_46;
      }

      if (v48 != 0x7274436F6C6C6548 || v49 != 108)
      {
        v26 = 0;
        v27 = 0;
LABEL_12:
        pthread_mutex_lock(&stru_100010158);
        v29 = qword_100010208;
        if (qword_100010208)
        {
          CFRetain(qword_100010208);
        }

        qword_100010208 = v11;
        dword_100010198 = v47;
        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 5)
        {
          sub_1000008C4(5u, qword_1000101A8, "PurpleReverseProxyService.c", 340, "startProxy_block_invoke_4", 0, @"got a ctrl connection from a host so we can now accept socks connections\n", v28, key);
        }

        sub_100006834(1);
        CFRetain(v11);
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 0x40000000;
        aBlock[2] = sub_1000068B8;
        aBlock[3] = &unk_10000C8A8;
        aBlock[4] = v11;
        sub_1000016B4(v11, aBlock);
        sub_100001790(v11[2]);
        notify_post("com.apple.PurpleReverseProxy.ProxyOnline");
        pthread_mutex_unlock(&stru_100010158);
        if (v29)
        {
          (*(**(v29 + 16) + 32))(*(v29 + 16));
          sub_1000014A4(v29);
        }

        goto LABEL_47;
      }

      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
      {
        sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 326, "startProxy_block_invoke_4", 0, @"Host is using deprecated ReverseProxy protocol; allowing for now\n", v23, key);
      }

      if (sub_100001F28(v11, "HelloCtrl", 10) && sub_100001F28(v11, a1 + 40, 2))
      {
        v26 = 0;
        v27 = 0;
        v47 = 1;
        goto LABEL_12;
      }
    }

    v26 = 0;
    goto LABEL_45;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
  {
    sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 294, "startProxy_block_invoke_4", 0, @"acceptConnection failed\n", v10, key);
  }
}

uint64_t sub_100006570(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 2)
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 55, "acceptConnection", 0, @"unknown event type %lu\n", a8, a2);
    }

LABEL_30:
    exit(1);
  }

  v9 = sub_100001844(a1, 0);
  if (!v9)
  {
    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
    {
      sub_1000008C4(3u, qword_1000101A8, "PurpleReverseProxyService.c", 61, "acceptConnection", 0, @"RPSocketCreateAccepted failed\n", v10, v20);
    }

    goto LABEL_30;
  }

  v11 = v9;
  if (!a3)
  {
    return v11;
  }

  v12 = (*(**(v9 + 16) + 72))(*(v9 + 16));
  v14 = v12;
  if (v12)
  {
    if (CFDictionaryGetValue(v12, @"com.apple.private.PurpleReverseProxy.allowed") == kCFBooleanTrue)
    {
LABEL_18:
      CFRelease(v14);
      return v11;
    }

    if (qword_1000101A0 != -1)
    {
      dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
    }

    v15 = qword_1000101A8;
    if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 3)
    {
      goto LABEL_17;
    }

    v16 = @"client not entitled to use proxy\n";
    v17 = 74;
    goto LABEL_16;
  }

  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  v15 = qword_1000101A8;
  if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 3)
  {
    v16 = @"RPSocketCopyEntitlements failed\n";
    v17 = 69;
LABEL_16:
    sub_1000008C4(3u, v15, "PurpleReverseProxyService.c", v17, "acceptConnection", 0, v16, v13, v20);
  }

LABEL_17:
  (*(**(v11 + 16) + 32))(*(v11 + 16));
  sub_1000014A4(v11);
  v11 = 0;
  if (v14)
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_100006834(char a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100006B74;
  block[3] = &unk_10000C8E8;
  v4 = a1;
  dispatch_async(global_queue, block);
}

void sub_1000068B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 2)
  {
    v9 = sub_1000018CC(*(a1 + 32), v25, 10, a4, a5, a6, a7, a8);
    if (v9 < 1)
    {
      if (qword_1000101A0 != -1)
      {
        v23 = v9;
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        v9 = v23;
      }

      v18 = qword_1000101A8;
      if (v9 == -1)
      {
        if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 3)
        {
          goto LABEL_24;
        }

        v21 = __error();
        v22 = strerror(*v21);
        v19 = CFStringCreateWithCString(0, v22, 0x8000100u);
        v12 = @"ctrl socket read";
        v13 = 3;
        v11 = v18;
        v14 = 352;
        goto LABEL_23;
      }

      if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 7)
      {
        goto LABEL_24;
      }

      v12 = @"ctrl socket eof\n";
      v13 = 7;
      v11 = qword_1000101A8;
      v14 = 354;
    }

    else
    {
      if (qword_1000101A0 != -1)
      {
        dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
      }

      v11 = qword_1000101A8;
      if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 3)
      {
        goto LABEL_24;
      }

      v12 = @"unexpected data on ctrl socket\n";
      v13 = 3;
      v14 = 350;
    }

    v19 = 0;
LABEL_23:
    sub_1000008C4(v13, v11, "PurpleReverseProxyService.c", v14, "startProxy_block_invoke_5", v19, v12, v10, v24);
LABEL_24:
    v20 = *(a1 + 32);
    if (v20)
    {
      (*(**(v20 + 16) + 32))(*(v20 + 16));
    }

    return;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(**(v16 + 16) + 32))(*(v16 + 16));
  }

  if (a2 == 8)
  {
    pthread_mutex_lock(&stru_100010158);
    if (qword_100010208 == *(a1 + 32))
    {
      qword_100010208 = 0;
      dword_100010198 = -1;
      sub_100006834(0);
    }

    pthread_mutex_unlock(&stru_100010158);
    v17 = *(a1 + 32);

    sub_1000014A4(v17);
  }
}

uint64_t sub_100006B74(uint64_t a1)
{
  pthread_mutex_lock(&stru_100010118);
  CFSetApplyFunction(qword_100010200, sub_100006BD8, (a1 + 32));

  return pthread_mutex_unlock(&stru_100010118);
}

uint64_t sub_100006BE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1000101A0 != -1)
  {
    dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
  }

  if (qword_1000101A8 && *(qword_1000101A8 + 16) >= 5)
  {
    v10 = "is not";
    if (a2)
    {
      v10 = "is";
    }

    sub_1000008C4(5u, qword_1000101A8, "PurpleReverseProxyService.c", 102, "sendANotification", 0, @"sending a client notification that the proxy %s online\n", a8, v10);
  }

  v13 = a2;
  result = sub_100001F28(a1, &v13, 4);
  if ((result & 1) == 0 && a1)
  {
    v12 = *(**(a1 + 16) + 32);

    return v12();
  }

  return result;
}

void sub_100006D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 2)
  {
    v9 = sub_100001B84(*(a1 + 32), 2, a3, a4, a5, a6, a7, a8);
    if (v9)
    {
      v10 = v9;
      Value = CFDictionaryGetValue(v9, @"Command");
      if (Value)
      {
        v13 = Value;
        if (CFEqual(Value, @"RegisterNotify"))
        {
          pthread_mutex_lock(&stru_100010118);
          CFSetAddValue(qword_100010200, *(a1 + 32));
          pthread_mutex_unlock(&stru_100010118);
          pthread_mutex_lock(&stru_100010158);
          sub_100006BE0(*(a1 + 32), qword_100010208 != 0, v14, v15, v16, v17, v18, v19);
          pthread_mutex_unlock(&stru_100010158);

          CFRelease(v10);
          return;
        }

        if (CFEqual(v13, @"SetLogLevel"))
        {
          v30 = 0;
          if (sub_100000E6C(v10, @"Level", &v30))
          {
            v24 = v30;
            if (qword_1000101A0 != -1)
            {
              dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
            }

            v25 = qword_1000101A8;
            if (v24 >= 7)
            {
              LODWORD(v26) = 7;
            }

            else
            {
              LODWORD(v26) = v24;
            }

            if (v24 < 0)
            {
              LODWORD(v26) = 0;
            }

            if (v24 == -1)
            {
              v26 = 5;
            }

            else
            {
              v26 = v26;
            }

            *(qword_1000101A8 + 16) = v26;
            if (v26 >= 3)
            {
              v29 = (&off_10000C470)[v26];
              sub_1000008C4(3u, v25, "Logging.c", 111, "SetDefaultLogLevel", 0, @"set default log level to %d (%s)\n", v12, v26);
            }

            goto LABEL_43;
          }

          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          v21 = qword_1000101A8;
          if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 3)
          {
            goto LABEL_43;
          }

          v22 = @"client dictionary has invalid level\n";
          v23 = 176;
        }

        else
        {
          if (qword_1000101A0 != -1)
          {
            dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
          }

          v21 = qword_1000101A8;
          if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 3)
          {
            goto LABEL_43;
          }

          v22 = @"unknown command from client\n";
          v23 = 182;
        }
      }

      else
      {
        if (qword_1000101A0 != -1)
        {
          dispatch_once_f(&qword_1000101A0, &qword_1000101A8, sub_1000007E4);
        }

        v21 = qword_1000101A8;
        if (!qword_1000101A8 || *(qword_1000101A8 + 16) < 3)
        {
          goto LABEL_43;
        }

        v22 = @"client dictionary doesn't contain a command\n";
        v23 = 156;
      }

      sub_1000008C4(3u, v21, "PurpleReverseProxyService.c", v23, "startProxy_block_invoke_2", 0, v22, v12, v28);
LABEL_43:
      v27 = *(a1 + 32);
      if (v27)
      {
        (*(**(v27 + 16) + 32))(*(v27 + 16));
      }

      pthread_mutex_lock(&stru_100010118);
      CFSetRemoveValue(qword_100010200, *(a1 + 32));
      pthread_mutex_unlock(&stru_100010118);
      CFRelease(v10);
      return;
    }
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    (*(**(v20 + 16) + 32))(*(v20 + 16));
  }

  pthread_mutex_lock(&stru_100010118);
  CFSetRemoveValue(qword_100010200, *(a1 + 32));

  pthread_mutex_unlock(&stru_100010118);
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