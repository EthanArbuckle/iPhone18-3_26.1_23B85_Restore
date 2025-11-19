void scnc_init_resources(__CFBundle *a1)
{
  gBundleURLRef = CFBundleCopyBundleURL(a1);
  v2 = CFURLCopyAbsoluteURL(gBundleURLRef);
  if (v2)
  {
    v3 = v2;
    gBundleDir = CFURLCopyPath(v2);
    CFRelease(v3);
  }

  v4 = CFBundleCopyBuiltInPlugInsURL(a1);
  if (v4)
  {
    v5 = v4;
    v6 = CFURLCopyAbsoluteURL(v4);
    if (v6)
    {
      v7 = v6;
      gPluginsDir = CFURLCopyPath(v6);
      CFRelease(v7);
    }

    CFRelease(v5);
  }

  v8 = CFBundleCopyResourcesDirectoryURL(a1);
  if (v8)
  {
    v9 = v8;
    v10 = CFURLCopyAbsoluteURL(v8);
    if (v10)
    {
      v11 = v10;
      gResourcesDir = CFURLCopyPath(v10);
      CFRelease(v11);
    }

    CFRelease(v9);
  }

  v12 = CFBundleCopyResourceURL(a1, @"NetworkConnect.icns", 0, 0);
  gIconURLRef = v12;
  if (v12)
  {
    v13 = CFURLCopyAbsoluteURL(v12);
    if (v13)
    {
      v14 = v13;
      gIconDir = CFURLCopyPath(v13);
      CFRelease(v14);
    }
  }

  v15 = _CFCopySystemVersionDictionary();
  if (v15)
  {
    v16 = v15;
    Value = CFDictionaryGetValue(v15, _kCFSystemVersionProductNameKey);
    v18 = CFDictionaryGetValue(v16, _kCFSystemVersionProductVersionKey);
    if (Value)
    {
      v19 = v18;
      if (v18)
      {
        Mutable = CFStringCreateMutable(0, 0);
        if (Mutable)
        {
          v21 = Mutable;
          CFStringAppend(Mutable, @"Cisco Systems VPN Client ");
          CFStringAppend(v21, v19);
          CFStringAppend(v21, @":");
          CFStringAppend(v21, Value);
          Length = CFStringGetLength(v21);
          v23 = malloc_type_malloc(Length + 1, 0x487CCEDuLL);
          gIPSecAppVersion = v23;
          if (v23)
          {
            CFStringGetCString(v21, v23, Length + 1, 0x8000100u);
          }

          CFRelease(v21);
        }
      }
    }

    CFRelease(v16);
  }
}

