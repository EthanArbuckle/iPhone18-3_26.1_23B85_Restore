id RCPLogPlayback()
{
  if (RCPLogPlayback_onceToken != -1)
  {
    RCPLogPlayback_cold_1();
  }

  v1 = RCPLogPlayback___logObj;

  return v1;
}

double RCPTimeIntervalFromMachTimestamp(unint64_t a1)
{
  if (machDurationOfSecond_once != -1)
  {
    RCPTimeIntervalFromMachTimestamp_cold_1();
  }

  return a1 / *&machDurationOfSecond_duration;
}

id copyMobileGestaltAnswer()
{
  v0 = MGCopyAnswerWithError();

  return v0;
}

id _RCPActiveScreens()
{
  v0 = [MEMORY[0x277CD9E40] displays];
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v0, "count")}];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___RCPActiveScreens_block_invoke;
  v3[3] = &unk_279AF0EC8;
  v3[4] = &v4;
  [v0 enumerateObjectsUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2619E01C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _RCPVirtualHIDServiceQueue()
{
  if (_RCPVirtualHIDServiceQueue_onceToken != -1)
  {
    _RCPVirtualHIDServiceQueue_cold_1();
  }

  v1 = _RCPVirtualHIDServiceQueue_queue;

  return v1;
}

double __machDurationOfSecond_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  result = (1000000000 * info.denom) / v0;
  *&machDurationOfSecond_duration = result;
  return result;
}

uint64_t __RCPLogPlayback_block_invoke()
{
  RCPLogPlayback___logObj = os_log_create("com.apple.recap", "Playback");

  return MEMORY[0x2821F96F8]();
}

id RCPMediaTimingFunctionForInputType(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a1 == 1)
  {
    v6 = MEMORY[0x277CD9EF8];
LABEL_8:
    v7 = [v6 functionWithName:*MEMORY[0x277CDA7C8]];
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    v6 = MEMORY[0x277CD9EF8];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    v6 = MEMORY[0x277CD9EF8];
    if (a2)
    {
      goto LABEL_8;
    }

LABEL_9:
    LODWORD(a3) = 1048980465;
    LODWORD(a4) = 1043842074;
    LODWORD(a5) = 1061297928;
    LODWORD(a6) = 1063511816;
    goto LABEL_10;
  }

  v6 = MEMORY[0x277CD9EF8];
  LODWORD(a3) = 1056437569;
  LODWORD(a4) = 1026291025;
  LODWORD(a5) = 1057228128;
  LODWORD(a6) = 1064648875;
LABEL_10:
  v7 = [v6 functionWithControlPoints:a3 :a4 :a5 :a6];
LABEL_11:

  return v7;
}

uint64_t _RCPIsAllowlistedProperty(void *a1)
{
  v1 = _RCPIsAllowlistedProperty_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _RCPIsAllowlistedProperty_cold_1();
  }

  v3 = [_RCPIsAllowlistedProperty_propertyNames containsObject:v2];

  return v3;
}

void sub_2619E4EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFBSOrientationObserverClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279AF0DA0;
    v6 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FrontBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FBSOrientationObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSOrientationObserverClass_block_invoke_cold_1();
  }

  getFBSOrientationObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _updateEventPhase(void *a1)
{
  [a1 hidEvent];
  Children = IOHIDEventGetChildren();
  CFArrayGetValueAtIndex(Children, 0);

  return IOHIDEventSetPhase();
}

void _RCPEventHIDEnumerateChildren(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    v6 = Children;
    Count = CFArrayGetCount(Children);
    v11 = 0;
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i < v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        if (!a2 || IOHIDEventGetType() == a2)
        {
          v4[2](v4, ValueAtIndex, i, &v11);
          if (v11)
          {
            break;
          }
        }
      }
    }
  }
}

uint64_t _RCPEventHIDDigitizerEventCountOfTouchingContacts(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (IOHIDEventGetType() == 11)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___RCPEventHIDDigitizerEventCountOfTouchingContacts_block_invoke;
    v4[3] = &unk_279AF0E80;
    v4[4] = &v5;
    _RCPEventHIDEnumerateChildren(a1, 11, v4);
  }

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_2619E8394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _RCPHIDEventMatchingPredicateCore(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a1 && ((*(v5 + 2))(v5, a1, a2) & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = IOHIDEventGetChildren();
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = _RCPHIDEventMatchingPredicateCore(*(*(&v14 + 1) + 8 * v11), a2 + 1, v6);
          if (v12)
          {
            a1 = v12;
            goto LABEL_13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    a1 = 0;
LABEL_13:
  }

  return a1;
}

uint64_t RCPHIDEventTransformLocation(uint64_t a1, __int128 *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v4[2] = __RCPHIDEventTransformLocation_block_invoke;
  v4[3] = &__block_descriptor_88_e26_B24__0____IOHIDEvent__8q16l;
  v4[4] = a1;
  v7 = a2[2];
  return _RCPHIDEventMatchingPredicateCore(a1, 0, v4);
}

uint64_t __RCPHIDEventTransformLocation_block_invoke()
{
  Type = IOHIDEventGetType();
  if (Type == 17 || Type == 11)
  {
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventSetFloatValue();
    IOHIDEventSetFloatValue();
  }

  return 0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2619EC7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id RCPLogWorkarounds()
{
  if (RCPLogWorkarounds_onceToken != -1)
  {
    RCPLogWorkarounds_cold_1();
  }

  v1 = RCPLogWorkarounds___logObj;

  return v1;
}

uint64_t __RCPLogWorkarounds_block_invoke()
{
  RCPLogWorkarounds___logObj = os_log_create("com.apple.recap", "Workarounds");

  return MEMORY[0x2821F96F8]();
}

double RCPTimeIntervalFromMachDuration(uint64_t a1)
{
  if (machDurationOfSecond_once != -1)
  {
    RCPTimeIntervalFromMachTimestamp_cold_1();
  }

  return a1 / *&machDurationOfSecond_duration;
}

unint64_t RCPMachTimestampFromTimeInterval(double a1)
{
  if (a1 < 0.0)
  {
    RCPMachTimestampFromTimeInterval_cold_2();
  }

  if (machDurationOfSecond_once != -1)
  {
    RCPTimeIntervalFromMachTimestamp_cold_1();
  }

  return (*&machDurationOfSecond_duration * a1);
}

uint64_t RCPMachDurationFromTimeInterval(double a1)
{
  if (machDurationOfSecond_once != -1)
  {
    RCPTimeIntervalFromMachTimestamp_cold_1();
  }

  return (*&machDurationOfSecond_duration * a1);
}

id RCPCGImageBackedImageFromImage(void *a1)
{
  v1 = a1;
  if ([v1 ioSurface])
  {
    v2 = _UICreateCGImageFromIOSurfaceWithOptions();
    v3 = objc_alloc(MEMORY[0x277D755B8]);
    [v1 scale];
    v5 = [v3 initWithCGImage:v2 scale:objc_msgSend(v1 orientation:{"imageOrientation"), v4}];
    CFRelease(v2);
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

void sub_2619EF7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _ioHIDEventCallback(void *a1, int a2, const void *a3, CFTypeRef cf)
{
  CFRetain(cf);
  v7 = mach_absolute_time();
  v8 = a1;
  v9 = v8;
  if (!a3)
  {
    goto LABEL_10;
  }

  if (![v8 shouldRecordSenderProperties])
  {
    goto LABEL_10;
  }

  v10 = CFGetTypeID(a3);
  if (v10 != IOHIDServiceClientGetTypeID())
  {
    goto LABEL_10;
  }

  if (!_ioHIDEventCallback_sSenderPropertiesBySenderID)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = _ioHIDEventCallback_sSenderPropertiesBySenderID;
    _ioHIDEventCallback_sSenderPropertiesBySenderID = v11;
  }

  SenderID = IOHIDEventGetSenderID();
  if (SenderID)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:SenderID];
    v15 = [_ioHIDEventCallback_sSenderPropertiesBySenderID objectForKeyedSubscript:v14];
    if (!v15)
    {
      v15 = [RCPEventSenderProperties senderFromIOHIDService:a3];
      [_ioHIDEventCallback_sSenderPropertiesBySenderID setObject:v15 forKeyedSubscript:v14];
    }
  }

  else
  {
LABEL_10:
    v15 = 0;
  }

  if (v9[25] == 1)
  {
    v9[25] = 0;
    v16 = [v9 _initialLocationEvent];
  }

  else
  {
    v16 = 0;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ioHIDEventCallback_block_invoke;
  v18[3] = &unk_279AF1048;
  v19 = v15;
  v20 = v16;
  v21 = cf;
  v22 = v7;
  v17 = v15;
  dispatch_async(MEMORY[0x277D85CD0], v18);
}

void ___ioHIDEventCallback_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = +[RCPRecorder sharedRecorder];
  v3 = v2[2];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v7 = &_CLTLogLevel;
    v8 = 0x279AF0000uLL;
    v26 = a1;
    v9 = MEMORY[0x277D85E08];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 config];
        v13 = [v12 ignoreSenderProperties];

        v14 = 0;
        v15 = *(a1 + 32);
        if (v15 && (v13 & 1) == 0)
        {
          v14 = v15;
        }

        if (*(a1 + 40))
        {
          [v11 setStartLocationEvent:?];
        }

        v16 = [*(v8 + 2368) eventWithHIDEvent:*(a1 + 48) deliveryTimeStamp:*(a1 + 56) senderProperties:v14 preActions:0];
        [v11 enqueueEvent:v16];
        if (*v7 >= 5)
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = CFCopyDescription(*(a1 + 48));
          v19 = v5;
          v20 = v6;
          v21 = v8;
          v22 = v7;
          v23 = v18;
          v24 = [v17 stringWithFormat:@"%@", v18];
          fputs([v24 UTF8String], *v9);

          v7 = v22;
          v8 = v21;
          v6 = v20;
          v5 = v19;
          a1 = v26;
          fflush(*v9);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(*(a1 + 48));
}

