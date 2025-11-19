uint64_t sub_858()
{
  result = sub_8EC();
  if (result)
  {
    return os_log_with_args();
  }

  return result;
}

BOOL sub_8EC()
{
  if (qword_4698)
  {
    return 1;
  }

  qword_4698 = os_log_create("com.apple.MobileInternetSharing", "USBEthernetSharing");
  if (qword_4698)
  {
    return 1;
  }

  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_2D18(&v1);
    return v1;
  }

  return result;
}

__CFString *usbeth_copy_active_services_entity(const __CFString *a1)
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
  if (NetworkGlobalEntity)
  {
    v3 = SCDynamicStoreCopyValue(qword_4688, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v3, kSCPropNetServiceOrder);
        if (Value)
        {
          v6 = Value;
          CFRetain(Value);
          CFRelease(v3);
          if (CFArrayGetCount(v6))
          {
            Count = CFArrayGetCount(v6);
            NetworkGlobalEntity = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
            if (NetworkGlobalEntity)
            {
              if (Count < 1)
              {
                v8 = 0;
              }

              else
              {
                v8 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
                  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, ValueAtIndex, a1);
                  if (!NetworkServiceEntity)
                  {
                    break;
                  }

                  v11 = NetworkServiceEntity;
                  CFArraySetValueAtIndex(NetworkGlobalEntity, v8, NetworkServiceEntity);
                  CFRelease(v11);
                  if (Count == ++v8)
                  {
                    CFRelease(v6);
                    goto LABEL_17;
                  }
                }
              }

              CFRelease(v6);
              if (v8 == Count)
              {
LABEL_17:
                v12 = SCDynamicStoreCopyMultiple(qword_4688, NetworkGlobalEntity, 0);
                if (v12)
                {
                  v13 = v12;
                }

                else
                {
                  v13 = NetworkGlobalEntity;
                }

                if (v12)
                {
                  v14 = NetworkGlobalEntity;
                }

                else
                {
                  v14 = 0;
                }

                if (v12)
                {
                  v15 = Count < 1;
                }

                else
                {
                  v15 = 1;
                }

                if (v15)
                {
                  v3 = v13;
                  NetworkGlobalEntity = v14;
                }

                else
                {
                  v3 = v12;
                  v17 = 0;
                  do
                  {
                    v18 = CFArrayGetValueAtIndex(NetworkGlobalEntity, v17);
                    v19 = CFDictionaryGetValue(v3, v18);
                    if (v19)
                    {
                      CFArraySetValueAtIndex(NetworkGlobalEntity, v17, v19);
                    }

                    ++v17;
                  }

                  while (Count != v17);
                }

                goto LABEL_31;
              }

              v3 = NetworkGlobalEntity;
              goto LABEL_30;
            }
          }

          else
          {
            NetworkGlobalEntity = 0;
          }

          v3 = v6;
LABEL_31:
          CFRelease(v3);
          return NetworkGlobalEntity;
        }
      }

LABEL_30:
      NetworkGlobalEntity = 0;
      goto LABEL_31;
    }

    return 0;
  }

  return NetworkGlobalEntity;
}

void *UserEventAgentFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xFCu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x20uLL, 0x10E0040B810A3B3uLL);
  v4[2] = 0;
  v4[3] = 0;
  *v4 = &unk_4658;
  v4[1] = 0;
  v5 = CFUUIDGetConstantUUIDWithBytes(0, 0xFBu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  v4[1] = CFRetain(v5);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xFBu, 0x86u, 0x41u, 0x6Du, 0x61u, 0x64u, 0x20u, 0x70u, 0x72u, 0x6Fu, 0x70u, 0x73u, 0x5Cu, 0x21u, 0x6Eu, 0xC0u);
  CFPlugInAddInstanceForFactory(v6);
  *(v4 + 4) = 1;
  return v4;
}

uint64_t sub_CA4(uint64_t a1, CFUUIDBytes a2, void *a3)
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