void do_network_signature_changed()
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!controller_options_is_onDemandPauseUntilNetChangeCheckSignature())
  {
    goto LABEL_13;
  }

  v0 = copyPrimaryService(gDynamicStore);
  v8 = v0;
  if (v0)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v0, kSCEntNetIPv4);
    v9 = NetworkServiceEntity;
    if (NetworkServiceEntity)
    {
      v2 = SCDynamicStoreCopyValue(gDynamicStore, NetworkServiceEntity);
      v10 = v2;
      TypeID = CFDictionaryGetTypeID();
      if (v2)
      {
        if (CFGetTypeID(v2) == TypeID)
        {
          Value = CFDictionaryGetValue(v2, kSCPropInterfaceName);
          v5 = CFDictionaryGetValue(v2, @"NetworkSignature");
          v6 = CFStringGetTypeID();
          if (Value)
          {
            if (CFGetTypeID(Value) == v6)
            {
              v7 = CFStringGetTypeID();
              if (v5)
              {
                if (CFGetTypeID(v5) == v7)
                {
                  if (!my_CFEqual(qword_40548, Value))
                  {
                    my_CFRelease(&qword_40548);
                    CFRetain(Value);
                    qword_40548 = Value;
LABEL_16:
                    my_CFRelease(&qword_40550);
                    CFRetain(v5);
                    qword_40550 = v5;
LABEL_13:
                    SCLog();
                    goto LABEL_14;
                  }

                  if (!my_CFEqual(qword_40550, v5))
                  {
                    goto LABEL_16;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_14:
  my_CFRelease(&v9);
  my_CFRelease(&v8);
  my_CFRelease(&v10);
}

uint64_t allow_sleep()
{
  SCLog();
  if (!gSleeping || sub_116E0(1))
  {
    return 0;
  }

  v0 = 1;
  SCLog();
  if (gSleepArgument)
  {
    IOAllowPowerChange(gIOPort, gSleepArgument);
    gSleepArgument = 0;
  }

  return v0;
}

uint64_t sub_116E0(int a1)
{
  v1 = service_head;
  if (service_head)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v1 + 64);
      if (v4 == 2)
      {
        v3 = 0;
        goto LABEL_10;
      }

      if (v4 == 1)
      {
        break;
      }

      if (!*(v1 + 64))
      {
        v5 = ppp_will_sleep(v1, a1);
LABEL_8:
        v3 = v5 | v3;
      }

LABEL_10:
      v1 = *v1;
      if (!v1)
      {
        return v3;
      }
    }

    v5 = ipsec_will_sleep(v1, a1);
    goto LABEL_8;
  }

  return 0;
}

void service_ended(uint64_t a1)
{
  v2 = (a1 + 160);
  if (*(a1 + 160))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(Current, *v2, kCFRunLoopCommonModes);
    my_CFRelease(v2);
  }

  my_CFRelease((a1 + 152));
  if ((byte_40558 & 1) == 0 && (*(a1 + 64) || *(a1 + 66) >= 3u))
  {
    v4 = copyPrimaryService(gDynamicStore);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 24);
      if (v6 == v5 || v6 && CFEqual(v6, v5))
      {
        byte_40558 = 1;
        scnc_log(6, @"SCNC Controller: %s, waiting for PrimaryService. status = %x.");
      }

      CFRelease(v5);
    }

    else
    {
      byte_40558 = 1;
      scnc_log(6, @"SCNC Controller: %s, waiting for PrimaryService. status = %x.");
    }
  }
}

BOOL hasDNS()
{
  v2 = copyEntity(gDynamicStore, kSCDynamicStoreDomainState, 0, kSCEntNetDNS);
  v0 = isDictionary(v2) != 0;
  my_CFRelease(&v2);
  return v0;
}

uint64_t *findbyserviceID(CFStringRef theString2)
{
  v2 = &service_head;
  do
  {
    v2 = *v2;
  }

  while (v2 && CFStringCompare(v2[3], theString2, 0));
  return v2;
}

uint64_t findbypid(int a1)
{
  for (i = service_head; i; i = *i)
  {
    if (*(i + 64))
    {
      if (*(i + 64) == 2)
      {
        return 0;
      }
    }

    else if (ppp_is_pid(i, a1))
    {
      return i;
    }
  }

  return i;
}

uint64_t findbysid(const char *a1, int a2)
{
  v2 = service_head;
  if (service_head)
  {
    v4 = a2;
    do
    {
      v5 = *(v2 + 56);
      if (v5 && strlen(*(v2 + 56)) == v4 && !strncmp(v5, a1, v4))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t findbyref(int a1, unsigned int a2)
{
  result = service_head;
  if (service_head)
  {
    v4 = HIWORD(a2);
    do
    {
      if (*(result + 64) == a1 && (v4 == 0xFFFF || v4 == *(result + 66)) && (a2 == 0xFFFF || *(result + 68) == a2))
      {
        break;
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t findfreeunit(int a1, int a2)
{
  v2 = service_head;
  if (service_head)
  {
    v3 = 0;
    while (1)
    {
      if (*(v2 + 32) == a1 && *(v2 + 33) == a2 && *(v2 + 34) == v3)
      {
        if (++v3 == 0xFFFF)
        {
          return -1;
        }

        v2 = &service_head;
      }

      v2 = *v2;
      if (!v2)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t phase_changed(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 584);
  if (v3)
  {

    return ne_sm_bridge_status_changed(v3);
  }

  else
  {
    if ((*(a1 + 74) & 0x20) != 0)
    {
      ondemand_add_service(a1, 0);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 56);
    v8 = *(a1 + 68) | (*(a1 + 66) << 16);
    scnc_getstatus(a1);

    return client_notify(v6, v7, v8, a2, 0, 8);
  }
}

uint64_t ondemand_add_service(uint64_t a1, int a2)
{
  v2 = 0;
  theDict = 0;
  v45 = 0;
  theArray = 0;
  v43 = 0;
  valuePtr = 0;
  if ((*(a1 + 74) & 0x20) != 0 && gOndemand_key)
  {
    valuePtr = scnc_getstatus(a1);
    if (valuePtr == 2)
    {
      ondemand_unpublish_dns_triggering_dicts(a1);
    }

    else
    {
      v5 = *(a1 + 432);
      if (v5 && !*(a1 + 440) && SCDynamicStoreSetMultiple(gDynamicStore, v5, 0, 0))
      {
        *(a1 + 440) = 1;
      }
    }

    v6 = SCDynamicStoreCopyValue(gDynamicStore, gOndemand_key);
    v43 = v6;
    if (v6)
    {
      v7 = v6;
      Value = CFDictionaryGetValue(v6, @"Triggers");
      v9 = Value;
      if (Value)
      {
        Count = CFArrayGetCount(Value);
        if (Count < 1)
        {
          v16 = 0;
          LODWORD(v12) = 0;
          v13 = 1;
        }

        else
        {
          v11 = Count;
          v12 = 0;
          v13 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
            if (ValueAtIndex)
            {
              v15 = CFDictionaryGetValue(ValueAtIndex, @"ServiceID");
              if (v15)
              {
                if (CFStringCompare(v15, *(a1 + 24), 0) == kCFCompareEqualTo)
                {
                  break;
                }
              }
            }

            v13 = v11 <= ++v12;
            if (v11 == v12)
            {
              v16 = 0;
              LODWORD(v12) = 0;
              goto LABEL_22;
            }
          }

          v16 = 1;
        }

LABEL_22:
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v9);
        v19 = MutableCopy;
        theArray = MutableCopy;
        if (v13 || !MutableCopy)
        {
          if (!MutableCopy)
          {
            goto LABEL_79;
          }

          v17 = 0;
          v9 = 0;
        }

        else
        {
          v9 = CFArrayGetValueAtIndex(v9, v12);
          if (a2)
          {
            v17 = 0;
          }

          else
          {
            v17 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v9);
            theDict = v17;
          }

          CFArrayRemoveValueAtIndex(v19, v12);
        }
      }

      else
      {
        v17 = 0;
        v16 = 0;
        LODWORD(v12) = 0;
      }

      v45 = CFDictionaryCreateMutableCopy(0, 0, v7);
      if (!v45)
      {
        goto LABEL_79;
      }

      if (v17)
      {
LABEL_34:
        v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (v21)
        {
          v22 = v21;
          CFDictionarySetValue(v17, @"Status", v21);
          CFRelease(v22);
        }

        v23 = *(a1 + 416);
        v24 = theDict;
        v25 = kSCPropNetVPNOnDemandRuleAction;
        if (v23)
        {
          CFDictionarySetValue(theDict, kSCPropNetVPNOnDemandRuleAction, v23);
        }

        else if (CFDictionaryContainsKey(theDict, kSCPropNetVPNOnDemandRuleAction))
        {
          CFDictionaryRemoveValue(v24, v25);
        }

        v26 = *(a1 + 424);
        v27 = kSCPropNetVPNOnDemandRuleActionParameters;
        if (v26)
        {
          CFDictionarySetValue(v24, kSCPropNetVPNOnDemandRuleActionParameters, v26);
        }

        else if (CFDictionaryContainsKey(v24, kSCPropNetVPNOnDemandRuleActionParameters))
        {
          CFDictionaryRemoveValue(v24, v27);
        }

        v28 = *(a1 + 448);
        if (v28)
        {
          CFDictionarySetValue(v24, @"ProbeResults", v28);
        }

        else if (CFDictionaryContainsKey(v24, @"ProbeResults"))
        {
          CFDictionaryRemoveValue(v24, @"ProbeResults");
        }

        if (*(a1 + 488))
        {
          CFDictionarySetValue(v24, @"DNSRedirectDetected", kCFBooleanTrue);
          v29 = *(a1 + 496);
          TypeID = CFDictionaryGetTypeID();
          if (v29 && CFGetTypeID(v29) == TypeID)
          {
            CFDictionarySetValue(v24, @"DNSRedirectedAddresses", *(a1 + 496));
          }
        }

        else if (CFDictionaryContainsKey(v24, @"DNSRedirectDetected"))
        {
          CFDictionaryRemoveValue(v24, @"DNSRedirectDetected");
          CFDictionaryRemoveValue(v24, @"DNSRedirectedAddresses");
        }

        v31 = *(a1 + 504);
        if (v31)
        {
          CFDictionarySetValue(v24, @"TunneledNetworks", v31);
        }

        else if (CFDictionaryContainsKey(v24, @"TunneledNetworks"))
        {
          CFDictionaryRemoveValue(v24, @"TunneledNetworks");
        }

        v32 = CFNumberCreate(0, kCFNumberIntType, (a1 + 544));
        if (v32)
        {
          v33 = v32;
          CFDictionarySetValue(v24, @"ReachFlags", v32);
          CFRelease(v33);
        }

        v34 = CFNumberCreate(0, kCFNumberIntType, (a1 + 548));
        if (v34)
        {
          v35 = v34;
          CFDictionarySetValue(v24, @"ReachInterfaceIndex", v34);
          CFRelease(v35);
        }

        v36 = CFNumberCreate(0, kCFNumberIntType, (a1 + 412));
        if (v36)
        {
          v37 = v36;
          CFDictionarySetValue(v24, kSCPropNetVPNOnDemandSuspended, v36);
          CFRelease(v37);
        }

        if (a2)
        {
          if (*(a1 + 64) == 1)
          {
            ipsec_ondemand_add_service_data(a1, v24);
          }

          else if (!*(a1 + 64))
          {
            ppp_ondemand_add_service_data(a1, v24);
          }

          CFDictionarySetValue(v24, @"ServiceID", *(a1 + 24));
          sub_12384();
        }

        if (v9 && my_CFEqual(v9, v24))
        {
          goto LABEL_82;
        }

        v38 = v45;
        if (v45 || (v38 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (v45 = v38) != 0))
        {
          Mutable = theArray;
          if (theArray || (Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks), (theArray = Mutable) != 0))
          {
            if (!v16 || a2)
            {
              CFArrayAppendValue(Mutable, theDict);
            }

            else
            {
              CFArrayInsertValueAtIndex(Mutable, v12, theDict);
            }

            CFDictionarySetValue(v38, @"Triggers", Mutable);
            SCDynamicStoreSetValue(gDynamicStore, gOndemand_key, v38);
            sub_12594(Mutable);
LABEL_82:
            v2 = 1;
            goto LABEL_83;
          }
        }

        goto LABEL_79;
      }
    }

    else
    {
      LODWORD(v12) = 0;
      v16 = 0;
      v9 = 0;
    }

    v20 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    theDict = v20;
    if (v20)
    {
      v17 = v20;
      a2 = 1;
      goto LABEL_34;
    }

LABEL_79:
    v2 = 0;
  }

LABEL_83:
  my_CFRelease(&v45);
  my_CFRelease(&theDict);
  my_CFRelease(&theArray);
  my_CFRelease(&v43);
  return v2;
}

uint64_t scnc_getstatus(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    return ipsec_getstatus(a1);
  }

  if (*(a1 + 64))
  {
    return 0;
  }

  return ppp_getstatus(a1);
}

void user_notification_callback(void *cf, uint64_t a2)
{
  v4 = &service_head;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (v4[21] == cf)
    {
      CFRetain(cf);
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, v4[22], kCFRunLoopDefaultMode);
      my_CFRelease(v4 + 21);
      my_CFRelease(v4 + 22);
      if (*(v4 + 32) == 1)
      {
        ipsec_user_notification_callback(v4, cf, a2);
      }

      else if (!*(v4 + 32))
      {
        ppp_user_notification_callback(v4, cf, a2);
      }

      CFRelease(cf);
      return;
    }
  }
}

BOOL ondemand_unpublish_dns_triggering_dicts(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 432);
  if (v2)
  {
    if (*(a1 + 440))
    {
      Count = CFDictionaryGetCount(v2);
      if (Count)
      {
        v4 = Count;
        v5 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        if (v5)
        {
          v6 = v5;
          CFDictionaryGetKeysAndValues(*(a1 + 432), v5, 0);
          v7 = CFArrayCreate(kCFAllocatorDefault, v6, v4, &kCFTypeArrayCallBacks);
          v9 = v7;
          if (v7 && SCDynamicStoreSetMultiple(gDynamicStore, 0, v7, 0))
          {
            *(a1 + 440) = 0;
          }

          free(v6);
        }
      }
    }
  }

  my_CFRelease(&v9);
  return *(a1 + 440) == 0;
}

void sub_12384()
{
  hasDNS();
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v1 = service_head;
  if (Mutable)
  {
    v2 = service_head == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    do
    {
      v3 = v1[3];
      v1 = *v1;
      if (v3)
      {
        CFArrayAppendValue(Mutable, v3);
      }
    }

    while (v1);
  }

  v14 = Mutable;
  if (Mutable)
  {
    scnc_cache_flush_removed_services(Mutable);
    my_CFRelease(&v14);
  }

  v4 = service_head;
  if (service_head)
  {
    v5 = 0;
    while (1)
    {
      while (1)
      {
        v6 = v4;
        v4 = *v4;
        v7 = *(v6 + 72);
        if (v7)
        {
          break;
        }

LABEL_35:
        if (!v4)
        {
          return;
        }
      }

      *(v6 + 72) = v7 & 0xFFFFFFFC;
      if ((v7 & 0x200000) != 0)
      {
        *(v6 + 72) = v7 & 0xFFDFFFFC;
        sub_14544(v6);
      }

      v8 = *(v6 + 64);
      if (v8 == 2)
      {
        v5 = -1;
        goto LABEL_29;
      }

      if (v8 == 1)
      {
        break;
      }

      if (!*(v6 + 64))
      {
        v9 = ppp_setup_service(v6);
LABEL_20:
        v5 = v9;
      }

      if (v5 < 0)
      {
LABEL_29:
        *(v6 + 16) = 0;
        if (!v4)
        {
          return;
        }
      }

      else
      {
        *(v6 + 16) = 1;
        if (ne_session_use_as_system_vpn())
        {
          *(v6 + 72) &= 0xFEDFFFFF;
        }

        my_CFRelease((v6 + 144));
        v10 = copyEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(v6 + 24), @"com.apple.payload/PayloadRoot");
        if (v10)
        {
          v11 = v10;
          Value = CFDictionaryGetValue(v10, @"PayloadIdentifier");
          *(v6 + 144) = Value;
          TypeID = CFStringGetTypeID();
          if (Value && CFGetTypeID(Value) == TypeID)
          {
            *(v6 + 144) = Value;
            CFRetain(Value);
          }

          else
          {
            *(v6 + 144) = 0;
          }

          CFRelease(v11);
        }

        if ((*(v6 + 74) & 0x20) == 0)
        {
          reachability_clear(v6);
          goto LABEL_35;
        }

        scnc_cache_init_service(v6);
        reachability_reset(v6);
        ondemand_add_service(v6, 1);
        if (!v4)
        {
          return;
        }
      }
    }

    v9 = ipsec_setup_service(v6);
    goto LABEL_20;
  }
}

uint64_t sub_12594(const __CFArray *a1)
{
  if (isArray(a1) && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v3 = Count;
    v4 = 0;
    v5 = 0;
    v6 = kSCPropNetVPNOnDemandRuleAction;
    v7 = kSCValNetVPNOnDemandRuleActionIgnore;
    v8 = kSCValNetVPNOnDemandRuleActionDisconnect;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      if (isDictionary(ValueAtIndex))
      {
        Value = CFDictionaryGetValue(ValueAtIndex, v6);
        if (CFDictionaryGetValue(ValueAtIndex, @"OnDemandMatchAppEnabled") || !Value || !CFEqual(Value, v7) && !CFEqual(Value, v8))
        {
          ++v4;
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  else
  {
    v4 = 0;
  }

  v11 = gNotifyOnDemandToken;
  if (gNotifyOnDemandToken == -1)
  {
    if (notify_register_check("com.apple.system.SCNetworkConnectionOnDemand", &gNotifyOnDemandToken))
    {
LABEL_19:
      SCLog();
      result = gNotifyOnDemandToken;
      if (gNotifyOnDemandToken != -1)
      {
        result = notify_cancel(gNotifyOnDemandToken);
        gNotifyOnDemandToken = -1;
      }

      return result;
    }

    v11 = gNotifyOnDemandToken;
  }

  if (notify_set_state(v11, v4))
  {
    goto LABEL_19;
  }

  result = notify_post("com.apple.system.SCNetworkConnectionOnDemand");
  if (result)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t bringup_cellular(const void **a1)
{
  v10 = 0;
  v12 = 0u;
  v13 = 0;
  v11 = a1;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v2 = _CTServerConnectionCreate();
  a1[19] = v2;
  v3 = (a1 + 19);
  if (!v2 || _CTServerConnectionGetPacketContextActive() >> 32 || (SCLog(), v5 = *v3, _CTServerConnectionRegisterForNotification() >> 32) || (v6 = *v3, _CTServerConnectionRegisterForNotification() >> 32) || (v7 = *v3, _CTServerConnectionSetPacketContextActiveByServiceType() >> 32))
  {
    SCLog();
    my_CFRelease(a1 + 19);
    return 0;
  }

  else
  {
    v8 = *v3;
    CFRunLoopGetCurrent();
    _CTServerConnectionAddToRunLoop();
    return 1;
  }
}

void sub_12920(int a1, const void *a2, CFDictionaryRef theDict, uint64_t a4)
{
  valuePtr = 0;
  v15.version = 0;
  memset(&v15.retain, 0, 24);
  v15.info = a4;
  Value = CFDictionaryGetValue(theDict, kCTRegistrationDataContextID);
  if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    v8 = valuePtr == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return;
  }

  if (!CFEqual(a2, kCTRegistrationDataStatusChangedNotification))
  {
    SCLog();
    if (*(a4 + 64) != 1)
    {
      return;
    }

    v13 = a4;
    v14 = 2;
    goto LABEL_14;
  }

  v9 = CFDictionaryGetValue(theDict, kCTRegistrationDataActive);
  if (!CFEqual(v9, kCFBooleanTrue))
  {
    return;
  }

  SCLog();
  my_CFRelease((a4 + 152));
  Current = CFAbsoluteTimeGetCurrent();
  v11 = CFRunLoopTimerCreate(0, Current + 2.0, 3.1536e10, 0, 0, sub_12AB4, &v15);
  *(a4 + 160) = v11;
  if (v11)
  {
    v12 = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(v12, *(a4 + 160), kCFRunLoopCommonModes);
    return;
  }

  SCLog();
  if (*(a4 + 64) == 1)
  {
    v13 = a4;
    v14 = 1;
LABEL_14:
    ipsec_cellular_event(v13, v14);
  }
}

void sub_12AB4(uint64_t a1, uint64_t a2)
{
  my_CFRelease((a2 + 160));
  if (*(a2 + 64) == 1)
  {

    ipsec_cellular_event(a2, 0);
  }
}

const __CFString *check_interface_captive_and_not_ready(const __SCDynamicStore *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = CFStringCreateWithFormat(0, 0, @"State:/Network/Interface/%s/CaptiveNetwork", a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, v3);
  if (NetworkGlobalEntity)
  {
    v6 = SCDynamicStoreCopyValue(a1, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, @"Stage");
      NetworkGlobalEntity = Value;
      if (Value)
      {
        NetworkGlobalEntity = (CFStringCompare(Value, @"Uknown", 0) && CFStringCompare(NetworkGlobalEntity, @"Online", 0));
        SCLog();
      }

      CFRelease(v6);
    }

    else
    {
      NetworkGlobalEntity = 0;
    }
  }

  CFRelease(v4);
  return NetworkGlobalEntity;
}

uint64_t client_gone(uint64_t a1)
{
  v1 = service_head;
  if (service_head)
  {
    do
    {
      v3 = v1 + 71;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3[2] == a1)
        {
          if (*(v3 + 6))
          {
            *(a1 + 116) &= ~2u;
            scnc_stop(v1, a1, 15, 0);
          }

          break;
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t scnc_bootstrap_dealloc(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    v2 = result;
    result = mach_port_deallocate(mach_task_self_, v1);
    *(v2 + 96) = 0;
  }

  return result;
}

uint64_t scnc_bootstrap_retain(uint64_t result, mach_port_name_t name)
{
  v3 = *(result + 96);
  if (v3 != name)
  {
    v4 = result;
    if (v3)
    {
      result = mach_port_deallocate(mach_task_self_, v3);
    }

    if (name)
    {
      result = mach_port_mod_refs(mach_task_self_, name, 0, 1);
    }

    *(v4 + 96) = name;
  }

  return result;
}

uint64_t scnc_ausession_dealloc(uint64_t result)
{
  v1 = *(result + 100);
  if (v1)
  {
    v2 = result;
    result = mach_port_deallocate(mach_task_self_, v1);
    *(v2 + 100) = 0;
  }

  return result;
}

uint64_t scnc_ausession_retain(uint64_t result, mach_port_name_t name)
{
  v3 = *(result + 100);
  if (v3 != name)
  {
    v4 = result;
    if (v3)
    {
      result = mach_port_deallocate(mach_task_self_, v3);
    }

    if (name)
    {
      result = mach_port_mod_refs(mach_task_self_, name, 0, 1);
    }

    *(v4 + 100) = name;
  }

  return result;
}

uint64_t scnc_start(unint64_t a1, const __CFDictionary *a2, uint64_t a3, int a4, int a5, int a6, int a7, mach_port_name_t a8, mach_port_name_t a9)
{
  v15 = a2;
  v48 = 0;
  if (!a2)
  {
    v47 = a3;
LABEL_16:
    v20 = 0;
    v21 = 1;
    goto LABEL_23;
  }

  if (GetIntFromDict(a2, @"OnDemandTrafficClass", &v48, 0))
  {
    if (v48 != 100)
    {
      if (v48 == 200)
      {
        v17 = 0;
      }

      else
      {
        if (v48 == 900)
        {
          goto LABEL_17;
        }

        v17 = 1;
      }

      v18 = *(a1 + 412);
      if (!v18)
      {
        v17 = 1;
      }

      if (v18 != 1 && (v17 & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    SCLog();
    return 5;
  }

LABEL_13:
  v47 = a3;
  if (!CFDictionaryContainsKey(v15, @"OnDemandHostName"))
  {
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v15, @"OnDemandHostName");
  CFStringGetTypeID();
  if (Value)
  {
    CFGetTypeID(Value);
  }

  v22 = CFDictionaryGetValue(v15, kSCPropNetPPPOnDemandPriority);
  if (!isString(v22) || CFStringCompare(v22, kSCValNetPPPOnDemandPriorityHigh, 0) == kCFCompareEqualTo)
  {
    goto LABEL_22;
  }

  if (CFStringCompare(v22, kSCValNetPPPOnDemandPriorityLow, 0) == kCFCompareEqualTo)
  {
    goto LABEL_59;
  }

  if (CFStringCompare(v22, kSCValNetPPPOnDemandPriorityDefault, 0) || (v43 = CFDictionaryGetValue(v15, kSCEntNetPPP)) == 0 || (v44 = CFDictionaryGetValue(v43, kSCPropNetPPPOnDemandMode), !isString(v44)) || CFStringCompare(v44, kSCValNetPPPOnDemandModeAggressive, 0) == kCFCompareEqualTo)
  {
LABEL_22:
    v21 = 0;
    v20 = 1;
    goto LABEL_23;
  }

  if (CFStringCompare(v44, kSCValNetPPPOnDemandModeConservative, 0))
  {
    if (CFStringCompare(v44, kSCValNetPPPOnDemandModeCompatible, 0) == kCFCompareEqualTo)
    {
      return 5;
    }

    goto LABEL_22;
  }

LABEL_59:
  v45 = *(a1 + 72);
  if ((v45 & 0x200) == 0)
  {
    return 5;
  }

  v21 = 0;
  v20 = (v45 >> 9) & 1;
LABEL_23:
  v23 = controller_options_get_onDemandBlacklistedProcesses();
  if (v23)
  {
    v24 = v23;
    v46 = v15;
    v25 = a1;
    v26 = v20;
    v27 = v21;
    v28 = a5;
    v29 = a6;
    v30 = a8;
    v31 = a4;
    proc_name(a7, buffer, 0x40u);
    v32 = CFStringCreateWithCString(kCFAllocatorDefault, buffer, 0x600u);
    if (v32)
    {
      v33 = v32;
      v50.length = CFArrayGetCount(v24);
      v50.location = 0;
      if (CFArrayContainsValue(v24, v50, v33))
      {
        SCLog();
        CFRelease(v33);
        return 5;
      }

      CFRelease(v33);
    }

    a4 = v31;
    a8 = v30;
    a6 = v29;
    a5 = v28;
    v21 = v27;
    v20 = v26;
    a1 = v25;
    v15 = v46;
  }

  if (gStopRls || gSleeping && (*(a1 + 74) & 4) != 0)
  {
    return 5;
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  v36 = *(a1 + 64);
  if (v36 == 2)
  {
    v34 = 0;
  }

  else
  {
    if (v36 == 1)
    {
      v37 = ipsec_start(a1, v15, a5, a6, a8, 0, v20);
    }

    else
    {
      if (*(a1 + 64))
      {
        v34 = 5;
        goto LABEL_42;
      }

      v37 = ppp_start(a1, v15, a5, a6, a8, a9, 0, v20);
    }

    v34 = v37;
  }

LABEL_42:
  sub_146C0(a7, buffer);
  v38 = *(a1 + 64);
  if (v21)
  {
    if (v38 != 1)
    {
      v39 = *(a1 + 40);
    }
  }

  else if (v38 != 1)
  {
    v40 = *(a1 + 40);
  }

  SCLog();
  if (!v34)
  {
    *(a1 + 72) &= ~0x200u;
    if (v47 && (v41 = malloc_type_malloc(0x20uLL, 0x10A0040D98738FAuLL)) != 0)
    {
      v34 = 0;
      v41[2] = v47;
      *(v41 + 6) = a4;
      *v41 = 0;
      v42 = *(a1 + 576);
      v41[1] = v42;
      *v42 = v41;
      *(a1 + 576) = v41;
    }

    else
    {
      return 0;
    }
  }

  return v34;
}

uint64_t scnc_suspend(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ppp_suspend(a1);
  }
}

uint64_t scnc_resume(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ppp_resume(a1);
  }
}

uint64_t scnc_copyextendedstatus(uint64_t a1, void *a2, _WORD *a3)
{
  cf = 0;
  *a2 = 0;
  *a3 = 0;
  if (*(a1 + 64) == 1)
  {
    v6 = ipsec_copyextendedstatus(a1, &cf);
  }

  else
  {
    if (*(a1 + 64))
    {
      v7 = 22;
LABEL_21:
      v13 = *(a1 + 24);
      strerror(v7);
      scnc_log(5, @"Copy extended status for %@ failed: %s");
      return v7;
    }

    v6 = ppp_copyextendedstatus(a1, &cf);
  }

  v7 = v6;
  v8 = cf;
  if (cf)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = 0;
    if (!cf)
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v8);
    goto LABEL_18;
  }

  memset(__len, 0, sizeof(__len));
  v10 = Serialize(cf, &__len[1], __len);
  if (v10 && (v11 = my_Allocate(__len[0]), (*a2 = v11) != 0))
  {
    memmove(v11, *&__len[1], __len[0]);
    v7 = 0;
    *a3 = __len[0];
  }

  else
  {
    v7 = 12;
  }

  v8 = cf;
  if (cf)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t scnc_copystatistics(uint64_t a1, void *a2, _WORD *a3)
{
  cf = 0;
  *a2 = 0;
  *a3 = 0;
  if (*(a1 + 64) == 1)
  {
    v6 = ipsec_copystatistics(a1, &cf);
  }

  else
  {
    if (*(a1 + 64))
    {
      v7 = 22;
LABEL_21:
      v13 = *(a1 + 24);
      strerror(v7);
      scnc_log(5, @"Copy statistics for %@ failed: %s");
      return v7;
    }

    v6 = ppp_copystatistics(a1, &cf);
  }

  v7 = v6;
  v8 = cf;
  if (cf)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = 0;
    if (!cf)
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v8);
    goto LABEL_18;
  }

  memset(__len, 0, sizeof(__len));
  v10 = Serialize(cf, &__len[1], __len);
  if (v10 && (v11 = my_Allocate(__len[0]), (*a2 = v11) != 0))
  {
    memmove(v11, *&__len[1], __len[0]);
    v7 = 0;
    *a3 = __len[0];
  }

  else
  {
    v7 = 12;
  }

  v8 = cf;
  if (cf)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t scnc_getconnectdata(uint64_t a1, void *a2, _WORD *a3, int a4)
{
  cf = 0;
  *a2 = 0;
  *a3 = 0;
  if (*(a1 + 64) == 1)
  {
    v6 = ipsec_getconnectdata(a1, &cf, a4);
  }

  else
  {
    if (*(a1 + 64))
    {
      return 22;
    }

    v6 = ppp_getconnectdata(a1, &cf, a4);
  }

  v7 = v6;
  v8 = cf;
  if (cf)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    memset(__len, 0, sizeof(__len));
    v10 = Serialize(cf, &__len[1], __len);
    if (v10)
    {
      v11 = v10;
      v12 = my_Allocate(__len[0]);
      *a2 = v12;
      if (v12)
      {
        memmove(v12, *&__len[1], __len[0]);
        v7 = 0;
        *a3 = __len[0];
      }

      else
      {
        v7 = 12;
      }

      CFRelease(v11);
    }

    else
    {
      v7 = 12;
    }

    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t scnc_getconnectsystemdata(uint64_t a1, void *a2, _WORD *a3)
{
  if (*(a1 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ppp_getconnectsystemdata(a1, a2, a3);
  }
}

uint64_t scnc_idle_disconnect(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    *(result + 596) = 19;
    return ipsec_stop(result);
  }

  else if (!*(result + 64))
  {
    *(result + 632) = 12;
    return ppp_stop(result, 15);
  }

  return result;
}

uint64_t scnc_disconnectifoverslept(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((*(a2 + 75) & 8) != 0 && gWokeAt != -1 && gSleptAt != -1)
  {
    difftime(gWokeAt, gSleptAt);
    v2 = 1;
    SCLog();
    scnc_idle_disconnect(a2);
  }

  return v2;
}

uint64_t set_ondemand_pause_timer(uint64_t a1, unsigned int a2, int a3, int a4)
{
  result = 0;
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  if (a2 && a3 != a4)
  {
    SCLog();
    clear_ondemand_pause_timer(a1);
    *(a1 + 560) = a4;
    Current = CFAbsoluteTimeGetCurrent();
    v9 = CFRunLoopTimerCreate(0, Current + a2, 0.0, 0, 0, sub_138B0, &context);
    *(a1 + 552) = v9;
    if (v9)
    {
      v10 = CFRunLoopGetCurrent();
      CFRunLoopAddTimer(v10, *(a1 + 552), kCFRunLoopCommonModes);
      return 1;
    }

    else
    {
      SCLog();
      return 0;
    }
  }

  return result;
}

__CFRunLoopTimer *clear_ondemand_pause_timer(uint64_t a1)
{
  result = *(a1 + 552);
  if (result)
  {
    CFRunLoopTimerInvalidate(result);
    my_CFRelease((a1 + 552));

    return SCLog();
  }

  return result;
}

void sub_138B0(uint64_t a1, uint64_t a2)
{
  SCLog();

  my_CFRelease((a2 + 552));
}

void sub_138FC(id a1, service *a2)
{
  if ((a2->var10 & 0x200000) != 0)
  {
    ondemand_add_service(a2, 0);
  }
}

uint64_t sub_13914(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  result = SCLog();
  if (a3 <= -536870145)
  {
    if (a3 == -536870288)
    {
      SCLog();
      for (i = service_head; i; i = *i)
      {
        if (*(i + 64))
        {
          if (*(i + 64) == 1 && !ipsec_can_sleep(i))
          {
LABEL_29:
            v10 = gIOPort;

            return IOCancelPowerChange(v10, a4);
          }
        }

        else if (!ppp_can_sleep(i))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (a3 != -536870272)
      {
        return result;
      }

      SCLog();
      gSleeping = 1;
      time(&gSleptAt);
      result = sub_116E0(0);
      if (result)
      {
        gSleepArgument = a4;
        return result;
      }
    }

    v8 = gIOPort;

    return IOAllowPowerChange(v8, a4);
  }

  if (a3 == -536870144)
  {
    time(&gWokeAt);
    for (j = service_head; j; j = *j)
    {
      *(j + 72) |= 0x200u;
      if (*(j + 64) == 1)
      {
        ipsec_wake_up(j);
      }

      else if (!*(j + 64))
      {
        ppp_wake_up(j);
      }
    }
  }

  else
  {
    if (a3 != -536870112)
    {
      return result;
    }

    gSleeping = 0;
    gWakeUpTime = mach_absolute_time();
  }

  return SCLog();
}

void sub_13B40(uint64_t a1, const __CFArray *a2)
{
  SCLog();
  if (a2)
  {
    v36 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompService);
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
    cf2 = NetworkGlobalEntity;
    v4 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
    v34 = v4;
    value = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
    if (!v36 || (NetworkGlobalEntity ? (v5 = v4 == 0) : (v5 = 1), v5))
    {
      SCLog();
    }

    else
    {
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = Count & 0x7FFFFFFF;
        v27 = kSCValNetVPNOnDemandRuleInterfaceTypeMatchCellular;
        v10 = 1;
LABEL_9:
        v28 = v10;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
          if (CFEqual(ValueAtIndex, cf2))
          {
            v10 = 0;
            if (++v7 == v9)
            {
              goto LABEL_75;
            }

            goto LABEL_9;
          }

          if (CFEqual(ValueAtIndex, v34))
          {
            if (byte_40558 == 1)
            {
              v12 = copyPrimaryService(gDynamicStore);
            }

            else
            {
              v12 = 0;
            }

            v15 = service_head;
            if (service_head)
            {
              v16 = 0;
              while (1)
              {
                *(v15 + 72) |= 0x200u;
                if (*(v15 + 64) != 1)
                {
                  break;
                }

                ipsec_ipv4_state_changed(v15);
                if (!v16)
                {
                  goto LABEL_25;
                }

LABEL_31:
                v15 = *v15;
                if (!v15)
                {
                  if (!v16)
                  {
                    goto LABEL_33;
                  }

LABEL_36:
                  if (v12)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_38;
                }
              }

              if (!*(v15 + 64))
              {
                ppp_ipv4_state_changed(v15);
              }

              if (v16)
              {
                goto LABEL_31;
              }

LABEL_25:
              if (v12)
              {
                v17 = *(v15 + 24);
                v16 = v17 == v12 || v17 && CFEqual(v17, v12);
              }

              goto LABEL_31;
            }

LABEL_33:
            if (!v12 || !byte_40558)
            {
              goto LABEL_36;
            }

            byte_40558 = 0;
            SCLog();
LABEL_37:
            CFRelease(v12);
LABEL_38:
            v37.location = 0;
            v37.length = v9;
            if (!CFArrayContainsValue(a2, v37, value))
            {
              do_network_signature_changed();
            }
          }

          else
          {
            v13 = parse_component(ValueAtIndex, v36);
            if (v13)
            {
              v14 = v13;
              sub_14058(v13);
              CFRelease(v14);
              v8 = 1;
            }

            else if (!v8)
            {
              v18 = value;
              v19 = CFEqual(ValueAtIndex, value);
              v20 = CFEqual(ValueAtIndex, @"NWI_NOTIFICATION");
              if (v19 | v20)
              {
                v21 = v20;
                cf1 = SCDynamicStoreCopyValue(gDynamicStore, v18);
                v31 = copy_primary_interface_name(0);
                v30 = copy_service_id_for_interface(v31);
                for (i = service_head; i; i = *i)
                {
                  if (*(i + 75))
                  {
                    if (v21 && my_CFEqual(*(i + 24), v30) || v19 && (v24 = *(i + 456), cf1 != v24) && (!cf1 || !v24 || !CFEqual(cf1, v24)))
                    {
                      if (*(i + 64) == 1 && scnc_getstatus(i) && *(i + 934))
                      {
                        if (my_CFEqual(*(i + 24), v30))
                        {
                          my_CFRelease(&v31);
                          my_CFRelease(&v30);
                          v31 = copy_primary_interface_name(*(i + 24));
                          v23 = copy_service_id_for_interface(v31);
                          v30 = v23;
                        }

                        else
                        {
                          v23 = v30;
                        }

                        v25 = copy_interface_type(v23);
                        v29 = v25;
                        if (v25 && !my_CFEqual(v25, v27))
                        {
                          scnc_stop(i, 0, 15, 0);
                        }

                        my_CFRelease(&v29);
                      }

                      my_CFRelease((i + 456));
                      if (cf1)
                      {
                        CFRetain(cf1);
                        v26 = cf1;
                      }

                      else
                      {
                        v26 = 0;
                      }

                      *(i + 456) = v26;
                    }
                  }
                }

                my_CFRelease(&cf1);
                my_CFRelease(&v31);
                my_CFRelease(&v30);
              }

              v8 = 0;
            }
          }

          ++v7;
        }

        while (v7 != v9);
        if ((v28 & 1) == 0)
        {
LABEL_75:
          sub_14378();
        }

        if (v8)
        {
          sub_12384();
        }
      }

      if (gSCNCVerbose)
      {
        sub_14454();
      }
    }

    my_CFRelease(&v36);
    my_CFRelease(&cf2);
    my_CFRelease(&v34);
    my_CFRelease(&value);
  }
}

void sub_14004()
{
  values = @"NWI_NOTIFICATION";
  v0 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  sub_13B40(v0, v0);
  my_CFRelease(&v0);
}

void sub_14058(const __CFString *a1)
{
  v18 = 0;
  v2 = &service_head;
  do
  {
    v2 = *v2;
  }

  while (v2 && CFStringCompare(v2[3], a1, 0));
  v3 = copyEntity(gDynamicStore, kSCDynamicStoreDomainSetup, a1, kSCEntNetInterface);
  v17 = v3;
  if (!v3)
  {
    if (!v2)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, kSCPropNetInterfaceType);
  v6 = Value;
  if (!v2)
  {
    v7 = CFDictionaryGetValue(v4, kSCPropNetInterfaceSubType);
    goto LABEL_12;
  }

  if (!my_CFEqual(Value, v2[4]))
  {
LABEL_10:
    sub_11068(v2);
    goto LABEL_35;
  }

  v7 = CFDictionaryGetValue(v4, kSCPropNetInterfaceSubType);
  if (my_CFEqual(v7, v2[5]))
  {
LABEL_29:
    *(v2 + 18) |= 1u;
    goto LABEL_35;
  }

  sub_11068(v2);
LABEL_12:
  v8 = malloc_type_malloc(0x420uLL, 0x10F2040B89F1A8BuLL);
  if (!v8)
  {
    goto LABEL_35;
  }

  v2 = v8;
  bzero(v8, 0x420uLL);
  v2[3] = my_CFRetain(a1);
  v2[4] = my_CFRetain(v6);
  v2[5] = my_CFRetain(v7);
  v9 = CFStringGetLength(a1) + 1;
  v10 = malloc_type_malloc(v9, 0xBA8C7DC1uLL);
  v2[7] = v10;
  if (v10)
  {
    CFStringGetCString(a1, v10, v9, 0x8000100u);
  }

  if (my_CFEqual(v6, kSCValNetInterfaceTypePPP))
  {
    *(v2 + 32) = 0;
    v11 = ppp_subtype(v7);
LABEL_19:
    v12 = v11;
    *(v2 + 33) = v11;
LABEL_20:
    v13 = *(v2 + 32);
    v14 = findfreeunit(v13, v12);
    *(v2 + 34) = v14;
    if (v14 != 0xFFFF && v13 != 2)
    {
      if (v13 == 1)
      {
        if (!ipsec_new_service(v2))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v13)
        {
LABEL_28:
          *(v2 + 22) = 0;
          *(v2 + 18) |= 0x200u;
          v2[71] = 0;
          v2[72] = (v2 + 71);
          v15 = qword_436E8;
          *v2 = 0;
          v2[1] = v15;
          *v15 = v2;
          qword_436E8 = v2;
          client_notify(v2[3], v2[7], v14 | (v12 << 16), 0, 0, 8);
          goto LABEL_29;
        }

        if (!ppp_new_service(v2))
        {
LABEL_27:
          v12 = *(v2 + 33);
          v14 = *(v2 + 34);
          goto LABEL_28;
        }
      }
    }

    goto LABEL_32;
  }

  if (my_CFEqual(v6, kSCValNetInterfaceTypeIPSec))
  {
    *(v2 + 32) = 1;
    v11 = ipsec_subtype();
    goto LABEL_19;
  }

  if (my_CFEqual(v6, kSCValNetInterfaceTypeVPN))
  {
    v12 = *(v2 + 33);
    goto LABEL_20;
  }

LABEL_32:
  my_CFRelease(v2 + 3);
  my_CFRelease(v2 + 4);
  my_CFRelease(v2 + 5);
  v16 = v2[7];
  if (v16)
  {
    free(v16);
  }

  free(v2);
LABEL_35:
  my_CFRelease(&v17);
  my_CFRelease(&v18);
}

void sub_14378()
{
  v0 = copy_service_order();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        v6 = &service_head;
        while (1)
        {
          v6 = *v6;
          if (!v6)
          {
            break;
          }

          if (CFStringCompare(v6[3], ValueAtIndex, 0) == kCFCompareEqualTo)
          {
            v7 = *v6;
            v8 = v6[1];
            if (*v6)
            {
              v9 = *v6;
            }

            else
            {
              v9 = &service_head;
            }

            v9[1] = v8;
            *v8 = v7;
            v10 = qword_436E8;
            *v6 = 0;
            v6[1] = v10;
            *v10 = v6;
            qword_436E8 = v6;
            break;
          }
        }
      }
    }

    CFRelease(v1);
  }
}

uint64_t sub_14454()
{
  result = SCLog();
  for (i = service_head; i; i = *i)
  {
    v2 = *(i + 64);
    v3 = *(i + 24);
    if (v2 == 2)
    {
      v6 = *(i + 24);
      v9 = *(i + 40);
    }

    else if (v2 == 1)
    {
      v5 = *(i + 24);
    }

    else if (*(i + 64))
    {
      v7 = *(i + 24);
    }

    else
    {
      v4 = *(i + 24);
      v8 = *(i + 40);
    }

    result = SCLog();
  }

  return result;
}

