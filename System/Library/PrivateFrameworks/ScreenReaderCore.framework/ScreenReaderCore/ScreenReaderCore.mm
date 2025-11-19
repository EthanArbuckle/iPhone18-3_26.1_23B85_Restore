void SCRCArgumentParserRunWithClassName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x266744610](0);
  v7 = [objc_alloc(NSClassFromString(objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{a3))), "initWithArgc:argv:", a1, a2}];
  v8 = _Parser;
  _Parser = v7;

  if ([_Parser parse])
  {
    MEMORY[0x266744600](v6);
    v9 = _mainProc();
    v10 = _Parser;
    _Parser = 0;

    exit(v9);
  }

  v11 = _Parser;
  _Parser = 0;

  MEMORY[0x266744600](v6);
  exit(1);
}

uint64_t _mainProc()
{
  v0 = MEMORY[0x266744610](0);
  MEMORY[0x266744600](v0);
  v1 = MEMORY[0x266744610](0);
  v2 = [_Parser run];
  MEMORY[0x266744600](v1);
  return v2;
}

void SCRCEnableProcessKeepAlive()
{
  if (vproc_swap_integer())
  {
    NSLog(&cfstr_VoiceoverCould.isa);
  }
}

void _consoleUserChanged()
{
  v0 = [_Parser appName];
  v1 = [v0 UTF8String];
  v2 = getpid();
  syslog(3, "%s[%d]: Stopping because login happened\n", v1, v2);

  *&msg.msgh_bits = xmmword_2648FDC10;
  *&msg.msgh_voucher_port = 0x100000000;
  if (mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0) == 268435460)
  {
    mach_msg_destroy(&msg);
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *SCRCFileHandleForTempFile(void *a1)
{
  v1 = _GetTempFile(a1, 1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

id _GetTempFile(void *a1, int a2)
{
  v3 = a1;
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  v6 = [v5 stringByAppendingString:@"XXXXXX"];

  v7 = [v6 length];
  v8 = 2 * v7;
  v9 = malloc_type_malloc(2 * v7, 0x100004077774924uLL);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  if ([v6 getFileSystemRepresentation:v9 maxLength:v8])
  {
    goto LABEL_8;
  }

  free(v10);
  v11 = v8 >= 0x200 ? 4 * v7 : 1024;
  v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (!v12)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_17;
  }

  v10 = v12;
  [v6 getFileSystemRepresentation:v12 maxLength:v11];
LABEL_8:
  v13 = 15;
  while (1)
  {
    v14 = mkstemp(v10);
    if (v14 != -1)
    {
      break;
    }

    if (!--v13)
    {
      v15 = 0;
      goto LABEL_16;
    }
  }

  v16 = v14;
  if (a2)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v14 closeOnDealloc:1];
  }

  else
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [v17 stringWithFileSystemRepresentation:v10 length:strlen(v10)];
    close(v16);
  }

LABEL_16:
  free(v10);
LABEL_17:

  return v15;
}

