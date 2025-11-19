void *UserEventAgentFactory(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xFCu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
    if (CFEqual(v2, v3))
    {
      v4 = CFUUIDGetConstantUUIDWithBytes(0, 0xFBu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
      v2 = malloc_type_malloc(0x40uLL, 0x10E00403558C7EAuLL);
      *v2 = &UserEventAgentInterfaceFtbl;
      v2[3] = 0;
      if (v4)
      {
        v2[1] = CFRetain(v4);
        CFPlugInAddInstanceForFactory(v4);
      }

      *(v2 + 4) = 1;
      v2[4] = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kNetBrowserInfoDictionaryValueCallbacks);
      v2[5] = CFDictionaryCreateMutable(0, 0, &kNetBrowserInfoDictionaryKeyCallbacks, &kCFTypeDictionaryValueCallBacks);
      v2[6] = CFDictionaryCreateMutable(0, 0, &kNetBrowserInfoDictionaryKeyCallbacks, &kCFTypeDictionaryValueCallBacks);
      v2[7] = CFDictionaryCreateMutable(0, 0, &kNetBrowserInfoDictionaryKeyCallbacks, &kCFTypeDictionaryValueCallBacks);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void NetBrowserInfoRelease(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2 - 1;
    if (*a2 == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v4 = a2[1];
        v6 = 136315650;
        v7 = "com.apple.bonjour.events";
        v8 = 2080;
        v9 = "NetBrowserInfoRelease";
        v10 = 2048;
        v11 = v4;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: DNSServiceRefDeallocate %p", &v6, 0x20u);
      }

      DNSServiceRefDeallocate(a2[1]);
      free(a2);
    }

    else
    {
      *a2 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v5 = a2[1];
        v6 = 136315906;
        v7 = "com.apple.bonjour.events";
        v8 = 2080;
        v9 = "NetBrowserInfoRelease";
        v10 = 2048;
        v11 = v5;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Decremented ref count on %p, count %d", &v6, 0x26u);
      }
    }
  }
}

uint64_t *NetBrowserInfoRetain(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2 + 1;
    *a2 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v4 = a2[1];
      v6 = 136315906;
      v7 = "com.apple.bonjour.events";
      v8 = 2080;
      v9 = "NetBrowserInfoRetain";
      v10 = 2048;
      v11 = v4;
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Incremented ref count on %p, count %d", &v6, 0x26u);
    }
  }

  return a2;
}

void ManageEventsCallback(int a1, CFTypeRef cf, CFTypeRef a3, uint64_t a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = __ManageEventsCallback_block_invoke;
  v8[3] = &__block_descriptor_tmp;
  v9 = a1;
  v8[4] = cf;
  v8[5] = a3;
  v8[6] = a4;
  dispatch_async(&_dispatch_main_q, v8);
}

void __ManageEventsCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2 == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "com.apple.bonjour.events";
      v11 = 2080;
      v12 = "LaunchdActionHandler";
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s calling RemoveEventToPlugin", buf, 0x16u);
    }

    RemoveEventFromPlugin(v4, v3);
  }

  else if (v2 == 1)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = CFGetTypeID(*(a1 + 40));
      if (v6 == CFDictionaryGetTypeID())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v10 = "com.apple.bonjour.events";
          v11 = 2080;
          v12 = "LaunchdActionHandler";
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s calling AddEventToPlugin", buf, 0x16u);
        }

        AddEventToPlugin(v4, v3, v5);
      }

      else
      {
        fprintf(__stderrp, "%s:%s given non-dict for event dictionary, action %d\n");
      }
    }

    else
    {
      fprintf(__stderrp, "%s:%s empty dictionary\n");
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "com.apple.bonjour.events";
    v11 = 2080;
    v12 = "LaunchdActionHandler";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s unknown callback event\n", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }
}