void sub_2619F0278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getFBSOrientationObserverClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __FrontBoardServicesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279AF10B0;
    v6 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (FrontBoardServicesLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FBSOrientationObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSOrientationObserverClass_block_invoke_cold_1();
  }

  getFBSOrientationObserverClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id RCPDataFromHexString(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#$ <>:\n"];
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  v5 = [v4 invertedSet];

  v6 = [v1 componentsSeparatedByCharactersInSet:v3];
  v7 = [v6 componentsJoinedByString:&stru_28741F8C0];

  v8 = [v7 rangeOfCharacterFromSet:v5];
  if (([v7 length] & 1) == 0 && v8 == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v7, "length"))
  {
    v9 = 0;
    do
    {
      v10 = [v7 characterAtIndex:v9];
      if ((v10 - 65) <= 5)
      {
        v11 = v10 - 55;
      }

      else
      {
        v11 = 0;
      }

      if ((v10 - 97) <= 5)
      {
        v11 = v10 - 87;
      }

      if ((v10 - 48) <= 9)
      {
        v12 = v10 - 48;
      }

      else
      {
        v12 = v11;
      }

      v13 = v9 + 1;
      v14 = [v7 characterAtIndex:v13];
      v15 = v14 - 48;
      if ((v14 - 65) <= 5)
      {
        v16 = v14 - 55;
      }

      else
      {
        v16 = 0;
      }

      if ((v14 - 97) <= 5)
      {
        v17 = v14 - 87;
      }

      else
      {
        v17 = v16;
      }

      if (v15 > 9)
      {
        LOBYTE(v15) = v17;
      }

      v19 = v15 + 16 * v12;
      [v2 appendBytes:&v19 length:1];
      v9 = v13 + 1;
    }

    while (v9 < [v7 length]);
  }

  return v2;
}

void sub_2619F1B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id parseCommandFromCLIArguments(void *a1, void *a2)
{
  v572[12] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v556 = a2;
  v4 = objc_alloc_init(CLIArguments);
  v553 = v3;
  [(CLIArguments *)v4 setArguments:v3];
  v555 = v4;
  v5 = [(CLIArguments *)v4 objectAtIndexedSubscript:0];
  LODWORD(v3) = [v5 isEqualToString:@"sender"];

  if (v3)
  {
    v554 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (v554)
    {
      if (propertiesForSenderString_onceToken != -1)
      {
        parseCommandFromCLIArguments_cold_1();
      }

      v6 = propertiesForSenderString_propertyMap;
      v7 = [v554 lowercaseString];
      v8 = [v6 objectForKeyedSubscript:v7];
      v9 = [v8 pointerValue];

      if (v9)
      {
        v10 = [RCPEventSenderProperties performSelector:v9];
        if (v10)
        {
          [v556 setSenderProperties:v10];
          v11 = 0;
LABEL_20:

          v26 = [(CLIArguments *)v555 consumeUpToIndex:2];
LABEL_43:

          goto LABEL_44;
        }
      }

      v27 = MEMORY[0x277CCAAA0];
      v28 = [v554 dataUsingEncoding:4];
      v564 = 0;
      v10 = [v27 JSONObjectWithData:v28 options:0 error:&v564];
      v11 = v564;

      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [RCPEventSenderProperties senderWithProperties:v10];
          [v556 setSenderProperties:v29];

          goto LABEL_20;
        }

        v74 = *MEMORY[0x277D85DF8];
        v40 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        v75 = v40;
        fprintf(v74, "JSON sender data didn't decode to dictionary (%s)\n", [v40 UTF8String]);
      }

      else
      {
        v39 = *MEMORY[0x277D85DF8];
        v40 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        v41 = v40;
        v42 = [v40 UTF8String];
        v43 = [v11 description];
        v44 = v43;
        fprintf(v39, "I don't recognize the sender value (%s) -- error:%s\n", v42, [v43 UTF8String]);
      }

      v26 = 0;
      goto LABEL_43;
    }

    fprintf(*MEMORY[0x277D85DF8], "Please specify a value for argument %s.\n", [@"sender" UTF8String]);