uint64_t sub_DB4(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_DC8(void *a1)
{
  v1 = *(a1 + 4);
  v2 = (v1 - 1);
  *(a1 + 4) = v2;
  if (v1 == 1)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      CFPlugInRemoveInstanceForFactory(*(a1 + 1));
      CFRelease(v4);
    }

    free(a1);
  }

  return v2;
}

void sub_E24()
{
  qword_4690 = 0;
  v0 = dispatch_queue_create("USBEthernetSharing", 0);
  qword_4690 = v0;
  if (v0)
  {

    dispatch_async(v0, &stru_43D8);
  }

  else
  {

    sub_858();
  }
}

void sub_E9C(id a1)
{
  if (!qword_46B0)
  {
    v11 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.sc.networking.usbethernet", @"com.apple.USBEthernet.logging.plist");
    qword_46B0 = v11;
    if (!v11)
    {
      v12 = SCError();
      SCErrorString(v12);
LABEL_32:
      sub_858();
      return;
    }

    if (!SCPreferencesSetCallback(v11, sub_1330, 0) || !SCPreferencesSetDispatchQueue(qword_46B0, qword_4690))
    {
      v13 = SCError();
      SCErrorString(v13);
      sub_858();
      CFRelease(qword_46B0);
      qword_46B0 = 0;
      return;
    }

    sub_1330(qword_46B0, 3);
  }

  if (_NETRBClientCreate())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *cStr = 0u;
    v15 = 0u;
    if ((_NETRBClientGetDynamicStoreKey() & 1) == 0 || (qword_46A0 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u)) == 0)
    {
      sub_858();
      _NETRBClientDestroy();
      return;
    }

    qword_46A8 = SCDynamicStoreKeyCreateNetworkGlobalEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
    if (!qword_46A8)
    {
      goto LABEL_32;
    }

    _NETRBClientDestroy();
    v1 = getprogname();
    v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s-%s", v1, "usbeth_setup_sc_notifications", *cStr, *&cStr[8], v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    v3 = SCDynamicStoreCreate(kCFAllocatorDefault, v2, sub_1414, 0);
    qword_4688 = v3;
    if (v2)
    {
      CFRelease(v2);
      v3 = qword_4688;
    }

    if (v3)
    {
      SCDynamicStoreSetDispatchQueue(v3, qword_4690);
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      qword_46B8 = Mutable;
      if (Mutable)
      {
        CFArrayAppendValue(Mutable, qword_46A0);
        CFArrayAppendValue(qword_46B8, qword_46A8);
        v5 = SCDynamicStoreSetNotificationKeys(qword_4688, qword_46B8, 0);
        sub_1414(v5, qword_46B8);
      }
    }

    v6 = kLockdownNotificationTrustedHostAttached;
    v7 = sub_1750(kLockdownNotificationTrustedHostAttached);
    if (notify_register_dispatch(v7, &dword_56D4, qword_4690, &stru_4438) || (v6 = kLockdownNotificationHostAttached, v8 = sub_1750(kLockdownNotificationHostAttached), notify_register_dispatch(v8, &dword_56D4, qword_4690, &stru_4478)) || (v6 = kLockdownNotificationHostDetached, v9 = sub_1750(kLockdownNotificationHostDetached), notify_register_dispatch(v9, &dword_56D8, qword_4690, &stru_44B8)))
    {
      sub_1750(v6);
      sub_858();
    }

    else
    {
      sub_21D4();
    }

    if (IOMasterPort(0, &dword_56DC))
    {
      goto LABEL_32;
    }

    if (!dword_56DC)
    {
      goto LABEL_32;
    }

    qword_56E0 = IONotificationPortCreate(dword_56DC);
    IONotificationPortSetDispatchQueue(qword_56E0, qword_4690);
    v10 = IOServiceMatching("IOEthernetInterface");
    if (!v10 || IOServiceAddMatchingNotification(qword_56E0, "IOServiceMatched", v10, sub_22DC, 0, &dword_56E8))
    {
      goto LABEL_32;
    }

    sub_22DC(0, dword_56E8);
  }

  else
  {

    sub_858();
  }
}