void sub_14544(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (gOndemand_key)
  {
    ondemand_unpublish_dns_triggering_dicts(a1);
    v2 = SCDynamicStoreCopyValue(gDynamicStore, gOndemand_key);
    v17 = v2;
    if (v2)
    {
      v3 = v2;
      Value = CFDictionaryGetValue(v2, @"Triggers");
      if (Value)
      {
        v5 = Value;
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v7 = Count;
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
            if (ValueAtIndex)
            {
              v10 = CFDictionaryGetValue(ValueAtIndex, @"ServiceID");
              if (v10)
              {
                if (CFStringCompare(v10, *(a1 + 24), 0) == kCFCompareEqualTo)
                {
                  break;
                }
              }
            }

            if (v7 == ++v8)
            {
              goto LABEL_17;
            }
          }

          if (v7 == 1)
          {
            SCDynamicStoreRemoveValue(gDynamicStore, gOndemand_key);
            v11 = 0;
LABEL_16:
            sub_12594(v11);
            goto LABEL_17;
          }

          MutableCopy = CFArrayCreateMutableCopy(0, 0, v5);
          v16 = MutableCopy;
          if (MutableCopy)
          {
            v13 = MutableCopy;
            CFArrayRemoveValueAtIndex(MutableCopy, v8);
            v14 = CFDictionaryCreateMutableCopy(0, 0, v3);
            v18 = v14;
            if (v14)
            {
              v15 = v14;
              CFDictionarySetValue(v14, @"Triggers", v13);
              SCDynamicStoreSetValue(gDynamicStore, gOndemand_key, v15);
              v11 = v13;
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

LABEL_17:
  my_CFRelease(&v17);
  my_CFRelease(&v18);
  my_CFRelease(&v16);
}

char *sub_146C0(int a1, char *__str)
{
  v4 = snprintf(__str, 0x80uLL, ", triggered by (%d) ", a1);
  if (v4 < 1)
  {
    *__str = 0;
  }

  else
  {
    proc_name(a1, &__str[v4], 128 - v4);
  }

  return __str;
}

uint64_t client_init_all()
{
  client_head = 0;
  qword_43710 = &client_head;
  return 0;
}

uint64_t client_new_socket(const void *a1, int a2, int a3, int a4)
{
  v8 = malloc_type_malloc(0x98uLL, 0x10F0040A283F929uLL);
  v9 = v8;
  if (v8)
  {
    v8[18] = 0;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    CFRetain(a1);
    v10 = *(v9 + 116) | (a2 != 0);
    *(v9 + 64) = a3;
    *(v9 + 68) = a4;
    *(v9 + 116) = v10 | 0x10;
    *(v9 + 136) = 0;
    *(v9 + 144) = v9 + 136;
    v11 = qword_43710;
    *v9 = 0;
    *(v9 + 8) = v11;
    *(v9 + 16) = a1;
    *v11 = v9;
    qword_43710 = v9;
  }

  return v9;
}

uint64_t client_new_mach(const void *a1, const void *a2, const void *a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10)
{
  v18 = malloc_type_malloc(0x98uLL, 0x10F0040A283F929uLL);
  v19 = v18;
  if (v18)
  {
    v18[18] = 0;
    *(v18 + 7) = 0u;
    *(v18 + 8) = 0u;
    *(v18 + 5) = 0u;
    *(v18 + 6) = 0u;
    *(v18 + 3) = 0u;
    *(v18 + 4) = 0u;
    *(v18 + 1) = 0u;
    *(v18 + 2) = 0u;
    *v18 = 0u;
    CFRetain(a1);
    CFRetain(a2);
    CFRetain(a3);
    *(v19 + 24) = a1;
    *(v19 + 40) = a2;
    *(v19 + 48) = a3;
    *(v19 + 64) = a4;
    *(v19 + 68) = a5;
    *(v19 + 72) = a6;
    *(v19 + 32) = a8;
    *(v19 + 116) &= ~0x10u;
    *(v19 + 56) = a7;
    *(v19 + 60) = a9;
    *(v19 + 132) = a10;
    *(v19 + 136) = 0;
    *(v19 + 144) = v19 + 136;
    v20 = qword_43710;
    *v19 = 0;
    *(v19 + 8) = v20;
    *v20 = v19;
    qword_43710 = v19;
  }

  return v19;
}

void client_dispose(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = &client_head;
  if (*a1)
  {
    v4 = *a1;
  }

  v4[1] = v3;
  *v3 = v2;
  client_gone(a1);
  for (i = *(a1 + 17); i; i = *(a1 + 17))
  {
    v6 = *i;
    v7 = i[1];
    v8 = (*i + 8);
    if (!*i)
    {
      v8 = a1 + 144;
    }

    *v8 = v7;
    *v7 = v6;
    CFRelease(i[2]);
    free(i);
  }

  *(a1 + 32) = 0;
  v9 = *(a1 + 15);
  if (v9)
  {
    free(v9);
    *(a1 + 15) = 0;
  }

  v10 = *(a1 + 10);
  if (v10)
  {
    my_Deallocate(v10, *(a1 + 23) + 1);
    *(a1 + 10) = 0;
  }

  *(a1 + 11) = 0;
  v11 = *(a1 + 14);
  if (v11)
  {
    mach_port_deallocate(mach_task_self_, v11);
    *(a1 + 14) = 0;
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    mach_port_deallocate(mach_task_self_, v12);
    *(a1 + 8) = 0;
  }

  v13 = *(a1 + 15);
  if (v13)
  {
    mach_port_deallocate(mach_task_self_, v13);
    *(a1 + 15) = 0;
  }

  v14 = *(a1 + 2);
  if (v14)
  {
    CFSocketInvalidate(v14);
    my_CFRelease(a1 + 2);
  }

  v15 = *(a1 + 3);
  if (v15)
  {
    CFMachPortInvalidate(v15);
    my_CFRelease(a1 + 3);
  }

  if (*(a1 + 5))
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, *(a1 + 5), kCFRunLoopDefaultMode);
    my_CFRelease(a1 + 5);
  }

  my_CFRelease(a1 + 6);

  free(a1);
}

_OWORD *client_newoptset(uint64_t a1, const void *a2)
{
  result = malloc_type_malloc(0x20uLL, 0xE004003D73A93uLL);
  if (result)
  {
    v5 = result;
    *result = 0u;
    result[1] = 0u;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5[3] = Mutable;
    if (Mutable)
    {
      v5[2] = a2;
      CFRetain(a2);
      v7 = *(a1 + 144);
      *v5 = 0;
      v5[1] = v7;
      *v7 = v5;
      *(a1 + 144) = v5;
      return v5[3];
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return result;
}

uint64_t *client_findoptset(uint64_t a1, CFStringRef theString2)
{
  v3 = (a1 + 136);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (CFStringCompare(v3[2], theString2, 0) == kCFCompareEqualTo)
    {
      return v3[3];
    }
  }

  return 0;
}

uint64_t client_notify(CFStringRef theString2, char *__s2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  for (i = client_head; i; i = *i)
  {
    v13 = *(i + 116);
    if ((v13 & a6) != 0)
    {
      if ((v13 & 0x10) != 0)
      {
        v14 = *(i + 120);
        if (!v14)
        {
          v15 = *(i + 128);
          if (v15 != a3 && v15 <= 0xFFFEFFFF)
          {
            continue;
          }

          goto LABEL_15;
        }

        if (!*v14)
        {
          goto LABEL_15;
        }

        if (!strcmp(v14, __s2))
        {
LABEL_9:
          v13 = *(i + 116);
LABEL_15:
          if ((v13 & 0x10) != 0)
          {
            if (*(i + 120))
            {
              v18 = __s2;
            }

            else
            {
              v18 = 0;
            }

            socket_client_notify(*(i + 16), v18, a3, a4, a5, v13);
          }

          else
          {
            v17 = *(i + 48);
            mach_client_notify(*(i + 32));
          }
        }
      }

      else if (CFStringCompare(*(i + 48), theString2, 0) == kCFCompareEqualTo)
      {
        goto LABEL_9;
      }
    }
  }

  return 0;
}

uint64_t *client_findbysocketref(uint64_t a1)
{
  result = &client_head;
  do
  {
    result = *result;
  }

  while (result && result[2] != a1);
  return result;
}

void *client_findbymachport(int a1)
{
  v1 = client_head;
  if (client_head)
  {
    do
    {
      v3 = v1[3];
      if (v3 && CFMachPortGetPort(v3) == a1)
      {
        break;
      }

      v1 = *v1;
    }

    while (v1);
  }

  return v1;
}

uint64_t ppp_socket_start_server()
{
  memset(&v11, 0, sizeof(v11));
  v0 = 1;
  v1 = socket(1, 1, 0);
  if (v1 == -1)
  {
    SCLog();
  }

  else
  {
    v2 = v1;
    unlink("/var/run/pppconfd");
    v12 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    memset(v17, 0, sizeof(v17));
    v12.sa_family = 1;
    __strlcpy_chk();
    v3 = umask(0);
    v4 = strlen(v12.sa_data);
    v5 = bind(v2, &v12, v4 + 2);
    umask(v3);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = CFSocketCreateWithNative(0, v2, 1uLL, sub_14ECC, &v11);
      if (v6)
      {
        RunLoopSource = CFSocketCreateRunLoopSource(0, v6, 0);
        if (RunLoopSource)
        {
          v9 = RunLoopSource;
          Current = CFRunLoopGetCurrent();
          CFRunLoopAddSource(Current, v9, kCFRunLoopDefaultMode);
          CFRelease(v9);
          listen(v2, 128);
          CFRelease(v6);
          return 0;
        }
      }
    }

    v0 = 1;
    SCLog();
    close(v2);
    if (v6)
    {
      CFSocketInvalidate(v6);
      CFRelease(v6);
    }
  }

  return v0;
}

uint64_t sub_14ECC(__CFSocket *a1)
{
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v9 = 0u;
  v10 = 0u;
  v7 = 0;
  v8 = 0u;
  memset(v5, 0, sizeof(v5));
  v6 = 106;
  Native = CFSocketGetNative(a1);
  result = accept(Native, &v7, &v6);
  if (result != -1)
  {
    v3 = result;
    v6 = 76;
    if (getsockopt(result, 0, 1, v5, &v6) == -1)
    {
      v4 = *__error();
      return SCLog();
    }

    else
    {
      return ppp_socket_create_client(v3, 0, 0, 0);
    }
  }

  return result;
}

uint64_t ppp_socket_create_client(int a1, int a2, int a3, int a4)
{
  memset(&context, 0, sizeof(context));
  v8 = fcntl(a1, 3);
  if (v8 == -1 || fcntl(a1, 4, v8 | 4u) == -1)
  {
    v15 = *__error();
    SCLog();
  }

  v9 = CFSocketCreateWithNative(0, a1, 1uLL, sub_15104, &context);
  if (v9)
  {
    v10 = v9;
    RunLoopSource = CFSocketCreateRunLoopSource(0, v9, 0);
    if (RunLoopSource)
    {
      v12 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v12, kCFRunLoopDefaultMode);
      CFRelease(v12);
      if (client_new_socket(v10, a2, a3, a4))
      {
        CFRelease(v10);
        return 0;
      }
    }

    CFSocketInvalidate(v10);
    CFRelease(v10);
  }

  else
  {
    close(a1);
  }

  return 0xFFFFFFFFLL;
}

void sub_15104(__CFSocket *a1)
{
  Native = CFSocketGetNative(a1);
  v3 = client_findbysocketref(a1);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *(v3 + 22);
  if (v5 > 0x13)
  {
LABEL_17:
    v16 = (v4 + 10);
    v17 = readn(Native, (v4[10] + v5), *(v4 + 23) - v5);
    if (v17 != -1)
    {
      v18 = *(v4 + 23);
      v19 = *(v4 + 22) + v17;
      *(v4 + 22) = v19;
      if (v19 != v18)
      {
        return;
      }

      v20 = *v16;
      address = 0;
      v21 = v20[1];
      if (v21 <= 0x12)
      {
        v22 = requests[v20[1]];
        if (v22)
        {
          v22(v4, v20, &address);
        }

        goto LABEL_27;
      }

      if ((*(v4 + 116) & 1) == 0)
      {
        goto LABEL_27;
      }

      if (v21 == 268)
      {
        v35 = ppp_find(v20);
        if (*v20 < 0)
        {
          v36 = *(v20 + 3);
        }

        else
        {
          v36 = 0;
        }

        v40 = (v20 + v36 + 20);
        v41 = *v40;
        v42 = v40[1];
        *(v20 + 4) = -1;
        if (v35)
        {
          ppp_updatephase(v35, v41, v42);
        }

        goto LABEL_27;
      }

      if (v21 == 267)
      {
        v33 = ppp_find(v20);
        if (*v20 < 0)
        {
          v34 = *(v20 + 3);
        }

        else
        {
          v34 = 0;
        }

        v37 = (v20 + v34 + 20);
        v38 = *v37;
        v39 = v37[1];
        *(v20 + 4) = -1;
        if (v33)
        {
          ppp_updatestatus(v33, v38, v39);
        }

        goto LABEL_27;
      }

      if (v21 != 266 || ((v30 = ppp_find(v20), v31 = v30, *v20 < 0) ? (v32 = *(v20 + 3)) : (v32 = 0), v43 = (v20 + v32 + 20), v44 = *v43, v45 = v43[1], *(v20 + 4) = -1, !v30))
      {
LABEL_27:
        v23 = *v20;
        v24 = *(v20 + 6);
        if ((*(v4 + 116) & 0x20) != 0)
        {
          *v20 = bswap32(v23) >> 16;
          v20[1] = bswap32(v20[1]) >> 16;
          v25.i64[0] = *(v20 + 2);
          v25.i64[1] = v24;
          *(v20 + 2) = vrev32q_s8(v25);
        }

        v26 = HIDWORD(v24);
        if (HIDWORD(v24) != -1)
        {
          v52 = v24;
          v27 = CFSocketGetNative(v4[2]);
          if (v23 < 0)
          {
            v28 = (v52 + 20);
          }

          else
          {
            v28 = 20;
          }

          writen(v27, v20, v28);
          if (v26)
          {
            v29 = CFSocketGetNative(v4[2]);
            writen(v29, address, v26);
            my_Deallocate(address, v26);
          }
        }

        my_Deallocate(v4[10], *(v4 + 23) + 1);
        *v16 = 0;
        v4[11] = 0;
        return;
      }

      if (v44 != 23)
      {
        if (v44 == 22)
        {
          v47 = *(v30 + 584);
          if (v47)
          {
            ne_sm_bridge_request_install(v47);
          }

          goto LABEL_64;
        }

        if (v44 != 1)
        {
          v45 = 0;
LABEL_64:
          v48 = v31[3];
          v49 = v31[7];
          v50 = makeref(v31);
          ppp_getstatus(v31);
          client_notify(v48, v49, v50, v44, v45, 4);
          goto LABEL_27;
        }

        v45 = ppp_translate_error(*(v30 + 66), v45, 0);
      }

      v46 = v31[73];
      if (v46)
      {
        ne_sm_bridge_request_uninstall(v46);
      }

      goto LABEL_64;
    }

    goto LABEL_22;
  }

  v6 = (v3 + 12);
  v7 = readn(Native, v3 + v5 + 96, 20 - v5);
  if (v7 != -1)
  {
    LODWORD(v5) = *(v4 + 22) + v7;
    *(v4 + 22) = v5;
    if (v5 != 20)
    {
      goto LABEL_16;
    }

    v8 = *(v4 + 29);
    if ((v8 & 1) != 0 || (v9 = *(v4 + 49), v9 < 0x13))
    {
      *(v4 + 29) = v8 & 0xFFFFFFDF;
      v11 = *(v4 + 28);
    }

    else
    {
      *(v4 + 29) = v8 | 0x20;
      *(v4 + 48) = bswap32(*(v4 + 48)) >> 16;
      *(v4 + 49) = __rev16(v9);
      v10 = vrev32q_s8(*(v4 + 100));
      *(v4 + 100) = v10;
      v11 = v10.u32[3];
    }

    if (v11 <= 0x10000)
    {
      if (*v6 < 0)
      {
        v12 = *(v4 + 27);
        if (v12 >= 0x41)
        {
          v51 = *(v4 + 27);
          goto LABEL_22;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v11 + v12;
      *(v4 + 23) = v13 + 20;
      v14 = my_Allocate(v13 + 21);
      v4[10] = v14;
      if (v14)
      {
        v15 = *v6;
        *(v14 + 16) = *(v4 + 28);
        *v14 = v15;
        *(v4[10] + *(v4 + 23)) = 0;
        LODWORD(v5) = *(v4 + 22);
LABEL_16:
        if (v5 < 0x14)
        {
          return;
        }

        goto LABEL_17;
      }
    }

LABEL_22:
    SCLog();
  }

  client_dispose(v4);
}

uint64_t readn(int a1, char *a2, int a3)
{
  LODWORD(v4) = a3;
  if (a3 < 1)
  {
    return (a3 - v4);
  }

  v4 = a3;
  v7 = 10;
  while (1)
  {
    v8 = read(a1, a2, v4);
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    v11 = *__error();
    SCLog();
    if (*__error() == 35)
    {
      if (!v7)
      {
        return (a3 - v4);
      }

      --v7;
      if (!usleep(0x9C40u))
      {
        continue;
      }
    }

    if (*__error() != 4)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = 0;
LABEL_10:
    a2 += v8;
    v9 = v4 <= v8;
    v4 -= v8;
    if (v9)
    {
      return (a3 - v4);
    }
  }

  if (v8)
  {
    goto LABEL_10;
  }

  return 0xFFFFFFFFLL;
}

size_t writen(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  if (__nbyte >= 1)
  {
    v6 = __nbyte;
    v7 = 10;
    while (1)
    {
      v8 = write(__fd, __buf, v6);
      if (v8 > 0)
      {
        goto LABEL_9;
      }

      v11 = *__error();
      SCLog();
      if (*__error() == 35)
      {
        if (!v7)
        {
          return (v3 - v6);
        }

        --v7;
        if (!usleep(0x9C40u))
        {
          continue;
        }
      }

      if (*__error() != 4)
      {
        return 0xFFFFFFFFLL;
      }

      v8 = 0;
LABEL_9:
      __buf += v8;
      v9 = v6 <= v8;
      v6 -= v8;
      if (v9)
      {
        return v3;
      }
    }
  }

  return v3;
}

_DWORD *sub_15724(uint64_t a1, uint64_t a2, void *a3)
{
  result = my_Allocate(4);
  *a3 = result;
  if (result)
  {
    *(a2 + 4) = 0;
    *(a2 + 16) = 4;
    *result = 1;
    if ((*(a1 + 116) & 0x20) != 0)
    {
      v7 = 0x1000000;
    }

    else
    {
      v7 = 1;
    }

    *result = v7;
  }

  else
  {
    *(a2 + 4) = 12;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_1579C(uint64_t a1, uint64_t a2, int8x16_t **a3)
{
  result = ppp_find(a2);
  if (result)
  {
    v10 = 0;
    result = ppp_getstatus1(result, a3, &v10);
    if (result)
    {
      v7 = 0;
      *(a2 + 4) = result;
    }

    else
    {
      if ((*(a1 + 116) & 0x20) != 0)
      {
        v8 = *a3;
        v9 = vrev32q_s8((*a3)[1]);
        *v8 = vrev32q_s8(**a3);
        *(v8 + 16) = v9;
        *(v8 + 32) = bswap32(*(v8 + 32));
      }

      *(a2 + 4) = 0;
      v7 = v10;
    }
  }

  else
  {
    v7 = 0;
    *(a2 + 4) = 19;
  }

  *(a2 + 16) = v7;
  return result;
}

void sub_15844(int *a1, __int16 *a2)
{
  v4 = a2 + 10;
  if (*a2 < 0)
  {
    v5 = *(a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = ppp_find(a2);
  if (!v6)
  {
    v12 = 19;
LABEL_20:
    *(a2 + 1) = v12;
LABEL_21:
    *(a2 + 4) = 0;
    return;
  }

  v7 = v6;
  v8 = *(a2 + 4);
  if (!v8)
  {
    v10 = client_findoptset(a1, *(v6 + 24));
LABEL_13:
    v13 = *a2;
    if (v13)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 1) = scnc_start(v7, v10, v14, (v13 >> 1) & 1, a1[16], a1[17], a1[18], 0, 0);
    if (v10 && *(a2 + 4))
    {
      CFRelease(v10);
    }

    goto LABEL_21;
  }

  v9 = Unserialize(v4 + v5, v8);
  if (!v9)
  {
    v12 = 12;
    goto LABEL_20;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 == CFDictionaryGetTypeID())
  {
    goto LABEL_13;
  }

  *(a2 + 1) = 12;
  *(a2 + 4) = 0;

  CFRelease(v10);
}

uint64_t sub_15978(uint64_t a1, uint64_t a2)
{
  result = ppp_find(a2);
  if (result)
  {
    if ((*a2 & 1) == 0 || a1 == 0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 5;
    }

    result = scnc_stop(result, a1, 1, v6);
    v7 = 0;
  }

  else
  {
    v7 = 19;
  }

  *(a2 + 4) = v7;
  *(a2 + 16) = 0;
  return result;
}

vm_address_t sub_159DC(uint64_t a1, __int16 *a2, vm_address_t *a3)
{
  v6 = a2 + 10;
  if (*a2 < 0)
  {
    v7 = *(a2 + 3);
  }

  else
  {
    v7 = 0;
  }

  result = ppp_find(a2);
  __len = 0;
  if (!result)
  {
    *(a2 + 4) = 0;
    v11 = 19;
LABEL_19:
    v15 = 2;
    goto LABEL_22;
  }

  v9 = result;
  if ((*(a1 + 116) & 0x20) != 0)
  {
    *(v6 + v7) = bswap32(*(v6 + v7));
  }

  if (*(result + 628))
  {
    v10 = *(result + 128);
  }

  else
  {
    v10 = client_findoptset(a1, *(result + 24));
  }

  result = ppp_getoptval(v9, v10, 0, *(v6 + v7), __len_4, 0x101u, &__len);
  if (!result)
  {
    *(a2 + 4) = 0;
    v11 = 102;
    goto LABEL_19;
  }

  result = my_Allocate(__len + 4);
  *a3 = result;
  if (result)
  {
    if ((*(a1 + 116) & 0x20) != 0)
    {
      v12 = *(v6 + v7);
      if (v12 <= 0x20 && ((1 << v12) & 0x191FDFE54) != 0)
      {
        __len_4[0] = bswap32(__len_4[0]);
      }
    }

    *result = *(v6 + v7);
    v13 = *a3;
    v14 = __len;
    result = memmove((v13 + 4), __len_4, __len);
    *(a2 + 1) = 0;
    v11 = v14 + 4;
  }

  else
  {
    v11 = 0;
    *(a2 + 1) = 12;
  }

  v15 = 8;
LABEL_22:
  *&a2[v15] = v11;
  return result;
}

void sub_15B7C(uint64_t a1, __int16 *a2)
{
  v4 = a2 + 10;
  if (*a2 < 0)
  {
    v5 = *(a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 + v5;
  v7 = v4 + v5 + 4;
  v8 = *v7;
  v9 = *(a2 + 4);
  v10 = ppp_find(a2);
  if (!v10)
  {
    LODWORD(v14) = 19;
    goto LABEL_69;
  }

  v11 = v10;
  if ((*(a1 + 116) & 0x20) != 0)
  {
    *v6 = bswap32(*v6);
    v8 = bswap32(v8);
  }

  v12 = client_findoptset(a1, *(v10 + 24));
  if (!v12)
  {
    v12 = client_newoptset(a1, *(v11 + 24));
    if (!v12)
    {
      LODWORD(v14) = 12;
      goto LABEL_69;
    }
  }

  v13 = v12;
  LODWORD(v14) = 102;
  switch(*v6)
  {
    case 1:
      v15 = kSCEntNetInterface;
      v16 = &kSCPropNetInterfaceDeviceName;
      goto LABEL_62;
    case 2:
      v32 = 2400;
      v33 = 9600;
      v34 = 19200;
      v35 = 38400;
      v36 = 115200;
      if (v8 < 0xE101)
      {
        v36 = 57600;
      }

      if (v8 >= 0x9601)
      {
        v35 = v36;
      }

      if (v8 >= 0x4B01)
      {
        v34 = v35;
      }

      if (v8 >= 0x2581)
      {
        v33 = v34;
      }

      if (v8 >= 0x961)
      {
        v32 = v33;
      }

      if (v8 >= 0x4B1)
      {
        v24 = v32;
      }

      else
      {
        v24 = 1200;
      }

      v22 = kSCEntNetModem;
      v23 = kSCPropNetModemSpeed;
      v25 = 0xFFFFFFFFLL;
      v37 = 0;
      goto LABEL_67;
    case 3:
      v15 = kSCEntNetModem;
      v16 = &kSCPropNetModemConnectionScript;
      goto LABEL_62;
    case 4:
      v43 = kSCEntNetPPP;
      v44 = v8;
      LODWORD(v14) = 1;
      if (sub_16CBC(v12, kSCEntNetPPP, kSCPropNetPPPDisconnectOnIdleTimer, v8, 0xFFFFFFFFuLL, 1))
      {
        goto LABEL_69;
      }

      v45 = &kSCPropNetPPPDisconnectOnIdle;
      goto LABEL_77;
    case 5:
      v15 = kSCEntNetPPP;
      v16 = &kSCPropNetPPPCommRemoteAddress;
      goto LABEL_62;
    case 6:
      v30 = 0;
      LODWORD(v14) = 22;
      if (v8 > 1)
      {
        if (v8 == 3)
        {
          LODWORD(v14) = 0;
          v30 = 0;
          goto LABEL_89;
        }

        v31 = 0;
        if (v8 == 2)
        {
          LODWORD(v14) = 0;
          v31 = 0;
          v30 = kSCValNetPPPAuthProtocolPAP;
        }
      }

      else
      {
        if (!v8)
        {
          v47 = @"None";
          goto LABEL_91;
        }

        v31 = 0;
        if (v8 == 1)
        {
          LODWORD(v14) = 0;
          v30 = kSCValNetPPPAuthProtocolPAP;
LABEL_89:
          v31 = kSCValNetPPPAuthProtocolCHAP;
        }
      }

      v47 = v30;
      v30 = v31;
      if (!(v47 | v31))
      {
        goto LABEL_69;
      }

LABEL_91:
      v46 = sub_16DC4(v12, kSCEntNetPPP, kSCPropNetPPPAuthProtocol, v47, v30);
LABEL_68:
      LODWORD(v14) = v46;
      goto LABEL_69;
    case 7:
      v15 = kSCEntNetPPP;
      v16 = &kSCPropNetPPPAuthName;
      goto LABEL_62;
    case 8:
      v15 = kSCEntNetPPP;
      v16 = &kSCPropNetPPPAuthPassword;
      goto LABEL_62;
    case 9:
      LODWORD(v14) = 1;
      if (sub_16CBC(v12, kSCEntNetPPP, kSCPropNetPPPLCPCompressionPField, v8 & 2, 1uLL, 1))
      {
        goto LABEL_69;
      }

      v17 = kSCPropNetPPPLCPCompressionACField;
      v18 = v8 & 1;
      v19 = v13;
      v20 = kSCEntNetPPP;
      goto LABEL_78;
    case 0xA:
      v22 = kSCEntNetPPP;
      v29 = &kSCPropNetPPPLCPMRU;
      goto LABEL_64;
    case 0xB:
      v22 = kSCEntNetPPP;
      v29 = &kSCPropNetPPPLCPMTU;
      goto LABEL_64;
    case 0xC:
      v22 = kSCEntNetPPP;
      v29 = &kSCPropNetPPPLCPReceiveACCM;
      goto LABEL_64;
    case 0xD:
      v22 = kSCEntNetPPP;
      v29 = &kSCPropNetPPPLCPTransmitACCM;
      goto LABEL_64;
    case 0xE:
      v22 = kSCEntNetPPP;
      v23 = kSCPropNetPPPIPCPCompressionVJ;
      v24 = v8;
      v25 = 1;
      goto LABEL_66;
    case 0xF:
      v38 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", HIBYTE(v8), BYTE2(v8), BYTE1(v8), v8);
      if (!v38)
      {
        goto LABEL_58;
      }

      v39 = v38;
      v40 = kSCEntNetIPv4;
      v41 = &kSCPropNetIPv4Addresses;
      goto LABEL_57;
    case 0x10:
      v42 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", HIBYTE(v8), BYTE2(v8), BYTE1(v8), v8);
      if (!v42)
      {
        goto LABEL_58;
      }

      v39 = v42;
      v40 = kSCEntNetIPv4;
      v41 = &kSCPropNetIPv4DestAddresses;
LABEL_57:
      LODWORD(v14) = sub_16DC4(v13, v40, *v41, v39, 0);
      CFRelease(v39);
      goto LABEL_69;
    case 0x13:
      v43 = kSCEntNetPPP;
      v44 = v8;
      LODWORD(v14) = 1;
      if (sub_16CBC(v12, kSCEntNetPPP, kSCPropNetPPPIdleReminderTimer, v8, 0xFFFFFFFFuLL, 1))
      {
        goto LABEL_69;
      }

      v45 = &kSCPropNetPPPIdleReminder;
      goto LABEL_77;
    case 0x14:
      v22 = kSCEntNetPPP;
      v24 = v8;
      v23 = @"AlertEnable";
      goto LABEL_65;
    case 0x15:
      LODWORD(v14) = 1;
      if (sub_16CBC(v12, kSCEntNetPPP, kSCPropNetPPPLCPEchoInterval, *v7, 0xFFFFFFFFuLL, 1))
      {
        goto LABEL_69;
      }

      v17 = kSCPropNetPPPLCPEchoFailure;
      v18 = *(v6 + 3);
      v19 = v13;
      v20 = kSCEntNetPPP;
      v21 = 0xFFFFFFFFLL;
      goto LABEL_79;
    case 0x16:
      v22 = kSCEntNetPPP;
      v29 = &kSCPropNetPPPCommConnectDelay;
LABEL_64:
      v23 = *v29;
      v24 = v8;
LABEL_65:
      v25 = 0xFFFFFFFFLL;
LABEL_66:
      v37 = 1;
LABEL_67:
      v46 = sub_16CBC(v12, v22, v23, v24, v25, v37);
      goto LABEL_68;
    case 0x17:
      v43 = kSCEntNetPPP;
      v44 = v8;
      LODWORD(v14) = 1;
      if (sub_16CBC(v12, kSCEntNetPPP, kSCPropNetPPPSessionTimer, v8, 0xFFFFFFFFuLL, 1))
      {
        goto LABEL_69;
      }

      v45 = &kSCPropNetPPPUseSessionTimer;
LABEL_77:
      v17 = *v45;
      v19 = v13;
      v20 = v43;
      v18 = v44;
      goto LABEL_78;
    case 0x18:
      switch(v8)
      {
        case 2u:
          LODWORD(v14) = 1;
          if (sub_16CBC(v12, kSCEntNetPPP, kSCPropNetPPPCommUseTerminalScript, 0, 1uLL, 1))
          {
            goto LABEL_69;
          }

          v17 = kSCPropNetPPPCommDisplayTerminalWindow;
          v19 = v13;
          v20 = kSCEntNetPPP;
          v18 = 1;
          goto LABEL_78;
        case 1u:
          LODWORD(v14) = 1;
          if (sub_16CBC(v12, kSCEntNetPPP, kSCPropNetPPPCommUseTerminalScript, 1uLL, 1uLL, 1))
          {
            goto LABEL_69;
          }

          v17 = kSCPropNetPPPCommDisplayTerminalWindow;
          v19 = v13;
          v20 = kSCEntNetPPP;
          v18 = 0;
LABEL_78:
          v21 = 1;
LABEL_79:
          LODWORD(v14) = sub_16CBC(v19, v20, v17, v18, v21, 1) != 0;
          goto LABEL_69;
        case 0u:
          sub_16D54(v12, kSCEntNetPPP, kSCPropNetPPPCommDisplayTerminalWindow);
          sub_16D54(v13, kSCEntNetPPP, kSCPropNetPPPCommUseTerminalScript);
          break;
      }

LABEL_58:
      LODWORD(v14) = 0;
LABEL_69:
      *(a2 + 1) = v14;
      *(a2 + 4) = 0;
      return;
    case 0x19:
      v15 = kSCEntNetPPP;
      v16 = &kSCPropNetPPPCommTerminalScript;
LABEL_62:
      v46 = sub_16C18(v12, v15, *v16, v7, v9 - 4, 0);
      goto LABEL_68;
    case 0x1F:
      v26 = &kSCValNetModemDialModeIgnoreDialTone;
      v27 = &kSCValNetModemDialModeManual;
      if (v8 != 2)
      {
        v27 = &kSCValNetModemDialModeWaitForDialTone;
      }

      if (v8 != 1)
      {
        v26 = v27;
      }

      v14 = *v26;
      if (!*v26)
      {
        goto LABEL_69;
      }

      v28 = sub_16E68(v12, kSCEntNetModem, kSCPropNetModemDialMode);
      if (v28)
      {
        CFDictionaryAddValue(v28, kSCPropNetModemDialMode, v14);
      }

      goto LABEL_58;
    default:
      goto LABEL_69;
  }
}

void sub_16380(uint64_t a1, __int16 *a2)
{
  if (*(a2 + 4) == 4)
  {
    if (*a2 < 0)
    {
      v4 = *(a2 + 3);
    }

    else
    {
      v4 = 0;
    }

    v6 = *(a2 + v4 + 20);
    v5 = *(a1 + 116);
    v7 = bswap32(v6);
    if ((v5 & 0x20) != 0)
    {
      v6 = v7;
    }

    if (v6 - 4 <= 0xFFFFFFFC)
    {
      v8 = 22;
LABEL_17:
      *(a2 + 1) = v8;
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *(a1 + 116);
    LOBYTE(v6) = 1;
  }

  *(a2 + 1) = 0;
  *(a1 + 116) = v5 & 0xFFFFFFF3 | (4 * (v6 & 3));
  *(a1 + 128) = 0;
  v9 = *(a1 + 120);
  if (v9)
  {
    free(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a2 + 3);
  if (*a2 < 0)
  {
    v11 = malloc_type_malloc((v10 + 1), 0x86CAE1D9uLL);
    *(a1 + 120) = v11;
    if (!v11)
    {
      v8 = 12;
      goto LABEL_17;
    }

    strncpy(v11, a2 + 20, *(a2 + 3));
    *(*(a1 + 120) + *(a2 + 3)) = 0;
  }

  else
  {
    *(a1 + 128) = v10;
  }

LABEL_18:
  *(a2 + 4) = 0;
}

void sub_16470(uint64_t a1, _DWORD *a2)
{
  if (a2[4] != 4)
  {
    v5 = *(a1 + 116);
    LOBYTE(v6) = 1;
LABEL_5:
    v5 &= ~4u;
    *(a1 + 116) = v5;
    goto LABEL_6;
  }

  if (*a2 < 0)
  {
    v4 = a2[3];
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + v4 + 20);
  v5 = *(a1 + 116);
  v10 = bswap32(v6);
  if ((v5 & 0x20) != 0)
  {
    v6 = v10;
  }

  if (v6 - 4 < 0xFFFFFFFD)
  {
    v9 = 22;
    goto LABEL_18;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v6 & 2) != 0)
  {
    v7 = v5 & 0xFFFFFFF7;
    *(a1 + 116) = v7;
    if ((v7 & 8) != 0)
    {
LABEL_12:
      v9 = 0;
      goto LABEL_18;
    }
  }

  else if ((v5 & 8) != 0)
  {
    goto LABEL_12;
  }

  *(a1 + 128) = 0;
  v8 = *(a1 + 120);
  if (!v8)
  {
    goto LABEL_12;
  }

  free(v8);
  v9 = 0;
  *(a1 + 120) = 0;
LABEL_18:
  a2[1] = v9;
  a2[4] = 0;
}

_DWORD *sub_16538(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = service_head;
  if (service_head)
  {
    v7 = 0;
    v8 = *(a2 + 14);
    do
    {
      if (v8 == 0xFFFF || v8 == *(v6 + 66))
      {
        ++v7;
      }

      v6 = *v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  result = my_Allocate(4);
  *a3 = result;
  if (result)
  {
    *(a2 + 4) = 0;
    *(a2 + 16) = 4;
    *result = v7;
    if ((*(a1 + 116) & 0x20) != 0)
    {
      *result = bswap32(v7);
    }
  }

  else
  {
    *(a2 + 4) = 12;
    *(a2 + 16) = 0;
  }

  return result;
}

vm_address_t sub_165F4(vm_address_t result, uint64_t a2, vm_address_t *a3)
{
  v4 = *(a2 + 20);
  v5 = bswap32(v4);
  if ((*(result + 116) & 0x20) != 0)
  {
    v4 = v5;
  }

  v6 = service_head;
  if (!service_head)
  {
LABEL_10:
    v11 = 0;
    v12 = 19;
    goto LABEL_11;
  }

  v8 = result;
  v9 = 0;
  v10 = *(a2 + 14);
  while (1)
  {
    if (v10 != 0xFFFF && v10 != *(v6 + 66))
    {
      goto LABEL_9;
    }

    if (v9 == v4)
    {
      break;
    }

    ++v9;
LABEL_9:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  result = my_Allocate(4);
  *a3 = result;
  if (result)
  {
    result = makeref(v6);
    v13 = *a3;
    **a3 = result;
    v12 = 0;
    if ((*(v8 + 116) & 0x20) != 0)
    {
      *v13 = bswap32(result);
    }

    v11 = 4;
  }

  else
  {
    v11 = 0;
    v12 = 12;
  }

LABEL_11:
  *(a2 + 4) = v12;
  *(a2 + 16) = v11;
  return result;
}

void sub_166DC(uint64_t a1, uint64_t a2, vm_address_t *a3)
{
  v6 = (a2 + 20);
  v6[*(a2 + 16)] = 0;
  v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
  if (v7)
  {
    v8 = v7;
    v9 = findbyserviceID(v7);
    if (v9)
    {
      v10 = v9;
      v11 = my_Allocate(4);
      *a3 = v11;
      if (v11)
      {
        v12 = makeref(v10);
        v13 = *a3;
        **a3 = v12;
        if ((*(a1 + 116) & 0x20) != 0)
        {
          v14 = 0;
          *v13 = bswap32(v12);
        }

        else
        {
          v14 = 0;
        }

        v15 = 4;
      }

      else
      {
        v15 = 0;
        v14 = 12;
      }
    }

    else
    {
      v15 = 0;
      v14 = 19;
    }

    CFRelease(v8);
  }

  else
  {
    v15 = 0;
    v14 = 12;
  }

  *(a2 + 4) = v14;
  *(a2 + 16) = v15;
}

vm_address_t sub_167B8(vm_address_t result, const char *a2, vm_address_t *a3)
{
  v5 = result;
  v6 = &service_head;
  do
  {
    v6 = *v6;
    if (!v6)
    {
      v9 = 0;
      v8 = 19;
      goto LABEL_14;
    }

    result = strncmp(v6 + 104, a2 + 20, 0x10uLL);
  }

  while (result);
  if (*a2 < 0)
  {
    v10 = strlen(v6[7]);
    result = my_Allocate(v10);
    *a3 = result;
    if (result)
    {
      v11 = result;
      v12 = v6[7];
      v9 = strlen(v12);
      result = memmove(v11, v12, v9);
      v8 = 0;
      goto LABEL_14;
    }

LABEL_11:
    v9 = 0;
    v8 = 12;
    goto LABEL_14;
  }

  result = my_Allocate(4);
  *a3 = result;
  if (!result)
  {
    goto LABEL_11;
  }

  result = makeref(v6);
  v7 = *a3;
  **a3 = result;
  v8 = 0;
  if ((*(v5 + 116) & 0x20) != 0)
  {
    *v7 = bswap32(result);
  }

  v9 = 4;
LABEL_14:
  *(a2 + 1) = v8;
  *(a2 + 4) = v9;
  return result;
}

uint64_t sub_168B4(uint64_t a1, uint64_t a2)
{
  result = ppp_find(a2);
  if (result)
  {
    result = ppp_suspend(result);
    v4 = 0;
  }

  else
  {
    v4 = 19;
  }

  *(a2 + 4) = v4;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_168F8(uint64_t a1, uint64_t a2)
{
  result = ppp_find(a2);
  if (result)
  {
    result = ppp_resume(result);
    v4 = 0;
  }

  else
  {
    v4 = 19;
  }

  *(a2 + 4) = v4;
  *(a2 + 16) = 0;
  return result;
}

void sub_1693C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = ppp_find(a2);
  LODWORD(__len) = 0;
  cf = 0;
  if (v5)
  {
    v6 = ppp_copyextendedstatus(v5, &cf);
    v7 = 0;
    v8 = 0;
    v9 = cf;
    if (!v6 && cf)
    {
      __src = 0;
      v7 = Serialize(cf, &__src, &__len);
      if (v7 && (v10 = my_Allocate(__len), (*a3 = v10) != 0))
      {
        memmove(v10, __src, __len);
        v6 = 0;
      }

      else
      {
        v6 = 12;
      }

      v8 = __len;
      v9 = cf;
    }

    *(a2 + 4) = v6;
    if (v6)
    {
      v8 = 0;
    }

    *(a2 + 16) = v8;
    if (v9)
    {
      CFRelease(v9);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    *(a2 + 4) = 19;
    *(a2 + 16) = 0;
  }
}

void sub_16A24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = ppp_find(a2);
  LODWORD(__len) = 0;
  cf = 0;
  if (v5)
  {
    v6 = ppp_getconnectdata(v5, &cf, 0);
    v7 = 0;
    v8 = 0;
    v9 = cf;
    if (!v6 && cf)
    {
      __src = 0;
      v7 = Serialize(cf, &__src, &__len);
      if (v7 && (v10 = my_Allocate(__len), (*a3 = v10) != 0))
      {
        memmove(v10, __src, __len);
        v6 = 0;
      }

      else
      {
        v6 = 12;
      }

      v8 = __len;
      v9 = cf;
    }

    *(a2 + 4) = v6;
    if (v6)
    {
      v8 = 0;
    }

    *(a2 + 16) = v8;
    if (v9)
    {
      CFRelease(v9);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    *(a2 + 4) = 19;
    *(a2 + 16) = 0;
  }
}

uint64_t ppp_find(__int16 *a1)
{
  if (*a1 < 0)
  {
    return findbysid(a1 + 20, *(a1 + 3));
  }

  else
  {
    return findbyref(0, *(a1 + 3));
  }
}

uint64_t socket_client_notify(__CFSocket *a1, char *__s, unsigned int a3, unsigned int a4, unsigned int a5, char a6)
{
  __buf = 655360;
  v20 = 0;
  __buf_4 = a4;
  v19 = __PAIR64__(a3, a5);
  if (__s)
  {
    LOWORD(__buf) = 0x8000;
    v11 = strlen(__s);
    a3 = v11;
    HIDWORD(v19) = v11;
    v12 = 128;
    v13 = v11;
    if ((a6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  v13 = 0;
  if ((a6 & 0x20) != 0)
  {
LABEL_3:
    LOWORD(__buf) = v12;
    HIWORD(__buf) = 2560;
    __buf_4 = bswap32(a4);
    v19 = _byteswap_uint64(__PAIR64__(a5, a3));
    v20 = 0;
  }

LABEL_4:
  Native = CFSocketGetNative(a1);
  result = writen(Native, &__buf, 0x14uLL);
  if (__s)
  {
    if (result == 20)
    {
      v16 = CFSocketGetNative(a1);
      return writen(v16, __s, v13);
    }
  }

  return result;
}

CFStringRef sub_16C18(const __CFDictionary *a1, const void *a2, const void *a3, const char *a4, int a5, const void *a6)
{
  v10 = sub_16E68(a1, a2, a3);
  if (!v10)
  {
    return &dword_C;
  }

  v11 = v10;
  if (a6)
  {
    CFDictionaryAddValue(v10, a3, a6);
  }

  else
  {
    a4[a5] = 0;
    result = CFStringCreateWithCString(0, a4, 0x8000100u);
    if (!result)
    {
      return result;
    }

    v13 = result;
    CFDictionaryAddValue(v11, a3, result);
    CFRelease(v13);
  }

  return 0;
}

CFNumberRef sub_16CBC(const __CFDictionary *a1, const void *a2, const void *a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  valuePtr = a4;
  if (a4 > a5)
  {
    if (!a6)
    {
      return (&dword_14 + 2);
    }

    valuePtr = a5;
  }

  v7 = sub_16E68(a1, a2, a3);
  if (!v7)
  {
    return &dword_C;
  }

  v8 = v7;
  result = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (result)
  {
    v10 = result;
    CFDictionaryAddValue(v8, a3, result);
    CFRelease(v10);
    return 0;
  }

  return result;
}

void sub_16D54(const __CFDictionary *a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFDictionaryGetTypeID())
    {

      CFDictionaryRemoveValue(v5, a3);
    }
  }
}

uint64_t sub_16DC4(const __CFDictionary *a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  v8 = sub_16E68(a1, a2, a3);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 12;
  }

  v11 = Mutable;
  if (a4)
  {
    CFArrayAppendValue(Mutable, a4);
  }

  if (a5)
  {
    CFArrayAppendValue(v11, a5);
  }

  CFDictionaryAddValue(v9, a3, v11);
  CFRelease(v11);
  return 0;
}

CFMutableDictionaryRef sub_16E68(const __CFDictionary *a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      return Mutable;
    }

    CFDictionaryAddValue(a1, a2, Mutable);
    CFRelease(Mutable);
LABEL_6:
    CFDictionaryRemoveValue(Mutable, a3);
    return Mutable;
  }

  Mutable = Value;
  v8 = CFGetTypeID(Value);
  if (v8 == CFDictionaryGetTypeID())
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_16F08(int a1, uint64_t a2, uint64_t a3, mach_port_name_t a4, mach_port_name_t a5, int a6, int a7, int a8, int a9, mach_port_name_t *a10, int *a11, _OWORD *a12)
{
  port = 0;
  v40 = 0;
  source = 0;
  egidp = -1;
  euidp = -1;
  pidp = -1;
  if (dword_40560 == a1)
  {
    v16 = 1;
    SCLog();
  }

  else
  {
    SCLog();
    v16 = 0;
  }

  previous = 0;
  *a10 = 0;
  SCLog();
  if (!_SCUnserializeString())
  {
LABEL_13:
    v21 = 1001;
    goto LABEL_14;
  }

  TypeID = CFStringGetTypeID();
  if (v40 && CFGetTypeID(v40) == TypeID)
  {
    v18 = a12[1];
    *atoken.val = *a12;
    *&atoken.val[4] = v18;
    audit_token_to_au32(&atoken, 0, &euidp, &egidp, 0, 0, &pidp, 0, 0);
    if (euidp == a7 && egidp == a8 && pidp == a9)
    {
LABEL_10:
      mach_port_allocate(mach_task_self_, 1u, a10);
      v19 = *a10;
      port = _SC_CFMachPortCreateWithPort();
      mach_port_insert_right(mach_task_self_, *a10, *a10, 0x14u);
      mach_port_request_notification(mach_task_self_, *a10, 70, 1u, *a10, 0x15u, &previous);
      source = CFMachPortCreateRunLoopSource(0, port, 0);
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, source, kCFRunLoopDefaultMode);
      if (client_new_mach(port, source, v40, a7, a8, a9, a4, a5, a6, v16))
      {
        *a11 = 0;
        my_CFRelease(&v40);
        my_CFRelease(&port);
        my_CFRelease(&source);
        return 0;
      }

      goto LABEL_13;
    }

    v24 = a12[1];
    *atoken.val = *a12;
    *&atoken.val[4] = v24;
    v25 = SecTaskCreateWithAuditToken(0, &atoken);
    if (!v25)
    {
      SCLog();
      goto LABEL_38;
    }

    v26 = v25;
    *atoken.val = 0;
    v27 = SecTaskCopyValueForEntitlement(v25, @"com.apple.private.SCNetworkConnection-proxy-user", &atoken);
    if (v27)
    {
      v28 = v27;
      v30 = CFBooleanGetTypeID();
      if (CFGetTypeID(v28) == v30)
      {
        Value = CFBooleanGetValue(v28);
        CFRelease(v28);
        CFRelease(v26);
        if (Value)
        {
          goto LABEL_10;
        }

LABEL_38:
        SCLog();
        v21 = 1003;
        goto LABEL_14;
      }

      v32 = CFArrayGetTypeID();
      if (CFGetTypeID(v28) == v32)
      {
        CFRelease(v28);
        CFRelease(v26);
        goto LABEL_10;
      }

      SCLog();
      v29 = v28;
    }

    else
    {
      if (!*atoken.val)
      {
LABEL_37:
        CFRelease(v26);
        goto LABEL_38;
      }

      SCLog();
      v29 = *atoken.val;
    }

    CFRelease(v29);
    goto LABEL_37;
  }

  v21 = 1002;
LABEL_14:
  *a11 = v21;
  my_CFRelease(&v40);
  if (port)
  {
    CFMachPortInvalidate(port);
    my_CFRelease(&port);
  }

  if (source)
  {
    v22 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v22, source, kCFRunLoopDefaultMode);
    my_CFRelease(&source);
  }

  if (*a10)
  {
    mach_port_mod_refs(mach_task_self_, *a10, 0, -1);
    mach_port_mod_refs(mach_task_self_, *a10, 1u, -1);
    *a10 = 0;
  }

  if (a4)
  {
    mach_port_deallocate(mach_task_self_, a4);
  }

  if (a5)
  {
    mach_port_deallocate(mach_task_self_, a5);
  }

  return 0;
}

void server_handle_request(uint64_t a1, mach_msg_header_t *a2)
{
  v2 = a2;
  msgh_id = a2->msgh_id;
  if ((msgh_id - 78) >= 0xFFFFFFF2)
  {
    if (msgh_id == 70)
    {
      msgh_local_port = a2->msgh_local_port;
      v8 = client_findbymachport(msgh_local_port);
      if (v8)
      {
        client_dispose(v8);
      }

      v9 = mach_task_self_;

      mach_port_mod_refs(v9, msgh_local_port, 1u, -1);
    }
  }

  else
  {
    if (!sub_2C440(a2, &dword_40568))
    {
      syslog(6, "unknown message ID (%d) received", v2->msgh_id);
      goto LABEL_15;
    }

    if ((dword_40568 & 0x1F) == 0x11)
    {
      v4 = 17;
    }

    else
    {
      v4 = 1;
    }

    v5 = mach_msg(&dword_40568, v4, unk_4056C, 0, 0, 0, 0);
    if (v5)
    {
      v6 = mach_error_string(v5);
      syslog(6, "PPPController: mach_msg(send): %s", v6);
      v2 = &dword_40568;
LABEL_15:
      mach_msg_destroy(v2);
    }
  }
}

uint64_t sub_17524(int a1, uint64_t a2, uint64_t a3, mach_port_name_t a4, mach_port_name_t a5, int a6, mach_port_name_t *a7, int *a8, _OWORD *a9)
{
  egidp = -1;
  euidp = -1;
  pidp = -1;
  v17 = a9[1];
  *atoken.val = *a9;
  *&atoken.val[4] = v17;
  audit_token_to_au32(&atoken, 0, &euidp, &egidp, 0, 0, &pidp, 0, 0);
  v18 = a9[1];
  *atoken.val = *a9;
  *&atoken.val[4] = v18;
  sub_16F08(a1, a2, a3, a4, a5, a6, euidp, egidp, pidp, a7, a8, &atoken);
  return 0;
}

uint64_t sub_17608(int a1, _DWORD *a2, int *a3)
{
  *a2 = -1;
  v5 = client_findbymachport(a1);
  if (v5)
  {
    v6 = findbyserviceID(v5[6]);
    if (v6)
    {
      v7 = scnc_getstatus(v6);
      v8 = 0;
      *a2 = v7;
    }

    else
    {
      v8 = 5001;
    }
  }

  else
  {
    v8 = 1002;
  }

  *a3 = v8;
  return 0;
}

uint64_t sub_1766C(int a1, void *a2, int *a3, int *a4)
{
  v12 = 0;
  v11 = 0;
  v7 = client_findbymachport(a1);
  if (v7)
  {
    v8 = findbyserviceID(v7[6]);
    if (v8)
    {
      if (!scnc_copyextendedstatus(v8, &v12, &v11))
      {
        *a2 = v12;
        *a3 = v11;
        a3 = a4;
        goto LABEL_8;
      }

      v9 = 1001;
    }

    else
    {
      v9 = 5001;
    }
  }

  else
  {
    v9 = 1002;
  }

  *a4 = v9;
  *a2 = 0;
LABEL_8:
  *a3 = 0;
  return 0;
}

uint64_t sub_1770C(int a1, void *a2, int *a3, int *a4)
{
  v12 = 0;
  v11 = 0;
  v7 = client_findbymachport(a1);
  if (v7)
  {
    v8 = findbyserviceID(v7[6]);
    if (v8)
    {
      if (!scnc_copystatistics(v8, &v12, &v11))
      {
        *a2 = v12;
        *a3 = v11;
        a3 = a4;
        goto LABEL_8;
      }

      v9 = 1001;
    }

    else
    {
      v9 = 5001;
    }
  }

  else
  {
    v9 = 1002;
  }

  *a4 = v9;
  *a2 = 0;
LABEL_8:
  *a3 = 0;
  return 0;
}

uint64_t sub_177AC(int a1, void *a2, int *a3, int *a4)
{
  v12 = 0;
  v11 = 0;
  v7 = client_findbymachport(a1);
  if (v7)
  {
    v8 = findbyserviceID(v7[6]);
    if (v8)
    {
      if (!scnc_getconnectdata(v8, &v12, &v11, 0))
      {
        *a2 = v12;
        *a3 = v11;
        a3 = a4;
        goto LABEL_8;
      }

      v9 = 1001;
    }

    else
    {
      v9 = 5001;
    }
  }

  else
  {
    v9 = 1002;
  }

  *a4 = v9;
  *a2 = 0;
LABEL_8:
  *a3 = 0;
  return 0;
}

uint64_t sub_17850(int a1, uint64_t a2, int a3, int a4, int *a5)
{
  v13 = 0;
  v8 = client_findbymachport(a1);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = findbyserviceID(v8[6]);
  if (!v10)
  {
    v11 = 5001;
    goto LABEL_10;
  }

  if (!a3)
  {
    if (!scnc_start(v10, 0, v9, a4 == 0, *(v9 + 64), *(v9 + 68), *(v9 + 72), *(v9 + 56), *(v9 + 60)))
    {
      my_CFRelease(&v13);
      *a5 = 0;
      return 0;
    }

    goto LABEL_9;
  }

  if (!_SCUnserialize())
  {
LABEL_9:
    v11 = 1001;
    goto LABEL_10;
  }

  CFDictionaryGetTypeID();
LABEL_6:
  v11 = 1002;
LABEL_10:
  *a5 = v11;
  my_CFRelease(&v13);
  return 0;
}

uint64_t sub_17978(int a1, int a2, int *a3)
{
  v5 = client_findbymachport(a1);
  if (v5)
  {
    v6 = v5;
    v7 = findbyserviceID(v5[6]);
    if (v7)
    {
      v8 = v7;
      if (a2)
      {
        v9 = 10;
      }

      else
      {
        v9 = 9;
      }

      if (controller_options_is_onDemandAutoPauseUponDisconnect() && !*(v8 + 412))
      {
        ondemand_set_pause(v8, 2, 0);
      }

      scnc_stop(v8, v6, 1, v9);
      v10 = 0;
    }

    else
    {
      v10 = 5001;
    }
  }

  else
  {
    v10 = 1002;
  }

  *a3 = v10;
  return 0;
}

uint64_t sub_17A1C(int a1, int *a2)
{
  v3 = client_findbymachport(a1);
  if (v3)
  {
    v4 = findbyserviceID(v3[6]);
    if (v4)
    {
      scnc_suspend(v4);
      v5 = 0;
    }

    else
    {
      v5 = 5001;
    }
  }

  else
  {
    v5 = 1002;
  }

  *a2 = v5;
  return 0;
}

uint64_t sub_17A70(int a1, int *a2)
{
  v3 = client_findbymachport(a1);
  if (v3)
  {
    v4 = findbyserviceID(v3[6]);
    if (v4)
    {
      scnc_resume(v4);
      v5 = 0;
    }

    else
    {
      v5 = 5001;
    }
  }

  else
  {
    v5 = 1002;
  }

  *a2 = v5;
  return 0;
}

uint64_t sub_17AC4(int a1, int a2, int *a3)
{
  v5 = client_findbymachport(a1);
  if (v5)
  {
    v6 = 0;
    *(v5 + 29) = *(v5 + 29) & 0xFFFFFFF7 | (8 * (a2 != 0));
  }

  else
  {
    v6 = 1002;
  }

  *a3 = v6;
  return 0;
}

uint64_t sub_17B18(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _OWORD *a5)
{
  pidp = 0;
  v8 = a5[1];
  *atoken.val = *a5;
  *&atoken.val[4] = v8;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v9 = findbypid(pidp);
  if (v9)
  {
    *a2 = *(v9 + 96);
    *a3 = *(v9 + 100);
    a3 = a4;
  }

  else
  {
    *a4 = 1002;
    *a2 = 0;
  }

  *a3 = 0;
  return 0;
}

uint64_t sub_17BBC(uint64_t a1, int a2, void *a3, int *a4, int *a5, _OWORD *a6)
{
  pidp = 0;
  v16 = 0;
  v15 = 0;
  v10 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v10;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v11 = findbypid(pidp);
  if (!v11)
  {
    v12 = 1002;
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    if (!a2 && scnc_getconnectsystemdata(v11, &v16, &v15))
    {
      goto LABEL_5;
    }

LABEL_9:
    *a3 = v16;
    *a4 = v15;
    goto LABEL_10;
  }

  if (!scnc_getconnectdata(v11, &v16, &v15, 1))
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = 1001;
LABEL_7:
  *a5 = v12;
  *a3 = 0;
  a5 = a4;
LABEL_10:
  *a5 = 0;
  return 0;
}

uint64_t sub_17CA4(uint64_t a1, int *a2, _OWORD *a3)
{
  pidp = 0;
  v4 = a3[1];
  *atoken.val = *a3;
  *&atoken.val[4] = v4;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  if (findbypid(pidp))
  {
    v5 = 0;
  }

  else
  {
    v5 = 1002;
  }

  *a2 = v5;
  return 0;
}

void mach_client_notify(mach_port_t a1)
{
  *&msg.msgh_bits = 0x1800000013;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0;
  v1 = mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0);
  if (v1 == 268435459 || v1 == 16)
  {
    mach_msg_destroy(&msg);
  }
}

uint64_t ppp_mach_start_server_priv()
{
  sp = 0;
  v0 = bootstrap_check_in(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp);
  if (v0)
  {
    bootstrap_strerror(v0);
LABEL_3:
    SCLog();
    return 0xFFFFFFFFLL;
  }

  v2 = _SC_CFMachPortCreateWithPort();
  qword_435C8 = v2;
  if (!v2)
  {
    goto LABEL_3;
  }

  dword_40560 = sp;
  RunLoopSource = CFMachPortCreateRunLoopSource(0, v2, 0);
  if (!RunLoopSource)
  {
    SCLog();
    CFRelease(qword_435C8);
    qword_435C8 = 0;
    dword_40560 = 0;
    return 0xFFFFFFFFLL;
  }

  v4 = RunLoopSource;
  gControllerRunloop = CFRunLoopGetCurrent();
  CFRunLoopAddSource(gControllerRunloop, v4, kCFRunLoopDefaultMode);
  CFRunLoopAddSource(gControllerRunloop, gTerminalrls, kCFRunLoopDefaultMode);
  CFRelease(v4);
  return 0;
}

uint64_t ppp_mach_start_server()
{
  sp = 0;
  v0 = bootstrap_check_in(bootstrap_port, "com.apple.SystemConfiguration.PPPController", &sp);
  if (v0)
  {
    bootstrap_strerror(v0);
LABEL_3:
    SCLog();
    return 0xFFFFFFFFLL;
  }

  v2 = _SC_CFMachPortCreateWithPort();
  qword_435D0 = v2;
  if (!v2)
  {
    goto LABEL_3;
  }

  dword_40564 = sp;
  RunLoopSource = CFMachPortCreateRunLoopSource(0, v2, 0);
  if (!RunLoopSource)
  {
    SCLog();
    CFRelease(qword_435D0);
    qword_435D0 = 0;
    dword_40564 = 0;
    return 0xFFFFFFFFLL;
  }

  v4 = RunLoopSource;
  gControllerRunloop = CFRunLoopGetCurrent();
  CFRunLoopAddSource(gControllerRunloop, v4, kCFRunLoopDefaultMode);
  CFRunLoopAddSource(gControllerRunloop, gTerminalrls, kCFRunLoopDefaultMode);
  CFRelease(v4);
  return 0;
}

CFMutableStringRef parse_component(const __CFString *a1, const __CFString *a2)
{
  if (!CFStringHasPrefix(a1, a2))
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a1);
  v8.length = CFStringGetLength(a2);
  v8.location = 0;
  CFStringDelete(MutableCopy, v8);
  location = CFStringFind(MutableCopy, @"/", 0).location;
  if (location == -1)
  {
    CFRelease(MutableCopy);
    return 0;
  }

  v6 = location;
  v9.length = CFStringGetLength(MutableCopy) - location;
  v9.location = v6;
  CFStringDelete(MutableCopy, v9);
  return MutableCopy;
}

__CFString *copyService(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3)
{
  v6 = kSCEntNetPPP;
  v15[0] = kSCEntNetModem;
  v15[1] = kSCEntNetInterface;
  v15[2] = kSCEntNetIPv4;
  v15[3] = kSCEntNetIPv6;
  v15[4] = kSCEntNetDNS;
  v15[5] = kSCEntNetL2TP;
  v15[6] = kSCEntNetPPTP;
  v15[7] = kSCEntNetIPSec;
  v15[8] = 0;
  MutableCopy = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/%@", a2, kSCCompNetwork, kSCCompService, a3);
  if (MutableCopy)
  {
    v8 = SCDynamicStoreCopyValue(a1, MutableCopy);
    if (v8 || (v8 = CFDictionaryCreate(0, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
    {
      v9 = v8;
      CFRelease(MutableCopy);
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
      CFRelease(v9);
      if (MutableCopy && kSCEntNetPPP)
      {
        v10 = v15;
        do
        {
          v11 = copyEntity(a1, a2, a3, v6);
          if (v11)
          {
            v12 = v11;
            CFDictionaryAddValue(MutableCopy, v6, v11);
            CFRelease(v12);
          }

          v13 = *v10++;
          v6 = v13;
        }

        while (v13);
      }
    }

    else
    {
      CFRelease(MutableCopy);
      return 0;
    }
  }

  return MutableCopy;
}

CFPropertyListRef copyEntity(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, CFStringRef entity)
{
  if (a3)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, a2, a3, entity);
  }

  else
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, a2, entity);
  }

  v6 = NetworkServiceEntity;
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v7 = SCDynamicStoreCopyValue(a1, NetworkServiceEntity);
  CFRelease(v6);
  return v7;
}

CFPropertyListRef existEntity(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  result = copyEntity(a1, a2, a3, a4);
  if (result)
  {
    CFRelease(result);
    return &dword_0 + 1;
  }

  return result;
}

const __CFString *getString(const __CFDictionary *a1, const void *a2, char *a3, unsigned int a4)
{
  *a3 = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = CFGetTypeID(result);
    if (v8 == CFStringGetTypeID())
    {
      CFStringGetCString(v7, a3, a4, 0x8000100u);
      return (&dword_0 + 1);
    }

    v9 = CFGetTypeID(v7);
    if (v9 == CFDataGetTypeID())
    {
      result = CFDataGetLength(v7);
      if (result)
      {
        v10 = result;
        result = CFDataGetBytePtr(v7);
        if (result)
        {
          v11 = LOBYTE(result->isa) ? 335544576 : 268435712;
          result = CFStringCreateWithBytes(0, result, v10, v11, 0);
          if (result)
          {
            v12 = result;
            CFStringGetCString(result, a3, a4, 0x8000100u);
            CFRelease(v12);
            return (&dword_0 + 1);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *getNumber(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberSInt32Type, a3);
      return (&dword_0 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *getNumberFromEntity(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const void *a5, void *a6)
{
  result = copyEntity(a1, a2, a3, a4);
  if (result)
  {
    v9 = result;
    Number = getNumber(result, a5, a6);
    CFRelease(v9);
    return Number;
  }

  return result;
}

const __CFDictionary *getStringFromEntity(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const void *a5, char *a6, unsigned int a7)
{
  result = copyEntity(a1, a2, a3, a4);
  if (result)
  {
    v11 = result;
    String = getString(result, a5, a6, a7);
    CFRelease(v11);
    return String;
  }

  return result;
}

const void *copyCFStringFromEntity(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const void *a5)
{
  v6 = copyEntity(a1, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Value = CFDictionaryGetValue(v6, a5);
  v9 = Value;
  if (Value)
  {
    v10 = CFGetTypeID(Value);
    if (v10 == CFStringGetTypeID())
    {
      CFRetain(v9);
    }

    else
    {
      v9 = 0;
    }
  }

  CFRelease(v7);
  return v9;
}

const __CFString *CFStringAddrToLong(const __CFString *result)
{
  if (result)
  {
    buffer[0] = 0;
    CFStringGetCString(result, buffer, 100, 0);
    return bswap32(inet_addr(buffer));
  }

  return result;
}

uint64_t getAddressFromEntity(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const void *a5, _DWORD *a6)
{
  v8 = copyEntity(a1, a2, a3, a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, a5);
  if (Value && (v11 = Value, CFArrayGetCount(Value)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
    *a6 = CFStringAddrToLong(ValueAtIndex);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v9);
  return v13;
}

uint64_t my_CFEqual(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2);
    }
  }

  return result;
}

void my_CFRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

uint64_t my_close(uint64_t result)
{
  if (result != -1)
  {
    return close(result);
  }

  return result;
}

CFTypeRef my_CFRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

const void *isDictionary(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDictionaryGetTypeID());
  }

  return result;
}

const void *isArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

const void *isString(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

const void *isNumber(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFNumberGetTypeID());
  }

  return result;
}

const void *isData(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDataGetTypeID());
  }

  return result;
}

void AddNumber(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void AddNumber64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void AddString(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);

    CFRelease(v6);
  }
}

void AddNumberFromState(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, const void *a4, __CFDictionary *a5)
{
  v7 = 0;
  if (getNumberFromEntity(a1, kSCDynamicStoreDomainState, a2, a3, a4, &v7))
  {
    AddNumber(a5, a4, v7);
  }
}

void AddStringFromState(const __SCDynamicStore *a1, const __CFString *a2, const __CFString *a3, const void *a4, __CFDictionary *a5)
{
  v7 = copyCFStringFromEntity(a1, kSCDynamicStoreDomainState, a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    CFDictionaryAddValue(a5, a4, v7);

    CFRelease(v8);
  }
}

const __CFData *Serialize(CFPropertyListRef propertyList, const UInt8 **a2, _DWORD *a3)
{
  XMLData = CFPropertyListCreateXMLData(0, propertyList);
  v6 = XMLData;
  if (XMLData)
  {
    *a2 = CFDataGetBytePtr(XMLData);
    *a3 = CFDataGetLength(v6);
  }

  return v6;
}

const __CFData *Unserialize(UInt8 *bytes, CFIndex length)
{
  result = CFDataCreate(0, bytes, length);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateFromXMLData(0, result, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

vm_address_t my_Allocate(int a1)
{
  address = 0;
  if (vm_allocate(mach_task_self_, &address, a1, 1))
  {
    return 0;
  }

  else
  {
    return address;
  }
}

vm_address_t my_Deallocate(vm_address_t address, int a2)
{
  if (address)
  {
    return vm_deallocate(mach_task_self_, address, a2);
  }

  return address;
}

uint64_t GetIntFromDict(const __CFDictionary *a1, const void *a2, _DWORD *a3, int a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (isNumber(Value) && CFNumberGetValue(Value, kCFNumberSInt32Type, a3))
  {
    return 1;
  }

  result = 0;
  *a3 = a4;
  return result;
}

size_t GetStrFromDict(const __CFDictionary *a1, const void *a2, char *a3, int a4, const char *a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!isString(Value) || !CFStringGetCString(Value, a3, a4, 0x8000100u))
  {
    strncpy(a3, a5, a4);
  }

  return strlen(a3);
}

const void *GetStrNetFromDict(const __CFDictionary *a1, const void *a2, char *a3, int a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  result = isString(Value);
  if (result)
  {
    result = CFStringGetCString(Value, a3, a4, 0x8000100u);
    if (result)
    {
      return (inet_network(a3) != -1);
    }
  }

  return result;
}

uint64_t publish_keyentry(const __SCDynamicStore *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = SCDynamicStoreCopyValue(a1, a2);
  if (v8)
  {
    v9 = v8;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
    CFRelease(v9);
    if (MutableCopy)
    {
LABEL_3:
      CFDictionarySetValue(MutableCopy, a3, a4);
      SCDynamicStoreSetValue(a1, a2, MutableCopy);
      CFRelease(MutableCopy);
      return 1;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (MutableCopy)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t unpublish_keyentry(const __SCDynamicStore *a1, const __CFString *a2, const void *a3)
{
  v6 = SCDynamicStoreCopyValue(a1, a2);
  if (v6)
  {
    v7 = v6;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v6);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, a3);
      SCDynamicStoreSetValue(a1, a2, v9);
      CFRelease(v9);
    }

    CFRelease(v7);
  }

  return 0;
}

uint64_t publish_dictnumentry(const __SCDynamicStore *a1, CFStringRef serviceID, CFStringRef entity, const void *a4, int a5)
{
  valuePtr = a5;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v8 = NetworkServiceEntity;
  v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v9)
  {
    v10 = v9;
    publish_keyentry(a1, v8, a4, v9);
    CFRelease(v10);
    v11 = 0;
  }

  else
  {
    v11 = 12;
  }

  CFRelease(v8);
  return v11;
}

uint64_t unpublish_dictentry(const __SCDynamicStore *a1, CFStringRef serviceID, CFStringRef entity, const void *a4)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v7 = NetworkServiceEntity;
  unpublish_keyentry(a1, NetworkServiceEntity, a4);
  CFRelease(v7);
  return 0;
}

uint64_t publish_multiple_dicts(const __SCDynamicStore *a1, const __CFString *a2, CFArrayRef theArray, const __CFArray *a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (theArray && a4)
  {
    Count = CFArrayGetCount(theArray);
    if (Count == CFArrayGetCount(a4))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v13 = CFArrayGetValueAtIndex(a4, i);
          TypeID = CFStringGetTypeID();
          if (ValueAtIndex)
          {
            if (CFGetTypeID(ValueAtIndex) == TypeID)
            {
              v15 = CFDictionaryGetTypeID();
              if (v13)
              {
                if (CFGetTypeID(v13) == v15)
                {
                  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, a2, ValueAtIndex);
                  if (NetworkServiceEntity)
                  {
                    v17 = NetworkServiceEntity;
                    CFDictionaryAddValue(Mutable, NetworkServiceEntity, v13);
                    CFRelease(v17);
                  }
                }
              }
            }
          }
        }
      }

      SCDynamicStoreSetMultiple(a1, Mutable, 0, 0);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 12;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t unpublish_dict(const __SCDynamicStore *a1, CFStringRef serviceID, CFStringRef entity)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (entity)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, entity);
  }

  else
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/%@", kSCDynamicStoreDomainState, kSCCompNetwork, kSCCompService, serviceID);
  }

  v6 = NetworkServiceEntity;
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  SCDynamicStoreRemoveValue(a1, NetworkServiceEntity);
  CFRelease(v6);
  return 0;
}