LABEL_37:
    v26 = 0;
    goto LABEL_44;
  }

  v12 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v554 = [v12 componentsSeparatedByString:@":"];

  v13 = [v554 objectAtIndexedSubscript:0];
  v14 = [v13 isEqualToString:@"kbd"];

  if (v14)
  {
    if ([v554 count] >= 2)
    {
      v15 = [v554 objectAtIndexedSubscript:1];
      if (isNumber(v15))
      {
        v16 = [v554 objectAtIndexedSubscript:1];
        v17 = isNegativeNumber(v16);

        if (!v17)
        {
          v18 = MEMORY[0x277CCABB0];
          v19 = [v554 objectAtIndexedSubscript:1];
          obj = [v18 numberWithInteger:{objc_msgSend(v19, "integerValue")}];

LABEL_29:
          v45 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
          v566 = 0;
          v567 = &v566;
          v568 = 0x2050000000;
          v46 = getTypistHWKeyboardClass_softClass;
          v569 = getTypistHWKeyboardClass_softClass;
          if (!getTypistHWKeyboardClass_softClass)
          {
            v565[0] = MEMORY[0x277D85DD0];
            v565[1] = 3221225472;
            v565[2] = __getTypistHWKeyboardClass_block_invoke;
            v565[3] = &unk_279AF0D80;
            v565[4] = &v566;
            __getTypistHWKeyboardClass_block_invoke(v565);
            v46 = v567[3];
          }

          v47 = v46;
          _Block_object_dispose(&v566, 8);
          v48 = [[v46 alloc] initWithLanguage:obj];
          v49 = MEMORY[0x277CCAAA0];
          v50 = [v48 getPropertyDictionaryString];
          v51 = [v50 dataUsingEncoding:4];
          v52 = [v49 JSONObjectWithData:v51 options:0 error:0];

          v53 = [RCPEventSenderProperties senderWithProperties:v52];
          v54 = [v48 usagePairsForText:v45];
          [v556 setSenderProperties:v53];
          v55 = [v54 usagePages];
          v56 = [v54 usages];
          v57 = [v54 usagePages];
          v58 = [v57 count] == 0;

          if (!v58)
          {
            v59 = 0;
            do
            {
              v60 = [v55 objectAtIndex:v59];
              v61 = [v56 objectAtIndex:v59];
              [v556 pressButtonsWithPages:v60 usages:v61 duration:0.12];

              v62 = [v54 usagePages];
              v63 = [v62 count];

              ++v59;
            }

            while (v59 < v63);
          }

          v26 = [(CLIArguments *)v555 consumeUpToIndex:2];

          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    fwrite("No keyboard language provided. Defaulting to US English Keyboard.", 0x41uLL, 1uLL, *MEMORY[0x277D85DF8]);
    obj = &unk_287426A00;
    goto LABEL_29;
  }

  v20 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v21 = [v20 isEqualToString:@"tf"];

  if (v21)
  {
    v22 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    v23 = isNumber(v22);

    if (v23)
    {
      v24 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      [v556 setTouchFrequency:{objc_msgSend(v24, "integerValue")}];

      v25 = [(CLIArguments *)v555 consumeUpToIndex:2];
LABEL_16:
      v26 = v25;
      goto LABEL_44;
    }

    v64 = *MEMORY[0x277D85DF8];
    v65 = "Please specify a frequency in touches/sec.\n";
    v66 = 43;
    goto LABEL_36;
  }

  v30 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v31 = [v30 isEqualToString:@"unicode"];

  if (v31)
  {
    v32 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (!v32)
    {
      fwrite("Please specify a text to synthesize.\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
      v26 = 0;
LABEL_55:

      goto LABEL_44;
    }

    v33 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
    v34 = isNumber(v33);

    if (v34)
    {
      v35 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      [v35 floatValue];
      v37 = v36;

      v38 = 3;
    }

    else
    {
      v38 = 2;
      v37 = 0.1;
    }

    [v556 sendUnicodeString:v32 synthesizePerCharacterEvents:1 durationBetweenEvents:v37];
    v88 = [(CLIArguments *)v555 consumeUpToIndex:v38];
LABEL_54:
    v26 = v88;
    goto LABEL_55;
  }

  v67 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v68 = [v67 isEqualToString:@"wait"];

  if (v68)
  {
    v69 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    v70 = isNumber(v69);

    if (v70)
    {
      v71 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      [v71 floatValue];
      v73 = v72;

      [v556 advanceTime:v73];
      v25 = [(CLIArguments *)v555 consumeUpToIndex:2];
      goto LABEL_16;
    }

    v64 = *MEMORY[0x277D85DF8];
    v65 = "Please specify a duration to wait.\n";
    v66 = 35;
LABEL_36:
    fwrite(v65, v66, 1uLL, v64);
    goto LABEL_37;
  }

  v77 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v78 = [v77 isEqualToString:@"d"];

  if (v78)
  {
    v79 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v79))
    {
      v80 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v81 = isNumber(v80);

      if (v81)
      {
        v82 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v82 floatValue];
        v84 = v83;
        v85 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        [v85 floatValue];
        v87 = v86;

        [v556 doubleTap:{v84, v87}];
        v25 = [(CLIArguments *)v555 consumeUpToIndex:3];
        goto LABEL_16;
      }
    }

    else
    {
    }

    v64 = *MEMORY[0x277D85DF8];
    v65 = "Please specify a start point for the double tap.\n";
LABEL_63:
    v66 = 49;
    goto LABEL_36;
  }

  v89 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v90 = [v89 isEqualToString:@"qt"];

  if (v90)
  {
    v91 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v91))
    {
      v92 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v93 = isNumber(v92);

      if (v93)
      {
        v94 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v94 floatValue];
        v96 = v95;
        v97 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v98 = v96;
        [v97 floatValue];
        v100 = v99;

        [v556 touchDown:{v98, v100}];
        [v556 advanceTime:0.000001];
        [v556 liftUp:{v98, v100}];
        v25 = [(CLIArguments *)v555 consumeUpToIndex:3];
        goto LABEL_16;
      }
    }

    else
    {
    }

    v64 = *MEMORY[0x277D85DF8];
    v65 = "Please specify a start point for the quick tap.\n";
    v66 = 48;
    goto LABEL_36;
  }

  v101 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v102 = [v101 isEqualToString:@"ttw"];

  if (v102)
  {
    v103 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v103))
    {
      v104 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v105 = isNumber(v104);

      if (v105)
      {
        v106 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v106 floatValue];
        v108 = v107;
        v109 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        [v109 floatValue];
        v111 = v110;

        [v556 tapToWakeAtPoint:{v108, v111}];
        v25 = [(CLIArguments *)v555 consumeUpToIndex:3];
        goto LABEL_16;
      }

      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v112 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v113 = [v112 isEqualToString:@"edgeOrb"];

  if (v113)
  {
    v103 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v103))
    {
      v114 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v115 = isNumber(v114);

      if (v115)
      {
        v116 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v116 floatValue];
        v118 = v117;
        v119 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        [v119 floatValue];
        v121 = v120;

        [v556 edgeOrb:{v118, v121}];
        v25 = [(CLIArguments *)v555 consumeUpToIndex:3];
        goto LABEL_16;
      }

      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v122 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v123 = [v122 isEqualToString:@"edgeOrbSwipe"];

  if (v123)
  {
    v103 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v103))
    {
      v124 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v125 = isNumber(v124);

      if (v125)
      {
        v126 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
        if (isNumber(v126))
        {
          v127 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          v128 = isNumber(v127);

          if (v128)
          {
            v129 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
            [v129 floatValue];
            v131 = v130;
            v132 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
            [v132 floatValue];
            v134 = v133;

            v135 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
            [v135 floatValue];
            v137 = v136;
            v138 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
            [v138 floatValue];
            v140 = v139;

            v141 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
            v142 = isNumber(v141);
            if (v142)
            {
              v138 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
              [v138 floatValue];
              v144 = v143;
            }

            else
            {
              v144 = 0.5;
            }

            [v556 edgeOrbSwipe:v131 withEndLocation:v134 withDuration:{v137, v140, v144}];
            if (v142)
            {
            }

            v32 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
            if (isNumber(v32))
            {
              v267 = 6;
            }

            else
            {
              v267 = 5;
            }

            v88 = [(CLIArguments *)v555 consumeUpToIndex:v267];
            goto LABEL_54;
          }
        }

        else
        {
        }

        v64 = *MEMORY[0x277D85DF8];
        v65 = "Please specify a end point for the swipe.\n";
        v66 = 42;
        goto LABEL_36;
      }

      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v145 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v146 = [v145 isEqualToString:@"hvr"];

  if (v146)
  {
    v147 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v147))
    {
      v148 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v149 = isNumber(v148);

      if (v149)
      {
        v150 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v150 floatValue];
        v152 = v151;
        v153 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        [v153 floatValue];
        v155 = v154;

        v156 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
        v157 = isNumber(v156);

        v158 = 5.0;
        if (v157)
        {
          v159 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
          [v159 floatValue];
          v158 = v160;
        }

        v161 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
        v162 = isNumber(v161);

        v163 = 1.0;
        if (v162)
        {
          v164 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          [v164 floatValue];
          v163 = v165;
        }

        v166 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
        v167 = isNumber(v166);

        if (v167)
        {
          v168 = [(CLIArguments *)v555 objectAtIndexedSubscript:6];
          if (isNumber(v168))
          {
            v169 = [(CLIArguments *)v555 objectAtIndexedSubscript:7];
            v170 = isNumber(v169);

            if (v170)
            {
              v171 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
              [v171 floatValue];
              v173 = v172;

              v174 = [(CLIArguments *)v555 objectAtIndexedSubscript:6];
              [v174 floatValue];
              v176 = v175;

              v177 = [(CLIArguments *)v555 objectAtIndexedSubscript:7];
              v178 = v173;
              v179 = v176;
              [v177 floatValue];
              v181 = v180;

              v182 = 8;
              goto LABEL_128;
            }
          }

          else
          {
          }

          v64 = *MEMORY[0x277D85DF8];
          v65 = "Please specify a azimuth angle, altitude angle, and roll angle.\n";
          v66 = 64;
          goto LABEL_36;
        }

        v181 = 0.0;
        v182 = 5;
        v179 = 0.785398163;
        v178 = 0.0;
LABEL_128:
        [v556 hoverAtLocation:v152 withDuration:v155 withZPosition:v163 withAltitudeAngle:v158 withAzimuthAngle:v179 withRollAngle:{v178, v181}];
        if (v157)
        {
          if (v162)
          {
            [(CLIArguments *)v555 consumeUpToIndex:v182];
          }

          else
          {
            [(CLIArguments *)v555 consumeUpToIndex:4];
          }
          v25 = ;
          goto LABEL_16;
        }

        goto LABEL_373;
      }
    }

    else
    {
    }

    v64 = *MEMORY[0x277D85DF8];
    v65 = "Please specify a start point for the hover.\n";
