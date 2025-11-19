void sub_100000C78()
{
  v14 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v1 = 0;
  v2 = "/Library/Caches/com.apple.xbs/Sources/Sync/SyncAgent/SyncAgent.m";
  v3 = "incomingConnectionCallback";
  v4 = @"Running DataMigrator found with pid %d. Sleeping and waiting for it to finish...";
  while (!v1)
  {
LABEL_11:
    v17 = 0;
    *v16 = xmmword_1000059E8;
    size = 0;
    v1 = sysctl(v16, 3u, 0, &size, 0, 0);
    if (!v1)
    {
      v5 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
      v6 = sysctl(v16, 3u, v5, &size, 0, 0);
      if (v6)
      {
        v1 = v6;
        free(v5);
      }

      else
      {
        v7 = v4;
        v8 = v3;
        v9 = v2;
        if (size < 0x288)
        {
LABEL_19:
          free(v5);
          v1 = -1;
        }

        else
        {
          v10 = size / 0x288;
          v11 = v5 + 243;
          while (1)
          {
            v1 = *(v11 - 203);
            if (v1 >= 1 && !strncmp("DataMigrator", v11, 0x10uLL))
            {
              break;
            }

            v11 += 648;
            if (!--v10)
            {
              goto LABEL_19;
            }
          }

          free(v5);
        }

        v2 = v9;
        v3 = v8;
        v4 = v7;
      }
    }

    if (CFAbsoluteTimeGetCurrent() - Current > 60.0)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (DLDisconnect())
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        DLKillConnection();
      }

      return;
    }
  }

  if (v1 != -1)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    sleep(1u);
    goto LABEL_11;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (DLDeviceReady())
  {
    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  else
  {
    *(v14 + 56) = kCFBooleanTrue;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSync.SyncAgent.kSyncAgentSyncStarted", 0, 0, 0);
    sub_100003870();
  }
}

uint64_t sub_10000103C()
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  return sub_100003870();
}

uint64_t sub_10000108C()
{
  result = DLShouldLog();
  if (result)
  {
    return _DLLog();
  }

  return result;
}

void sub_1000010E4()
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  exit(0);
}