uint64_t unpublish_multiple_dicts(const __SCDynamicStore *a1, const __CFString *a2, const __CFArray *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        TypeID = CFStringGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == TypeID)
          {
            NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, a2, ValueAtIndex);
            if (NetworkServiceEntity)
            {
              v15 = NetworkServiceEntity;
              CFArrayAppendValue(Mutable, NetworkServiceEntity);
              CFRelease(v15);
            }
          }
        }
      }
    }
  }

  if (a4)
  {
    v16 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/%@", kSCDynamicStoreDomainState, kSCCompNetwork, kSCCompService, a2);
    if (v16)
    {
      v17 = v16;
      CFArrayAppendValue(Mutable, v16);
      CFRelease(v17);
    }
  }

  SCDynamicStoreSetMultiple(a1, 0, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 12;
}

uint64_t publish_dictstrentry(const __SCDynamicStore *a1, CFStringRef serviceID, CFStringRef entity, const void *a4, const char *a5, CFStringEncoding a6)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v11 = NetworkServiceEntity;
  v12 = CFStringCreateWithCString(0, a5, a6);
  if (v12)
  {
    v13 = v12;
    publish_keyentry(a1, v11, a4, v12);
    CFRelease(v13);
    v14 = 0;
  }

  else
  {
    v14 = 12;
  }

  CFRelease(v11);
  return v14;
}