LABEL_102:
    v66 = 44;
    goto LABEL_36;
  }

  v183 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v184 = [v183 isEqualToString:@"br"];

  if (v184)
  {
    v185 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v185))
    {
      v186 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v187 = isNumber(v186);

      if (v187)
      {
        v188 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v188 floatValue];
        v190 = v189;
        v191 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        [v191 floatValue];
        v193 = v192;

        v194 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
        LOBYTE(v191) = isNumber(v194);

        if (v191)
        {
          v195 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
          [v195 floatValue];
          v197 = v196;

          v198 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          v199 = isNumber(v198);

          if (!v199)
          {
            v64 = *MEMORY[0x277D85DF8];
            v65 = "Please specify an altitude angle for the barrel roll.\n";
            v66 = 54;
            goto LABEL_36;
          }

          v200 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          [v200 floatValue];
          v202 = v201;

          v203 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
          v204 = isNumber(v203);

          if (!v204)
          {
            v64 = *MEMORY[0x277D85DF8];
            v65 = "Please specify an azimuth angle for the barrel roll.\n";
            v66 = 53;
            goto LABEL_36;
          }

          v205 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
          [v205 floatValue];
          v207 = v206;

          v208 = [(CLIArguments *)v555 objectAtIndexedSubscript:6];
          v209 = isNumber(v208);

          if (v209)
          {
            v210 = [(CLIArguments *)v555 objectAtIndexedSubscript:6];
            [v210 floatValue];
            v212 = v211;

            [v556 barrelRollAtLocation:v190 withZPosition:v193 withAltitudeAngle:v197 withAzimuthAngle:v202 withRollAngle:{v207, v212}];
            v25 = [(CLIArguments *)v555 consumeUpToIndex:7];
            goto LABEL_16;
          }

          v64 = *MEMORY[0x277D85DF8];
          v65 = "Please specify a roll angle for the barrel roll.\n";
          goto LABEL_63;
        }

        v64 = *MEMORY[0x277D85DF8];
        v65 = "Please specify a starting z position for the barrel roll.\n";
LABEL_143:
        v66 = 58;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v64 = *MEMORY[0x277D85DF8];
    v65 = "Please specify a start point for the barrel roll.\n";
    v66 = 50;
    goto LABEL_36;
  }

  v213 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v214 = [v213 isEqualToString:@"sq"];

  if (v214)
  {
    [v556 squeeze];
    v25 = [(CLIArguments *)v555 consumeUpToIndex:1];
    goto LABEL_16;
  }

  v215 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v216 = [v215 isEqualToString:@"tbc"];

  if (v216)
  {
    v217 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (!v217)
    {
      v268 = *MEMORY[0x277D85DF8];
      v269 = "Please specify a Tostada option 'c', 'i', 'e'.\n";
      v270 = 47;
      goto LABEL_154;
    }

    v218 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];

    if (v218)
    {
      v219 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v220 = [v219 BOOLValue];

      v221 = 3;
    }

    else
    {
      v220 = 0;
      v221 = 2;
    }

    v273 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
    v274 = isNumber(v273);

    v275 = 0.0;
    if (v274)
    {
      v276 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
      [v276 doubleValue];
      v275 = v277;

      ++v221;
    }

    v278 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
    v279 = isNumberIncludingNegatives(v278);

    v280 = 0.0;
    if (v279)
    {
      v281 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
      [v281 doubleValue];
      v280 = v282;

      ++v221;
    }

    v283 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
    v284 = isNumber(v283);

    v285 = 0.5;
    if (v284)
    {
      v286 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
      [v286 doubleValue];
      v285 = v287;

      ++v221;
    }

    v288 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    v289 = [v288 isEqualToString:@"c"];

    if (v289)
    {
      [v556 touchSensitiveButtonClickWithPage:&unk_2874269D0 withUsage:&unk_287426A18 withTouch:v220 withNormalizedPositionY:v275 withNormalizedPositionDeltaY:v280];
    }

    else
    {
      v290 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      v291 = [v290 isEqualToString:@"i"];

      if (v291)
      {
        [v556 touchSensitiveButtonIntermediatePressWithDuration:&unk_2874269D0 withPage:&unk_287426A18 withUsage:v220 withTouch:v285 withNormalizedPositionY:v275 withNormalizedPositionDeltaY:v280];
      }

      else
      {
        v292 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        v293 = [v292 isEqualToString:@"e"];

        if (v293)
        {
          [v556 touchSensitiveButtonIntermediatePressWithPage:&unk_2874269D0 withUsage:&unk_287426A18 withTouch:v220 withNormalizedPositionY:v275 withNormalizedPositionDeltaY:v280];
          [v556 touchSensitiveButtonEngagedWithLiftWithDuration:&unk_2874269D0 withPage:&unk_287426A18 withUsage:v220 withTouch:v285 withNormalizedPositionY:v275 withNormalizedPositionDeltaY:v280];
        }

        else
        {
          v296 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
          v297 = [v296 isEqualToString:@"h"];

          if (v297)
          {
            [v556 touchSensitiveButtonHoldWithPage:&unk_2874269D0 withUsage:&unk_287426A18 withTouch:v220 withNormalizedPositionY:v275 withNormalizedPositionDeltaY:v280];
            [v556 advanceTime:v285];
            [v556 touchSensitiveButtonReleaseHoldWithPage:&unk_2874269D0 withUsage:&unk_287426A18 withTouch:v220 withNormalizedPositionY:v275 withNormalizedPositionDeltaY:v280];
          }
        }
      }
    }

    v298 = [(CLIArguments *)v555 consumeUpToIndex:v221];