void sub_1330(const __SCPreferences *a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    sub_858();
    Value = SCPreferencesGetValue(a1, @"USBEthernetLogging");
    if (Value)
    {
      TypeID = CFBooleanGetTypeID();
      if (CFGetTypeID(Value) == TypeID)
      {
        LODWORD(Value) = CFBooleanGetValue(Value);
      }

      else
      {
        LODWORD(Value) = 0;
      }
    }

    if (usbethVerboseLogging != Value)
    {
      usbethVerboseLogging = Value;
      sub_8EC();
      sub_858();
    }

    SCPreferencesSynchronize(a1);
  }
}

void sub_1414(int a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    v6 = "key=%s";
    v7 = &_NETRBClientAddHost_ptr;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      sub_1750(ValueAtIndex);
      sub_858();
      if (CFEqual(ValueAtIndex, qword_46A0))
      {
        byte_56C4 = 0;
        v9 = SCDynamicStoreCopyValue(qword_4688, qword_46A0);
        if (v9)
        {
          v10 = v9;
          v11 = CFGetTypeID(v9);
          if (v11 == CFDictionaryGetTypeID())
          {
            v12 = v6;
            Value = CFDictionaryGetValue(v10, @"State");
            v21 = CFDictionaryGetValue(v10, @"Reason");
            valuePtr = 0;
            if (Value)
            {
              v14 = v7;
              v15 = CFGetTypeID(Value);
              v16 = v15 == CFNumberGetTypeID();
              v7 = v14;
              if (v16)
              {
                if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4))
                {
                  if (dword_4680 == 1022 && HIDWORD(valuePtr) == 1023)
                  {
                    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    if (Mutable)
                    {
                      v18 = Mutable;
                      CFDictionaryAddValue(Mutable, @"IgnoreUntrustedList", kCFBooleanTrue);
                      sub_858();
                      is_host_trusted = lockdown_is_host_trusted();
                      CFRelease(v18);
                      if (byte_56C5 != is_host_trusted)
                      {
                        byte_56C5 = is_host_trusted;
                        sub_858();
                      }

                      v7 = v14;
                    }

                    else
                    {
                      sub_858();
                    }
                  }

                  if (v21)
                  {
                    v20 = CFGetTypeID(v21);
                    if (v20 == CFNumberGetTypeID() && CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr) && HIDWORD(valuePtr) == 1023 && ((valuePtr & 0xFFFFFFFD) == 0 || dword_4680 == 1022))
                    {
                      byte_56C4 = 1;
                    }
                  }

                  dword_4680 = HIDWORD(valuePtr);
                }
              }
            }

            v6 = v12;
          }

          CFRelease(v10);
        }

        sub_858();
        sub_18C8();
      }

      else if (CFEqual(ValueAtIndex, v7[213]))
      {
        sub_1F70();
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

const char *sub_1750(const __CFString *a1)
{
  if (!a1)
  {
    return "<NULL>";
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFDataGetTypeID())
    {
      v8 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, a1, 0x8000100u);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = CFCopyDescription(a1);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    v9 = v8;
    if (CFStringGetCString(v8, &byte_46C0[1024 * dword_56C0], 1024, 0x8000100u))
    {
      CStringPtr = &byte_46C0[1024 * dword_56C0];
      if (dword_56C0 <= 2)
      {
        v10 = dword_56C0 + 1;
      }

      else
      {
        v10 = 0;
      }

      dword_56C0 = v10;
    }

    else
    {
      CStringPtr = 0;
    }

    CFRelease(v9);
    goto LABEL_24;
  }

  FastestEncoding = CFStringGetFastestEncoding(a1);
  if (!FastestEncoding || FastestEncoding == 134217984 || FastestEncoding == 1536)
  {
    CStringPtr = CFStringGetCStringPtr(a1, FastestEncoding);
    if (CStringPtr)
    {
      goto LABEL_24;
    }
  }

  if (CFStringGetCString(a1, &byte_46C0[1024 * dword_56C0], 1024, 0x8000100u))
  {
    CStringPtr = &byte_46C0[1024 * dword_56C0];
    if (dword_56C0 <= 2)
    {
      v5 = dword_56C0 + 1;
    }

    else
    {
      v5 = 0;
    }

    dword_56C0 = v5;
    goto LABEL_24;
  }

LABEL_15:
  CStringPtr = 0;
LABEL_24:
  if (CStringPtr)
  {
    return CStringPtr;
  }

  else
  {
    return "???";
  }
}