void *SCRCPathForTempFile(void *a1)
{
  v1 = _GetTempFile(a1, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

UInt8 *SCRCCopyStringToUChar32Array(const __CFString *a1, unint64_t *a2)
{
  *a2 = 0;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  v6 = 4 * Length;
  v7 = malloc_type_malloc(4 * Length + 4, 0xEB1400AEuLL);
  usedBufLen = 0;
  if (v7)
  {
    v8 = SCRCUTF32Encoding();
    v12.location = 0;
    v12.length = v5;
    CFStringGetBytes(a1, v12, v8, 0, 0, v7, v6 + 4, &usedBufLen);
    v9 = usedBufLen >> 2;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return v7;
}

__CFString *_CopyUnicodeDescriptionStringForCharacter(UChar32 a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  if (u_charName(a1, U_EXTENDED_CHAR_NAME, buffer, 500, &v8) < 1 || v8 != 0)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], buffer, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v11.location = 0;
  v11.length = 1;
  if (CFStringCompareWithOptions(v3, @"<", v11, 0))
  {
    MutableCopy = CFStringCreateMutableCopy(v2, 0, v4);
    System = CFLocaleGetSystem();
    CFStringLowercase(MutableCopy, System);
  }

  else
  {
    MutableCopy = 0;
  }

  CFRelease(v4);
  return MutableCopy;
}

UInt8 *SCRCCopyStringToUniCharArray(const __CFString *a1, unint64_t *a2)
{
  *a2 = 0;
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  v6 = (4 * Length) | 2;
  v7 = malloc_type_malloc(v6, 0x8F8C16F9uLL);
  usedBufLen = 0;
  if (v7)
  {
    v8 = SCRCUTF16Encoding();
    v12.location = 0;
    v12.length = v5;
    CFStringGetBytes(a1, v12, v8, 0, 0, v7, v6, &usedBufLen);
    v9 = usedBufLen >> 1;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return v7;
}

id SCRCDeepMutableCopyClasses()
{
  v0 = _SCRCDeepMutableCopyClassesSet;
  if (!_SCRCDeepMutableCopyClassesSet)
  {
    v1 = objc_alloc(MEMORY[0x277CBEB98]);
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = [v1 initWithObjects:{v2, v3, objc_opt_class(), 0}];
    v5 = _SCRCDeepMutableCopyClassesSet;
    _SCRCDeepMutableCopyClassesSet = v4;

    v0 = _SCRCDeepMutableCopyClassesSet;
  }

  return v0;
}

void sub_2648DD448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SCRCLogInitializeWithKeys(void *a1)
{
  _SCRCSetLogKeyArray(a1);

  return _SCRCLogInitializeCommonMasks();
}

void SCRCDebugPrint(void *a1)
{
  v1 = a1;
  if (SCRCLogVoiceOver_onceToken != -1)
  {
    SCRCDebugPrint_cold_1();
  }

  v2 = SCRCLogVoiceOver_Log;
  if (os_log_type_enabled(SCRCLogVoiceOver_Log, OS_LOG_TYPE_DEBUG))
  {
    SCRCDebugPrint_cold_2(v1, v2);
  }
}

void SCRCDebugPrintToFile(void *a1, void *a2)
{
  v12 = a2;
  v3 = [a1 stringByExpandingTildeInPath];
  v4 = [v3 UTF8String];

  v5 = fopen(v4, "at");
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = fopen(v4, "wt");
    v7 = v12;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v9 setDateFormat:@"MM/dd/yy HH:mm:ss.SSS"];
  v10 = [v9 stringFromDate:v8];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[ %@ ] %@", v10, v12];
  fprintf(v6, "%s\n", [v11 UTF8String]);
  fclose(v6);

  v7 = v12;
LABEL_5:
}

uint64_t SCRCAddInformationToCrashTracerLog(void *a1)
{
  result = [a1 UTF8String];
  qword_27FF851D0 = result;
  return result;
}

uint64_t __SCRCLogVoiceOver_block_invoke()
{
  SCRCLogVoiceOver_Log = os_log_create("com.apple.accessibility", "VoiceOver");

  return MEMORY[0x2821F96F8]();
}

uint64_t _SCRCSetLogKeyArray(void *a1)
{
  _SCRCLogKeyArray = [a1 copy];

  return MEMORY[0x2821F96F8]();
}

uint64_t SCRCLogMaskForKey(void *a1)
{
  v1 = a1;
  if ([_SCRCLogKeyArray containsObject:v1])
  {
    v2 = 1;
  }

  else if ([v1 hasPrefix:@"SCRCLogMask"])
  {
    v3 = [v1 substringFromIndex:11];
    v2 = [_SCRCLogKeyArray containsObject:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _SCRCLogInitializeCommonMasks()
{
  result = [_SCRCLogKeyArray count];
  if (result)
  {
    SCRCLogMaskAppleScript = SCRCLogMaskForKey(@"SCRCLogMaskAppleScript");
    SCRCLogMaskBraille = SCRCLogMaskForKey(@"SCRCLogMaskBraille");
    SCRCLogMaskBrailleAnnounce = SCRCLogMaskForKey(@"SCRCLogMaskBrailleAnnounce");
    SCRCLogMaskBrailleVariant = SCRCLogMaskForKey(@"SCRCLogMaskBrailleVariant");
    SCRCLogMaskBusySignal = SCRCLogMaskForKey(@"SCRCLogMaskBusySignal");
    SCRCLogMaskConfiguration = SCRCLogMaskForKey(@"SCRCLogMaskConfiguration");
    SCRCLogMaskElement = SCRCLogMaskForKey(@"SCRCLogMaskElement");
    SCRCLogMaskElementHistory = SCRCLogMaskForKey(@"SCRCLogMaskElementHistory");
    SCRCLogMaskElementRestoration = SCRCLogMaskForKey(@"SCRCLogMaskElementRestoration");
    SCRCLogMaskError = SCRCLogMaskForKey(@"SCRCLogMaskError");
    SCRCLogMaskEvent = SCRCLogMaskForKey(@"SCRCLogMaskEvent");
    SCRCLogMaskFindText = SCRCLogMaskForKey(@"SCRCLogMaskFindText");
    SCRCLogMaskGuide = SCRCLogMaskForKey(@"SCRCLogMaskGuide");
    SCRCLogMaskHotSpot = SCRCLogMaskForKey(@"SCRCLogMaskHotSpot");
    SCRCLogMaskInvalidElements = SCRCLogMaskForKey(@"SCRCLogMaskInvalidElements");
    SCRCLogMaskKeyboard = SCRCLogMaskForKey(@"SCRCLogMaskKeyboard");
    SCRCLogMaskKeyboardFocus = SCRCLogMaskForKey(@"SCRCLogMaskKeyboardFocus");
    SCRCLogMaskKeyEcho = SCRCLogMaskForKey(@"SCRCLogMaskKeyEcho");
    SCRCLogMaskKeyNames = SCRCLogMaskForKey(@"SCRCLogMaskKeyNames");
    SCRCLogMaskLocalization = SCRCLogMaskForKey(@"SCRCLogMaskLocalization");
    SCRCLogMaskMenu = SCRCLogMaskForKey(@"SCRCLogMaskMenu");
    SCRCLogMaskObserverDispatches = SCRCLogMaskForKey(@"SCRCLogMaskObserverDispatches");
    SCRCLogMaskObserverRegistrations = SCRCLogMaskForKey(@"SCRCLogMaskObserverRegistrations");
    SCRCLogMaskOutput = SCRCLogMaskForKey(@"SCRCLogMaskOutput");
    SCRCLogMaskOutputCompact = SCRCLogMaskForKey(@"SCRCLogMaskOutputCompact");
    SCRCLogMaskOutputCompactWithBraille = SCRCLogMaskForKey(@"SCRCLogMaskOutputCompactWithBraille");
    SCRCLogMaskOutputRequest = SCRCLogMaskForKey(@"SCRCLogMaskOutputRequest");
    SCRCLogMaskSpeechArbitration = SCRCLogMaskForKey(@"SCRCLogMaskSpeechArbitration");
    SCRCLogMaskSpeechMessages = SCRCLogMaskForKey(@"SCRCLogMaskSpeechMessages");
    SCRCLogMaskSpeechSynthesisDaemonStatus = SCRCLogMaskForKey(@"SCRCLogMaskSpeechSynthesisDaemonStatus");
    SCRCLogMaskTextAttributesManager = SCRCLogMaskForKey(@"SCRCLogMaskTextAttributesManager");
    SCRCLogMaskTextDisplay = SCRCLogMaskForKey(@"SCRCLogMaskTextDisplay");
    SCRCLogMaskThread = SCRCLogMaskForKey(@"SCRCLogMaskThread");
    SCRCLogMaskUIElement = SCRCLogMaskForKey(@"SCRCLogMaskUIElement");
    SCRCLogMaskUIElementErrors = SCRCLogMaskForKey(@"SCRCLogMaskUIElementErrors");
    SCRCLogMaskUserDefaults = SCRCLogMaskForKey(@"SCRCLogMaskUserDefaults");
    SCRCLogMaskUserDefaultsSynching = SCRCLogMaskForKey(@"SCRCLogMaskUserDefaultsSynching");
    SCRCLogMaskVoiceOverCursor = SCRCLogMaskForKey(@"SCRCLogMaskVoiceOverCursor");
    SCRCLogMaskWebGroups = SCRCLogMaskForKey(@"SCRCLogMaskWebGroups");
    SCRCLogMaskWebText = SCRCLogMaskForKey(@"SCRCLogMaskWebText");
    SCRCLogMaskWindow = SCRCLogMaskForKey(@"SCRCLogMaskWindow");
    result = SCRCLogMaskForKey(@"SCRCLogMaskWorkspace");
    SCRCLogMaskWorkspace = result;
  }

  return result;
}

uint64_t _SCRCMathUpdateAverage(uint64_t result, unsigned int a2, uint64_t a3, double a4)
{
  *(result + 432) = a4;
  v4 = *(result + 416) + a4;
  *(result + 416) = v4;
  v5 = *result + 1;
  *result = v5;
  if (a2 >= 0x32)
  {
    v6 = 50;
  }

  else
  {
    v6 = a2;
  }

  v7 = *(result + 408);
  if (v5 > v6)
  {
    *(result + 416) = v4 - *(result + 8 * v7 + 8);
    *result = v6;
    v5 = v6;
  }

  *(result + 8 * v7 + 8) = a4;
  if (v7 + 1 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 + 1;
  }

  *(result + 408) = v8;
  if (a3 == 1)
  {
    if (v8 >= 2)
    {
      a4 = ((a4 + 360.0 + vcvtd_n_f64_s32((*(result + 424) - a4 + 180.0 + 360.0) % 360 - 180, 1uLL)) % 360);
    }
  }

  else
  {
    if (a3)
    {
      return result;
    }

    a4 = *(result + 416) / v5;
  }

  *(result + 424) = a4;
  return result;
}

double SCRCMathClearAverage(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void SCRCMathGetVectorAndDistanceForPoints(double *a1, long double *a2, double a3, double a4, double a5, double a6)
{
  v9 = a3 - a5;
  v10 = vabdd_f64(a3, a5);
  v11 = vabdd_f64(a4, a6);
  *a2 = hypot(v10, v11);
  if (v9 == 0.0)
  {
    v12 = 90.0;
  }

  else
  {
    v12 = atan(v11 / v10) * 57.2957795;
  }

  v13 = a4 - a6;
  if (v9 >= 0.0)
  {
    if (v13 >= 0.0)
    {
      goto LABEL_11;
    }

    v12 = 90.0 - v12;
    v14 = 270.0;
  }

  else if (v13 <= 0.0)
  {
    v14 = 180.0;
  }

  else
  {
    v14 = 90.0;
    v12 = 90.0 - v12;
  }

  v12 = v12 + v14;
LABEL_11:
  v15 = *a1;
  v16 = v12 + floor(*a1 / 360.0) * 360.0;
  *a1 = v16;
  if (v12 <= 270.0)
  {
    if (v12 >= 90.0)
    {
      return;
    }

    if (v15 <= 180.0 || v15 >= 360.0)
    {
      if (v15 > 0.0)
      {
        return;
      }
    }

    else
    {
      v12 = v16 + 360.0;
    }

    goto LABEL_21;
  }

  if (v15 > 0.0 && v15 < 180.0)
  {
    v12 = v12 + -360.0;
LABEL_21:
    *a1 = v12;
    return;
  }

  if (v15 > 360.0 || v15 == 0.0)
  {
    goto LABEL_21;
  }
}

uint64_t SCRCIsConsoleSessionEnabled()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v0 = getCGSSessionCopyCurrentSessionPropertiesSymbolLoc_ptr;
  v12 = getCGSSessionCopyCurrentSessionPropertiesSymbolLoc_ptr;
  if (!getCGSSessionCopyCurrentSessionPropertiesSymbolLoc_ptr)
  {
    v1 = CoreGraphicsLibrary();
    v10[3] = dlsym(v1, "CGSSessionCopyCurrentSessionProperties");
    getCGSSessionCopyCurrentSessionPropertiesSymbolLoc_ptr = v10[3];
    v0 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v0)
  {
    SCRCIsConsoleSessionEnabled_cold_2();
  }

  v2 = v0();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getkCGSSessionOnConsoleKeySymbolLoc_ptr;
  v12 = getkCGSSessionOnConsoleKeySymbolLoc_ptr;
  if (!getkCGSSessionOnConsoleKeySymbolLoc_ptr)
  {
    v5 = CoreGraphicsLibrary();
    v10[3] = dlsym(v5, "kCGSSessionOnConsoleKey");
    getkCGSSessionOnConsoleKeySymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    SCRCIsConsoleSessionEnabled_cold_1();
  }

  Value = CFDictionaryGetValue(v3, *v4);
  if (Value)
  {
    v7 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v7 = 1;
  }

  CFRelease(v3);
  return v7;
}

void sub_2648ECCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCGSSessionCopyCurrentSessionPropertiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGSSessionCopyCurrentSessionProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGSSessionCopyCurrentSessionPropertiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreGraphicsLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreGraphicsLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279B71690;
    v4 = 0;
    CoreGraphicsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreGraphicsLibraryCore_frameworkLibrary;
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    CoreGraphicsLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreGraphicsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreGraphicsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCGSSessionOnConsoleKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "kCGSSessionOnConsoleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCGSSessionOnConsoleKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id SCRCStringForVariableArray(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v5 length])
        {
          [v5 appendString:v3];
        }

        [v5 appendString:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

id SCRCAttributedStringForVariables(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  v12 = a3;
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_287632E30];
  if ([v12 length])
  {
    [v13 appendAttributedString:v12];
  }

  objc_opt_class();
  v19 = &a9;
  if (a1 >= 2)
  {
    v14 = a1 - 1;
    do
    {
      v15 = v19++;
      v16 = *v15;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 length])
      {
        if ([v13 length])
        {
          v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11];
          [v13 appendAttributedString:v17];
        }

        [v13 appendAttributedString:v16];
      }

      --v14;
    }

    while (v14);
  }

  return v13;
}

id SCRCStringForVariables(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  v12 = a3;
  v13 = [MEMORY[0x277CCAB68] string];
  if ([v12 length])
  {
    [v13 appendString:v12];
  }

  objc_opt_class();
  v18 = &a9;
  if (a1 >= 2)
  {
    v14 = a1 - 1;
    do
    {
      v15 = v18++;
      v16 = *v15;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 length])
      {
        if ([v13 length])
        {
          [v13 appendString:v11];
        }

        [v13 appendString:v16];
      }

      --v14;
    }

    while (v14);
  }

  return v13;
}