LABEL_178:
    v26 = v298;
    goto LABEL_179;
  }

  v222 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v223 = [v222 isEqualToString:@"tt"];

  if (v223)
  {
    v103 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v103))
    {
      v224 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v225 = isNumber(v224);

      if (v225)
      {
        v226 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v226 floatValue];
        v228 = v227;
        v229 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        [v229 floatValue];
        v231 = v230;

        v232 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
        if (isNumber(v232))
        {
          v233 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          v234 = isNumber(v233);

          if (v234)
          {
            v235 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
            v236 = [v235 integerValue];

            if (v236)
            {
              v237 = v228;
              v238 = v231;
              for (i = 1; i <= v245; ++i)
              {
                v240 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
                [v556 tapsNoLift:1 location:objc_msgSend(v240 withNumberOfTouches:{"integerValue"), v237, v238}];

                v241 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
                if (isNumber(v241))
                {
                  v242 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
                  [v242 doubleValue];
                  [v556 advanceTime:?];
                }

                else
                {
                  [v556 advanceTime:0.15];
                }

                v243 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
                [v556 liftUp:objc_msgSend(v243 touchCount:{"integerValue"), v237, v238}];

                v244 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
                v245 = [v244 integerValue];
              }
            }

            v246 = [(CLIArguments *)v555 objectAtIndexedSubscript:5];
            v247 = isNumber(v246);

            if (v247)
            {
              v248 = 6;
            }

            else
            {
              v248 = 5;
            }

            goto LABEL_308;
          }
        }

        else
        {
        }

        v64 = *MEMORY[0x277D85DF8];
        v65 = "Please specify a number of taps and a number of fingers to use for multi-finger tap\n";
        v66 = 84;
        goto LABEL_36;
      }

      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v249 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v250 = [v249 isEqualToString:@"t"];

  if (v250)
  {
    v103 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    if (isNumber(v103))
    {
      v251 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v252 = isNumber(v251);

      if (v252)
      {
        v253 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
        [v253 floatValue];
        v255 = v254;
        v256 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        [v256 floatValue];
        v258 = v257;

        [v556 defaultRadius];
        v260 = v259;
        v261 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
        LODWORD(v256) = [v261 isEqualToString:@"r"];

        if (v256)
        {
          v262 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          v263 = isNumber(v262);

          if (!v263)
          {
            v64 = *MEMORY[0x277D85DF8];
            v65 = "No valid radius specified following touch radius command.\n";
            goto LABEL_143;
          }

          v264 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
          [v264 floatValue];
          v260 = v265;

          v266 = 5;
        }

        else
        {
          v266 = 3;
        }

        v306 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
        v307 = isNumber(v306);

        v308 = 0.0;
        if (v307)
        {
          v309 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
          [v309 floatValue];
          v308 = v310;

          ++v266;
        }

        v311 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
        v312 = [v311 isEqualToString:@"peek"];

        v313 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
        v314 = v255;
        v315 = v258;
        v316 = [v313 isEqualToString:@"pop"];

        if (((v312 | v316) & 1) == 0)
        {
          v321 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
          v322 = [v321 isEqualToString:@"d"];

          v323 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
          v324 = [v323 isEqualToString:@"f"];

          v325 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
          v326 = [v325 isEqualToString:@"s"];

          v327 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266];
          v328 = [v327 isEqualToString:@"p"];

          if (((v322 | v324 | v326) & 1) == 0 && !v328)
          {
            if (v307)
            {
              [v556 dragWithStartPoint:v314 endPoint:v258 duration:v314 radius:{v258, v308, v260}];
            }

            else
            {
              [v556 tap:v314 radius:{v258, v260}];
            }

            v25 = [(CLIArguments *)v555 consumeUpToIndex:v266];
            goto LABEL_16;
          }

          v336 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 1];
          if (isNumber(v336))
          {
            v337 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 2];
            v338 = isNumber(v337);

            if (v338)
            {
              v339 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 1];
              [v339 floatValue];
              v341 = v340;
              v342 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 2];
              [v342 floatValue];
              v344 = v343;

              v345 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 3];
              v346 = v341;
              v347 = v344;
              v348 = isNumber(v345);

              if (v322)
              {
                v349 = 1.0;
                if (v348)
                {
                  v350 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 3];
                  [v350 floatValue];
                  v349 = v351;
                }

                [v556 dragWithStartPoint:1 endPoint:v314 duration:v315 tapAndWait:v346 lift:v347 radius:{v349, v308, v260}];
              }

              else if (v324)
              {
                if (v348)
                {
                  v397 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 3];
                  [v397 floatValue];
                  v399 = v398;
                }

                else
                {
                  v399 = 0.2;
                }

                [v556 sendFlickWithStartPoint:v314 endPoint:v315 duration:v346 radius:{v344, v399, v260}];
              }

              else if (v326)
              {
                v431 = 1.0;
                if (v348)
                {
                  v432 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 3];
                  [v432 floatValue];
                  v431 = v433;
                }

                [v556 pinchCloseWithStartPoint:v314 endPoint:v315 duration:v346 radius:{v344, v431, v260}];
              }

              else if (v328)
              {
                v451 = 1.0;
                if (v348)
                {
                  v452 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 3];
                  [v452 floatValue];
                  v451 = v453;
                }

                [v556 pinchOpenWithStartPoint:v314 endPoint:v315 duration:v346 radius:{v344, v451, v260}];
              }

              if (v348)
              {
                v248 = v266 + 4;
              }

              else
              {
                v248 = v266 + 3;
              }

              goto LABEL_308;
            }
          }

          else
          {
          }

          v64 = *MEMORY[0x277D85DF8];
          v65 = "Please specify start and end points for the touch.\n";
          goto LABEL_141;
        }

        v317 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 1];
        v318 = isNumber(v317);

        if (v318)
        {
          v319 = [(CLIArguments *)v555 objectAtIndexedSubscript:v266 + 1];
          [v319 floatValue];
          [v556 peekAndPop:v316 & 1 commit:v314 duration:v258 radius:{v320, v260}];
        }

        else
        {
          [v556 peekAndPop:v316 & 1 commit:v314 duration:v258 radius:{1.0, v260}];
        }

        if (v318)
        {
          v248 = v266 + 2;
        }

        else
        {
          v248 = v266 + 1;
        }

LABEL_308:
        v25 = [(CLIArguments *)v555 consumeUpToIndex:v248];
        goto LABEL_16;
      }

LABEL_140:
      v64 = *MEMORY[0x277D85DF8];
      v65 = "Please specify a start point for the tap or touch.\n";
LABEL_141:
      v66 = 51;
      goto LABEL_36;
    }