uint64_t cfstring_is_ip(const __CFString *a1)
{
  v9.s_addr = 0;
  if (!isString(a1))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  usedBufLen = Length;
  if (!Length)
  {
    return 0;
  }

  v3 = Length;
  v4 = malloc_type_malloc(Length + 1, 0xE97E6F23uLL);
  if (!v4)
  {
    SCLog();
    return 0;
  }

  v5 = v4;
  v10.location = 0;
  v10.length = v3;
  CFStringGetBytes(a1, v10, 0, 0, 0, v4, v3, &usedBufLen);
  v5[usedBufLen] = 0;
  v6 = inet_aton(v5, &v9);
  free(v5);
  return v6;
}

const __CFString *copyPrimaryService(const __SCDynamicStore *a1)
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  if (NetworkGlobalEntity)
  {
    v3 = SCDynamicStoreCopyValue(a1, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    TypeID = CFDictionaryGetTypeID();
    if (!v3)
    {
      return 0;
    }

    if (CFGetTypeID(v3) == TypeID)
    {
      NetworkGlobalEntity = CFDictionaryGetValue(v3, kSCDynamicStorePropNetPrimaryService);
      v5 = CFStringGetTypeID();
      if (!NetworkGlobalEntity)
      {
LABEL_8:
        CFRelease(v3);
        return NetworkGlobalEntity;
      }

      if (CFGetTypeID(NetworkGlobalEntity) == v5)
      {
        CFRetain(NetworkGlobalEntity);
        goto LABEL_8;
      }
    }

    NetworkGlobalEntity = 0;
    goto LABEL_8;
  }

  return NetworkGlobalEntity;
}