void AddEventToPlugin(CFDictionaryRef *a1, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"ServiceDomain");
  v7 = CFDictionaryGetValue(theDict, @"ServiceType");
  v8 = CFDictionaryGetValue(theDict, @"ServiceName");
  v9 = CFDictionaryGetValue(theDict, @"OnServiceAdd");
  v10 = CFDictionaryGetValue(theDict, @"OnServiceRemove");
  if (v9 && (v11 = CFGetTypeID(v9), v11 == CFBooleanGetTypeID()))
  {
    v12 = CFBooleanGetValue(v9) != 0;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v13 = CFGetTypeID(v10);
  if (v13 == CFBooleanGetTypeID())
  {
    v14 = CFBooleanGetValue(v10) != 0;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_9:
  v14 = 0;
  if (!v7)
  {
LABEL_16:
    fprintf(__stderrp, "%s:%s: a LaunchEvent is missing a service type.\n");
    return;
  }

LABEL_10:
  v15 = CFGetTypeID(v7);
  if (v15 != CFStringGetTypeID())
  {
    goto LABEL_16;
  }

  if (!v12 && !v14)
  {
    fprintf(__stderrp, "%s:%s a LaunchEvent is missing both onAdd and onRemove events\n");
    return;
  }

  if (!Value)
  {
    Value = @"local";
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFStringGetTypeID())
  {
    goto LABEL_32;
  }

  if (v8)
  {
LABEL_19:
    v17 = CFGetTypeID(v8);
    if (v17 == CFStringGetTypeID())
    {
      goto LABEL_20;
    }

LABEL_32:
    fprintf(__stderrp, "%s:%s a LaunchEvent has a domain that is not a string.\n");
    return;
  }

LABEL_20:
  Browser = CreateBrowser(a1, v7, Value);
  if (Browser)
  {
    v19 = Browser;
    Mutable = CFDictionaryCreateMutable(0, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"LaunchdToken", a2);
    CFDictionarySetValue(Mutable, @"LaunchdDict", theDict);
    if (v8)
    {
      CFDictionarySetValue(Mutable, @"ServiceName", v8);
    }

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v22 = "com.apple.bonjour.events";
        v23 = 2080;
        v24 = "AddEventToPlugin";
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Adding browser to AddEvents", buf, 0x16u);
      }

      AddEventDictionary(Mutable, a1[6], v19);
    }

    if (v14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v22 = "com.apple.bonjour.events";
        v23 = 2080;
        v24 = "AddEventToPlugin";
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Adding browser to RemoveEvents", buf, 0x16u);
      }

      AddEventDictionary(Mutable, a1[7], v19);
    }

    CFDictionarySetValue(a1[4], a2, v19);
    CFRelease(Mutable);
  }

  else
  {
    fprintf(__stderrp, "%s:%s cannot create browser\n");
  }
}

void RemoveEventFromPlugin(CFDictionaryRef *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1[4], a2);
  if (Value)
  {
    v5 = Value;
    v6 = CFDictionaryGetValue(a1[6], Value);
    v7 = CFDictionaryGetValue(a1[7], v5);
    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "com.apple.bonjour.events";
        v13 = 2080;
        v14 = "RemoveEventFromPlugin";
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Calling RemoveEventFromArray for OnAddEvents", buf, 0x16u);
      }

      RemoveEventFromArray(v6, a2);
      if (!CFArrayGetCount(v6))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.bonjour.events";
          v13 = 2080;
          v14 = "RemoveEventFromPlugin";
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Removing the browser from AddEvents", buf, 0x16u);
        }

        CFDictionaryRemoveValue(a1[6], v5);
      }
    }

    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "com.apple.bonjour.events";
        v13 = 2080;
        v14 = "RemoveEventFromPlugin";
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Calling RemoveEventFromArray for OnRemoveEvents", buf, 0x16u);
      }

      RemoveEventFromArray(v7, a2);
      if (!CFArrayGetCount(v7))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.bonjour.events";
          v13 = 2080;
          v14 = "RemoveEventFromPlugin";
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Removing the browser from RemoveEvents", buf, 0x16u);
        }

        CFDictionaryRemoveValue(a1[7], v5);
      }
    }

    CFDictionaryRemoveValue(a1[4], a2);
    Count = CFDictionaryGetCount(a1[4]);
    v9 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    CFDictionaryGetKeysAndValues(a1[4], 0, v9);
    if (Count < 1)
    {
LABEL_20:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "com.apple.bonjour.events";
        v13 = 2080;
        v14 = "RemoveEventFromPlugin";
        v15 = 2048;
        v16 = v5;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Removing browser %p from _browsers", buf, 0x20u);
      }

      CFDictionaryRemoveValue(a1[5], v5);
    }

    else
    {
      v10 = v9;
      while (*(*v10 + 1) != v5[1])
      {
        ++v10;
        if (!--Count)
        {
          goto LABEL_20;
        }
      }
    }

    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    if (v11)
    {
      *buf = 136315650;
      *&buf[4] = "com.apple.bonjour.events";
      v13 = 2080;
      v14 = "RemoveEventFromPlugin";
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: Decrementing browser %p count", buf, 0x20u);
    }

    NetBrowserInfoRelease(v11, v5);
    free(v9);
  }

  else
  {
    *buf = 0;
    CFNumberGetValue(a2, kCFNumberLongLongType, buf);
    fprintf(__stderrp, "%s:%s Launchd asked us to remove a token we did not register! ==Token:%lld== \n", "com.apple.bonjour.events", "RemoveEventFromPlugin", *buf);
  }
}