LABEL_139:

    goto LABEL_140;
  }

  v271 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v272 = [v271 isEqualToString:@"mt"];

  if (v272)
  {
    v32 = [(CLIArguments *)v555 consumeUpToIndex:1];
    v88 = parseMultitouchCommandFromArgumentString(v32, v556);
    goto LABEL_54;
  }

  v294 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v295 = [v294 isEqualToString:@"st"];

  if (v295)
  {
    [v556 setTransducerType:0];
    [v556 setTouchFrequency:240];
    v32 = [(CLIArguments *)v555 consumeUpToIndex:1];
    v88 = parseMultitouchCommandFromArgumentString(v32, v556);
    goto LABEL_54;
  }

  v299 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v300 = [v299 isEqualToString:@"stt"];

  if (v300)
  {
    [v556 stylusBarrelDoubleTap];
    v25 = [(CLIArguments *)v555 consumeUpToIndex:1];
    goto LABEL_16;
  }

  v301 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v302 = [v301 isEqualToString:@"ringer"];

  if (v302)
  {
    v303 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    v304 = isNumber(v303);

    if (v304)
    {
      v305 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      [v556 flipRingerSwitchToValue:{objc_msgSend(v305, "BOOLValue")}];

      v25 = [(CLIArguments *)v555 consumeUpToIndex:2];
      goto LABEL_16;
    }

    v64 = *MEMORY[0x277D85DF8];
    v65 = "Please specify if the ringer should be enabled or disabled (1 or 0).\n";
    v66 = 69;
    goto LABEL_36;
  }

  v329 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v330 = [v329 isEqualToString:@"b"];

  if (v330)
  {
    v331 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
    v332 = isNumber(v331);

    if (v332)
    {
      v333 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      [v333 doubleValue];
      v335 = v334;
    }

    else
    {
      v335 = 0.12;
    }

    v571[0] = @"h";
    v571[1] = @"u";
    v572[0] = &unk_287426A30;
    v572[1] = &unk_287426A48;
    v571[2] = @"vu";
    v571[3] = @"d";
    v572[2] = &unk_287426A48;
    v572[3] = &unk_287426A60;
    v571[4] = @"vd";
    v571[5] = @"w";
    v572[4] = &unk_287426A60;
    v572[5] = &unk_287426A78;
    v571[6] = @"lock";
    v571[7] = @"s";
    v572[6] = &unk_287426A78;
    v572[7] = &unk_287426A90;
    v571[8] = @"c";
    v571[9] = @"l";
    v572[8] = &unk_287426AA8;
    v572[9] = &unk_287426AC0;
    v571[10] = @"r";
    v571[11] = @"p";
    v572[10] = &unk_287426AD8;
    v572[11] = &unk_287426AF0;
    v369 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v572 forKeys:v571 count:12];
    v370 = objc_opt_new();
    v371 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
    v561[0] = MEMORY[0x277D85DD0];
    v561[1] = 3221225472;
    v561[2] = __parseCommandFromCLIArguments_block_invoke;
    v561[3] = &unk_279AF11C0;
    v372 = v371;
    v562 = v372;
    v373 = v370;
    v563 = v373;
    [v369 enumerateKeysAndObjectsUsingBlock:v561];
    if ([v373 count])
    {
      if ([v373 containsObject:&unk_287426AA8])
      {
        v374 = +[RCPEventSenderProperties crownSender];
        [v556 setSenderProperties:v374];
      }

      if (([v373 containsObject:&unk_287426A48] & 1) != 0 || (objc_msgSend(v373, "containsObject:", &unk_287426A60) & 1) != 0 || objc_msgSend(v373, "containsObject:", &unk_287426A78))
      {
        v375 = +[RCPEventSenderProperties phoneButtonSender];
        [v556 setSenderProperties:v375];
      }

      [v556 pressButtons:v373 duration:v335];
      if (v332)
      {
        v376 = 3;
      }

      else
      {
        v376 = 2;
      }

      v26 = [(CLIArguments *)v555 consumeUpToIndex:v376];
    }

    else
    {
      fwrite("Please specify valid hardware buttons to press.\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
      v26 = 0;
    }

    goto LABEL_44;
  }

  v352 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
  v353 = [v352 isEqualToString:@"bx"];

  if (!v353)
  {
    v377 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v378 = [v377 isEqualToString:@"vendor"];

    if (v378)
    {
      v379 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      if (isHexadecimal(v379))
      {
        v380 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v381 = isHexadecimal(v380);

        if (v381)
        {
          goto LABEL_262;
        }
      }

      else
      {
      }

      fwrite("Please specify a usage pair.\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_262:
      LODWORD(v565[0]) = 0;
      LODWORD(v566) = 0;
      v400 = MEMORY[0x277CCAC80];
      v401 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      v402 = [v400 scannerWithString:v401];

      if ([v402 scanHexInt:v565])
      {
        v403 = MEMORY[0x277CCAC80];
        v404 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v405 = [v403 scannerWithString:v404];

        if ([v405 scanHexInt:&v566])
        {
          v406 = objc_alloc(MEMORY[0x277CCABB0]);
          v407 = [v406 initWithInt:LODWORD(v565[0])];
          v408 = objc_alloc(MEMORY[0x277CCABB0]);
          v409 = [v408 initWithInt:v566];
          v410 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
          v411 = isNumber(v410);

          if (v411)
          {
            v412 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
            v413 = isHexadecimal(v412);

            if (v413)
            {
              v414 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
              v415 = RCPDataFromHexString(v414);

              v416 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
              [v556 vendorEventWithPage:v407 withUsage:v409 withVersion:objc_msgSend(v416 withData:{"intValue"), v415}];

              v26 = [(CLIArguments *)v555 consumeUpToIndex:5];
            }

            else
            {
              v496 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
              [v556 vendorEventWithPage:v407 withUsage:v409 withVersion:{objc_msgSend(v496, "intValue")}];

              v26 = [(CLIArguments *)v555 consumeUpToIndex:4];
            }
          }

          else
          {
            fwrite("Please specify a version for the event.\n", 0x28uLL, 1uLL, *MEMORY[0x277D85DF8]);
            v26 = 0;
          }
        }

        else
        {
          fwrite("Please specify a valid usage in hex.\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
          v26 = 0;
        }
      }

      else
      {
        fwrite("Please specify a valid usage page in hex.\n", 0x2AuLL, 1uLL, *MEMORY[0x277D85DF8]);
        v26 = 0;
      }

      goto LABEL_44;
    }

    v382 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v383 = [v382 isEqualToString:@"rc"];

    if (v383)
    {
      v384 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      v385 = isNumber(v384);

      if (!v385)
      {
        v64 = *MEMORY[0x277D85DF8];
        v65 = "Please specify a rotation angle in degrees.\n";
        goto LABEL_102;
      }

      v386 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      [v386 doubleValue];
      v388 = v387;

      v389 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      v217 = v389;
      if (v389 && !isNumber(v389))
      {
        if ([v217 isEqualToString:@"cw"])
        {
          v390 = 0;
          v391 = 3;
        }

        else
        {
          if (([v217 isEqualToString:@"ccw"] & 1) == 0)
          {
            v268 = *MEMORY[0x277D85DF8];
            v269 = "Please specify a valid direction (cw or ccw). If no direction is specified cw is assumed.\n";
            v270 = 90;
            goto LABEL_154;
          }

          v391 = 3;
          v390 = 1;
        }
      }

      else
      {
        v390 = 0;
        v391 = 2;
      }

      v392 = v391;
      v393 = [(CLIArguments *)v555 objectAtIndexedSubscript:v391];
      v394 = v393;
      if (v393)
      {
        if (!isNumber(v393))
        {
          fwrite("Please specify a valid duration in secs.\n", 0x29uLL, 1uLL, *MEMORY[0x277D85DF8]);
          v26 = 0;
          goto LABEL_323;
        }

        [v394 doubleValue];
        v396 = v395;
        v392 = (v392 + 1);
      }

      else
      {
        v396 = 0.3;
      }

      v473 = +[RCPEventSenderProperties crownSender];
      [v556 setSenderProperties:v473];

      [v556 rotateCrown:v390 direction:v388 duration:v396];
      v26 = [(CLIArguments *)v555 consumeUpToIndex:v392];
LABEL_323:

      goto LABEL_179;
    }

    v417 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v418 = [v417 isEqualToString:@"ptset"];

    if (v418)
    {
      v419 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      if (isNumber(v419))
      {
        v420 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v421 = isNumber(v420);

        if (v421)
        {
          v422 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
          [v422 floatValue];
          v424 = v423;
          v425 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
          [v425 floatValue];
          v427 = v426;

          [v556 pointerSetAbsolutePosition:{v424, v427}];
          v25 = [(CLIArguments *)v555 consumeUpToIndex:3];
          goto LABEL_16;
        }

        goto LABEL_298;
      }

      goto LABEL_297;
    }

    v434 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v435 = [v434 isEqualToString:@"ptmove"];

    if (v435)
    {
      v419 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      if (isNumberIncludingNegatives(v419))
      {
        v436 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v437 = isNumberIncludingNegatives(v436);

        if (v437)
        {
          v438 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
          [v438 floatValue];
          v440 = v439;

          v441 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          v442 = [v441 integerValue];

          if (v440 <= 0.0)
          {
            v443 = 1.0;
          }

          else
          {
            v443 = v440;
          }

          if (v442 <= 1)
          {
            v444 = 1;
          }

          else
          {
            v444 = v442;
          }

          v445 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
          [v445 floatValue];
          v447 = v446;
          v448 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
          [v448 floatValue];
          v450 = v449;

          [v556 pointerMoveDelta:v444 duration:v447 frequency:{v450, v443}];
          v25 = [(CLIArguments *)v555 consumeUpToIndex:5];
          goto LABEL_16;
        }

        goto LABEL_298;
      }

LABEL_297:

LABEL_298:
      v64 = *MEMORY[0x277D85DF8];
      v65 = "Please specify a point.\n";
      v66 = 24;
      goto LABEL_36;
    }

    v454 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v455 = [v454 isEqualToString:@"ptscroll"];

    if (v455)
    {
      v456 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      if (isNumberIncludingNegatives(v456))
      {
        v457 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v458 = isNumberIncludingNegatives(v457);

        if (v458)
        {
          v459 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
          [v459 floatValue];
          v461 = v460;

          v462 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          [v462 floatValue];
          v464 = v463;

          if (v461 <= 0.0)
          {
            v465 = 1.0;
          }

          else
          {
            v465 = v461;
          }

          v466 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
          [v466 floatValue];
          v468 = v467;
          v469 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
          v470 = v468;
          [v469 floatValue];
          v472 = v471;

          if (v464 <= 0.0)
          {
            [v556 pointerPhasedScroll:v470 duration:{v472, v465}];
          }

          else
          {
            [v556 pointerPhasedScroll:v464 duration:v470 frequency:{v472, v465}];
          }

LABEL_367:
          v25 = [(CLIArguments *)v555 consumeUpToIndex:5];
          goto LABEL_16;
        }

        goto LABEL_341;
      }

      goto LABEL_340;
    }

    v474 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v475 = [v474 isEqualToString:@"ptflick"];

    if (v475)
    {
      v456 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      if (isNumberIncludingNegatives(v456))
      {
        v476 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v477 = isNumberIncludingNegatives(v476);

        if (v477)
        {
          v478 = [(CLIArguments *)v555 objectAtIndexedSubscript:3];
          [v478 floatValue];
          v480 = v479;

          v481 = [(CLIArguments *)v555 objectAtIndexedSubscript:4];
          [v481 floatValue];
          v483 = v482;

          if (v480 <= 0.0)
          {
            v484 = 0.2;
          }

          else
          {
            v484 = v480;
          }

          v485 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
          [v485 floatValue];
          v487 = v486;
          v488 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
          v489 = v487;
          [v488 floatValue];
          v491 = v490;

          v492 = *MEMORY[0x277CBF348] == v489;
          v493 = *(MEMORY[0x277CBF348] + 8) == v491;
          v494 = 0.0;
          if (!v492 || !v493)
          {
            v494 = v489;
          }

          v495 = 200.0;
          if (!v492 || !v493)
          {
            v495 = v491;
          }

          if (v483 <= 0.0)
          {
            [v556 pointerPhasedFlick:v494 duration:{v495, v484}];
          }

          else
          {
            [v556 pointerPhasedFlick:v483 duration:v494 frequency:{v495, v484}];
          }

          goto LABEL_367;
        }

LABEL_341:
        v64 = *MEMORY[0x277D85DF8];
        v65 = "Please specify a delta point.\n";
        v66 = 30;
        goto LABEL_36;
      }

LABEL_340:

      goto LABEL_341;
    }

    v497 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v498 = [v497 isEqualToString:@"ptbutton"];

    if (v498)
    {
      v499 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
      v500 = isNumber(v499);

      if (v500)
      {
        v501 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v502 = [v501 isEqualToString:@"u"];

        v503 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
        v504 = [v503 isEqualToString:@"d"];

        if ((v502 | v504))
        {
          v505 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
          v506 = [v505 integerValue];

          if (v504)
          {
            [v556 pointerBeginPressingButton:v506];
          }

          else
          {
            [v556 pointerEndPressingButton:v506];
          }

LABEL_373:
          v25 = [(CLIArguments *)v555 consumeUpToIndex:3];
          goto LABEL_16;
        }

        v64 = *MEMORY[0x277D85DF8];
        v65 = "Please specify u/d for up/down.\n";
      }

      else
      {
        v64 = *MEMORY[0x277D85DF8];
        v65 = "Please specify a button number.\n";
      }

      v66 = 32;
      goto LABEL_36;
    }

    v507 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
    v508 = [v507 isEqualToString:@"ptgesture"];

    if (!v508)
    {
      v537 = *MEMORY[0x277D85DF8];
      v538 = [(CLIArguments *)v555 objectAtIndexedSubscript:0];
      fprintf(v537, "Unrecognized command: %s\nExamples: recap -c t 100 100 or recap -c t 100 150 f 100 250 0.25 or recap -c b hw\n", [v538 UTF8String]);

      goto LABEL_37;
    }

    v217 = [MEMORY[0x277CBEB58] set];
    v509 = 1;
    while (1)
    {
      v510 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509];
      v511 = [v510 isEqualToString:@"rotation"];

      if (v511)
      {
        break;
      }

      v518 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509];
      v519 = [v518 isEqualToString:@"translation"];

      if (!v519)
      {
        v530 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509];
        v531 = [v530 isEqualToString:@"scale"];

        if (!v531)
        {
          if ([v217 count])
          {
            v539 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509];
            v540 = isNumber(v539);

            if (v540)
            {
              v541 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509];
              [v541 floatValue];
              v543 = v542;

              v544 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
              v545 = v543;
              v546 = isNumber(v544);

              if (v546)
              {
                v547 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
                v548 = [v547 integerValue];

                v509 += 2;
                v549 = v548;
              }

              else
              {
                v549 = 1;
                ++v509;
              }
            }

            else
            {
              v545 = 1.0;
              v549 = 1;
            }

            [v556 pointerDiscreteGesture:v217 duration:v549 frequency:v545];
            v298 = [(CLIArguments *)v555 consumeUpToIndex:v509];
            goto LABEL_178;
          }

          v268 = *MEMORY[0x277D85DF8];
          v269 = "Please specify a gesture.\n";
          v270 = 26;
LABEL_154:
          fwrite(v269, v270, 1uLL, v268);
          v26 = 0;
LABEL_179:

          goto LABEL_44;
        }

        v532 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
        v533 = isNumberIncludingNegatives(v532);

        if (!v533)
        {
          v268 = *MEMORY[0x277D85DF8];
          v269 = "Please specify a scale value.\n";
          v270 = 30;
          goto LABEL_154;
        }

        v534 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
        [v534 floatValue];
        v536 = v535;

        v517 = [RCPDiscreteGestureSpec scaleZ:v536];
        goto LABEL_362;
      }

      v520 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
      if (!isNumberIncludingNegatives(v520))
      {

LABEL_375:
        v268 = *MEMORY[0x277D85DF8];
        v269 = "Please specify translation values.\n";
        v270 = 35;
        goto LABEL_154;
      }

      v521 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
      v522 = isNumberIncludingNegatives(v521);

      if (!v522)
      {
        goto LABEL_375;
      }

      v523 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
      [v523 floatValue];
      v525 = v524;

      v526 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 2];
      [v526 floatValue];
      v528 = v527;

      v529 = [RCPDiscreteGestureSpec translation:v525, v528];
      v509 += 3;