CFIndex _findMatchingParen(CFStringRef theString, uint64_t a2, CFIndex idx, CFIndex a4)
{
  if (idx < a4)
  {
    v5 = idx;
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v5);
      if (CharacterAtIndex == 41)
      {
        break;
      }

      if (CharacterAtIndex == 40)
      {
        v9 = 1;
LABEL_10:
        a2 += v9;
      }

      if (++v5 >= a4)
      {
        return -1;
      }
    }

    if (a2 == 1)
    {
      return v5;
    }

    v9 = -1;
    goto LABEL_10;
  }

  return -1;
}

void sub_2648EF2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2648EF570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SCRCFormattedString(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v11 = a2;
  v18[1] = &a9;
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v18[0] = 0;
  v14 = [v12 initWithValidatedFormat:v10 validFormatSpecifiers:v11 locale:v13 arguments:&a9 error:v18];
  v15 = v18[0];

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      SCRCFormattedString_cold_1(v15, v10, v11);
    }

    v16 = &stru_287632E30;
  }

  else
  {
    v16 = v14;
  }

  return v16;
}

void _handlerMainThread(uint64_t a1, void *a2)
{
  MEMORY[0x266744610](0);
  [a2 _dispatchMainThread];

  JUMPOUT(0x266744600);
}

void *_timerRetain(void *cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  [cf _createdTimer];
  return cf;
}