void RemoveEventFromArray(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      Value = CFDictionaryGetValue(ValueAtIndex, @"LaunchdToken");
      if (CFEqual(Value, a2))
      {
        break;
      }

      if (Count == ++v5)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "com.apple.bonjour.events";
      v10 = 2080;
      v11 = "RemoveEventFromArray";
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s found token", &v8, 0x16u);
    }

    CFArrayRemoveValueAtIndex(a1, v5);
  }

  if (v5 == Count)
  {
LABEL_11:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "com.apple.bonjour.events";
      v10 = 2080;
      v11 = "RemoveEventFromArray";
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s did not find token", &v8, 0x16u);
    }
  }
}

uint64_t *CreateBrowser(CFDictionaryRef *a1, const __CFString *a2, const __CFString *a3)
{
  Count = CFDictionaryGetCount(a1[5]);
  v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v22 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  CFDictionaryGetKeysAndValues(a1[5], v22, v7);
  if (Count < 1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  while (1)
  {
    v9 = v7[v8];
    Value = CFDictionaryGetValue(v9, @"ServiceType");
    v11 = CFDictionaryGetValue(v9, @"ServiceDomain");
    if (CFStringCompare(Value, a2, 1uLL) == kCFCompareEqualTo && CFStringCompare(v11, a3, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    if (Count == ++v8)
    {
      goto LABEL_6;
    }
  }

  v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if (v20)
  {
    *buf = 136315394;
    v24 = "com.apple.bonjour.events";
    v25 = 2080;
    v26 = "CreateBrowser";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: found a duplicate browser\n", buf, 0x16u);
  }

  v13 = v22[v8];
  NetBrowserInfoRetain(v20, v13);
  if (!v13)
  {
LABEL_6:
    v12 = NetBrowserInfoCreate(a2, a3, a1);
    if (v12)
    {
      v13 = v12;
      Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(Mutable, @"ServiceType", a2);
      CFDictionarySetValue(Mutable, @"ServiceDomain", a3);
      CFDictionarySetValue(a1[5], v13, Mutable);
      CFRelease(Mutable);
    }

    else
    {
      v15 = __stderrp;
      v16 = "??????";
      if (a2)
      {
        CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
        if (CStringPtr)
        {
          v16 = CStringPtr;
        }
      }

      v18 = "??????";
      if (a3)
      {
        v19 = CFStringGetCStringPtr(a3, 0x8000100u);
        if (v19)
        {
          v18 = v19;
        }
      }

      fprintf(v15, "%s:%s failed to search for %s.%s", "com.apple.bonjour.events", "CreateBrowser", v16, v18);
      v13 = 0;
    }
  }

  free(v7);
  free(v22);
  return v13;
}

void AddEventDictionary(const void *a1, CFDictionaryRef theDict, void *key)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    Mutable = Value;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "com.apple.bonjour.events";
      v10 = 2080;
      v11 = "AddEventDictionary";
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s Incrementing refcount", &v8, 0x16u);
    }

    CFRetain(Mutable);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(theDict, key, Mutable);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "com.apple.bonjour.events";
      v10 = 2080;
      v11 = "AddEventDictionary";
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s creating a new array", &v8, 0x16u);
    }
  }

  CFArrayAppendValue(Mutable, a1);
  CFRelease(Mutable);
}

void *NetBrowserInfoCreate(const __CFString *a1, const __CFString *a2, void *a3)
{
  sdRef = 0;
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v8 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0xC68B7A9BuLL);
  CString = CFStringGetCString(a1, v8, MaximumSizeForEncoding, 0x8000100u);
  if (!a2 || (v10 = CFStringGetLength(a2), (v11 = CFStringGetMaximumSizeForEncoding(v10, 0x8000100u)) == 0))
  {
    v13 = 0;
    if (CString)
    {
      goto LABEL_6;
    }

LABEL_9:
    fprintf(__stderrp, "%s:%s LaunchEvent has badly encoded service type or domain.\n");
    goto LABEL_10;
  }

  v12 = v11;
  v13 = malloc_type_calloc(v11, 1uLL, 0x9045037BuLL);
  if (CString)
  {
    CString = CFStringGetCString(a2, v13, v12, 0x8000100u) != 0;
  }

  if (!CString)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (DNSServiceBrowse(&sdRef, 0, 0, v8, v13, ServiceBrowserCallback, a3))
  {
    fprintf(__stderrp, "%s:%s Failed to create browser for %s, %s\n");
LABEL_10:
    free(v8);
    if (v13)
    {
      free(v13);
    }

    return 0;
  }

  DNSServiceSetDispatchQueue(sdRef, &_dispatch_main_q);
  v14 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  v16 = sdRef;
  *v14 = 1;
  v14[1] = v16;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "com.apple.bonjour.events";
    v20 = 2080;
    v21 = "NetBrowserInfoCreate";
    v22 = 2048;
    v23 = v14;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s: created new object %p", buf, 0x20u);
  }

  free(v8);
  if (v13)
  {
    free(v13);
  }

  return v14;
}