uint64_t UpdatePasswordPrefs(const __CFString *a1, const void *a2, uint64_t a3, const void *a4, const void *a5)
{
  v9 = SCPreferencesCreate(0, @"UpdatePassword", 0);
  if (v9)
  {
    v10 = v9;
    if (SCPreferencesLock(v9, 1u))
    {
      v11 = SCNetworkServiceCopy(v10, a1);
      if (v11)
      {
        v12 = v11;
        Interface = SCNetworkServiceGetInterface(v11);
        if (!Interface)
        {
          goto LABEL_13;
        }

        v14 = Interface;
        InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
        if (!CFEqual(InterfaceType, a2))
        {
          goto LABEL_13;
        }

        if (SCNetworkInterfaceCheckPassword() && !SCNetworkInterfaceRemovePassword())
        {
          SCLog();
        }

        Configuration = SCNetworkInterfaceGetConfiguration(v14);
        v17 = Configuration ? CFDictionaryCreateMutableCopy(0, 0, Configuration) : CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v19 = v17;
        if (v17)
        {
          if (a5)
          {
            CFDictionarySetValue(v17, a4, a5);
          }

          else
          {
            CFDictionaryRemoveValue(v17, a4);
          }

          if (SCNetworkInterfaceSetConfiguration(v14, v19) && SCPreferencesCommitChanges(v10) && SCPreferencesApplyChanges(v10))
          {
            v18 = 1;
          }

          else
          {
            SCLog();
            v18 = 0;
          }

          CFRelease(v19);
        }

        else
        {
LABEL_13:
          SCLog();
          v18 = 0;
        }

        CFRelease(v12);
      }

      else
      {
        SCLog();
        v18 = 0;
      }

      SCPreferencesUnlock(v10);
    }

    else
    {
      SCLog();
      v18 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    SCLog();
    return 0;
  }

  return v18;
}

uint64_t set_ifmtu(uint64_t a1, int a2)
{
  v8 = 0u;
  v9 = 0u;
  v3 = socket(2, 2, 0);
  if (v3 < 0)
  {
    v6 = __error();
    v7 = strerror(*v6);
    syslog(6, "sifmtu: cannot create ip socket, %s", v7);
    return 0;
  }

  else
  {
    v4 = v3;
    __strlcpy_chk();
    LODWORD(v9) = a2;
    ioctl(v4, 0x80206934uLL, &v8);
    close(v4);
    return 1;
  }
}

uint64_t set_ifaddr(uint64_t a1, int a2, int a3, int a4)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = socket(2, 2, 0);
  if (v7 < 0)
  {
    v10 = __error();
    v11 = strerror(*v10);
    syslog(6, "sifaddr: cannot create ip socket, %s", v11);
  }

  else
  {
    v8 = v7;
    __strlcpy_chk();
    *(&v13 + 1) = 0;
    LODWORD(v13) = 528;
    DWORD1(v13) = a2;
    *(&v14 + 1) = 0;
    LODWORD(v14) = 528;
    DWORD1(v14) = a3;
    v15 = 0uLL;
    if (a4)
    {
      LOWORD(v15) = 528;
      DWORD1(v15) = a4;
    }

    if ((ioctl(v8, 0x8040691AuLL, &v12) & 0x80000000) == 0 || *__error() == 17)
    {
      close(v8);
      return 1;
    }

    close(v8);
  }

  return 0;
}

BOOL clear_ifaddr(uint64_t a1, int a2)
{
  v9 = 0u;
  v10 = 0u;
  v3 = socket(2, 2, 0);
  if (v3 < 0)
  {
    v7 = __error();
    v8 = strerror(*v7);
    syslog(6, "cifaddr: cannot create ip socket, %s", v8);
    return 0;
  }

  else
  {
    v4 = v3;
    __strlcpy_chk();
    *(&v10 + 1) = 0;
    LODWORD(v10) = 528;
    DWORD1(v10) = a2;
    v5 = ioctl(v4, 0x80206919uLL, &v9);
    close(v4);
    return v5 >= 0;
  }
}

void *in6_len2mask(void *__b, int a2)
{
  v3 = __b;
  v4 = 0;
  *__b = 0;
  __b[1] = 0;
  if (a2 >= 8)
  {
    v4 = a2 >> 3;
    __b = memset(__b, 255, v4);
  }

  if (a2 <= 0)
  {
    v5 = -(-a2 & 7);
  }

  else
  {
    v5 = a2 & 7;
  }

  if (v5)
  {
    *(v3 + v4) = 0xFF00u >> v5;
  }

  return __b;
}

uint64_t in6_maskaddr(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 16; ++i)
  {
    *(result + i) &= *(a2 + i);
  }

  return result;
}

_BYTE *in6_addr2net(_BYTE *result, int a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v9[0] = 0;
  v9[1] = 0;
  if (a2 >= 8)
  {
    v6 = a2 >> 3;
    result = memset(v9, 255, v6);
  }

  if (a2 <= 0)
  {
    v7 = -(-a2 & 7);
  }

  else
  {
    v7 = a2 & 7;
  }

  if (v7)
  {
    *(v9 + v6) = 0xFF00u >> v7;
  }

  for (i = 0; i != 16; ++i)
  {
    *(a3 + i) = *(v9 + i) & v5[i];
  }

  return result;
}

uint64_t set_ifaddr6(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = socket(30, 2, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *&v16[16] = 0u;
    v17 = 0u;
    v15 = 0u;
    *v16 = 0u;
    __strlcpy_chk();
    v7 = 0;
    *v16 = 7708;
    *&v16[8] = *a2;
    WORD4(v18) = 7708;
    __b = 0uLL;
    if (a3 >= 8)
    {
      v7 = a3 >> 3;
      memset(&__b, 255, v7);
    }

    if (a3 <= 0)
    {
      v8 = -(-a3 & 7);
    }

    else
    {
      v8 = a3 & 7;
    }

    if (v8)
    {
      *(&__b + v7) = 0xFF00u >> v8;
    }

    v19 = __b;
    *(&v21 + 1) = -1;
    if (*a2 == 254 && (a2[1] & 0xC0) == 0x80)
    {
      if (ioctl(v6, 0xC0806982uLL, &v15) < 0)
      {
        v9 = __error();
        strerror(*v9);
        syslog(3, "set_ifaddr6: can't set link-local IPv6 address, %s");
LABEL_17:
        close(v6);
        return 0;
      }
    }

    else if (ioctl(v6, 0x8080691AuLL, &v15) < 0)
    {
      v13 = __error();
      strerror(*v13);
      syslog(3, "set_ifaddr6: can't set IPv6 address, %s");
      goto LABEL_17;
    }

    close(v6);
    return 1;
  }

  v11 = __error();
  v12 = strerror(*v11);
  syslog(3, "set_ifaddr6: can't create IPv6 socket, %s", v12);
  return 0;
}

uint64_t clear_ifaddr6(uint64_t a1, _OWORD *a2)
{
  v3 = socket(30, 2, 0);
  if (v3 < 0)
  {
    v6 = __error();
    v7 = strerror(*v6);
    syslog(3, "set_ifaddr6: can't create IPv6 socket, %s", v7);
  }

  else
  {
    v4 = v3;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *&v11[16] = 0u;
    v12 = 0u;
    v10 = 0u;
    *v11 = 0u;
    __strlcpy_chk();
    *v11 = 7708;
    *&v11[8] = *a2;
    if ((ioctl(v4, 0x81206919uLL, &v10) & 0x80000000) == 0)
    {
      close(v4);
      return 1;
    }

    v8 = __error();
    v9 = strerror(*v8);
    syslog(3, "set_ifaddr6: can't set IPv6 address, %s", v9);
    close(v4);
  }

  return 0;
}

const char *inet_sockaddr_to_p(uint64_t a1, char *a2, socklen_t a3)
{
  v4 = *(a1 + 1);
  if (v4 == 2)
  {
    v5 = 4;
    return inet_ntop(v4, (a1 + v5), a2, a3);
  }

  if (v4 == 30)
  {
    v5 = 8;
    return inet_ntop(v4, (a1 + v5), a2, a3);
  }

  return 0;
}

uint64_t inet_p_to_sockaddr(const char *a1, char *a2, unsigned int a3)
{
  bzero(a2, a3);
  if (a3 < 0x10)
  {
    return 0;
  }

  v6 = 2;
  if (inet_pton(2, a1, a2 + 4))
  {
    v7 = 16;
LABEL_4:
    *a2 = v7;
    a2[1] = v6;
    return 1;
  }

  if (a3 < 0x1C)
  {
    return 0;
  }

  v6 = 30;
  result = inet_pton(30, a1, a2 + 8);
  if (result)
  {
    v7 = 28;
    goto LABEL_4;
  }

  return result;
}

uint64_t copyGateway(const __SCDynamicStore *a1, int a2, char *a3, int a4, void *a5, int a6)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a5)
  {
    bzero(a5, a6);
  }

  if (a2 != 30 && a2 != 2)
  {
    return 0;
  }

  v12 = &kSCEntNetIPv6;
  if (a2 == 2)
  {
    v12 = &kSCEntNetIPv4;
  }

  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, *v12);
  if (NetworkGlobalEntity)
  {
    v14 = SCDynamicStoreCopyValue(a1, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    if (v14)
    {
      Value = CFDictionaryGetValue(v14, kSCDynamicStorePropNetPrimaryInterface);
      LODWORD(NetworkGlobalEntity) = Value != 0;
      if (a3 && Value)
      {
        CFStringGetCString(Value, a3, a4, 0x8000100u);
      }

      v16 = &kSCPropNetIPv4Router;
      if (a2 != 2)
      {
        v16 = &kSCPropNetIPv6Router;
      }

      v17 = CFDictionaryGetValue(v14, *v16);
      if (v17 && (buffer[0] = 0, CFStringGetCString(v17, buffer, 256, 0x8000100u), buffer[0]))
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        *__len = 0u;
        v22 = 0u;
        v18 = inet_p_to_sockaddr(buffer, __len, 0x80u);
        v19 = v18 != 0;
        if (a5 && v18 && LOBYTE(__len[0]) <= a6)
        {
          memmove(a5, __len, LOBYTE(__len[0]));
        }
      }

      else
      {
        v19 = 0;
      }

      CFRelease(v14);
      return NetworkGlobalEntity & v19;
    }

    LODWORD(NetworkGlobalEntity) = 0;
  }

  v19 = 0;
  return NetworkGlobalEntity & v19;
}

__CFDictionary *create_ipv6_dummy_primary(uint64_t a1)
{
  valuePtr = 1;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(v3, @"::1");
      CFDictionarySetValue(Mutable, kSCPropNetIPv6Addresses, v4);
      CFRelease(v4);
    }

    CFDictionarySetValue(Mutable, kSCPropNetIPv6Router, @"::1");
    v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(Mutable, kSCPropNetOverridePrimary, v5);
      CFRelease(v6);
    }

    CFDictionarySetValue(Mutable, @"IsNULL", kCFBooleanTrue);
    if (a1)
    {
      v7 = CFStringCreateWithFormat(0, 0, @"%s", a1);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(Mutable, kSCPropInterfaceName, v7);
        CFRelease(v8);
      }
    }
  }

  return Mutable;
}

__CFDictionary *create_stateaddr(int a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, int a8, void *value, void *a10)
{
  valuePtr = a8;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v15 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
    if (v15)
    {
      v16 = v15;
      v17 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a5, BYTE1(a5), BYTE2(a5), HIBYTE(a5));
      if (v17)
      {
        v18 = v17;
        CFArrayAppendValue(v16, v17);
        CFRelease(v18);
        CFDictionarySetValue(Mutable, kSCPropNetIPv4Addresses, v16);
      }

      CFRelease(v16);
    }

    v19 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a6, BYTE1(a6), BYTE2(a6), HIBYTE(a6));
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(Mutable, kSCPropNetIPv4Router, v19);
      CFRelease(v20);
    }

    v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(Mutable, kSCPropNetOverridePrimary, v21);
      CFRelease(v22);
    }

    if (a3)
    {
      v23 = CFStringCreateWithFormat(0, 0, @"%s", a3);
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(Mutable, kSCPropInterfaceName, v23);
        CFRelease(v24);
      }
    }

    v25 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a4, BYTE1(a4), BYTE2(a4), HIBYTE(a4));
    if (v25)
    {
      v26 = v25;
      CFDictionarySetValue(Mutable, @"ServerAddress", v25);
      CFRelease(v26);
    }

    if (!valuePtr)
    {
      v27 = _SCNetworkServiceCopyActive();
      if (v27)
      {
        v28 = v27;
        SCNetworkServiceSetPrimaryRank();
        CFRelease(v28);
      }
    }

    if (value)
    {
      CFDictionarySetValue(Mutable, kSCPropNetIPv4AdditionalRoutes, value);
    }

    if (a10)
    {
      CFDictionarySetValue(Mutable, kSCPropNetIPv4ExcludedRoutes, a10);
    }
  }

  return Mutable;
}

const __SCDynamicStore *create_dns(const __SCDynamicStore *a1, CFStringRef serviceID, const void *a3, const void *a4, const void *a5, int a6)
{
  MutableCopy = a1;
  if (a1)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, kSCEntNetDNS);
    if (NetworkServiceEntity)
    {
      v13 = NetworkServiceEntity;
      v14 = SCDynamicStoreCopyValue(MutableCopy, NetworkServiceEntity);
      if (v14)
      {
        v15 = v14;
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v14);
        CFRelease(v15);
        if (!MutableCopy)
        {
          goto LABEL_16;
        }
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!MutableCopy)
        {
LABEL_16:
          CFRelease(v13);
          return MutableCopy;
        }
      }

      v16 = CFGetTypeID(MutableCopy);
      if (v16 == CFDictionaryGetTypeID())
      {
        CFDictionarySetValue(MutableCopy, kSCPropNetDNSServerAddresses, a3);
        if (a4)
        {
          CFDictionarySetValue(MutableCopy, kSCPropNetDNSDomainName, a4);
        }

        if (a5)
        {
          CFDictionarySetValue(MutableCopy, kSCPropNetDNSSupplementalMatchDomains, a5);
        }

        if (a6)
        {
          AddNumber(MutableCopy, kSCPropNetDNSSupplementalMatchDomainsNoSearch, 1);
        }

        CFDictionarySetValue(MutableCopy, kSCPropNetDNSConfirmedServiceID, serviceID);
        notify_post("com.apple.system.dns.delay");
      }

      goto LABEL_16;
    }

    return 0;
  }

  return MutableCopy;
}

BOOL equal_address(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  if (v2 == 2)
  {
    v4 = 4;
    v3 = 4;
    return bcmp((a1 + v4), (a2 + v4), v3) == 0;
  }

  if (v2 != 30)
  {
    return 0;
  }

  v3 = 16;
  v4 = 8;
  return bcmp((a1 + v4), (a2 + v4), v3) == 0;
}

uint64_t route_gateway(int a1, uint64_t a2, _OWORD *a3, _OWORD *a4, int a5, int a6)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a2 + 1);
  if (v7 == 30 || v7 == 2)
  {
    v14 = socket(17, 3, 17);
    if (v14 < 0)
    {
      v19 = __error();
      v20 = strerror(*v19);
      syslog(6, "route_gateway: open routing socket failed, %s", v20);
    }

    else
    {
      v15 = v14;
      v27 = 0u;
      v28 = 0u;
      memset(v32, 0, sizeof(v32));
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v26 = a1;
      if (a5)
      {
        v16 = 2051;
      }

      else
      {
        v16 = 2049;
      }

      if (a6)
      {
        v16 |= 0x1000u;
      }

      v25 = 5;
      LODWORD(v28) = 1;
      *(&v27 + 4) = v16 | 0x700000000;
      if (*(a2 + 1) == 2)
      {
        *&v32[8] = *a2;
        if (a4)
        {
          *&v32[24] = *a4;
        }

        if (a3)
        {
          *&v32[40] = *a3;
        }

        v17 = 140;
      }

      else
      {
        *&v32[8] = *a2;
        *&v32[20] = *(a2 + 12);
        if (a4)
        {
          *&v32[36] = *a4;
          *&v32[48] = *(a4 + 12);
        }

        if (a3)
        {
          *&v32[64] = *a3;
          *&v32[76] = *(a3 + 12);
        }

        v17 = 176;
      }

      __buf = v17;
      if ((write(v14, &__buf, v17) & 0x8000000000000000) == 0)
      {
        close(v15);
        return 0;
      }

      if (a1 == 2)
      {
        v21 = 7;
      }

      else
      {
        v21 = 3;
      }

      v22 = __error();
      v23 = strerror(*v22);
      syslog(v21, "route_gateway: write routing socket failed, %s", v23);
      close(v15);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t set_host_gateway(int a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *(a2 + 1);
  if (v6 != 30 && v6 != 2)
  {
    return 0;
  }

  v12 = socket(17, 3, 17);
  if (v12 < 0)
  {
    v20 = __error();
    v21 = strerror(*v20);
    syslog(6, "host_gateway: open routing socket failed, %s", v21);
    return 0;
  }

  v13 = v12;
  v34 = 0;
  v33 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  __buf = 0u;
  BYTE3(__buf) = a1;
  if (a5)
  {
    v14 = 2305;
  }

  else
  {
    v14 = 2053;
  }

  DWORD2(__buf) = v14;
  if (a3)
  {
    v15 = *(a3 + 1);
    if (v15 == 30)
    {
      if (*(a3 + 8))
      {
        v26 = 0;
      }

      else
      {
        v26 = *(a3 + 16) == 0;
      }

      if (!v26)
      {
        goto LABEL_15;
      }
    }

    else if (v15 == 2 && *(a3 + 4))
    {
LABEL_15:
      DWORD2(__buf) = v14 | 2;
    }
  }

  BYTE2(__buf) = 5;
  DWORD1(v28) = 1;
  HIDWORD(__buf) = 7;
  if (*(a2 + 1) == 2)
  {
    *(v32 + 12) = *a2;
    if (a3)
    {
      *(&v32[1] + 12) = *a3;
    }

    WORD6(v32[2]) = 528;
    LODWORD(v32[3]) = -1;
    v16 = &v32[3] + 12;
    v17 = 160;
    if (a4)
    {
LABEL_20:
      *v16 = 4628;
      v18 = strlen(a4);
      if (v18 >= 0xC)
      {
        v19 = 12;
      }

      else
      {
        v19 = v18;
      }

      v16[5] = v19;
      HIDWORD(__buf) = 23;
      __memmove_chk();
      goto LABEL_29;
    }
  }

  else
  {
    *(v32 + 12) = *a2;
    *(&v32[1] + 8) = *(a2 + 12);
    if (a3)
    {
      *(&v32[2] + 8) = *a3;
      *(&v32[3] + 4) = *(a3 + 12);
    }

    WORD2(v32[4]) = 7708;
    v16 = &v33;
    *(&v32[4] + 12) = -1;
    *(&v32[5] + 4) = -1;
    v17 = 196;
    if (a4)
    {
      goto LABEL_20;
    }
  }

  v17 -= 20;
LABEL_29:
  LOWORD(__buf) = v17;
  if ((write(v13, &__buf, v17) & 0x8000000000000000) == 0)
  {
    close(v13);
    return 1;
  }

  if (a1 == 2)
  {
    v23 = 7;
  }

  else
  {
    v23 = 3;
  }

  v24 = __error();
  v25 = strerror(*v24);
  syslog(v23, "host_gateway: write routing socket failed, command %d, %s", a1, v25);
  close(v13);
  return 0;
}

__CFDictionary *create_proxies(uint64_t a1, uint64_t a2, int a3, const void *a4, int a5, int a6, const __CFString *a7, const void *a8)
{
  v23 = a6;
  v24 = a5;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    valuePtr = 1;
    v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v13)
    {
      v14 = v13;
      if (a3)
      {
        CFDictionarySetValue(Mutable, kSCPropNetProxiesProxyAutoDiscoveryEnable, v13);
      }

      else if (a4)
      {
        CFDictionarySetValue(Mutable, kSCPropNetProxiesFTPEnable, v13);
        CFDictionarySetValue(Mutable, kSCPropNetProxiesHTTPEnable, v14);
        CFDictionarySetValue(Mutable, kSCPropNetProxiesHTTPSEnable, v14);
        v16 = CFNumberCreate(0, kCFNumberIntType, &v24);
        if (!v16)
        {
          goto LABEL_7;
        }

        v17 = v16;
        CFDictionarySetValue(Mutable, kSCPropNetProxiesFTPPort, v16);
        CFDictionarySetValue(Mutable, kSCPropNetProxiesHTTPPort, v17);
        CFDictionarySetValue(Mutable, kSCPropNetProxiesHTTPSPort, v17);
        CFRelease(v17);
        CFDictionarySetValue(Mutable, kSCPropNetProxiesFTPProxy, a4);
        CFDictionarySetValue(Mutable, kSCPropNetProxiesHTTPProxy, a4);
        CFDictionarySetValue(Mutable, kSCPropNetProxiesHTTPSProxy, a4);
        v18 = CFNumberCreate(0, kCFNumberIntType, &v23);
        if (!v18)
        {
LABEL_7:
          CFRelease(v14);
          return Mutable;
        }

        v19 = v18;
        CFDictionarySetValue(Mutable, kSCPropNetProxiesExcludeSimpleHostnames, v18);
        CFRelease(v19);
        if (a7)
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a7, @";");
          if (ArrayBySeparatingStrings)
          {
            v21 = ArrayBySeparatingStrings;
            CFDictionarySetValue(Mutable, kSCPropNetProxiesExceptionsList, ArrayBySeparatingStrings);
            CFRelease(v21);
          }
        }
      }

      if (a8)
      {
        CFDictionarySetValue(Mutable, kSCPropNetProxiesSupplementalMatchDomains, a8);
      }

      goto LABEL_7;
    }
  }

  return Mutable;
}

uint64_t create_tun_interface(void *a1, socklen_t a2, unsigned int *a3, int a4, int a5)
{
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  v10 = socket(32, 2, 2);
  if (v10 == -1)
  {
    v13 = *__error();
    SCLog();
    return v10;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  __strlcpy_chk();
  if (ioctl(v10, 0xC0644E03uLL, v19))
  {
    v12 = *__error();
LABEL_11:
    SCLog();
    close(v10);
    return 0xFFFFFFFFLL;
  }

  *&v18[0].sa_len = 139296;
  *&v18[0].sa_data[2] = v19[0];
  memset(&v18[0].sa_data[6], 0, 24);
  if (!a4)
  {
    if (!connect(v10, v18, 0x20u))
    {
      goto LABEL_14;
    }

LABEL_10:
    v14 = *__error();
    goto LABEL_11;
  }

  if (bind(v10, v18, 0x20u))
  {
    goto LABEL_10;
  }

  v16 = a4;
  v17 = 4;
  if (setsockopt(v10, 2, 1, &v16, 4u) || connect(v10, v18, 0x20u))
  {
    goto LABEL_17;
  }

LABEL_14:
  v17 = a2;
  if (getsockopt(v10, 2, 2, a1, &v17) || (*a3 = if_nametoindex(a1), a5) && (v16 = 1, setsockopt(v10, 2, 3, &v16, 4u)))
  {
LABEL_17:
    v15 = *__error();
    goto LABEL_11;
  }

  return v10;
}

uint64_t set_tun_delegate(int a1, char *__s)
{
  v4 = strlen(__s);
  v5 = setsockopt(a1, 2, 15, __s, v4);
  if (v5)
  {
    v6 = __error();
    strerror(*v6);
    SCLog();
  }

  return v5;
}

uint64_t event_create_socket(void *a1, CFSocketNativeHandle *a2, CFSocketRef *a3, void (__cdecl *a4)(CFSocketRef, CFSocketCallBackType, CFDataRef, const void *, void *), int a5)
{
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  v17 = 0;
  v16 = 0;
  v9 = socket(32, 3, 1);
  *a2 = v9;
  if (v9 < 0)
  {
    v15 = *__error();
    SCLog();
  }

  else
  {
    v16 = 0x100000001;
    v17 = a5 == 0;
    ioctl(v9, 0x800C6502uLL, &v16);
    v10 = CFSocketCreateWithNative(0, *a2, 1uLL, a4, &context);
    *a3 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    RunLoopSource = CFSocketCreateRunLoopSource(0, v10, 0);
    if (RunLoopSource)
    {
      v12 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v12, kCFRunLoopDefaultMode);
      CFRelease(v12);
      return 0;
    }
  }

  if (!*a3)
  {
LABEL_8:
    if ((*a2 & 0x80000000) == 0)
    {
      close(*a2);
    }

    goto LABEL_10;
  }

  CFSocketInvalidate(*a3);
  CFRelease(*a3);
LABEL_10:
  *a3 = 0;
  result = 0xFFFFFFFFLL;
  *a2 = -1;
  return result;
}