LABEL_363:
      [v217 addObject:v529];
    }

    v512 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
    v513 = isNumberIncludingNegatives(v512);

    if (!v513)
    {
      v268 = *MEMORY[0x277D85DF8];
      v269 = "Please specify a rotation value.\n";
      v270 = 33;
      goto LABEL_154;
    }

    v514 = [(CLIArguments *)v555 objectAtIndexedSubscript:v509 + 1];
    [v514 floatValue];
    v516 = v515;

    v517 = [RCPDiscreteGestureSpec rotationZ:v516];
LABEL_362:
    v529 = v517;
    v509 += 2;
    goto LABEL_363;
  }

  v550 = [(CLIArguments *)v555 objectAtIndexedSubscript:1];
  v354 = objc_opt_new();
  v355 = objc_opt_new();
  [v550 componentsSeparatedByString:@"/"];
  v559 = 0u;
  v560 = 0u;
  v557 = 0u;
  obja = v558 = 0u;
  v356 = [obja countByEnumeratingWithState:&v557 objects:v570 count:16];
  if (!v356)
  {
    goto LABEL_225;
  }

  v357 = *v558;
  while (2)
  {
    for (j = 0; j != v356; ++j)
    {
      if (*v558 != v357)
      {
        objc_enumerationMutation(obja);
      }

      v359 = *(*(&v557 + 1) + 8 * j);
      LODWORD(v565[0]) = 0;
      LODWORD(v566) = 0;
      v360 = [MEMORY[0x277CCAC80] scannerWithString:v359];
      if (([v360 scanHexInt:v565] & 1) == 0)
      {
        v428 = *MEMORY[0x277D85DF8];
        v429 = "Please specify a valid usage page in hex.\n";
        v430 = 42;
LABEL_275:
        fwrite(v429, v430, 1uLL, v428);

        goto LABEL_276;
      }

      if (([v360 scanString:@" intoString:{", 0}] & 1) == 0)
      {
        v428 = *MEMORY[0x277D85DF8];
        v429 = "Missing comma separator.\n";
        v430 = 25;
        goto LABEL_275;
      }

      if (([v360 scanHexInt:&v566] & 1) == 0)
      {
        v428 = *MEMORY[0x277D85DF8];
        v429 = "Please specify a valid usage in hex.\n";
        v430 = 37;
        goto LABEL_275;
      }

      v361 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v565[0])];
      [v354 addObject:v361];

      v362 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v566];
      [v355 addObject:v362];
    }

    v356 = [obja countByEnumeratingWithState:&v557 objects:v570 count:16];
    if (v356)
    {
      continue;
    }

    break;
  }

LABEL_225:

  if ([v354 count])
  {
    v363 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
    v364 = isNumber(v363);

    if (v364)
    {
      v365 = [(CLIArguments *)v555 objectAtIndexedSubscript:2];
      [v365 doubleValue];
      v367 = v366;

      v368 = 3;
    }

    else
    {
      v368 = 2;
      v367 = 0.12;
    }

    [v556 pressButtonsWithPages:v354 usages:v355 duration:v367];
    v26 = [(CLIArguments *)v555 consumeUpToIndex:v368];
  }

  else
  {
    fwrite("Please specify one or more usage pairs.\n", 0x28uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_276:
    v26 = 0;
  }

LABEL_44:

  return v26;
}

BOOL isNumber(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"0123456789."];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = [v4 length] == 0;
  return v5;
}