void _timerRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _handlerSCRCThread(uint64_t a1, void *a2)
{
  MEMORY[0x266744610](0);
  [a2 _dispatchSCRCThread];

  JUMPOUT(0x266744600);
}

void _handler(uint64_t a1, void *a2)
{
  MEMORY[0x266744610](0);
  [a2 _dispatch];

  JUMPOUT(0x266744600);
}

void _handler_0(void *a1)
{
  MEMORY[0x266744610](0);
  [a1 _processQueue];

  JUMPOUT(0x266744600);
}

void sub_2648F3278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id SCRCPerformSelector(void *a1, const char *a2)
{
  if (a2)
  {
    v3 = [a1 a2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *___appendInfoToRecentTaskBuffer_block_invoke()
{
  result = malloc_type_calloc(1uLL, 0x267uLL, 0x26062742uLL);
  qmemcpy(result, "Recent tasks -\n", 15);
  _appendInfoToRecentTaskBuffer__recentTaskBuffer = result + 15;
  return result;
}

id SCRCLinkRelationshipStringForType(void *a1)
{
  v1 = SCRCLinkRelationshipStringForType_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SCRCLinkRelationshipStringForType_cold_1();
  }

  v3 = [SCRCLinkRelationshipStringForType_map objectForKeyedSubscript:v2];

  return v3;
}

void __SCRCLinkRelationshipStringForType_block_invoke()
{
  v24[21] = *MEMORY[0x277D85DE8];
  v23[0] = @"ar";
  v22 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.augmentedreality"];
  v24[0] = v22;
  v23[1] = @"archives";
  v21 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.archives"];
  v24[1] = v21;
  v23[2] = @"author";
  v20 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.author"];
  v24[2] = v20;
  v23[3] = @"bookmark";
  v19 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.bookmark"];
  v24[3] = v19;
  v23[4] = @"canonical";
  v18 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.canonical"];
  v24[4] = v18;
  v23[5] = @"chapter";
  v17 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.chapter"];
  v24[5] = v17;
  v23[6] = @"contents";
  v16 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.contents"];
  v24[6] = v16;
  v23[7] = @"first";
  v15 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.first"];
  v24[7] = v15;
  v23[8] = @"glossary";
  v14 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.glossary"];
  v24[8] = v14;
  v23[9] = @"help";
  v13 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.help"];
  v24[9] = v13;
  v23[10] = @"index";
  v12 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.index"];
  v24[10] = v12;
  v23[11] = @"license";
  v0 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.license"];
  v24[11] = v0;
  v23[12] = @"next";
  v1 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.next"];
  v24[12] = v1;
  v23[13] = @"prev";
  v2 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.previous"];
  v24[13] = v2;
  v23[14] = @"search";
  v3 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.search"];
  v24[14] = v3;
  v23[15] = @"section";
  v4 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.section"];
  v24[15] = v4;
  v23[16] = @"sidebar";
  v5 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.sidebar"];
  v24[16] = v5;
  v23[17] = @"start";
  v6 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.start"];
  v24[17] = v6;
  v23[18] = @"subsection";
  v7 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.subsection"];
  v24[18] = v7;
  v23[19] = @"toc";
  v8 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.toc"];
  v24[19] = v8;
  v23[20] = @"up";
  v9 = [MEMORY[0x277CCA8D8] localizedCoreStringForKey:@"link.rel.up"];
  v24[20] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:21];
  v11 = SCRCLinkRelationshipStringForType_map;
  SCRCLinkRelationshipStringForType_map = v10;
}

void SCRCDebugPrint_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2648D2000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void SCRCIsConsoleSessionEnabled_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkCGSSessionOnConsoleKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SCRCSessionUtilities.m" lineNumber:14 description:{@"%s", dlerror()}];

  __break(1u);
}

void SCRCIsConsoleSessionEnabled_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFDictionaryRef soft_CGSSessionCopyCurrentSessionProperties(void)"];
  [v0 handleFailureInFunction:v1 file:@"SCRCSessionUtilities.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void CoreGraphicsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreGraphicsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SCRCSessionUtilities.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void SCRCFormattedString_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  v7 = 2112;
  v8 = a3;
  _os_log_fault_impl(&dword_2648D2000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Error creating string: %@ [%@/%@]", &v3, 0x20u);
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x28210FE18](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}