__CFData *SCNCPluginExecCallbackRunLoopSourceInit(CFRunLoopRef Current, uint64_t a2, uint64_t a3)
{
  Mutable = CFDataCreateMutable(0, 264);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 264);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    v10 = 0;
    v12.version = 0;
    memset(&v12.retain, 0, 56);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v12.info = v7;
    v12.perform = sub_1B540;
    v11 = CFRunLoopSourceCreate(0, 0, &v12);
    if (v11)
    {
      *(&v22 + 1) = a2;
      v23 = a3;
      if (!Current)
      {
        Current = CFRunLoopGetCurrent();
      }

      v10 = Current;
      CFRetain(Current);
      CFRunLoopAddSource(Current, v11, kCFRunLoopDefaultMode);
      memmove(MutableBytePtr, &v10, 0x108uLL);
    }

    else
    {
      CFRelease(v7);
      return 0;
    }
  }

  return v7;
}

void sub_1B540(__CFData *a1)
{
  TypeID = CFDataGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(a1);
    v4 = MutableBytePtr;
    v5 = *(MutableBytePtr + 31);
    if (v5)
    {
      v5(*(MutableBytePtr + 24), *(MutableBytePtr + 25), MutableBytePtr + 104, *(MutableBytePtr + 32));
    }

    CFRunLoopSourceInvalidate(*(v4 + 1));
    CFRelease(*(v4 + 1));
    CFRelease(*v4);

    CFRelease(a1);
  }
}

uint64_t SCNCPluginExecCommand(__CFRunLoop *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = SCNCPluginExecCallbackRunLoopSourceInit(a1, a2, a3);
  if (v11)
  {

    return __SCDPluginExecCommand(sub_1B670, v11, a4, a5, a6, a7);
  }

  else
  {
    SCLog();
    return 0xFFFFFFFFLL;
  }
}

void sub_1B670(int a1, int a2, const void *a3, __CFData *a4)
{
  TypeID = CFDataGetTypeID();
  if (a4 && CFGetTypeID(a4) == TypeID)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(a4);
    *(MutableBytePtr + 24) = a1;
    *(MutableBytePtr + 25) = a2;
    memmove(MutableBytePtr + 104, a3, 0x90uLL);
    CFRunLoopSourceSignal(*(MutableBytePtr + 1));
    v10 = *MutableBytePtr;

    CFRunLoopWakeUp(v10);
  }
}

uint64_t SCNCPluginExecCommand2(__CFRunLoop *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = SCNCPluginExecCallbackRunLoopSourceInit(a1, a2, a3);
  if (v14)
  {

    return __SCDPluginExecCommand2(sub_1B670, v14, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    SCLog();
    return 0xFFFFFFFFLL;
  }
}

uint64_t SCNCExecSBSLauncherCommandWithArguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = CFBundleCopyResourcesDirectoryURL(gBundleRef);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  memset(v29, 0, sizeof(v29));
  v16 = CFURLCopyAbsoluteURL(v14);
  if (v16)
  {
    v17 = v16;
    v18 = CFURLCopyPath(v16);
    if (v18)
    {
      v19 = v18;
      if (CFStringGetCString(v18, buffer, 1024, 0))
      {
        __strlcat_chk();
        *&v29[0] = "sbslauncher";
        *(&v29[0] + 1) = a1;
        v28 = &a10;
        v20 = a9;
        if (a9)
        {
          v21 = 2;
          do
          {
            v22 = v21 + 1;
            *(v29 + v21) = v20;
            v23 = v28++;
            v20 = *v23;
            if (v20)
            {
              v24 = v21 >= 0xE;
            }

            else
            {
              v24 = 1;
            }

            ++v21;
          }

          while (!v24);
        }

        else
        {
          v22 = 2;
        }

        *(v29 + v22) = 0;
        if (a2)
        {
          v26 = SCNCPluginExecCommand2(0, a3, a4, 0, 0, buffer, v29, a2, a4);
        }

        else
        {
          v26 = SCNCPluginExecCommand(0, a3, a4, 0, 0, buffer, v29);
        }

        v25 = v26;
      }

      else
      {
        v25 = 0;
      }

      CFRelease(v19);
    }

    else
    {
      v25 = 0;
    }

    CFRelease(v17);
  }

  else
  {
    v25 = 0;
  }

  CFRelease(v15);
  return v25;
}

CFIndex extractEnvironmentVariablesApplierFunction(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    v7 = *(a3 + 528);
    v8 = (*(a3 + 512) + (v7 << 8));
    v9 = *(a3 + 520);
    *v8 = 0;
    Length = CFStringGetLength(a1);
    if ((Length - 256) < 0xFFFFFFFFFFFFFF01)
    {
      return SCLog();
    }

    v11 = Length;
    v21.location = 0;
    v21.length = Length;
    if (CFStringGetBytes(a1, v21, 0x8000100u, 0, 0, v8, 256, 0) <= 0)
    {
      return SCLog();
    }

    v12 = (v9 + (v7 << 8));
    v8[v11] = 0;
    ++*(a3 + 528);
    *v12 = 0;
    v13 = CFStringGetTypeID();
    if (!a2)
    {
      CFNumberGetTypeID();
      CFBooleanGetTypeID();
      return SCLog();
    }

    if (CFGetTypeID(a2) == v13)
    {
      v14 = CFStringGetLength(a2);
      if ((v14 - 256) >= 0xFFFFFFFFFFFFFF01)
      {
        v15 = v14;
        v22.location = 0;
        v22.length = v14;
        result = CFStringGetBytes(a2, v22, 0x8000100u, 0, 0, v12, 256, 0);
        if (result > 0)
        {
          v12[v15] = 0;
          return result;
        }
      }

      return SCLog();
    }

    v17 = CFNumberGetTypeID();
    if (CFGetTypeID(a2) == v17)
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr))
      {
        return snprintf(v12, 0x100uLL, "%lld");
      }

      return SCLog();
    }

    v18 = CFBooleanGetTypeID();
    if (CFGetTypeID(a2) != v18)
    {
      return SCLog();
    }

    CFBooleanGetValue(a2);
    return snprintf(v12, 0x100uLL, "%s");
  }

  else
  {

    return SCLog();
  }
}

CFPropertyListRef collectEnvironmentVariables(const __SCDynamicStore *a1, const __CFString *a2)
{
  if (a1 && a2)
  {

    return copyEntity(a1, kSCDynamicStoreDomainSetup, a2, @"EnvironmentVariables");
  }

  else
  {
    SCLog();
    return 0;
  }
}

void extractEnvironmentVariables(const void *a1, uint64_t a2)
{
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(a1) != TypeID || CFDictionaryGetCount(a1) < 1)
    {
      goto LABEL_13;
    }

    Count = CFDictionaryGetCount(a1);
    v6 = *(a2 + 512);
    if (v6)
    {
      free(v6);
      *(a2 + 512) = 0;
    }

    v7 = *(a2 + 520);
    if (v7)
    {
      free(v7);
      *(a2 + 520) = 0;
    }

    *(a2 + 528) = 0;
    v8 = Count << 8;
    *(a2 + 512) = malloc_type_malloc(v8, 0x1000040104B78CFuLL);
    v9 = malloc_type_malloc(v8, 0x1000040104B78CFuLL);
    *(a2 + 520) = v9;
    if (*(a2 + 512) && v9)
    {

      CFDictionaryApplyFunction(a1, extractEnvironmentVariablesApplierFunction, a2);
    }

    else
    {
LABEL_13:

      SCLog();
    }
  }
}

void applyEnvironmentVariables(uint64_t a1)
{
  if (*(a1 + 528) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 512);
      if (v4)
      {
        unsetenv((v4 + v2));
        v5 = *(a1 + 520);
        if (v5)
        {
          setenv((*(a1 + 512) + v2), (v5 + v2), 1);
        }
      }

      ++v3;
      v2 += 256;
    }

    while (v3 < *(a1 + 528));
  }

  *(a1 + 528) = 0;
  v6 = *(a1 + 512);
  if (v6)
  {
    free(v6);
    *(a1 + 512) = 0;
  }

  v7 = *(a1 + 520);
  if (v7)
  {
    free(v7);
    *(a1 + 520) = 0;
  }
}

char *scnc_get_reason_str(int a1)
{
  result = 0;
  if (a1 > 6)
  {
    if (a1 <= 8)
    {
      if (a1 == 7)
      {
        return scnc_plugin_chg[0];
      }

      else
      {
        return scnc_app_rem[0];
      }
    }

    else if ((a1 - 9) < 2)
    {
      return scnc_usr_req[0];
    }

    else if (a1 == 11)
    {
      return scnc_term_all[0];
    }

    else if (a1 == 12)
    {
      return scnc_serv_disp[0];
    }
  }

  else if (a1 > 3)
  {
    if ((a1 - 5) >= 2)
    {
      if (a1 == 4)
      {
        return scnc_usr_switch[0];
      }
    }

    else
    {
      return scnc_sock_disco[0];
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        return scnc_ctrl_stopped[0];
      case 2:
        return scnc_sys_sleep[0];
      case 3:
        return scnc_usr_logout[0];
    }
  }

  return result;
}

char *ppp_error_to_string(int a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = ppp_fatal[0];
      break;
    case 2:
      result = ppp_option[0];
      break;
    case 3:
      result = ppp_not_root[0];
      break;
    case 4:
      result = ppp_no_kern[0];
      break;
    case 5:
      result = ppp_user_req[0];
      break;
    case 6:
      result = ppp_lock_fail[0];
      break;
    case 7:
      result = ppp_open_fail[0];
      break;
    case 8:
      result = ppp_conn_fail[0];
      break;
    case 9:
      result = ppp_pty_fail[0];
      break;
    case 10:
      result = ppp_nego_fail[0];
      break;
    case 11:
      result = ppp_peer_auth_fail[0];
      break;
    case 12:
      result = ppp_idle_tmo[0];
      break;
    case 13:
      result = ppp_sess_tmo[0];
      break;
    case 14:
      result = ppp_callback[0];
      break;
    case 15:
      result = ppp_peer_dead[0];
      break;
    case 16:
      result = ppp_disco_by_dev[0];
      break;
    case 17:
      result = ppp_loopback[0];
      break;
    case 18:
      result = ppp_init_fail[0];
      break;
    case 19:
      result = ppp_auth_fail[0];
      break;
    case 20:
      result = ppp_term_fail[0];
      break;
    case 21:
      result = ppp_dev_err[0];
      break;
    case 23:
      result = ppp_peer_unauth[0];
      break;
    case 24:
      result = ppp_cnid_auth_fail[0];
      break;
    case 25:
      result = ppp_peer_unreach[0];
      break;
    default:
      return result;
  }

  return result;
}

char *ppp_dev_error_to_string(int a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    result = 0;
    if (a2 > 4)
    {
      if (a2 <= 6)
      {
        if (a2 == 5)
        {
          return ppp_dev_modem_err[0];
        }

        return ppp_dev_no_ans[0];
      }

      if (a2 == 7)
      {
        return ppp_dev_hang[0];
      }

      else if (a2 == 9)
      {
        return ppp_dev_bad_script[0];
      }
    }

    else if (a2 > 2)
    {
      if (a2 == 3)
      {
        return ppp_dev_busy[0];
      }

      else
      {
        return ppp_dev_no_dial[0];
      }
    }

    else if (a2 == 1)
    {
      return ppp_dev_no_car[0];
    }

    else if (a2 == 2)
    {
      return ppp_dev_no_num[0];
    }

    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        return ppp_dev_no_srvr[0];
      }

      if (a2 == 2)
      {
        return ppp_dev_no_srvc[0];
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          return ppp_dev_no_ac[0];
        case 4:
          return ppp_dev_no_ac_srvc[0];
        case 5:
          return ppp_dev_conn_refuse[0];
      }
    }

    return result;
  }

  if (a1 != 5)
  {
    return 0;
  }

  result = 0;
  if (a2 <= 5)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 == 5)
        {
          return ppp_dev_prot_err[0];
        }

        return result;
      }

      return ppp_dev_no_ans[0];
    }

    return ppp_dev_no_srvr[0];
  }

  switch(a2)
  {
    case 6:
      return ppp_dev_net_chg[0];
    case 7:
      return ppp_dev_psk[0];
    case 8:
      return ppp_dev_cert[0];
  }

  return result;
}

char *ipsec_error_to_string(int a1)
{
  switch(a1)
  {
    case 1:
      result = ipsec_gen_err[0];
      break;
    case 2:
      result = ipsec_no_srvr_addr[0];
      break;
    case 3:
      result = ipsec_no_psk[0];
      break;
    case 4:
      result = ipsec_no_cert[0];
      break;
    case 5:
      result = ipsec_dns_err[0];
      break;
    case 6:
      result = ipsec_no_local[0];
      break;
    case 7:
      result = ipsec_cfg_err[0];
      break;
    case 8:
      result = ipsec_ctrl_err[0];
      break;
    case 9:
      result = ipsec_conn_err[0];
      break;
    case 10:
      result = ipsec_nego_err[0];
      break;
    case 11:
      result = ipsec_psk_err[0];
      break;
    case 12:
      result = ipsec_srvr_cert_err[0];
      break;
    case 13:
      result = ipsec_cli_cert_err[0];
      break;
    case 14:
      result = ipsec_xauth_err[0];
      break;
    case 15:
      result = ipsec_net_chg[0];
      break;
    case 16:
      result = ipsec_peer_disco[0];
      break;
    case 17:
      result = ipsec_peer_dead[0];
      break;
    case 18:
      result = ipsec_edge_err[0];
      break;
    case 19:
      result = ipsec_idle_tmo[0];
      break;
    case 20:
      result = ipsec_cli_cert_pre[0];
      break;
    case 21:
      result = ipsec_cli_cert_exp[0];
      break;
    case 22:
      result = ipsec_srvr_cert_pre[0];
      break;
    case 23:
      result = ipsec_srvr_cert_exp[0];
      break;
    case 24:
      result = ipsec_srvr_cert_id[0];
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

char *vpn_error_to_string(int a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = vpn_gen_err[0];
      break;
    case 2:
      result = vpn_no_srvr_addr[0];
      break;
    case 3:
      result = vpn_no_cert[0];
      break;
    case 4:
      result = vpn_dns_err[0];
      break;
    case 5:
      result = vpn_no_local[0];
      break;
    case 6:
      result = vpn_cfg_err[0];
      break;
    case 7:
      result = vpn_ctrl_err[0];
      break;
    case 8:
      result = vpn_conn_err[0];
      break;
    case 9:
      result = vpn_net_chg[0];
      break;
    case 10:
      result = vpn_peer_disco[0];
      break;
    case 11:
      result = vpn_peer_dead[0];
      break;
    case 12:
      result = vpn_peer_unresp[0];
      break;
    case 13:
      result = vpn_nego_err[0];
      break;
    case 14:
      result = vpn_xauth_err[0];
      break;
    case 15:
      result = vpn_edge_err[0];
      break;
    case 16:
      result = vpn_idle_tmo[0];
      break;
    case 17:
      result = vpn_addr_invalid[0];
      break;
    case 18:
      result = vpn_ap_req[0];
      break;
    case 20:
      result = vpn_cli_cert_pre[0];
      break;
    case 21:
      result = vpn_cli_cert_exp[0];
      break;
    case 22:
      result = vpn_srvr_cert_pre[0];
      break;
    case 23:
      result = vpn_srvr_cert_exp[0];
      break;
    case 24:
      result = vpn_srvr_cert_id[0];
      break;
    case 25:
      result = vpn_plugin_upd[0];
      break;
    case 26:
      result = vpn_plugin_dis;
      break;
    default:
      return result;
  }

  return result;
}

void cleanup_dynamicstore(uint64_t a1)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, *(a1 + 24), kSCCompAnyRegex);
  if (NetworkServiceEntity)
  {
    v2 = NetworkServiceEntity;
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v4 = Mutable;
      CFArrayAppendValue(Mutable, v2);
      v5 = SCDynamicStoreCopyMultiple(gDynamicStore, 0, v4);
      if (v5)
      {
        v6 = v5;
        CFDictionaryApplyFunction(v5, sub_1C724, gDynamicStore);
        CFRelease(v2);
        v2 = v4;
        v4 = v6;
      }

      CFRelease(v2);
      v2 = v4;
    }

    CFRelease(v2);
  }
}

uint64_t sub_1C724(CFStringRef key, int a2, SCDynamicStoreRef store)
{
  result = SCDynamicStoreRemoveValue(store, key);
  if (!result)
  {
    return SCLog();
  }

  return result;
}

const __CFString *copy_primary_interface_name(const __CFString *a1)
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  if (NetworkGlobalEntity)
  {
    v3 = SCDynamicStoreCopyValue(gDynamicStore, NetworkGlobalEntity);
    CFRelease(NetworkGlobalEntity);
    if (!isDictionary(v3))
    {
      return 0;
    }

    Value = CFDictionaryGetValue(v3, kSCDynamicStorePropNetPrimaryInterface);
    if (isString(Value))
    {
      v5 = CFDictionaryGetValue(v3, kSCDynamicStorePropNetPrimaryService);
      if (a1 && v5 && CFEqual(v5, a1))
      {
        NetworkGlobalEntity = 0;
        v6 = 1;
      }

      else
      {
        NetworkGlobalEntity = CFStringCreateCopy(0, Value);
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      NetworkGlobalEntity = 0;
    }

    CFRelease(v3);
    if (a1)
    {
      if (v6 && !NetworkGlobalEntity)
      {
        v7 = copy_interface_name(a1);
        v8 = nwi_state_copy();
        if (!v7 || !v8)
        {
LABEL_23:
          if (v7)
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        if (!nwi_state_get_first_ifstate())
        {
          NetworkGlobalEntity = 0;
          goto LABEL_26;
        }

        while (1)
        {
          ifname = nwi_ifstate_get_ifname();
          v10 = CFStringCreateWithCString(kCFAllocatorDefault, ifname, 0x600u);
          if (v10)
          {
            NetworkGlobalEntity = v10;
            if (!CFEqual(v10, v7) && (~nwi_ifstate_get_flags() & 5) == 0)
            {
              CFRetain(NetworkGlobalEntity);
              CFRelease(NetworkGlobalEntity);
LABEL_26:
              CFRelease(v7);
LABEL_27:
              nwi_state_release();
              return NetworkGlobalEntity;
            }

            CFRelease(NetworkGlobalEntity);
          }

          if (!nwi_ifstate_get_next())
          {
            NetworkGlobalEntity = 0;
            goto LABEL_23;
          }
        }
      }
    }
  }

  return NetworkGlobalEntity;
}

CFStringRef copy_interface_name(const __CFString *a1)
{
  if (!isString(a1))
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, a1, kSCEntNetIPv4);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v3 = NetworkServiceEntity;
  v4 = SCDynamicStoreCopyValue(gDynamicStore, NetworkServiceEntity);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, kSCPropInterfaceName);
    if (Value)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, Value);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v3);
  }

  else
  {
    Copy = 0;
    v5 = v3;
  }

  CFRelease(v5);
  return Copy;
}

const void *copy_service_id_for_interface(unint64_t a1)
{
  if (!isString(a1))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
  v4 = NetworkServiceEntity;
  if (Mutable)
  {
    v5 = NetworkServiceEntity == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = 0;
    v10 = 0;
    v6 = 0;
    v7 = 0;
    if (!NetworkServiceEntity)
    {
      goto LABEL_27;
    }
  }

  else
  {
    CFArrayAppendValue(Mutable, NetworkServiceEntity);
    v8 = SCDynamicStoreCopyMultiple(gDynamicStore, 0, Mutable);
    Count = CFDictionaryGetCount(v8);
    v10 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v11 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v6 = v11;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      CFDictionaryGetKeysAndValues(v8, v10, v11);
      if (Count >= 1)
      {
        v20 = v8;
        v13 = 0;
        while (1)
        {
          v14 = v10[v13];
          v15 = v6[v13];
          if (isString(v14))
          {
            if (isDictionary(v15))
            {
              Value = CFDictionaryGetValue(v15, kSCPropInterfaceName);
              if (!(a1 | Value) || a1 && Value && CFEqual(Value, a1))
              {
                break;
              }
            }
          }

          if (Count == ++v13)
          {
            goto LABEL_23;
          }
        }

        if (!CFStringHasPrefix(v14, kSCDynamicStoreDomainState) || !CFStringHasSuffix(v14, kSCEntNetIPv4))
        {
LABEL_23:
          v7 = 0;
          v8 = v20;
          if (v4)
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v14, @"/");
        if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
          v7 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }
        }

        else
        {
          v7 = 0;
        }

        v8 = v20;
        CFRelease(ArrayBySeparatingStrings);
        if (v4)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    v7 = 0;
  }

LABEL_26:
  CFRelease(v4);
LABEL_27:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    free(v10);
  }

  if (v6)
  {
    free(v6);
  }

  return v7;
}

CFTypeRef copy_interface_type(const __CFString *a1)
{
  if (!isString(a1))
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, a1, kSCEntNetInterface);
  v3 = SCDynamicStoreCopyValue(gDynamicStore, NetworkServiceEntity);
  if (isDictionary(v3))
  {
    Value = CFDictionaryGetValue(v3, kSCPropNetInterfaceHardware);
    if (isString(Value))
    {
      if (!(Value | kSCEntNetAirPort))
      {
LABEL_14:
        v10 = &kSCValNetVPNOnDemandRuleInterfaceTypeMatchWiFi;
LABEL_27:
        v8 = CFRetain(*v10);
        goto LABEL_28;
      }

      if (Value)
      {
        v5 = kSCEntNetAirPort == 0;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        v6 = kSCEntNetEthernet;
        v7 = kSCEntNetEthernet == 0;
        if (!(Value | kSCEntNetEthernet))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (CFEqual(Value, kSCEntNetAirPort))
        {
          goto LABEL_14;
        }

        v6 = kSCEntNetEthernet;
        v7 = kSCEntNetEthernet == 0;
      }

      if (!Value || v7)
      {
        v11 = kSCEntNetCommCenter;
        v12 = kSCEntNetCommCenter == 0;
        if (!(Value | kSCEntNetCommCenter))
        {
LABEL_26:
          v10 = &kSCValNetVPNOnDemandRuleInterfaceTypeMatchCellular;
          goto LABEL_27;
        }
      }

      else
      {
        if (CFEqual(Value, v6))
        {
LABEL_19:
          v10 = &kSCValNetVPNOnDemandRuleInterfaceTypeMatchEthernet;
          goto LABEL_27;
        }

        v11 = kSCEntNetCommCenter;
        v12 = kSCEntNetCommCenter == 0;
      }

      v8 = 0;
      if (!Value || v12)
      {
LABEL_28:
        if (!NetworkServiceEntity)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (CFEqual(Value, v11))
      {
        goto LABEL_26;
      }
    }
  }

  v8 = 0;
  if (NetworkServiceEntity)
  {
LABEL_29:
    CFRelease(NetworkServiceEntity);
  }

LABEL_30:
  if (v3)
  {
    CFRelease(v3);
  }

  return v8;
}

uint64_t primary_interface_is_cellular(char *a1)
{
  if (!nwi_state_copy())
  {
    v7 = 0;
    v6 = 0;
    if (!a1)
    {
      return v6;
    }

    goto LABEL_10;
  }

  v2 = 0;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = *(&unk_2DC50 + v2);
    if (nwi_state_get_first_ifstate())
    {
      break;
    }

LABEL_6:
    v3 = 0;
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    }
  }

  while (nwi_ifstate_get_vpn_server())
  {
    if (!nwi_ifstate_get_next())
    {
      goto LABEL_6;
    }
  }

  v6 = (nwi_ifstate_get_reachability_flags() >> 18) & 1;
  v7 = 1;