void sub_18C8()
{
  sub_1BC0();
  v0 = qword_56C8;
  if (!qword_56C8)
  {
    return;
  }

  while (1)
  {
    sub_1750(*(v0 + 24));
    *(v0 + 32);
    *(v0 + 33);
    sub_858();
    if (*(v0 + 32) != 1 || (byte_56C4 & 1) == 0 && (dword_4680 != 1023 || *(v0 + 33) != 1) || byte_56C5 != 1)
    {
      sub_1D78(v0);
      goto LABEL_17;
    }

    if (*(v0 + 33) == 1)
    {
      *(v0 + 33) = 0;
    }

    if (*(v0 + 34))
    {
      goto LABEL_17;
    }

    *buffer = 0;
    v10 = 0;
    sub_1750(*(v0 + 24));
    sub_858();
    if (!CFStringGetCString(*(v0 + 24), buffer, 16, 0x8000100u) || (v1 = _NETRBClientCreate(), (*(v0 + 40) = v1) == 0))
    {
      sub_858();
      return;
    }

    sub_858();
    v2 = *(v0 + 40);
    if ((_NETRBClientIsAllowedMoreHost() & 1) == 0)
    {
      goto LABEL_23;
    }

    v3 = xpc_dictionary_create(0, 0, 0);
    if (!v3)
    {
      goto LABEL_23;
    }

    v4 = v3;
    xpc_dictionary_set_uint64(v3, netrbClientDeviceType, 5uLL);
    xpc_dictionary_set_string(v4, netrbClientInterfaceName, buffer);
    v5 = *(v0 + 40);
    started = _NETRBClientStartService();
    xpc_release(v4);
    if ((started & 1) == 0)
    {
      break;
    }

    *(v0 + 34) = 1;
LABEL_17:
    v0 = *v0;
    if (!v0)
    {
      return;
    }
  }

  v8 = *(v0 + 40);
LABEL_23:
  sub_858();
  v7 = *(v0 + 40);
  _NETRBClientDestroy();
  *(v0 + 40) = 0;
}

void sub_1BC0()
{
  v0 = (dword_4680 == 1023) | byte_56D1 & 1;
  if (byte_56D0 != v0)
  {
    sub_858();
    if (v0)
    {
      IOUSBDeviceConfigurationAddInterface("AppleUSBEthernet");
    }

    else
    {
      IOUSBDeviceConfigurationRemoveInterface("AppleUSBEthernet");
    }

    sub_858();
    byte_56D0 = v0;
  }
}