id sub_100001134(uint64_t a1, uint64_t a2)
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v9 = a2;
    _DLLog();
  }

  if (*(v4 + 48) == kCFBooleanTrue)
  {
    if (j__DLDeleteDeviceLinkConnection() && DLShouldLog())
    {
      _DLLog();
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopStop(Current);
    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  else
  {
    if (dword_10000C0D0 == 1)
    {
      v5 = DLGetDeviceLinkConnectionInfo();
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
      if (!sub_100003610(MutableCopy, dword_10000C0D0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        [v3 drain];
        exit(0);
      }
    }

    else
    {
      MutableCopy = 0;
    }

    if (DLWaitForConnection() && DLShouldLog())
    {
      _DLLog();
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  sub_100003904(v4);
  sub_100003D84();
  byte_10000C329 = 0;
  SBSSetStatusBarShowsSyncActivity();
  return [v3 drain];
}

id sub_100001370(uint64_t a1)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  return sub_100001134(a1, @"Lost connection");
}

uint64_t sub_1000013D8()
{
  result = DLShouldLog();
  if (result)
  {
    return _DLLog();
  }

  return result;
}

uint64_t sub_100001430()
{
  result = DLShouldLog();
  if (result)
  {
    return _DLLog();
  }

  return result;
}

id sub_100001488(uint64_t a1, const void *a2, NSDictionary *a3, const __CFBoolean *a4, uint64_t a5)
{
  v10 = objc_alloc_init(NSAutoreleasePool);
  v47[0] = 0;
  v11 = DLGetDeviceLinkConnectionContext();
  if (!a3)
  {
    a3 = +[NSDictionary dictionary];
  }

  Count = CFDictionaryGetCount(a3);
  if (DLShouldLog())
  {
    v13 = "s";
    if (Count == 1)
    {
      v13 = "";
    }

    v43 = a4;
    v44 = a5;
    v40 = a2;
    v41 = Count;
    v42 = v13;
    _DLLog();
  }

  if (SyncPlaybackEnabled())
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v15 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v15, a2);
    CFArrayAppendValue(Mutable, v15);
    CFRelease(v15);
    CFDictionaryApplyFunction(a3, sub_100003B80, Mutable);
    v16 = &selRef_dictionary;
    if (!qword_10000C338)
    {
      qword_10000C338 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    }

    if (CFArrayGetCount(Mutable) >= 2)
    {
      CFArrayAppendValue(qword_10000C338, Mutable);
    }

    if (kCFBooleanFalse == a4)
    {
      if (qword_10000C338 && CFArrayGetCount(qword_10000C338))
      {
        if (qword_10000C340)
        {
          CFDictionaryAddValue(qword_10000C340, @"data class", a2);
          CFArrayInsertValueAtIndex(qword_10000C338, 0, qword_10000C340);
        }

        v47[1] = 0;
        if (DLShouldLog())
        {
          _DLLog();
        }

        v46 = v11;
        v17 = CFStringCreateWithFormat(0, 0, @"%@/%@", @"/Library/Logs/MobileSync", a2, v42, v43, v44);
        if (DLShouldLog())
        {
          v40 = v17;
          _DLLog();
        }

        v18 = CFStringGetLength(v17) + 24;
        v19 = malloc_type_malloc(v18, 0x74500D01uLL);
        if (v19)
        {
          v20 = v19;
          Length = CFStringGetLength(v17);
          v22 = malloc_type_malloc(Length + 1, 0xF1D3D613uLL);
          v23 = CFStringGetLength(v17);
          if (!CFStringGetCString(v17, v22, v23 + 1, 0x600u) && DLShouldLog())
          {
            _DLLog();
          }

          v45 = v10;
          DLEnsureDirectoryExists();
          if (v17)
          {
            CFRelease(v17);
          }

          v24 = 0;
          memset(&v48, 0, sizeof(v48));
          do
          {
            v25 = v24 + 1;
            snprintf(v20, v18, "%s/%s.%02d.plist", v22, "SyncPlayback", v24);
            v26 = stat(v20, &v48);
            v24 = v25;
          }

          while (!v26);
          v27 = CFStringCreateWithCString(0, v20, 0x600u);
          free(v20);
          v10 = v45;
          v16 = &selRef_dictionary;
        }

        else
        {
          if (v17)
          {
            CFRelease(v17);
          }

          if (DLShouldLog())
          {
            v40 = v18;
            _DLLog();
          }

          v27 = 0;
        }

        v28 = CFStringGetLength(v27);
        v29 = malloc_type_malloc(v28 + 1, 0x1068515uLL);
        v30 = CFStringGetLength(v27);
        v11 = v46;
        if (!CFStringGetCString(v27, v29, v30 + 1, 0x600u) && DLShouldLog())
        {
          _DLLog();
        }

        if (v27)
        {
          CFRelease(v27);
        }

        v31 = strlen(v29);
        v32 = CFURLCreateFromFileSystemRepresentation(0, v29, v31, 0);
        if (!DLWritePropertyListToFile() && DLShouldLog())
        {
          _DLLog();
        }

        if (v32)
        {
          CFRelease(v32);
        }

        free(v29);
      }

      else if (DLShouldLog())
      {
        _DLLog();
      }

      v33 = v16[103];
      if (v33)
      {
        CFRelease(v33);
        v16[103] = 0;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v34 = *(v11 + 16);
  v35 = DataSourceProcessChanges();
  if (v35)
  {
    v36 = v35;
    if (DLShouldLog())
    {
      v40 = v36;
      v41 = v47[0];
      _DLLog();
    }

    if (v47[0])
    {
      CFRelease(v47[0]);
      v47[0] = 0;
    }
  }

  v37 = sub_1000050C4(a1, a2, 0, v47);
  if (v37)
  {
    v38 = v37;
    if (DLShouldLog())
    {
      v40 = v38;
      v41 = v47[0];
      _DLLog();
    }

    if (v47[0])
    {
      CFRelease(v47[0]);
      v47[0] = 0;
    }
  }

  return [v10 drain];
}

id sub_100001A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v10 = a2;
    v11 = a3;
    _DLLog();
  }

  sub_100003904(v6);
  v7 = DLWaitForMessage();
  if (v7)
  {
    v8 = v7;
    if (DLShouldLog())
    {
      v10 = v8;
      v11 = 0;
      _DLLog();
    }
  }

  return [v5 drain];
}

id sub_100001B94(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFNumber *a5, const __CFDictionary *a6)
{
  v10 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v11 = DLGetDeviceLinkConnectionContext();
  if ([+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")])
  {
    if (DLShouldLog())
    {
      v31 = a2;
      _DLLog();
    }

    v12 = @"This data class is disabled for tethered syncing on the device.";
LABEL_67:
    v28 = sub_100004F00(a1, a2, v12, &cf);
    if (v28)
    {
      v29 = v28;
      if (DLShouldLog())
      {
        v31 = v29;
        v32 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    return [v10 drain];
  }

  *v11 = CFRetain(a2);
  valuePtr = 0;
  if (a5)
  {
    CFNumberGetValue(a5, kCFNumberIntType, &valuePtr);
  }

  v13 = objc_opt_new();
  if (a6)
  {
    [v13 setValue:CFDictionaryGetValue(a6 forKey:{@"HostVersion", @"hostOS"}];
  }

  [v13 setValue:a2 forKey:@"dataClass"];
  if (AnalyticsSendEventLazy())
  {
    if (!DLShouldLog())
    {
      goto LABEL_14;
    }
  }

  else if (!DLShouldLog())
  {
    goto LABEL_14;
  }

  _DLLog();
LABEL_14:
  v14 = 0;
  if (CFStringCompare(a2, @"com.apple.Calendars", 0) == kCFCompareEqualTo)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = Mutable;
    if (valuePtr <= 109)
    {
      CFDictionarySetValue(Mutable, kShouldSendAllCalendarsOnFastSyncKey, kCFBooleanTrue);
    }

    CFDictionarySetValue(v14, kShouldSyncCalendarColors, kCFBooleanTrue);
    CFDictionarySetValue(v14, kShouldSyncAttendeesAndOrganizers, kCFBooleanTrue);
    CFDictionarySetValue(v14, kIsEventsOnlySource, kCFBooleanTrue);
    CFDictionarySetValue(v14, kIsTetheredSync, kCFBooleanTrue);
  }

  if (CFStringCompare(a2, @"com.apple.Bookmarks", 0))
  {
LABEL_19:
    dataTypeForDataClassName();
    if (GetTetheredSyncingDisabledForDataType() && DLShouldLog())
    {
      v31 = a2;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    DataSourceForDataClassName = CreateDataSourceForDataClassName();
    if (v14)
    {
      CFRelease(v14);
    }

    if (DataSourceForDataClassName)
    {
      if (DLShouldLog())
      {
        v31 = DataSourceForDataClassName;
        v32 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v12 = @"No Data Store available for data class";
      goto LABEL_67;
    }

    v22 = v11[2];
    Version = DataSourceGetVersion();
    if (Version)
    {
      v24 = Version;
      if (!DLShouldLog())
      {
        goto LABEL_62;
      }

      v31 = v24;
      v32 = cf;
    }

    else
    {
      if (DLShouldLog())
      {
        v31 = a2;
        v32 = a5;
        _DLLog();
      }

      v25 = v11[2];
      CanSyncWithVersion = DataSourceCanSyncWithVersion();
      if (!CanSyncWithVersion)
      {
        goto LABEL_64;
      }

      v27 = CanSyncWithVersion;
      if (!DLShouldLog())
      {
LABEL_62:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

LABEL_64:
        if (DLShouldLog())
        {
          v31 = a5;
          v32 = 0;
          _DLLog();
        }

        v12 = @"Your computer's software is out of date. Please update and try again";
        goto LABEL_67;
      }

      v31 = v27;
      v32 = cf;
    }

    _DLLog();
    goto LABEL_62;
  }

  theArray = 0;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a2, @".");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
  v19 = CopyExternalSourcesEnabledForDataType();
  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (v19 || !theArray)
  {
    if (v19)
    {
      if (DLShouldLog())
      {
        v31 = v19;
        v32 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    goto LABEL_19;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_19;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (DLShouldLog())
  {
    v31 = a2;
    _DLLog();
  }

  v20 = sub_100004F00(a1, a2, @"This data class is disabled for tethered syncing on the device.", &cf);
  if (v20)
  {
    v21 = v20;
    if (DLShouldLog())
    {
      v31 = v21;
      v32 = cf;
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return [v10 drain];
}

id sub_10000282C(_DWORD *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v17 = a2;
    _DLLog();
  }

  v6 = *(v5 + 16);
  v7 = DataSourceClearAllRecords();
  if (!v7)
  {
    v13 = sub_100004F78(a1, a2, &cf);
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = v13;
    if (!DLShouldLog())
    {
      goto LABEL_16;
    }

    v17 = v14;
    v18 = cf;
    goto LABEL_15;
  }

  v8 = v7;
  if (DLShouldLog())
  {
    v17 = v8;
    v18 = cf;
    _DLLog();
  }

  v9 = sub_1000051B8(a1);
  if (v9)
  {
    v10 = v9;
    if (DLShouldLog())
    {
      v17 = v10;
      v18 = cf;
      _DLLog();
    }
  }

  v11 = DLWaitForMessage();
  if (v11)
  {
    v12 = v11;
    if (!DLShouldLog())
    {
      goto LABEL_16;
    }

    v17 = v12;
    v18 = cf;
LABEL_15:
    _DLLog();
LABEL_16:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

LABEL_18:
  if (SyncPlaybackEnabled())
  {
    Mutable = qword_10000C340;
    if (!qword_10000C340)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_10000C340 = Mutable;
    }

    CFDictionarySetValue(Mutable, @"sync type", @"SDSyncTypeReset");
  }

  return [v4 drain];
}

id sub_100002A64(_DWORD *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v15 = a2;
    _DLLog();
  }

  *(v5 + 24) = kCFBooleanFalse;
  *(v5 + 32) = kCFBooleanFalse;
  v6 = (v5 + 24);
  v7 = *(v6 - 1);
  Changes = DataSourceGetChanges();
  if (Changes)
  {
    v9 = Changes;
    if (DLShouldLog())
    {
      v15 = v9;
      v16 = 0;
      _DLLog();
    }
  }

  v10 = *v6;
  v11 = sub_100004FF4(a1);
  if (v11)
  {
    v12 = v11;
    if (DLShouldLog())
    {
      v15 = v12;
      v16 = 0;
      _DLLog();
    }
  }

  if (DLShouldLog())
  {
    v15 = 0;
    _DLLog();
  }

  if (SyncPlaybackEnabled())
  {
    Mutable = qword_10000C340;
    if (!qword_10000C340)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_10000C340 = Mutable;
    }

    CFDictionarySetValue(Mutable, @"sync type", @"SDSyncTypeFast");
  }

  return [v4 drain];
}

id sub_100002C6C(_DWORD *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v15 = a2;
    _DLLog();
  }

  *(v5 + 24) = kCFBooleanFalse;
  v6 = (v5 + 24);
  v6[1] = kCFBooleanTrue;
  v7 = *(v6 - 1);
  AllRecords = DataSourceGetAllRecords();
  if (AllRecords)
  {
    v9 = AllRecords;
    if (DLShouldLog())
    {
      v15 = v9;
      v16 = 0;
      _DLLog();
    }
  }

  v10 = *v6;
  v11 = sub_100004FF4(a1);
  if (v11)
  {
    v12 = v11;
    if (DLShouldLog())
    {
      v15 = v12;
      v16 = 0;
      _DLLog();
    }
  }

  if (DLShouldLog())
  {
    v15 = 0;
    _DLLog();
  }

  if (SyncPlaybackEnabled())
  {
    Mutable = qword_10000C340;
    if (!qword_10000C340)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      qword_10000C340 = Mutable;
    }

    CFDictionarySetValue(Mutable, @"sync type", @"SDSyncTypeSlow");
  }

  return [v4 drain];
}

id sub_100002E84(_DWORD *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  if (DLShouldLog())
  {
    v10 = a2;
    _DLLog();
  }

  v6 = *(v5 + 24);
  if (v6 == kCFBooleanTrue)
  {
    if (*(v5 + 32) == v6)
    {
      sub_100002C6C(a1, a2);
    }

    else
    {
      sub_100002A64(a1, a2);
    }
  }

  else
  {
    v7 = sub_100005048(a1, a2, &cf);
    if (v7)
    {
      v8 = v7;
      if (DLShouldLog())
      {
        v10 = v8;
        v11 = cf;
        _DLLog();
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  return [v4 drain];
}

id sub_100002FA8(_DWORD *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  cf = 0;
  v5 = DLGetDeviceLinkConnectionContext();
  *(v5 + 40) = kCFBooleanTrue;
  if (DLShouldLog())
  {
    _DLLog();
  }

  v6 = *(v5 + 16);
  if (!DataSourceCommit())
  {
    if (!sub_10000513C(a1, a2, &cf))
    {
      goto LABEL_25;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_21;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v7 = sub_1000051B8(a1);
  if (v7 && DLShouldLog())
  {
    _DLLog();
  }

  if (DLWaitForMessage() && DLShouldLog())
  {
    _DLLog();
  }

  if (v7)
  {
LABEL_21:
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

LABEL_25:
  sub_100003904(v5);
  return [v4 drain];
}

void sub_100003224(uint64_t a1, const char *a2, int a3, int a4, uint64_t a5, int a6)
{
  observer = 0;
  cf = 0;
  v11 = malloc_type_calloc(0x48uLL, 1uLL, 0x28307D0EuLL);
  *v11 = 0;
  v11[1] = 0;
  v11[3] = kCFBooleanFalse;
  v11[4] = kCFBooleanFalse;
  v11[5] = kCFBooleanFalse;
  v11[6] = kCFBooleanFalse;
  v11[7] = kCFBooleanFalse;
  *(v11 + 16) = -1;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    v13 = CFStringCreateWithCString(0, a2, 0x600u);
    CFDictionarySetValue(Mutable, @"DLInfoHostnameKey", v13);
    CFRelease(v13);
  }

  if (a4)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    byte_10000C328 = 1;
  }

  if (sub_100003610(Mutable, a6))
  {
    v14 = DLShouldLog();
    if (a2)
    {
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!v14)
    {
      goto LABEL_19;
    }

    _DLLog();
LABEL_19:
    if (sub_1000046F4(a5, off_10000C038, v11, &observer, &cf))
    {
      if (!DLShouldLog())
      {
LABEL_22:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

LABEL_21:
      _DLLog();
      goto LABEL_22;
    }

    if (a3)
    {
      v11[6] = kCFBooleanTrue;
    }

    if (a2)
    {
      if (DLConnect())
      {
        if (!DLShouldLog())
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      if (DLDeviceReady())
      {
        if (!DLShouldLog())
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v11[7] = kCFBooleanTrue;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSync.SyncAgent.kSyncAgentSyncStarted", 0, 0, 0);
    }

    else if (DLWaitForConnection())
    {
      if (!DLShouldLog())
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v16, observer, sub_1000037C4, @"com.apple.SyncAgent.cancel", 0, 0);
    sub_100003D84();
    CFRunLoopRun();
    CFRelease(Mutable);
    sub_100003904(v11);
    free(v11);
    return;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t sub_100003610(__CFDictionary *a1, int a2)
{
  dword_10000C0D0 = a2;
  sub_100003C44();
  if (a2 == 2)
  {
    CFDictionarySetValue(a1, @"DLInfoStreamTypeKey", @"DLInfoStreamTypeTCP");
    valuePtr = 6666;
    if (DLShouldLog())
    {
      _DLLog();
    }

    v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(a1, @"DLInfoPortKey", v5);
LABEL_16:
    CFRelease(v5);
    return 1;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return 0;
    }

    if (DLLockdownXPCCheckin())
    {
      result = DLShouldLog();
      if (!result)
      {
        return result;
      }

      _DLLog();
      return 0;
    }

    return 1;
  }

  CFDictionarySetValue(a1, @"DLInfoStreamTypeKey", @"DLInfoStreamTypeTCP");
  result = DLGetListenerSocketFromLaunchd();
  valuePtr = result;
  if (!result)
  {
    return result;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, @"DLInfoSocketKey", v5);
  if (v5)
  {
    goto LABEL_16;
  }

  return 1;
}

id sub_1000037C4(uint64_t a1, uint64_t a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (DLKillConnection() && DLShouldLog())
  {
    _DLLog();
  }

  return sub_100001134(a2, @"Cancel Sync Notification");
}

uint64_t sub_100003870()
{
  SBSSetStatusBarShowsSyncActivity();
  byte_10000C329 = 1;
  result = qword_10000C330;
  if (qword_10000C330)
  {
    CFRunLoopTimerInvalidate(qword_10000C330);
    CFRelease(qword_10000C330);
    qword_10000C330 = 0;
    result = DLShouldLog();
    if (result)
    {

      return _DLLog();
    }
  }

  return result;
}

void sub_100003904(uint64_t a1)
{
  if (*(a1 + 56) == kCFBooleanTrue)
  {
    *(a1 + 56) = kCFBooleanFalse;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSync.SyncAgent.kSyncAgentSyncEnded", 0, 0, 0);
  }

  v3 = *(a1 + 64);
  if (v3 != -1)
  {
    if (flock(v3, 8) == -1 && DLShouldLog())
    {
      v4 = *a1;
      v5 = *__error();
      v6 = __error();
      strerror(*v6);
      _DLLog();
    }

    if (DLShouldLog())
    {
      v9 = *a1;
      _DLLog();
    }

    close(*(a1 + 64));
    *(a1 + 64) = -1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  if (*(a1 + 16))
  {
    if (*(a1 + 40) == kCFBooleanFalse)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8 = *(a1 + 16);
      if (DataSourceRollback() && DLShouldLog())
      {
        _DLLog();
      }
    }

    else
    {
      *(a1 + 40) = kCFBooleanFalse;
    }

    v7 = *(a1 + 16);
    if (DataSourceDeleteDataSource() && DLShouldLog())
    {
      _DLLog();
    }

    *(a1 + 16) = 0;
  }

  if (*(a1 + 8))
  {
    if (DLShouldLog())
    {
      v10 = *(a1 + 8);
      _DLLog();
    }

    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void sub_100003B80(const void *a1, CFTypeRef cf, __CFArray *a3)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {
    Count = CFDictionaryGetCount(cf);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count + 1, cf);
    CFDictionarySetValue(MutableCopy, @"SyncAgent_RecordID", a1);
    CFArrayAppendValue(a3, MutableCopy);

    CFRelease(MutableCopy);
  }

  else
  {

    CFArrayAppendValue(a3, cf);
  }
}

uint64_t sub_100003C44()
{
  result = qword_10000C0D8;
  if (qword_10000C0D8 == -1)
  {
    if (byte_10000C328 == 1)
    {
      result = 0;
      qword_10000C0D8 = 0;
      return result;
    }

    qword_10000C0D8 = 600;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"InactivityTimeout", @"com.apple.SyncAgent", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat != 1 || (v2 = AppIntegerValue, AppIntegerValue < 0))
    {
      v4 = qword_10000C0D8;
      v5 = DLShouldLog();
      if (v4)
      {
        if (v5)
        {
          goto LABEL_15;
        }
      }

      else if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      qword_10000C0D8 = AppIntegerValue;
      v3 = DLShouldLog();
      if (v2)
      {
        if (v3)
        {
          goto LABEL_15;
        }
      }

      else if (v3)
      {
LABEL_15:
        _DLLog();
      }
    }

    return qword_10000C0D8;
  }

  return result;
}

void sub_100003D84()
{
  v0 = sub_100003C44();
  if (v0)
  {
    if (dword_10000C0D0 == 1)
    {
      if (DLShouldLog())
      {

        _DLLog();
      }
    }

    else
    {
      v1 = v0;
      Current = CFAbsoluteTimeGetCurrent();
      qword_10000C330 = CFRunLoopTimerCreate(0, Current + v1, 0.0, 0, 0, sub_100003E6C, 0);
      v3 = CFRunLoopGetCurrent();
      v4 = qword_10000C330;

      CFRunLoopAddTimer(v3, v4, kCFRunLoopCommonModes);
    }
  }
}

void sub_100003E6C(uint64_t a1)
{
  if (byte_10000C329 == 1 && DLShouldLog())
  {
    _DLLog();
  }

  if (qword_10000C330 != a1 && DLShouldLog())
  {
    _DLLog();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.SyncAgent.inactivityTimeout", 0, 0, 0);
  exit(0);
}

uint64_t start(int a1, const char **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  DLSetLogDirectoryName();
  if (a1 < 2)
  {
    DLSetOutputLevel();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 2;
    v9 = 1;
LABEL_3:
    sub_100003224(*a2, v6, v5, v7, v9, v8);
    goto LABEL_79;
  }

  v21 = v4;
  v22 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v25 = 0;
  v10 = 0;
  v23 = 0;
  v27 = 0;
  v11 = 0;
  v5 = 0;
  v24 = 1;
  v8 = 2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v12 = getopt_long(a1, a2, "b:c:def:hkl:Lm:noprs:S:t:vX:Y:", &off_10000C0E0, 0);
          if (v12 <= 108)
          {
            break;
          }

          if (v12 <= 113)
          {
            switch(v12)
            {
              case 'm':
                v10 = 1;
                if (optarg)
                {
                  v23 = sub_10000465C(optarg);
                }

                break;
              case 'n':
                v26 = 1;
                break;
              case 'o':
LABEL_23:
                v11 = 1;
                v5 = 1;
                break;
              default:
                goto LABEL_48;
            }
          }

          else if (v12 > 115)
          {
            if (v12 != 116)
            {
              if (v12 != 118)
              {
                goto LABEL_48;
              }

              LODWORD(v29) = 1;
              goto LABEL_32;
            }
          }

          else
          {
            if (v12 != 114)
            {
              v25 = optarg;
              goto LABEL_23;
            }

LABEL_32:
            v11 = 1;
          }
        }

        if (v12 <= 75)
        {
          break;
        }

        if (v12 <= 87)
        {
          switch(v12)
          {
            case 'L':
              v8 = 1;
              break;
            case 'S':
              v13 = CFStringCreateWithCString(0, optarg, 0x8000100u);
              CopyExternalSourcesEnabledForDataType();
              CFPrintf();
              CopyAccountNamesEnabledForDataType();
              v19 = v13;
              v20 = 0;
              CFPrintf();
              if (v13)
              {
                CFRelease(v13);
              }

              break;
            case 'T':
              v16 = *optarg;
              SetTetheredSyncingDisabledForDatatype();
              goto LABEL_85;
            default:
              goto LABEL_48;
          }
        }

        else if (v12 > 106)
        {
          if (v12 != 107)
          {
            goto LABEL_48;
          }

          v8 = 0;
          v5 = 1;
        }

        else
        {
          switch(v12)
          {
            case 'd':
              v24 = 0;
              break;
            case 'X':
              v17 = *optarg;
              SetExternalSourceEnabledForDataType();
              SetAccountNameEnabledForDataType();
              goto LABEL_85;
            case 'c':
              v18 = CFStringCreateWithCString(0, optarg, 0x8000100u);
              dataClassNameForDataType();
              CreateDataSourceForDataClassName();
              DataSourceGetCountOfRecords();
              CFPrintf();
              if (v18)
              {
                CFRelease(v18);
              }

LABEL_85:
              exit(0);
            default:
LABEL_48:
              v28 = 1;
              break;
          }
        }
      }

      if (v12 <= 67)
      {
        break;
      }

      if (v12 == 68)
      {
        CFStringCreateWithCString(0, optarg, 0x8000100u);
      }

      else
      {
        if (v12 != 75)
        {
          goto LABEL_48;
        }

        HIDWORD(v29) = 1;
        if (optarg)
        {
          v22 = sub_10000465C(optarg);
          HIDWORD(v29) = 1;
        }
      }
    }

    if (v12 != 67)
    {
      break;
    }

    v27 = CFStringCreateWithCString(0, optarg, 0x8000100u);
  }

  if (v12 != -1)
  {
    goto LABEL_48;
  }

  if (!v29)
  {
    DLSetOutputLevel();
  }

  if (v28)
  {
    printf("Usage:\n%s --run [--oneshot]\n%s --sync hostname\n%s --playback filename\n", *a2, *a2, *a2);
    v4 = v21;
    goto LABEL_79;
  }

  if (v10)
  {
    v14 = v23;
    if (v23)
    {
      v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{kCFBooleanTrue, v23, 0}];
    }

    v4 = v21;
    if (CreateDataSourceForDataClassName())
    {
      NSLog(@"Couldn't create a data source with the name %@: %@", v27, 0);
    }

    if (CreateDataSourceForDataClassName())
    {
      NSLog(@"Couldn't create a data source with the name %@: %@", v27, 0);
    }

    if (DataSourceMigrateRecords())
    {
      NSLog(@"Couldn't migrate records: %@", 0);
    }

    if (DataSourceDeleteDataSource())
    {
      NSLog(@"Couldn't delete the source data source: %@", 0);
    }

    if (DataSourceDeleteDataSource())
    {
      NSLog(@"Couldn't delete the destination data source: %@", 0, v20);
    }

    goto LABEL_77;
  }

  v4 = v21;
  if (!HIDWORD(v29))
  {
    v7 = v26;
    v6 = v25;
    v9 = v24;
    if (!v11)
    {
      goto LABEL_79;
    }

    goto LABEL_3;
  }

  v14 = v22;
  if (v22)
  {
    v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{kCFBooleanTrue, v22, 0}];
  }

  if (CreateDataSourceForDataClassName())
  {
    NSLog(@"Couldn't create a data source with the name %@: %@", v27, 0);
  }

  if (DataSourceClearAllRecords())
  {
    NSLog(@"Couldn't clear all records in the data source: %@", 0);
  }

  if (DataSourceCommit())
  {
    NSLog(@"Couldn't commit the data source: %@", 0);
  }

  if (DataSourceDeleteDataSource())
  {
    NSLog(@"Couldn't delete the data source: %@", 0, v20);
  }

LABEL_77:
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_79:
  [v4 drain];
  return 0;
}

const __CFString *sub_10000465C(const char *a1)
{
  if (strncasecmp(a1, "event", 5uLL))
  {
    return @"IsEventsOnly";
  }

  if (!strncasecmp(a1, "todo", 4uLL) && !strncasecmp(a1, "task", 4uLL) && !strncasecmp(a1, "reminder", 8uLL))
  {
    return 0;
  }

  return @"IsRemindersOnly";
}

uint64_t sub_1000046F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2 + 88;
  v11 = malloc_type_calloc(0x18uLL, 1uLL, 0x20040960023A9uLL);
  *v11 = v10;
  v11[1] = a2;
  v12 = dword_10000C320;

  return __DLCreateDeviceLinkConnectionForDevice(a1, a2, a3, v11, a4, sub_100004798, v12, a5);
}

uint64_t sub_100004798(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 16);
  Count = CFArrayGetCount(theArray);
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex)
  {
    if (!DLShouldLog())
    {
      return 0xFFFFFFFFLL;
    }

LABEL_20:
    _DLLog();
    return 0xFFFFFFFFLL;
  }

  v7 = ValueAtIndex;
  if (CFStringCompare(ValueAtIndex, @"SDMessageSyncDataClassWithDevice", 0))
  {
    if (CFStringCompare(v7, @"SDMessageSyncDataClassWithComputer", 0))
    {
      if (CFStringCompare(v7, @"SDMessageRefuseToSyncDataClassWithComputer", 0))
      {
        if (CFStringCompare(v7, @"SDMessageClearAllRecordsOnDevice", 0))
        {
          if (CFStringCompare(v7, @"SDMessageDeviceWillClearAllRecords", 0))
          {
            if (CFStringCompare(v7, @"SDMessageGetChangesFromDevice", 0) == kCFCompareEqualTo)
            {
              if (Count < 2)
              {
                v27 = 0;
              }

              else
              {
                v27 = _DLGetParameterAtIndex();
              }

              (*(v4[1] + 120))(a1, v27);
              return 0;
            }

            if (CFStringCompare(v7, @"SDMessageGetAllRecordsFromDevice", 0))
            {
              if (CFStringCompare(v7, @"SDMessageProcessChanges", 0))
              {
                if (CFStringCompare(v7, @"SDMessageAcknowledgeChangesFromDevice", 0))
                {
                  if (CFStringCompare(v7, @"SDMessageDeviceReadyToReceiveChanges", 0))
                  {
                    if (CFStringCompare(v7, @"SDMessageRemapRecordIdentifiers", 0))
                    {
                      if (CFStringCompare(v7, @"SDMessageFinishSessionOnDevice", 0) == kCFCompareEqualTo)
                      {
                        if (Count < 2)
                        {
                          v38 = 0;
                        }

                        else
                        {
                          v38 = _DLGetParameterAtIndex();
                        }

                        (*(v4[1] + 144))(a1, v38);
                        return 0;
                      }

                      if (CFStringCompare(v7, @"SDMessageDeviceFinishedSession", 0))
                      {
                        if (CFStringCompare(v7, @"SDMessageCancelSession", 0) == kCFCompareEqualTo)
                        {
                          if (Count < 2)
                          {
                            v8 = 0;
                          }

                          else
                          {
                            v8 = _DLGetParameterAtIndex();
                            if (Count != 2)
                            {
                              v9 = _DLGetParameterAtIndex();
LABEL_115:
                              (*(*v4 + 8))(a1, v8, v9);
                              return 0;
                            }
                          }

                          v9 = 0;
                          goto LABEL_115;
                        }

                        return 0xFFFFFFFFLL;
                      }

                      if (Count < 2)
                      {
                        v26 = 0;
                      }

                      else
                      {
                        v26 = _DLGetParameterAtIndex();
                      }

                      v39 = v4[2];
                      if (!v39 || (v33 = *(v39 + 152)) == 0)
                      {
                        if (!DLShouldLog())
                        {
                          return 0xFFFFFFFFLL;
                        }

                        goto LABEL_20;
                      }

                      goto LABEL_80;
                    }

                    if (Count < 2)
                    {
                      v36 = 0;
                    }

                    else
                    {
                      v36 = _DLGetParameterAtIndex();
                      if (Count != 2)
                      {
                        v37 = _DLGetParameterAtIndex();
LABEL_103:
                        (*(v4[2] + 144))(a1, v36, v37);
                        return 0;
                      }
                    }

                    v37 = 0;
                    goto LABEL_103;
                  }

                  if (Count < 2)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = _DLGetParameterAtIndex();
                  }

                  v35 = v4[2];
                }

                else
                {
                  if (Count < 2)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = _DLGetParameterAtIndex();
                  }

                  v35 = v4[1];
                }

                (*(v35 + 136))(a1, v34);
                return 0;
              }

              v29 = kCFBooleanFalse;
              if (Count < 2)
              {
                v30 = 0;
              }

              else
              {
                v30 = _DLGetParameterAtIndex();
                if (Count != 2)
                {
                  v31 = _DLGetParameterAtIndex();
                  if (Count >= 4)
                  {
                    v29 = _DLGetParameterAtIndexWithDefaultValue();
                    if (Count != 4)
                    {
                      v32 = _DLGetParameterAtIndex();
LABEL_88:
                      (**v4)(a1, v30, v31, v29, v32);
                      return 0;
                    }
                  }

LABEL_87:
                  v32 = 0;
                  goto LABEL_88;
                }
              }

              v31 = 0;
              goto LABEL_87;
            }

            if (Count < 2)
            {
              v26 = 0;
            }

            else
            {
              v26 = _DLGetParameterAtIndex();
            }

            v28 = v4[1];
          }

          else
          {
            if (Count < 2)
            {
              v26 = 0;
            }

            else
            {
              v26 = _DLGetParameterAtIndex();
            }

            v28 = v4[2];
          }

          v33 = *(v28 + 128);
LABEL_80:
          v33(a1, v26);
          return 0;
        }

        if (Count < 2)
        {
          v24 = 0;
        }

        else
        {
          v24 = _DLGetParameterAtIndex();
          if (Count != 2)
          {
            v25 = _DLGetParameterAtIndex();
LABEL_57:
            (*(v4[1] + 112))(a1, v24, v25);
            return 0;
          }
        }

        v25 = 0;
        goto LABEL_57;
      }

      if (Count < 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = _DLGetParameterAtIndex();
        if (Count != 2)
        {
          v20 = _DLGetParameterAtIndex();
LABEL_48:
          (*(v4[2] + 120))(a1, v19, v20);
          return 0;
        }
      }

      v20 = 0;
      goto LABEL_48;
    }

    if (Count < 2)
    {
      v15 = 0;
      v16 = 0;
      v14 = 0;
    }

    else
    {
      v14 = _DLGetParameterAtIndex();
      if (Count != 2)
      {
        v21 = _DLGetParameterAtIndex();
        if (Count < 4)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v16 = _DLGetParameterAtIndex();
          if (Count != 4)
          {
            v22 = _DLGetParameterAtIndex();
            if (Count < 6)
            {
              v15 = 0;
            }

            else
            {
              v15 = _DLGetParameterAtIndex();
              if (Count != 6)
              {
                v23 = _DLGetParameterAtIndex();
                goto LABEL_39;
              }
            }

LABEL_38:
            v23 = 0;
LABEL_39:
            (*(v4[2] + 112))(a1, v14, v21, v16, v22, v15, v23);
            return 0;
          }

          v15 = 0;
        }

LABEL_37:
        v22 = 0;
        goto LABEL_38;
      }

      v15 = 0;
      v16 = 0;
    }

    v21 = 0;
    goto LABEL_37;
  }

  if (Count < 2)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_29;
  }

  v11 = _DLGetParameterAtIndex();
  if (Count == 2)
  {
    v12 = 0;
    v13 = 0;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

  v13 = _DLGetParameterAtIndex();
  if (Count < 4)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v17 = _DLGetParameterAtIndex();
  if (Count == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = _DLGetParameterAtIndex();
    if (Count >= 6)
    {
      v18 = _DLGetParameterAtIndex();
      goto LABEL_31;
    }
  }

LABEL_30:
  v18 = 0;
LABEL_31:
  (*(v4[1] + 104))(a1, v11, v13, v17, v12, v18);
  return 0;
}

uint64_t sub_100004E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 7;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a8, @"SDSyncDataClassWithComputer: Computer cannot call this method");
  }
}

uint64_t sub_100004F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 8;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a4, @"SDRefuseToSyncDataClassWithComputer: Computer cannot call this method");
  }
}

uint64_t sub_100004F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 10;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a3, @"SDDeviceWillClearAllRecords: Computer cannot call this method");
  }
}

uint64_t sub_100004FF4(_DWORD *a1)
{
  _DLRequestWrite();
  _DLRequestRead();
  *a1 = 13;
  return 0;
}

uint64_t sub_100005048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 15;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a3, @"SDDeviceWillClearAllRecords: Computer cannot call this method");
  }
}

uint64_t sub_1000050C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 16;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a4, @"SDRemapRecordIdentifiers: Computer cannot call this method");
  }
}

uint64_t sub_10000513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    _DLRequestWrite();
    _DLRequestRead();
    *a1 = 18;
    return 0;
  }

  else
  {

    return _DLSetStatus(4294967292, a3, @"SDDeviceFinishedSession: Computer cannot call this method");
  }
}

uint64_t sub_1000051B8(_DWORD *a1)
{
  _DLRequestWrite();
  *a1 = 19;
  return 0;
}