LABEL_9:
  nwi_state_release();
  if (a1)
  {
LABEL_10:
    *a1 = v7;
  }

  return v6;
}

uint64_t interface_is_cellular(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (nwi_state_copy())
    {
      if (nwi_state_get_ifstate())
      {
        v1 = (nwi_ifstate_get_reachability_flags() >> 18) & 1;
      }

      else
      {
        v1 = 0;
      }

      nwi_state_release();
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

CFPropertyListRef copy_dns_dict(const __CFString *a1)
{
  if (!isString(a1))
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, a1, kSCEntNetDNS);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v3 = NetworkServiceEntity;
  v4 = SCDynamicStoreCopyValue(gDynamicStore, NetworkServiceEntity);
  CFRelease(v3);
  return v4;
}

const void *copy_service_order()
{
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
  if (!NetworkGlobalEntity)
  {
    return 0;
  }

  v1 = NetworkGlobalEntity;
  v2 = SCDynamicStoreCopyValue(gDynamicStore, NetworkGlobalEntity);
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, kSCPropNetServiceOrder);
    v5 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v1);
  return v5;
}

const __CFString *scnc_copy_remote_server(uint64_t a1, BOOL *a2)
{
  if (*(a1 + 64) == 1)
  {
    v3 = &kSCPropNetIPSecRemoteAddress;
LABEL_5:
    v4 = *v3;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 64))
  {
    v3 = &kSCPropNetPPPCommRemoteAddress;
    goto LABEL_5;
  }

  v4 = 0;
  if (a2)
  {
LABEL_6:
    *a2 = 0;
  }

LABEL_7:
  if (!v4)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 136), v4);
  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && CFStringGetLength(Value) >= 1)
  {
    v7 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, @"/");
    v8 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, @":");
    result.location = 0;
    result.length = 0;
    range.location = 0;
    range.length = 0;
    CFRetain(Value);
    v20.length = CFStringGetLength(Value);
    v20.location = 0;
    if (CFStringFindCharacterFromSet(Value, v7, v20, 0, &result))
    {
      v9 = CFURLCreateWithString(kCFAllocatorDefault, Value, 0);
      if (v9)
      {
        v10 = v9;
        if (CFURLGetByteRangeForComponent(v9, kCFURLComponentScheme, 0).location != -1 || (CFRelease(v10), v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"https://%@", Value), v10 = CFURLCreateWithString(kCFAllocatorDefault, v11, 0), CFRelease(v11), v10))
        {
          CFRelease(Value);
          v12 = CFURLCopyHostName(v10);
          Value = v10;
LABEL_22:
          CFRelease(Value);
          Value = v12;
        }
      }
    }

    else
    {
      v21.length = CFStringGetLength(Value);
      v21.location = 0;
      if (CFStringFindCharacterFromSet(Value, v8, v21, 0, &range))
      {
        v22.length = range.location;
        v22.location = 0;
        v12 = CFStringCreateWithSubstring(kCFAllocatorDefault, Value, v22);
        goto LABEL_22;
      }
    }

    CFRelease(v7);
    CFRelease(v8);
    if (Value && a2)
    {
      memset(v19, 0, sizeof(v19));
      Length = CFStringGetLength(Value);
      Typed = CFAllocatorAllocateTyped();
      CFStringGetCString(Value, Typed, Length, 0x600u);
      v16 = inet_pton(2, Typed, v19 + 4) != 1 && inet_pton(30, Typed, v19 + 8) != 1;
      *a2 = v16;
      CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
    }
  }

  return Value;
}

uint64_t scnc_log(uint64_t a1, const __CFString *a2)
{
  result = ne_sm_bridge_is_logging_at_level();
  if (result)
  {
    result = ne_sm_bridge_logv();
    if ((result & 1) == 0)
    {
      result = CFStringGetCStringPtr(a2, 0x8000100u);
      if (result)
      {
        _SC_syslog_os_log_mapping();
        return os_log_with_args();
      }
    }
  }

  return result;
}

const char *ipsec_error_to_str(int a1)
{
  if (a1 > 40500)
  {
    if (a1 > 50004)
    {
      if (a1 <= 50006)
      {
        if (a1 == 50005)
        {
          return "Certificate expired";
        }

        else
        {
          return "Server certificate premature";
        }
      }

      switch(a1)
      {
        case 50007:
          return "Server certificate expired";
        case 50008:
          return "Server certificate subjectName invalid";
        case 50009:
          return "Server certificate subjectAltName invalid";
      }
    }

    else
    {
      if (a1 > 50001)
      {
        if (a1 == 50002)
        {
          return "Phase 1 Delete";
        }

        if (a1 == 50003)
        {
          return "Idle Timeout";
        }

        return "Certificate premature";
      }

      if (a1 == 40501)
      {
        return "Load balance";
      }

      if (a1 == 50001)
      {
        return "Dead Peer";
      }
    }

    return "Unknown error";
  }

  v1 = a1 + 1;
  result = "Invalid payload type";
  switch(v1)
  {
    case 0:
      result = "Internal error";
      break;
    case 2:
      return result;
    case 3:
      result = "DOI not supported";
      break;
    case 4:
      result = "Situation not supported";
      break;
    case 5:
      result = "Invalid cookie";
      break;
    case 6:
      result = "Invalid major version";
      break;
    case 7:
      result = "Invalid minor version";
      break;
    case 8:
      result = "Invalid exchange type";
      break;
    case 9:
      result = "Invalid flags";
      break;
    case 10:
      result = "Invalid message id";
      break;
    case 11:
      result = "Invalid protocol id";
      break;
    case 12:
      result = "Invalid SPI";
      break;
    case 13:
      result = "Invalid transform id";
      break;
    case 14:
      result = "Attributes not supported";
      break;
    case 15:
      result = "No proposal chosen";
      break;
    case 16:
      result = "Bad proposal syntax";
      break;
    case 17:
      result = "Payload malformed";
      break;
    case 18:
      result = "Invalid key information";
      break;
    case 19:
      result = "Invalid id information";
      break;
    case 20:
      result = "Invalid cert encoding";
      break;
    case 21:
      result = "Invalid certificate";
      break;
    case 22:
      result = "Bad cert request syntax";
      break;
    case 23:
      result = "Invalid cert authority";
      break;
    case 24:
      result = "Invalid hash information";
      break;
    case 25:
      result = "Authentication Failed";
      break;
    case 26:
      result = "Invalid signature";
      break;
    case 27:
      result = "Address notification";
      break;
    case 28:
      result = "Notify SA lifetime";
      break;
    case 29:
      result = "Certificate unavailable";
      break;
    case 30:
      result = "Unsupported exchange type";
      break;
    case 31:
      result = "Unequal payload lengths";
      break;
    default:
      return "Unknown error";
  }

  return result;
}

uint64_t ipsec_error_to_status(uint64_t a1, int a2, int a3)
{
  result = 10;
  if (a3 > 20)
  {
    if (a3 > 40500)
    {
      if (a3 > 50004)
      {
        if (a3 > 50007)
        {
          if ((a3 - 50008) >= 2)
          {
            return 1;
          }

          return 24;
        }

        else if (a3 == 50005)
        {
          return 21;
        }

        else if (a3 == 50006)
        {
          return 22;
        }

        else
        {
          return 23;
        }
      }

      if (a3 <= 50001)
      {
        if (a3 != 40501 && a3 != 50001)
        {
          return 1;
        }
      }

      else if (a3 != 50002 && a3 != 50003)
      {
        return 20;
      }
    }

    else
    {
      if (a3 <= 25)
      {
        if (a3 <= 22)
        {
          if (a3 == 21)
          {
            return result;
          }
        }

        else
        {
          if (a3 == 23)
          {
            return 11;
          }

          if (a3 == 24)
          {
            return 14;
          }
        }

        goto LABEL_27;
      }

      if ((a3 - 26) >= 2)
      {
        if ((a3 - 29) >= 2)
        {
          if (a3 == 28)
          {
            return 4;
          }

          return 1;
        }

        return result;
      }
    }

    return 0;
  }

  if ((a3 - 1) >= 0x13 && a3 != -1)
  {
    if (a3 != 20)
    {
      return 1;
    }

LABEL_27:
    if (a2 == 1)
    {
      return 13;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

const char *ipsec_msgtype_to_str(int a1)
{
  if (a1 > 22)
  {
    if (a1 > 32786)
    {
      if (a1 <= 32801)
      {
        if (a1 == 32787)
        {
          return "VPNCTL_STATUS_PH1_ESTABLISHED";
        }

        if (a1 == 32801)
        {
          return "VPNCTL_STATUS_PH2_START";
        }
      }

      else
      {
        switch(a1)
        {
          case 32802:
            return "VPNCTL_STATUS_PH2_ESTABLISHED";
          case 33025:
            return "VPNCTL_STATUS_NEED_AUTHINFO";
          case 33026:
            return "VPNCTL_STATUS_NEED_REAUTHINFO";
        }
      }

      return "Unknown message type";
    }

    if (a1 > 32784)
    {
      if (a1 == 32785)
      {
        return "VPNCTL_STATUS_PH1_START_US";
      }

      else
      {
        return "VPNCTL_STATUS_PH1_START_PEER";
      }
    }

    if (a1 == 23)
    {
      return "VPNCTL_CMD_RECONNECT";
    }

    if (a1 == 32769)
    {
      return "VPNCTL_STATUS_IKE_FAILED";
    }

    return "Unknown message type";
  }

  if (a1 <= 16)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return "VPNCTL_CMD_REDIRECT";
      }

      if (a1 == 4)
      {
        return "VPNCTL_CMD_PING";
      }
    }

    else
    {
      if (a1 == 1)
      {
        return "VPNCTL_CMD_BIND";
      }

      if (a1 == 2)
      {
        return "VPNCTL_CMD_UNBIND";
      }
    }

    return "Unknown message type";
  }

  if (a1 > 18)
  {
    switch(a1)
    {
      case 19:
        return "VPNCTL_CMD_START_PH2";
      case 20:
        return "VPNCTL_CMD_XAUTH_INFO";
      case 22:
        return "VPNCTL_CMD_ASSERT";
    }

    return "Unknown message type";
  }

  if (a1 == 17)
  {
    return "VPNCTL_CMD_CONNECT";
  }

  else
  {
    return "VPNCTL_CMD_DISCONNECT";
  }
}

const char *ipsec_xauthtype_to_str(int a1)
{
  if (a1 > 16524)
  {
    if (a1 <= 16527)
    {
      if (a1 == 16525)
      {
        return "XAUTH_CHALLENGE";
      }

      if (a1 == 16526)
      {
        return "XAUTH_DOMAIN";
      }

      return "XAUTH_STATUS";
    }

    switch(a1)
    {
      case 16528:
        return "XAUTH_NEXT_PIN";
      case 16529:
        return "XAUTH_ANSWER";
      case 32136:
        return "XAUTH_VENDOR";
    }

    return "XAUTH_TYPE unknown type";
  }

  if (a1 <= 16521)
  {
    if (a1 == 16520)
    {
      return "XAUTH_TYPE";
    }

    if (a1 == 16521)
    {
      return "XAUTH_USER_NAME";
    }

    return "XAUTH_TYPE unknown type";
  }

  if (a1 == 16522)
  {
    return "XAUTH_USER_PASSWORD";
  }

  if (a1 == 16523)
  {
    return "XAUTH_PASSCODE";
  }

  return "XAUTH_MESSAGE";
}

const char *ipsec_modecfgtype_to_str(int a1)
{
  if (a1 >= 28672)
  {
    if (a1 > 28677)
    {
      if (a1 > 28680)
      {
        switch(a1)
        {
          case 28681:
            return "UNITY_BACKUP_SERVERS";
          case 28682:
            return "UNITY_DDNS_HOSTNAME";
          case 28683:
            return "UNITY_BROWSER_PROXY";
          default:
            return "MODECFG_TYPE unknown type";
        }
      }

      else if (a1 == 28678)
      {
        return "UNITY_LOCAL_LAN";
      }

      else if (a1 == 28679)
      {
        return "UNITY_PFS";
      }

      else
      {
        return "UNITY_FW_TYPE";
      }
    }

    else if (a1 > 28674)
    {
      if (a1 == 28675)
      {
        return "UNITY_SPLITDNS_NAME";
      }

      else if (a1 == 28676)
      {
        return "UNITY_SPLIT_INCLUDE";
      }

      else
      {
        return "UNITY_NATT_PORT";
      }
    }

    else if (a1 == 28672)
    {
      return "UNITY_BANNER";
    }

    else if (a1 == 28673)
    {
      return "UNITY_SAVE_PASSWD";
    }

    else
    {
      return "UNITY_DEF_DOMAIN";
    }
  }

  else
  {
    v1 = a1 - 1;
    result = "INTERNAL_IP4_ADDRESS";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "INTERNAL_IP4_NETMASK";
        break;
      case 2:
        result = "INTERNAL_IP4_DNS";
        break;
      case 3:
        result = "INTERNAL_IP4_NBNS";
        break;
      case 4:
        result = "INTERNAL_ADDRESS_EXPIRY";
        break;
      case 5:
        result = "INTERNAL_IP4_DHCP";
        break;
      case 6:
        result = "APPLICATION_VERSION";
        break;
      case 7:
        result = "INTERNAL_IP6_ADDRESS";
        break;
      case 8:
        result = "INTERNAL_IP6_NETMASK";
        break;
      case 9:
        result = "INTERNAL_IP6_DNS";
        break;
      case 10:
        result = "INTERNAL_IP6_NBNS";
        break;
      case 11:
        result = "INTERNAL_IP6_DHCP";
        break;
      case 12:
        result = "INTERNAL_IP4_SUBNET";
        break;
      case 13:
        result = "SUPPORTED_ATTRIBUTES";
        break;
      case 14:
        result = "INTERNAL_IP6_SUBNET";
        break;
      default:
        return "MODECFG_TYPE unknown type";
    }
  }

  return result;
}

uint64_t ipsec_new_service(uint64_t a1)
{
  *(a1 + 592) = 0;
  *(a1 + 784) = -1;
  *(a1 + 904) = -1;
  *(a1 + 800) = -1;
  *(a1 + 1048) = 0;
  return 0;
}

uint64_t ipsec_dispose_service(uint64_t a1)
{
  if (*(a1 + 592))
  {
    return 1;
  }

  free_service_routes(a1);
  my_CFRelease((a1 + 136));
  my_CFRelease((a1 + 144));
  return 0;
}

uint64_t ipsec_setup_service(uint64_t a1)
{
  *(a1 + 72) = *(a1 + 72) & 0xF780DE3F | 0xC0;
  my_CFRelease((a1 + 136));
  v2 = *(a1 + 584);
  if (v2)
  {
    v3 = ne_sm_bridge_copy_configuration(v2);
  }

  else
  {
    v3 = copyEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24), kSCEntNetIPSec);
  }

  *(a1 + 136) = v3;
  if (!v3)
  {
    sub_1E1E8(3, @"IPSec Controller: Cannot copy IPSec dictionary from setup");
    ipsec_stop(a1);
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  getNumber(v3, kSCPropNetIPSecOnDemandEnabled, &v9);
  if (v9)
  {
    v4 = 18874368;
  }

  else
  {
    if (!CFDictionaryGetValue(*(a1 + 136), kSCPropNetVPNOnDemandRules) || !controller_options_is_useVODDisconnectRulesWhenVODDisabled())
    {
      goto LABEL_8;
    }

    v4 = 0x1000000;
  }

  *(a1 + 72) |= v4;
LABEL_8:
  v9 = 0;
  getNumber(*(a1 + 136), @"DisconnectOnLogout", &v9);
  if (v9)
  {
    *(a1 + 72) |= 0x20000u;
  }

  v9 = 0;
  getNumber(*(a1 + 136), @"DisconnectOnSleep", &v9);
  if (v9)
  {
    *(a1 + 72) |= 0x40000u;
  }

  v9 = 0;
  getNumber(*(a1 + 136), @"PreventIdleSleep", &v9);
  v5 = *(a1 + 72);
  if (v9)
  {
    v5 |= 0x80000u;
    *(a1 + 72) = v5;
  }

  v9 = v5 & 0x20000;
  getNumber(*(a1 + 136), @"DisconnectOnFastUserSwitch", &v9);
  if (v9)
  {
    *(a1 + 72) |= 0x100000u;
  }

  v9 = 1;
  *(a1 + 196) = 0;
  getNumber(*(a1 + 136), kSCPropNetIPSecDisconnectOnWake, &v9);
  if (v9)
  {
    *(a1 + 72) |= 0x8000000u;
    getNumber(*(a1 + 136), kSCPropNetIPSecDisconnectOnWakeTimer, (a1 + 196));
  }

  v9 = 1;
  getNumber(*(a1 + 136), @"AlertEnable", &v9);
  if (!v9)
  {
    *(a1 + 72) &= 0xFFFFFF3F;
  }

  v9 = 0;
  getNumber(*(a1 + 136), @"ConnectionPersist", &v9);
  if (v9)
  {
    *(a1 + 72) |= 0x400000u;
  }

  result = CFDictionaryContainsKey(*(a1 + 136), @"ProfileIdentifier");
  if (result)
  {
    my_CFRelease((a1 + 144));
    Value = CFDictionaryGetValue(*(a1 + 136), @"ProfileIdentifier");
    v8 = my_CFRetain(Value);
    result = 0;
    *(a1 + 144) = v8;
  }

  return result;
}

uint64_t sub_1E1E8(uint64_t a1, const __CFString *a2)
{
  result = ne_sm_bridge_is_logging_at_level();
  if (result)
  {
    result = ne_sm_bridge_logv();
    if ((result & 1) == 0)
    {
      result = CFStringGetCStringPtr(a2, 0x8000100u);
      if (result)
      {
        _SC_syslog_os_log_mapping();
        return os_log_with_args();
      }
    }
  }

  return result;
}

uint64_t ipsec_stop(uint64_t a1)
{
  sub_1E1E8(5, @"IPSec Controller: ipsec_stop");
  if (*(a1 + 592) == 4)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      CFUserNotificationCancel(v2);
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveSource(Current, *(a1 + 176), kCFRunLoopDefaultMode);
      my_CFRelease((a1 + 168));
      my_CFRelease((a1 + 176));
    }
  }

  v34 = 0;
  v4 = *(a1 + 72);
  if ((v4 & 0x2000) != 0 || ((v5 = *(a1 + 596), v6 = v5 > 0x10, v7 = (1 << v5) & 0x10600, !v6) ? (v8 = v7 == 0) : (v8 = 1), v8 || (v9 = *(a1 + 608)) == 0))
  {
LABEL_15:
    *(a1 + 72) = v4 & 0xFFFFDFFF;
    v13 = *(a1 + 592);
    if (!v13 || v13 == 7)
    {
      return 0;
    }

    sub_1EA40(a1, 7u);
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15.s_addr = *(a1 + 748);
      v16 = inet_ntoa(v15);
      *v35 = 136315138;
      v36 = v16;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "IPSec disconnecting from server %s\n", v35, 0xCu);
    }

    v17 = *(a1 + 1000);
    if (v17)
    {
      CFMachPortGetPort(v17);
      CFMachPortInvalidate(*(a1 + 1000));
      CFRelease(*(a1 + 1000));
      *(a1 + 1000) = 0;
      getaddrinfo_async_cancel();
    }

    v18 = *(a1 + 784);
    if (v18 != -1)
    {
      racoon_send_cmd_disconnect(v18, *(a1 + 748));
    }

    if (*(a1 + 868))
    {
      if (IPSecRemovePolicies(*(a1 + 608), -1, &v34))
      {
        sub_1E1E8(3, @"IPSec Controller: Cannot remove policies, error '%s'");
      }

      IPSecRemoveSecurityAssociations((a1 + 616), (a1 + 744));
      *(a1 + 868) = 0;
    }

    v19 = *(a1 + 584);
    if (v19)
    {
      ne_sm_bridge_request_uninstall(v19);
    }

    sub_20628(a1, 1);
    if (*(a1 + 864))
    {
      if (IPSecRemoveConfiguration(*(a1 + 608), &v34))
      {
        sub_1E1E8(3, @"IPSec Controller: Cannot remove configuration, error '%s'");
      }

      *(a1 + 864) = 0;
    }

    v20 = *(a1 + 832);
    if (v20)
    {
      my_Deallocate(v20, *(a1 + 844) + 1);
      *(a1 + 832) = 0;
    }

    *(a1 + 840) = 0;
    v21 = *(a1 + 816);
    if (v21)
    {
      my_Deallocate(v21, *(a1 + 824));
      *(a1 + 816) = 0;
    }

    *(a1 + 824) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 912) = 0;
    *(a1 + 918) = 0;
    *(a1 + 934) = 0;
    my_CFRelease((a1 + 1024));
    *(a1 + 1024) = 0;
    v22 = *(a1 + 792);
    if (v22)
    {
      CFSocketInvalidate(v22);
      my_CFRelease((a1 + 792));
    }

    else
    {
      v23 = *(a1 + 784);
      if (v23)
      {
        close(v23);
      }
    }

    *(a1 + 784) = -1;
    v24 = *(a1 + 808);
    if (v24)
    {
      CFSocketInvalidate(v24);
      my_CFRelease((a1 + 808));
    }

    else
    {
      v25 = *(a1 + 800);
      if (v25)
      {
        close(v25);
      }
    }

    *(a1 + 800) = -1;
    *(a1 + 760) = 0u;
    scnc_bootstrap_dealloc(a1);
    scnc_ausession_dealloc(a1);
    my_CFRelease((a1 + 128));
    my_CFRelease((a1 + 608));
    if (*(a1 + 776))
    {
      v26 = CFRunLoopGetCurrent();
      CFRunLoopRemoveTimer(v26, *(a1 + 776), kCFRunLoopCommonModes);
      my_CFRelease((a1 + 776));
    }

    if (*(a1 + 952))
    {
      v27 = CFRunLoopGetCurrent();
      CFRunLoopRemoveTimer(v27, *(a1 + 952), kCFRunLoopCommonModes);
      my_CFRelease((a1 + 952));
    }

    if (gNattKeepAliveInterval != -1)
    {
      *v35 = gNattKeepAliveInterval;
      sysctlbyname("net.key.natt_keepalive_interval", 0, 0, v35, 4uLL);
      gNattKeepAliveInterval = -1;
    }

    if (*(a1 + 984))
    {
      v28 = CFRunLoopGetCurrent();
      CFRunLoopRemoveTimer(v28, *(a1 + 984), kCFRunLoopCommonModes);
      my_CFRelease((a1 + 984));
    }

    my_CFRelease((a1 + 976));
    v29 = *(a1 + 596);
    if (v29 <= 0x15 && ((1 << v29) & 0x302000) != 0)
    {
      if (*(a1 + 144))
      {
        v30 = CFStringCreateWithFormat(0, 0, @"IPSec Error %d, Re-enroll", *(a1 + 596));
        if (v30)
        {
          v31 = v30;
          sub_22BB8(a1, v30, 0, 2);
          CFRelease(v31);
        }

        goto LABEL_61;
      }
    }

    else if (!v29 || (*(a1 + 72) & 0x400) != 0)
    {
LABEL_61:
      sub_1EA40(a1, 0);
      cleanup_dynamicstore(a1);
      *(a1 + 600) = 0;
      *(a1 + 396) = 0;
      service_ended(a1);
      if (*(a1 + 584))
      {
        allow_dispose(a1);
      }

      return 0;
    }

    sub_22BB8(a1, 0, v29, 0);
    goto LABEL_61;
  }

  Value = CFDictionaryGetValue(*(a1 + 608), @"AuthenticationMethod");
  StrFromDict = GetStrFromDict(v9, @"LocalIdentifier", v35, 256, "");
  if (!IPSecIsAggressiveMode(Value, StrFromDict, 1))
  {
    goto LABEL_14;
  }

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "IPSec Controller: retry IPSec aggressive mode with DH Group 2", buf, 2u);
  }

  *(a1 + 72) |= 0x2000u;
  if (!sub_22EE0(a1, 64, 1))
  {
LABEL_14:
    v4 = *(a1 + 72);
    goto LABEL_15;
  }

  return 0;
}