uint64_t sub_1C90(uint64_t a1, int a2, xpc_object_t object)
{
  if (a2 == 1001)
  {
    if (object)
    {
      v4 = *(a1 + 32);
      if (xpc_get_type(object) == &_xpc_type_dictionary)
      {
        uint64 = xpc_dictionary_get_uint64(object, netrbClientNotificationKey);
        sub_1750(*(v4 + 24));
        if (uint64 == 5002)
        {
          sub_858();
          v6 = *(v4 + 40);
          if ((_NETRBClientAddHost() & 1) == 0)
          {
            v8 = *(v4 + 40);
            sub_858();
          }

          sub_1E24(v4);
        }

        else
        {
          sub_858();
          sub_1D78(v4);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D78(uint64_t result)
{
  if (*(result + 34) == 1)
  {
    v2 = result;
    sub_1750(*(result + 24));
    sub_858();
    *(v2 + 34) = 0;
    sub_1E24(v2);
    v3 = *(v2 + 40);
    _NETRBClientStopService();
    sub_1750(*(v2 + 24));
    sub_858();
    v4 = *(v2 + 40);
    _NETRBClientDestroy();
    *(v2 + 40) = 0;

    return sub_858();
  }

  return result;
}

uint64_t sub_1E24(uint64_t result)
{
  v1 = result;
  if (*(result + 32) == 1)
  {
    v2 = *(result + 34) | byte_56D1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 1;
  if (*(result + 35) != v3)
  {
    sub_1750(*(result + 24));
    sub_858();
    valuePtr = v3;
    v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (v4 && (v5 = v4, v6 = IORegistryEntrySetCFProperty(*(v1 + 8), @"LinkStatus", v4), CFRelease(v5), !v6))
    {
      *(v1 + 35) = v3;
      sub_1750(*(v1 + 24));
    }

    else
    {
      sub_1750(*(v1 + 24));
    }

    return sub_858();
  }

  return result;
}

void sub_1F70()
{
  v0 = qword_56C8;
  if (!qword_56C8)
  {
    return;
  }

  do
  {
    *(v0 + 36) = 0;
    v0 = *v0;
  }

  while (v0);
  v1 = open("/Library/Preferences/SystemConfiguration/rtether.plist", 0);
  if (v1 == -1)
  {
    sub_858();
    byte_56D1 = 0;
LABEL_23:

    sub_1BC0();
    return;
  }

  v2 = v1;
  sub_858();
  close(v2);
  byte_56D1 = 0;
  v3 = usbeth_copy_active_services_entity(kSCEntNetInterface);
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v9, kSCPropNetInterfaceDeviceName);
            if (Value)
            {
              v12 = Value;
              v13 = CFGetTypeID(Value);
              if (v13 == CFStringGetTypeID())
              {
                for (j = qword_56C8; j; j = *j)
                {
                  if (CFEqual(*(j + 24), v12))
                  {
                    sub_1750(*(j + 24));
                    sub_858();
                    *(j + 36) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v4);
    for (k = qword_56C8; k; k = *k)
    {
      if (*(k + 36) == 1)
      {
        byte_56D1 = 1;
      }

      sub_1E24(k);
    }

    goto LABEL_23;
  }

  sub_858();
}

void sub_21A0(id a1, int a2)
{
  sub_858();

  sub_21D4();
}

void sub_21D4()
{
  if (byte_56C4 == 1)
  {
    sub_858();
    is_host_trusted = lockdown_is_host_trusted();
  }

  else
  {
    is_host_trusted = 0;
  }

  if (byte_56C5 != is_host_trusted)
  {
    byte_56C5 = is_host_trusted;
    sub_858();
    sub_18C8();
  }
}

void sub_22A8(id a1, int a2)
{
  sub_858();

  sub_21D4();
}

uint64_t sub_22DC(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    do
    {
      sub_858();
      parent = 0;
      if (IORegistryEntryGetParentEntry(v4, "IOService", &parent))
      {
        IOObjectRelease(v4);
      }

      else
      {
        if (!IOObjectConformsTo(parent, "AppleUSBEthernetDevice"))
        {
          IOObjectRelease(v4);
          IOObjectRelease(parent);
          goto LABEL_6;
        }

        v5 = IORegistryEntrySearchCFProperty(v4, "IOService", @"BSD Name", kCFAllocatorDefault, 0);
        if (v5)
        {
          v6 = v5;
          v7 = &qword_56C8;
          while (1)
          {
            v7 = *v7;
            if (!v7)
            {
              break;
            }

            if (IOObjectIsEqualTo(parent, *(v7 + 2)))
            {
              IOObjectRelease(v4);
              IOObjectRelease(parent);
              CFRelease(v6);
              goto LABEL_6;
            }
          }

          sub_1750(v6);
          sub_858();
          v8 = malloc_type_malloc(0x30uLL, 0x10600409D779101uLL);
          if (v8)
          {
            v9 = v8;
            *(v8 + 7) = 0u;
            v8[11] = 0;
            *(v8 + 3) = 0u;
            v10 = parent;
            v8[2] = parent;
            v8[4] = v4;
            *(v8 + 3) = v6;
            *v8 = qword_56C8;
            qword_56C8 = v8;
            if (IOServiceAddInterestNotification(qword_56E0, v10, "IOGeneralInterest", sub_25FC, v8, v8 + 3))
            {
              sub_858();
              sub_2678(v9);
            }

            else
            {
              valuePtr = 0;
              v11 = IORegistryEntrySearchCFProperty(v9[2], "IOService", @"HostAttached", kCFAllocatorDefault, 0);
              if (v11)
              {
                v12 = v11;
                v13 = CFGetTypeID(v11);
                if (v13 == CFNumberGetTypeID())
                {
                  if (CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr))
                  {
                    *(v9 + 32) = valuePtr != 0;
                  }
                }
              }

              sub_1750(*(v9 + 3));
              sub_858();
              sub_18C8();
              sub_1F70();
            }

            goto LABEL_6;
          }

          IOObjectRelease(v4);
          IOObjectRelease(parent);
          CFRelease(v6);
        }

        else
        {
          IOObjectRelease(v4);
          IOObjectRelease(parent);
        }
      }

      sub_858();
LABEL_6:
      result = IOIteratorNext(iterator);
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_25FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_2710;
  block[3] = &unk_44D8;
  v5 = a3;
  block[4] = a1;
  block[5] = a4;
  dispatch_async(qword_4690, block);
}

void sub_2678(uint64_t *a1)
{
  v2 = &qword_56C8;
  while (1)
  {
    v3 = v2;
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (v2 == a1)
    {
      *v3 = *a1;
      *a1 = 0;
      break;
    }
  }

  v4 = *(a1 + 3);
  if (v4)
  {
    IOObjectRelease(v4);
    *(a1 + 3) = 0;
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    IOObjectRelease(v5);
    *(a1 + 2) = 0;
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    IOObjectRelease(v6);
    *(a1 + 4) = 0;
  }

  v7 = a1[3];
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void sub_2710(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  sub_858();
  v3 = *(a1 + 48);
  if (v3 == -536870896)
  {
    sub_1750(*(v2 + 24));
    sub_858();
    *(v2 + 32) = 0;
    sub_18C8();
    sub_2678(v2);
  }

  else
  {
    if (v3 != -469794303)
    {
      return;
    }

    *(v2 + 32) = *(a1 + 40) != 0;
    sub_858();
    *(v2 + 33) = 1;
    sub_18C8();
  }

  sub_1F70();
}

const char *IOUSBDeviceConfigurationAddInterface(const char *result)
{
  v1 = result;
  LODWORD(result) = dword_56EC;
  if (dword_56EC)
  {
    v3 = -1431655766;
  }

  else
  {
    bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.USBDeviceConfig", &dword_56EC);
    result = dword_56EC;
    v3 = -1431655766;
    if (!dword_56EC)
    {
      return result;
    }
  }

  if (usb_device_configuration_add_interface(result, v1, &v3))
  {
    v2 = 1;
  }

  else
  {
    v2 = v3 == 0;
  }

  return !v2;
}

const char *IOUSBDeviceConfigurationRemoveInterface(const char *result)
{
  v1 = result;
  LODWORD(result) = dword_56EC;
  if (dword_56EC)
  {
    v3 = -1431655766;
  }

  else
  {
    bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.USBDeviceConfig", &dword_56EC);
    result = dword_56EC;
    v3 = -1431655766;
    if (!dword_56EC)
    {
      return result;
    }
  }

  if (usb_device_configuration_remove_interface(result, v1, &v3))
  {
    v2 = 1;
  }

  else
  {
    v2 = v3 == 0;
  }

  return !v2;
}

uint64_t usb_device_configuration_add_interface(mach_port_t a1, const char *a2, _DWORD *a3)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[14] = v5;
  v16[15] = v5;
  v16[12] = v5;
  v16[13] = v5;
  v16[10] = v5;
  v16[11] = v5;
  v16[8] = v5;
  v16[9] = v5;
  v16[6] = v5;
  v16[7] = v5;
  v16[4] = v5;
  v16[5] = v5;
  v16[2] = v5;
  v16[3] = v5;
  v16[0] = v5;
  v16[1] = v5;
  *&reply_port.msgh_bits = v5;
  *&reply_port.msgh_voucher_port = 0xAAAAAAAAAAAAAAAALL;
  v15 = NDR_record;
  if (off_43A8)
  {
    v6 = mig_strncpy_zerofill(v16 + 8, a2, 256);
  }

  else
  {
    v6 = mig_strncpy(v16 + 8, a2, 256);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  v8 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v8;
  reply_port.msgh_bits = 5395;
  *&reply_port.msgh_voucher_port = 0x756200000000;
  if (off_43B0)
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v8;
  }

  v10 = mach_msg(&reply_port, 3, v7 + 40, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v11;
    }

    if (reply_port.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (reply_port.msgh_id == 30150)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v11 = LODWORD(v16[0]);
            if (!LODWORD(v16[0]))
            {
              *a3 = DWORD1(v16[0]);
              return v11;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = LODWORD(v16[0]) == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = LODWORD(v16[0]);
          }

          goto LABEL_27;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&reply_port);
    return v11;
  }

  mig_put_reply_port(reply_port.msgh_local_port);
  return v11;
}

uint64_t usb_device_configuration_remove_interface(mach_port_t a1, const char *a2, _DWORD *a3)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[14] = v5;
  v16[15] = v5;
  v16[12] = v5;
  v16[13] = v5;
  v16[10] = v5;
  v16[11] = v5;
  v16[8] = v5;
  v16[9] = v5;
  v16[6] = v5;
  v16[7] = v5;
  v16[4] = v5;
  v16[5] = v5;
  v16[2] = v5;
  v16[3] = v5;
  v16[0] = v5;
  v16[1] = v5;
  *&reply_port.msgh_bits = v5;
  *&reply_port.msgh_voucher_port = 0xAAAAAAAAAAAAAAAALL;
  v15 = NDR_record;
  if (off_43A8)
  {
    v6 = mig_strncpy_zerofill(v16 + 8, a2, 256);
  }

  else
  {
    v6 = mig_strncpy(v16 + 8, a2, 256);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  v8 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v8;
  reply_port.msgh_bits = 5395;
  *&reply_port.msgh_voucher_port = 0x756300000000;
  if (off_43B0)
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v8;
  }

  v10 = mach_msg(&reply_port, 3, v7 + 40, 0x30u, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (v10)
    {
      mig_dealloc_reply_port(reply_port.msgh_local_port);
      return v11;
    }

    if (reply_port.msgh_id == 71)
    {
      v11 = 4294966988;
    }

    else if (reply_port.msgh_id == 30151)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v11 = LODWORD(v16[0]);
            if (!LODWORD(v16[0]))
            {
              *a3 = DWORD1(v16[0]);
              return v11;
            }

            goto LABEL_27;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v12 = 1;
          }

          else
          {
            v12 = LODWORD(v16[0]) == 0;
          }

          if (v12)
          {
            v11 = 4294966996;
          }

          else
          {
            v11 = LODWORD(v16[0]);
          }

          goto LABEL_27;
        }
      }

      v11 = 4294966996;
    }

    else
    {
      v11 = 4294966995;
    }

LABEL_27:
    mach_msg_destroy(&reply_port);
    return v11;
  }

  mig_put_reply_port(reply_port.msgh_local_port);
  return v11;
}

void sub_2D18(BOOL *a1)
{
  *v2 = 0;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "USBEthernetSharing: Couldn't create os log object", v2, 2u);
  *a1 = qword_4698 != 0;
}