void ServiceBrowserCallback(uint64_t a1, char a2, uint64_t a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = BrowserForSDRef(a8, a1);
  if (v12)
  {
    if (a4)
    {
      fprintf(__stderrp, "%s:%s ServiceBrowserCallback: errcode set %d\n");
    }

    else
    {
      v13 = v12;
      v14 = CFStringCreateWithCString(0, a5, 0x8000100u);
      if (v14)
      {
        v15 = v14;
        v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
        if ((a2 & 2) != 0)
        {
          if (v16)
          {
            *buf = 136315394;
            v20 = "com.apple.bonjour.events";
            v21 = 2080;
            v22 = "ServiceBrowserCallback";
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s calling HandleTemporaryEventsForService Add\n", buf, 0x16u);
          }

          v17 = 48;
        }

        else
        {
          if (v16)
          {
            *buf = 136315394;
            v20 = "com.apple.bonjour.events";
            v21 = 2080;
            v22 = "ServiceBrowserCallback";
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s calling HandleTemporaryEventsForService Remove\n", buf, 0x16u);
          }

          v17 = 56;
        }

        HandleTemporaryEventsForService(a8, v13, v15, *(a8 + v17));
        CFRelease(v15);
      }

      else
      {
        v18 = ServiceBrowserCallback_msgCount;
        if (ServiceBrowserCallback_msgCount <= 999)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v20 = "com.apple.bonjour.events";
            v21 = 2080;
            v22 = "ServiceBrowserCallback";
            v23 = 2080;
            v24 = a5;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s Can not create CFString for serviceName %s", buf, 0x20u);
            v18 = ServiceBrowserCallback_msgCount;
          }

          ServiceBrowserCallback_msgCount = v18 + 1;
        }
      }
    }
  }

  else
  {
    fprintf(__stderrp, "%s:%s ServiceBrowserCallback: missing browser\n");
  }
}

const void *BrowserForSDRef(uint64_t a1, uint64_t a2)
{
  Count = CFDictionaryGetCount(*(a1 + 40));
  v5 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  CFDictionaryGetKeysAndValues(*(a1 + 40), v5, 0);
  if (Count < 1)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    v6 = v5;
    while (1)
    {
      v7 = *v6;
      if (*(*v6 + 1) == a2)
      {
        break;
      }

      ++v6;
      if (!--Count)
      {
        goto LABEL_5;
      }
    }
  }

  free(v5);
  return v7;
}

uint64_t HandleTemporaryEventsForService(uint64_t a1, const void *a2, const void *a3, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, a2);
  if (result)
  {
    v7 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v8 = result;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"ServiceName");
        v12 = CFDictionaryGetValue(ValueAtIndex, @"LaunchdToken");
        CFDictionaryGetValue(ValueAtIndex, @"LaunchdDict");
        if (Value)
        {
          result = CFEqual(a3, Value);
          if (!result)
          {
            continue;
          }
        }

        valuePtr = 0;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v16 = "com.apple.bonjour.events";
          v17 = 2080;
          v18 = "HandleTemporaryEventsForService";
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s:%s HandleTemporaryEventsForService signal\n", buf, 0x16u);
        }

        CFNumberGetValue(v12, kCFNumberLongLongType, &valuePtr);
        _CFXPCCreateXPCObjectFromCFObject();
        v13 = *(a1 + 24);
        UserEventAgentFireEvent();
      }
    }
  }

  return result;
}

uint64_t Release(void *a1)
{
  v2 = *(a1 + 4);
  if (!v2 || (result = (v2 - 1), *(a1 + 4) = result, v2 == 1))
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      CFPlugInRemoveInstanceForFactory(*(a1 + 1));
      CFRelease(v4);
    }

    v5 = *(a1 + 4);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 5);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 6);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 7);
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
    return 0;
  }

  return result;
}

uint64_t AddRef(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t QueryInterface(uint64_t a1, CFUUIDBytes a2, void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xFDu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v7)))
  {
    (*(*a1 + 16))(a1);
    v8 = 0;
  }

  else
  {
    a1 = 0;
    v8 = 2147483652;
  }

  *a3 = a1;
  CFRelease(v5);
  return v8;
}

const char *CStringFromCFString(const __CFString *a1)
{
  v1 = "??????";
  if (a1)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (CStringPtr)
    {
      return CStringPtr;
    }
  }

  return v1;
}

void UserEventAgentFireEvent()
{
    ;
  }
}

void UserEventAgentRegisterForLaunchEvents()
{
    ;
  }
}