BOOL isNegativeNumber(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasPrefix:@"-"])
  {
    v3 = [v2 substringFromIndex:1];
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789."];
    v5 = [v3 stringByTrimmingCharactersInSet:v4];
    v6 = [v5 length] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL isNumberIncludingNegatives(void *a1)
{
  v1 = a1;
  v2 = isNegativeNumber(v1) || isNumber(v1);

  return v2;
}

id parseMultitouchCommandFromArgumentString(void *a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v72 = 0;
  v71 = 0;
  memset(v78, 0, sizeof(v78));
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __parseMultitouchCommandFromArgumentString_block_invoke;
  v69[3] = &unk_279AF1200;
  v63 = v4;
  v70 = v63;
  v5 = MEMORY[0x266715C00](v69);
  if (![v3 count])
  {
    v11 = 0;
    v12 = 0;
LABEL_53:
    [v63 advanceTime:{1.0 / objc_msgSend(v63, "touchFrequency")}];
    [v63 liftUpAtAllActivePoints];
    v53 = v3;
    if ([v53 count] <= v12)
    {
      v54 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v54 = [v53 subarrayWithRange:{v12, objc_msgSend(v53, "count") - v12}];
    }

    v3 = v54;
    v52 = v3;
    goto LABEL_57;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v60 = 0;
  v56 = v5 + 2;
  v10 = 0.2;
  v57 = v5;
  v58 = v3;
  while (1)
  {
    v11 = [v3 objectAtIndexedSubscript:{v7, v56}];

    v12 = v7 + 1;
    if (!v11 || ![v11 length])
    {
LABEL_49:
      if ((v9 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    if ([v11 characterAtIndex:0] == 91)
    {
      break;
    }

    if (!isNumber(v11))
    {
      v12 = v7;
      if ((v9 & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_50:
      (v5)[2](v5, v8, v78, v76, v74, v10);
      goto LABEL_53;
    }

    [v11 floatValue];
    v10 = v17;
LABEL_48:
    v6 = v11;
    v7 = v12;
    if (v12 >= [v3 count])
    {
      goto LABEL_49;
    }
  }

  v61 = v7 + 1;
  if (v9)
  {
    (v5)[2](v5, v8, v78, v76, v74, v10);
  }

  v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v14 = [v11 stringByTrimmingCharactersInSet:v13];
  v15 = [v14 isEqualToString:@"[]"];

  if (v15)
  {
    v16 = 0;
LABEL_20:
    v59 = v11;
    v62 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v26 = v16;
    v27 = [v26 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v27)
    {
      v28 = v27;
      v8 = 0;
      v29 = 0;
      v30 = *v66;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v66 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v65 + 1) + 8 * i);
          v33 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v34 = [v32 stringByTrimmingCharactersInSet:v33];
          v35 = [v34 componentsSeparatedByString:@" "];

          if ([v35 count] <= 1 && *(&v71 + v29) == 1)
          {
            v36 = [MEMORY[0x277CCABB0] numberWithInteger:v29];
            [v62 addObject:v36];

            *(&v71 + v29) = 0;
          }

          else
          {
            v64 = 0uLL;
            v37 = [v35 objectAtIndexedSubscript:0];
            [v37 floatValue];
            v39 = v38;
            v40 = [v35 objectAtIndexedSubscript:1];
            [v40 floatValue];
            *&v64 = v39;
            *(&v64 + 1) = v41;

            if ([v35 count] <= 2)
            {
              [v63 defaultPressure];
              v44 = v45;
            }

            else
            {
              v42 = [v35 objectAtIndexedSubscript:2];
              [v42 floatValue];
              v44 = v43;
            }

            if ([v35 count] == 4)
            {
              v46 = [v35 objectAtIndexedSubscript:3];
              [v46 floatValue];
              v48 = v47;
            }

            else
            {
              [v63 defaultRadius];
              v48 = v49;
            }

            if ((*(&v71 + v29) & 1) == 0)
            {
              [v63 touchDownAtPoints:&v64 touchCount:1 pressure:v44 radius:v48];
              *(&v71 + v29) = 1;
            }

            v78[v8] = v64;
            *(v76 + v8) = v44;
            *(v74 + v8++) = v48;
          }

          ++v29;
        }

        v28 = [v26 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v28);
    }

    else
    {
      v8 = 0;
      v29 = 0;
    }

    v50 = v29;
    v11 = v59;
    v5 = v57;
    v3 = v58;
    if (v29 < v60)
    {
      do
      {
        if (*(&v71 + v50) == 1)
        {
          v51 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
          [v62 addObject:v51];

          *(&v71 + v50) = 0;
        }

        ++v50;
      }

      while (v60 != v50);
    }

    if ([v62 count])
    {
      [v63 liftUpActivePointsByIndex:v62];
    }

    v9 = 1;
    v10 = 0.2;
    v60 = v29;
    v12 = v61;
    goto LABEL_48;
  }

  v18 = MEMORY[0x277CBEB18];
  v19 = [v11 substringFromIndex:1];
  v20 = [v18 arrayWithObject:v19];

  if (v61 < [v3 count])
  {
    v21 = v7 + 2;
    do
    {
      v22 = v11;
      v11 = [v3 objectAtIndexedSubscript:v21 - 1];

      if (!v11)
      {
        break;
      }

      if ([v11 characterAtIndex:{objc_msgSend(v11, "length") - 1}] == 93)
      {
        v61 = v21;
        v24 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];
        [v20 addObject:v24];

        v25 = [v20 componentsJoinedByString:@" "];
        v16 = [v25 componentsSeparatedByString:{@", "}];

        goto LABEL_20;
      }

      [v20 addObject:v11];
    }

    while (v21++ < [v3 count]);
  }

  v52 = 0;
LABEL_57:

  return v52;
}

void __parseCommandFromCLIArguments_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) rangeOfString:a2] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addObject:v5];
  }
}

BOOL isHexadecimal(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"0123456789ABCDEF"];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = [v4 length] == 0;
  return v5;
}

void __propertiesForSenderString_block_invoke()
{
  v14[11] = *MEMORY[0x277D85DE8];
  v13[0] = @"mouse";
  v12 = [MEMORY[0x277CCAE60] valueWithPointer:sel_mouseSender];
  v14[0] = v12;
  v13[1] = @"trackpad";
  v0 = [MEMORY[0x277CCAE60] valueWithPointer:sel_trackpadSender];
  v14[1] = v0;
  v13[2] = @"pencil";
  v1 = [MEMORY[0x277CCAE60] valueWithPointer:sel_pencilDigitizerSender];
  v14[2] = v1;
  v13[3] = @"touchscreen";
  v2 = [MEMORY[0x277CCAE60] valueWithPointer:sel_touchScreenDigitizerSender];
  v14[3] = v2;
  v13[4] = @"gamepad";
  v3 = [MEMORY[0x277CCAE60] valueWithPointer:sel_gamepadSender];
  v14[4] = v3;
  v13[5] = @"keyboard";
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:sel_keyboardSender];
  v14[5] = v4;
  v13[6] = @"tvremote";
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:sel_tvRemoteSender];
  v14[6] = v5;
  v13[7] = @"naturalinput";
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:sel_naturalInputCollectionSender];
  v14[7] = v6;
  v13[8] = @"globalposition";
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:sel_globalPositionSender];
  v14[8] = v7;
  v13[9] = @"crown";
  v8 = [MEMORY[0x277CCAE60] valueWithPointer:sel_crownSender];
  v14[9] = v8;
  v13[10] = @"phone";
  v9 = [MEMORY[0x277CCAE60] valueWithPointer:sel_phoneButtonSender];
  v14[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:11];
  v11 = propertiesForSenderString_propertyMap;
  propertiesForSenderString_propertyMap = v10;
}

Class __getTypistHWKeyboardClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!TypistFrameworkLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __TypistFrameworkLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279AF11E0;
    v6 = 0;
    TypistFrameworkLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TypistFrameworkLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("TypistHWKeyboard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTypistHWKeyboardClass_block_invoke_cold_1();
  }

  getTypistHWKeyboardClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TypistFrameworkLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TypistFrameworkLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __parseMultitouchCommandFromArgumentString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double a6)
{
  v6 = *(a1 + 32);
  if (a2 < 1)
  {
    return [v6 advanceTime:a6];
  }

  else
  {
    return [v6 moveToPoints:a3 touchCount:a2 pressure:*a4 duration:a6 radius:*a5];
  }
}

uint64_t OUTLINED_FUNCTION_3()
{

  return [v0 _delayBetweenMove:v1 elapsedTime:v3];
}

uint64_t RCPSetNonDecayingThreadPriority(int a1)
{
  v9 = 0;
  v8 = 0;
  v2 = pthread_self();
  pthread_getschedparam(v2, &v8, &v9);
  if (v9.sched_priority < a1)
  {
    v9.sched_priority = a1;
  }

  v3 = pthread_setschedparam(v2, v8, &v9);
  v7 = 0;
  v4 = MEMORY[0x2667159A0](v3);
  thread_policy_set(v4, 1u, &v7, 1u);
  result = proc_setthread_cpupercent();
  if (result)
  {
    v7 = 1;
    v6 = MEMORY[0x2667159A0](result);
    return thread_policy_set(v6, 1u, &v7, 1u);
  }

  return result;
}

void sub_2619FCF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double DKDCenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x2821114D0](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}