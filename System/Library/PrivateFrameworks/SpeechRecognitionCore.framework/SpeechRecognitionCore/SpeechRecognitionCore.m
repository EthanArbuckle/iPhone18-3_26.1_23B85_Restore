void RXCFFinalize(void *a1)
{
  v1 = (a1 + 2);
  v2 = (*(a1[2] + 56))(a1 + 16);
  (**v1)(v1);
  if (v2)
  {
    v2[2]();
  }
}

CFIndex RXDebugFlagsUpdate()
{
  sRXDebug = CFPreferencesGetAppIntegerValue(@"RXDebugFlag", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0);
  sRXVeryVerbose = CFPreferencesGetAppBooleanValue(@"RXVeryVerbose", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0) != 0;
  sRXAutomationMode = CFPreferencesGetAppIntegerValue(@"RXDebugAutomationMode", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"RXDebugAutomationSimulateOpenMic", @"com.apple.SpeechRecognitionCore.speechrecognitiond", &keyExistsAndHasValidFormat))
  {
    v0 = 1;
  }

  else
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  v1 = v0;
  sRXAutomationSimulateOpenMic = v1;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"RXRecognitionResetTimeInSec", @"com.apple.SpeechRecognitionCore.speechrecognitiond", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue;
  }

  else
  {
    v3 = 5;
  }

  sResetTimeInSec = v3;
  result = CFPreferencesGetAppIntegerValue(@"RXDebugAutomationSaveKeywordsAudio", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0);
  sRXAutomationSaveKeywordsAudio = result != 0;
  return result;
}

void __RXAbort(int a1, uint64_t a2, uint64_t a3, uint64_t a4, CFStringRef format, ...)
{
  va_start(va, format);
  v9 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  v10 = v9;
  if (a4)
  {
  }

  else
  {
    v11 = CFStringCreateWithFormat(0, 0, @"%s:%u: %@\n", a2, a3, v9);
  }

  v12 = v11;
  if (v10)
  {
    CFRelease(v10);
  }

  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v12, 0x8000100u, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (ExternalRepresentation)
  {
    BytePtr = CFDataGetBytePtr(ExternalRepresentation);
    Length = CFDataGetLength(ExternalRepresentation);
    write(1, BytePtr, Length);
    CFRelease(ExternalRepresentation);
  }

  if (a1)
  {
    abort();
  }
}

uint64_t RXIsAppleInternal()
{
  if (RXIsAppleInternal::onceToken != -1)
  {
    RXIsAppleInternal_cold_1();
  }

  return RXIsAppleInternal::isAppleInternal;
}

uint64_t __RXIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  RXIsAppleInternal::isAppleInternal = result;
  return result;
}

void reportBacktrace()
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0;
  *v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v0 = backtrace(v14, 33);
  v1 = (v0 - 2);
  v2 = backtrace_symbols(v15, v1);
  if (v2)
  {
    v3 = v2;
    if (v0 >= 3)
    {
      for (i = 0; v1 != i; ++i)
      {
        v5 = v3[i];
        v6 = RXOSLog();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
        if (v5)
        {
          if (v7)
          {
            v8 = *(v15 + i);
            *buf = 67109634;
            v18 = i + 1;
            v19 = 2048;
            v20 = v8;
            v21 = 2080;
            v22 = v5;
            v9 = v6;
            v10 = "BACKTRACE: %-3d %p %s\n";
            v11 = 28;
LABEL_9:
            _os_log_impl(&dword_26B583000, v9, OS_LOG_TYPE_ERROR, v10, buf, v11);
          }
        }

        else if (v7)
        {
          v12 = *(v15 + i);
          *buf = 67109376;
          v18 = i + 1;
          v19 = 2048;
          v20 = v12;
          v9 = v6;
          v10 = "BACKTRACE: %-3d %p\n";
          v11 = 18;
          goto LABEL_9;
        }
      }
    }

    free(v3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

id RXSignpostLog()
{
  if (RXSignpostLog::onceToken != -1)
  {
    RXSignpostLog_cold_1();
  }

  v1 = RXSignpostLog::signpostLog;

  return v1;
}

void __RXSignpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.SpeechRecognitionCore", "SRCSignposts");
  v1 = RXSignpostLog::signpostLog;
  RXSignpostLog::signpostLog = v0;
}

id RXOSLog()
{
  if (RXOSLog::onceToken != -1)
  {
    RXOSLog_cold_1();
  }

  v1 = RXOSLog::signpostLog;

  return v1;
}

void __RXOSLog_block_invoke()
{
  v0 = os_log_create("com.apple.SpeechRecognitionCore", "SRCLogs");
  v1 = RXOSLog::signpostLog;
  RXOSLog::signpostLog = v0;
}

id xpc_wrap2_uint64(uint64_t a1)
{
  bytes[2] = *MEMORY[0x277D85DE8];
  bytes[0] = 0xDAC2C32E4DF4864CLL;
  bytes[1] = a1;
  v1 = xpc_data_create(bytes, 0x10uLL);
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t xpc_unwrap2_uint64(void *a1)
{
  v1 = a1;
  bytes_ptr = xpc_data_get_bytes_ptr(v1);
  if (xpc_data_get_length(v1) == 16)
  {
    v3 = bytes_ptr[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id xpc_wrap_uint64s_in_object(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (MEMORY[0x26D679EE0]() == MEMORY[0x277D86468])
  {
    bytes = 0;
    p_bytes = &bytes;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = xpc_copy(v1);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __xpc_wrap_uint64s_in_object_block_invoke;
    applier[3] = &unk_279CF68A8;
    applier[4] = &bytes;
    xpc_dictionary_apply(v1, applier);
    v3 = p_bytes[5];
    _Block_object_dispose(&bytes, 8);
  }

  else if (MEMORY[0x26D679EE0](v1) == MEMORY[0x277D86440])
  {
    bytes = 0;
    p_bytes = &bytes;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = xpc_copy(v1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __xpc_wrap_uint64s_in_object_block_invoke_2;
    v6[3] = &unk_279CF68D0;
    v6[4] = &bytes;
    xpc_array_apply(v1, v6);
    v3 = p_bytes[5];
    _Block_object_dispose(&bytes, 8);
  }

  else
  {
    if (MEMORY[0x26D679EE0](v1) == MEMORY[0x277D864C8])
    {
      bytes = 0xDAC2C32E4DF4864CLL;
      p_bytes = xpc_uint64_get_value(v1);
      v2 = xpc_data_create(&bytes, 0x10uLL);
    }

    else
    {
      v2 = xpc_copy(v1);
    }

    v3 = v2;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_26B5857B8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 72), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __xpc_wrap_uint64s_in_object_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = xpc_wrap_uint64s_in_object(a3);
  xpc_dictionary_set_value(v4, a2, v5);

  return 1;
}

uint64_t __xpc_wrap_uint64s_in_object_block_invoke_2(uint64_t a1, size_t a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = xpc_wrap_uint64s_in_object(a3);
  xpc_array_set_value(v4, a2, v5);

  return 1;
}

id xpc_unwrap_uint64s_in_object(void *a1)
{
  v1 = a1;
  if (MEMORY[0x26D679EE0]() == MEMORY[0x277D86468])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = xpc_copy(v1);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __xpc_unwrap_uint64s_in_object_block_invoke;
    applier[3] = &unk_279CF68A8;
    applier[4] = &v8;
    xpc_dictionary_apply(v1, applier);
LABEL_10:
    v4 = v9[5];
    _Block_object_dispose(&v8, 8);

    goto LABEL_11;
  }

  if (MEMORY[0x26D679EE0](v1) == MEMORY[0x277D86440])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = xpc_copy(v1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __xpc_unwrap_uint64s_in_object_block_invoke_2;
    v6[3] = &unk_279CF68D0;
    v6[4] = &v8;
    xpc_array_apply(v1, v6);
    goto LABEL_10;
  }

  if (MEMORY[0x26D679EE0](v1) == MEMORY[0x277D86458] && xpc_data_get_length(v1) == 16)
  {
    v2 = xpc_unwrap2_uint64(v1);
    v3 = xpc_uint64_create(v2);
  }

  else
  {
    v3 = xpc_copy(v1);
  }

  v4 = v3;
LABEL_11:

  return v4;
}

void sub_26B585B18(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t __xpc_unwrap_uint64s_in_object_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = xpc_unwrap_uint64s_in_object(a3);
  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), a2, v5);

  return 1;
}

uint64_t __xpc_unwrap_uint64s_in_object_block_invoke_2(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = xpc_unwrap_uint64s_in_object(a3);
  xpc_array_set_value(*(*(*(a1 + 32) + 8) + 40), a2, v5);

  return 1;
}

const char *RXPropertyKeyName(int a1)
{
  if (a1 <= 1919770999)
  {
    if (a1 <= 1819439219)
    {
      if (a1 <= 1818588268)
      {
        switch(a1)
        {
          case 1818326372:
            return "kRXLanguageObjectProperty_Audio";
          case 1818391412:
            return "kRXLanguageObjectProperty_NBest";
          case 1818457208:
            return "kRXLanguageObjectProperty_Context";
          default:
            goto LABEL_61;
        }
      }

      else if (a1 > 1819173228)
      {
        if (a1 != 1819173229)
        {
          if (a1 == 1819242612)
          {
            return "kRXLanguageObjectProperty_Optional";
          }

          goto LABEL_61;
        }

        return "kRXLanguageObjectProperty_Name";
      }

      else
      {
        if (a1 != 1818588269)
        {
          if (a1 == 1818786160)
          {
            return "kRXLanguageObjectProperty_Hypothesis";
          }

          goto LABEL_61;
        }

        return "kRXLanguageObjectProperty_EndTime";
      }
    }

    else if (a1 > 1919118444)
    {
      if (a1 > 1919705452)
      {
        if (a1 != 1919705453)
        {
          if (a1 == 1919710062)
          {
            return "kRXRecognizerProperty_IsListening";
          }

          goto LABEL_61;
        }

        return "kRXRecognizerProperty_LanguageModel";
      }

      else
      {
        if (a1 != 1919118445)
        {
          if (a1 == 1919120244)
          {
            return "kRXRecognitionSystemProperty_TextToBeRecognized";
          }

          goto LABEL_61;
        }

        return "kRXRecognizerProperty_AllowCloseMatch";
      }
    }

    else if (a1 > 1819571825)
    {
      if (a1 != 1819571826)
      {
        if (a1 == 1819572340)
        {
          return "kRXLanguageObjectProperty_Text";
        }

        goto LABEL_61;
      }

      return "kRXLanguageObjectProperty_TextVariants";
    }

    else
    {
      if (a1 != 1819439220)
      {
        if (a1 == 1819505773)
        {
          return "kRXLanguageObjectProperty_StartTime";
        }

        goto LABEL_61;
      }

      return "kRXLanguageObjectProperty_Repeatable";
    }
  }

  else if (a1 > 1936487277)
  {
    if (a1 > 1937006880)
    {
      if (a1 > 1937075302)
      {
        if (a1 != 1937075303)
        {
          if (a1 == 1937077355)
          {
            return "kRXRecognitionSystemProperty_SupportedTasks";
          }

          goto LABEL_61;
        }

        return "kRXGlobalProperty_SupportedAssetLanguages";
      }

      else
      {
        if (a1 != 1937006881)
        {
          if (a1 == 1937006911)
          {
            return "kRXRecognitionSystemProperty_Status";
          }

          goto LABEL_61;
        }

        return "kRXRecognitionSystemProperty_StatusBlocking";
      }
    }

    else if (a1 > 1936941428)
    {
      if (a1 != 1936941429)
      {
        if (a1 == 1936946546)
        {
          return "kRXRecognitionSystemProperty_SourceURL";
        }

        goto LABEL_61;
      }

      return "kRXRecognitionSystemProperty_SourceAudio";
    }

    else
    {
      if (a1 != 1936487278)
      {
        if (a1 == 1936749167)
        {
          return "kRXRecognitionSystemProperty_FilterProfanity";
        }

        goto LABEL_61;
      }

      return "kRXRecognitionSystemProperty_CanListen";
    }
  }

  else if (a1 > 1935766885)
  {
    if (a1 > 1936027493)
    {
      if (a1 != 1936027494)
      {
        if (a1 == 1936028274)
        {
          return "kRXRecognitionSystemProperty_ServerErrorCallback";
        }

        goto LABEL_61;
      }

      return "kRXRecognitionSystemProperty_EndOfFileCallback";
    }

    else
    {
      if (a1 != 1935766886)
      {
        if (a1 == 1935832436)
        {
          return "kRXRecognitionSystemProperty_BeginUtteranceCallback";
        }

        goto LABEL_61;
      }

      return "kRXRecognitionSystemProperty_AudioFormat";
    }
  }

  else if (a1 > 1920168043)
  {
    if (a1 != 1920168044)
    {
      if (a1 == 1935766884)
      {
        return "kRXRecognitionSystemProperty_AudioDevice";
      }

      goto LABEL_61;
    }

    return "kRXRecognizerProperty_SpellingMode";
  }

  else
  {
    if (a1 != 1919771000)
    {
      if (a1 == 1919841645)
      {
        return "kRXRecognizerProperty_NumberMode";
      }

LABEL_61:
      result = &RXPropertyKeyName::sTmpProp;
      byte_28040740C = 0;
      return result;
    }

    return "kRXRecognizerProperty_MaxResults";
  }
}

void RXObject::RXObject(RXObject *this)
{
  *this = &unk_287C0DF10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = -1;
  *(this + 4) = 0;
}

{
  *this = &unk_287C0DF10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = -1;
  *(this + 4) = 0;
}

void RXObject::~RXObject(RXObject *this, uint64_t a2, RXObject *a3)
{
  *this = &unk_287C0DF10;
  RXRecognitionSystem::DeadObject(*(this + 2), this, a3);
  RXCFProp<void const*>::~RXCFProp(this + 4);

  RXCFType::~RXCFType(this);
}

{
  RXObject::~RXObject(this, a2, a3);

  JUMPOUT(0x26D679770);
}

CFTypeRef RXObject::CopyProperty(RXObject *this, int a2)
{
  if (a2 != 1818457208)
  {
    v5 = RXPropertyKeyName(a2);
    v6 = CFCopyDescription(this - 16);
    v7 = CFAutorelease(v6);
    __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 91, 0, @"Property %s not defined for %@", v5, v7);
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    return 0;
  }

  return CFRetain(v3);
}

CFTypeRef RXObject::CopyPropertyWithLocale(RXObject *this, int a2, const __CFLocale *a3)
{
  if (a2 != 1818457208)
  {
    v6 = RXPropertyKeyName(a2);
    v7 = CFCopyDescription(this - 16);
    v8 = CFAutorelease(v7);
    __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 104, 0, @"Property %s not defined for %@", v6, v8);
    return 0;
  }

  v4 = *(this + 4);
  if (!v4)
  {
    return 0;
  }

  return CFRetain(v4);
}

void RXObject::SetProperty(RXObject *this, int a2, CFTypeRef cf)
{
  if (a2 == 1818457208)
  {
    v4 = (this + 32);

    RXCFProp<void const*>::operator=(v4, cf);
  }

  else
  {
    v5 = RXPropertyKeyName(a2);
    v6 = CFCopyDescription(this - 16);
    v7 = CFAutorelease(v6);
    __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 121, 0, @"Property %s not defined for %@", v5, v7);
  }
}

CFTypeRef RXCFProp<void const*>::operator=(CFTypeRef *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = cf;
  return cf;
}

void RXObject::PropertyReadOnly(RXObject *this, int a2)
{
  v3 = CFCopyDescription(this - 16);
  v4 = RXPropertyKeyName(a2);
  __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 129, 0, @"Property %s is read only for %@", v4, v3);

  CFRelease(v3);
}

void RXObject::PropertyWriteOnly(RXObject *this, int a2)
{
  v3 = CFCopyDescription(this - 16);
  v4 = RXPropertyKeyName(a2);
  __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 137, 0, @"Property %s is write only for %@", v4, v3);

  CFRelease(v3);
}

BOOL RXObject::ShouldSerialize(RXObject *this, RXRecognitionSystem *a2)
{
  v3 = 1 << *(a2 + 10);
  RXRecognitionSystem::ReachableObject(a2, this);
  v4 = *(this + 2);
  if ((v4 & v3) != 0)
  {
    v5 = *(this + 3);
  }

  else
  {
    v6 = v4 | v3;
    v5 = *(this + 3) | v3;
    *(this + 2) = v6;
    *(this + 3) = v5;
  }

  if ((v5 & v3) != 0)
  {
    *(this + 3) = v5 & ~v3;
  }

  return (v5 & v3) != 0;
}

void RXObject::Serialize(uint64_t a1)
{
  v1 = CFCopyDescription((a1 - 16));
  __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 174, 0, @"Can't serialize %@", v1);

  CFRelease(v1);
}

id RXObject::CreateXPCDesc(RXObject *this, int64_t a2, RXRecognitionSystem *a3)
{
  RXRecognitionSystem::LiveObject(a3, this);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, kRDKeyObjectType, a2);
  xpc_dictionary_set_uint64(v5, kRDKeyObjectID, this);

  return v5;
}

uint64_t RXGetSupportedQuasarLocaleIdentifiers()
{
  if (RXGetSupportedQuasarLocaleIdentifiers::onceToken != -1)
  {
    RXGetSupportedQuasarLocaleIdentifiers_cold_1();
  }

  return RXGetSupportedQuasarLocaleIdentifiers::supportedQuasarLocaleIdentifiers;
}

void __RXGetSupportedQuasarLocaleIdentifiers_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.SpeechRecognitionCore");
  if (BundleWithIdentifier)
  {
    v1 = *MEMORY[0x277CBECE8];
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier, @"SupportedQuasarLocaleIdentifiers");
    RXGetSupportedQuasarLocaleIdentifiers::supportedQuasarLocaleIdentifiers = CFArrayCreateMutableCopy(v1, 0, ValueForInfoDictionaryKey);
    if (!RXGetSupportedQuasarLocaleIdentifiers::supportedQuasarLocaleIdentifiers)
    {
      __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 199, "supportedQuasarLocaleIdentifiers", @"Framework Info Dictionary is corrupted");
    }

    v3 = CFURLCreateWithFileSystemPath(v1, @"/System/Library/FeatureFlags/Domain/VoiceControlLocales.plist", kCFURLPOSIXPathStyle, 0);
    if (v3)
    {
      v4 = v3;
      v5 = CFReadStreamCreateWithFile(v1, v3);
      if (v5)
      {
        v6 = v5;
        if (CFReadStreamOpen(v5))
        {
          v7 = CFPropertyListCreateWithStream(v1, v6, 0, 0, 0, 0);
          v8 = CFGetTypeID(v7);
          if (v8 == CFDictionaryGetTypeID())
          {
            CFDictionaryGetCount(v7);
            operator new[]();
          }

          if (v7)
          {
            CFRelease(v7);
          }

          CFReadStreamClose(v6);
        }

        CFRelease(v6);
      }

      CFRelease(v4);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t RXGetSupportedNashvilleLocaleIdentifiers()
{
  if (RXGetSupportedNashvilleLocaleIdentifiers::onceToken != -1)
  {
    RXGetSupportedNashvilleLocaleIdentifiers_cold_1();
  }

  return RXGetSupportedNashvilleLocaleIdentifiers::supportedNashvilleLocaleIdentifiers;
}

void __RXGetSupportedNashvilleLocaleIdentifiers_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.SpeechRecognitionCore");
  if (BundleWithIdentifier)
  {
    v1 = *MEMORY[0x277CBECE8];
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier, @"SupportedNashvilleLocaleIdentifiers");
    MutableCopy = CFArrayCreateMutableCopy(v1, 0, ValueForInfoDictionaryKey);
    RXGetSupportedNashvilleLocaleIdentifiers::supportedNashvilleLocaleIdentifiers = MutableCopy;
    if (!MutableCopy)
    {
      __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 251, "supportedNashvilleLocaleIdentifiers", @"Framework Info Dictionary is corrupted");
      MutableCopy = RXGetSupportedNashvilleLocaleIdentifiers::supportedNashvilleLocaleIdentifiers;
    }

    Count = CFArrayGetCount(MutableCopy);
    if (Count >= 1)
    {
      v5 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(RXGetSupportedNashvilleLocaleIdentifiers::supportedNashvilleLocaleIdentifiers, v5 - 2);
        if (CFStringCompare(ValueAtIndex, @"ar", 1uLL))
        {
          v7 = ValueAtIndex;
        }

        else
        {
          v7 = @"ar_SA";
        }

        *buffer = 0u;
        v13 = 0u;
        if (CFStringGetCString(v7, buffer, 32, 0x8000100u) && _os_feature_enabled_impl())
        {
          v8 = RXOSLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v11 = buffer;
            _os_log_impl(&dword_26B583000, v8, OS_LOG_TYPE_DEBUG, "Disabling Nashville locale support for Feature Flag %s", buf, 0xCu);
          }

          CFArrayRemoveValueAtIndex(RXGetSupportedNashvilleLocaleIdentifiers::supportedNashvilleLocaleIdentifiers, v5 - 2);
        }

        --v5;
      }

      while (v5 > 1);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t RXObjectCopyProperty(RXXPC *a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = RXXPC::Queue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __RXObjectCopyProperty_block_invoke;
  block[3] = &unk_279CF68F8;
  block[4] = &v9;
  block[5] = a1;
  v8 = a2;
  dispatch_sync(v4, block);

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_26B586BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__RXObjectCopyProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    TypeID = CFStringGetTypeID();
    v5 = *(a1 + 40);
    if (v3 == TypeID)
    {
      v6 = *(a1 + 48);
LABEL_7:
      result = RXCopyLocaleProperty(v5, v6);
      goto LABEL_12;
    }

    v8 = CFGetTypeID(v5);
    v9 = CFLocaleGetTypeID();
    v10 = *(a1 + 40);
    if (v8 == v9)
    {
      v11 = *(a1 + 48);
      v5 = MEMORY[0x26D679270](v10);
      v6 = v11;
      goto LABEL_7;
    }

    if (v10)
    {
      v12 = v10 + 16;
    }

    else
    {
      v12 = 0;
    }

    result = (*(*v12 + 64))(v12, *(a1 + 48));
  }

  else
  {
    result = RXCopyGlobalProperty(*(a1 + 48));
  }

LABEL_12:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFArrayRef RXCopyGlobalProperty(RXXPC *a1)
{
  if (a1 <= 1885957746)
  {
    switch(a1)
    {
      case 0x636C696E:
        byte_28040740C = 0;
        __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 326, 0, @"Global property %s is write only", &RXPropertyKeyName::sTmpProp);
        return 0;
      case 0x6C616E67:
        v3 = RDCopyNashvilleModelLanguages();
        if (v3)
        {
          v4 = v3;
          v5 = RXXPC::CopyLanguageInstallationStatus(v3);
          if (v5)
          {
            v6 = v5;
            Count = CFDictionaryGetCount(v5);
            v8 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
            v13 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
            v14 = v8;
            CFDictionaryGetKeysAndValues(v6, v8, v13);
            if (RXGetSupportedQuasarLocaleIdentifiers::onceToken != -1)
            {
              RXGetSupportedQuasarLocaleIdentifiers_cold_1();
            }

            if (Count >= 1)
            {
              v9 = RXGetSupportedQuasarLocaleIdentifiers::supportedQuasarLocaleIdentifiers;
              v10 = v13;
              do
              {
                if (CFStringHasPrefix(*v10, @"Version:"))
                {
                  MutableCopy = CFStringCreateMutableCopy(0, 0, *v8);
                  v18.length = CFStringGetLength(MutableCopy);
                  v18.location = 0;
                  CFStringFindAndReplace(MutableCopy, @"-", @"_", v18, 0);
                  if (v9)
                  {
                    v17.length = CFArrayGetCount(v9);
                    v17.location = 0;
                    if (CFArrayContainsValue(v9, v17, MutableCopy))
                    {
                      CFSetAddValue(v4, MutableCopy);
                    }
                  }

                  CFRelease(MutableCopy);
                }

                ++v8;
                ++v10;
                --Count;
              }

              while (Count);
            }

            CFRelease(v6);
            free(v14);
            free(v13);
          }

          CFSetGetCount(v4);
          operator new[]();
        }

        v12 = MEMORY[0x277CBF128];

        return CFArrayCreate(0, 0, 0, v12);
      case 0x6C737473:

        return RXXPC::CopyLanguageInstallationStatus(a1);
      default:
        goto LABEL_18;
    }
  }

  else
  {
    if (a1 <= 1937009768)
    {
      if (a1 == 1885957747)
      {
        valuePtr = RXXPC::PurgeInstalledAssets(a1);
        return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      }

      if (a1 == 1936617575)
      {
        byte_28040740C = 0;
        __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 337, 0, @"Global property %s is write only", &RXPropertyKeyName::sTmpProp);
        return 0;
      }

LABEL_18:
      v2 = RXPropertyKeyName(a1);
      __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 345, 0, @"Global property %s not defined", v2);
      return 0;
    }

    if (a1 == 1937009769)
    {
      byte_28040740C = 0;
      __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 322, 0, @"Global property %s is write only", &RXPropertyKeyName::sTmpProp);
      return 0;
    }

    if (a1 != 1937075303)
    {
      goto LABEL_18;
    }

    return RXXPC::CopySupportedLanguagesForVoiceControl(a1);
  }
}

const void *RXCopyLocaleProperty(const __CFString *a1, int a2)
{
  if (a2 == 1667326824)
  {

    return RDCopyCacheVersion(a1);
  }

  else
  {
    v4 = RXPropertyKeyName(a2);
    __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 358, 0, @"Per-locale property %s not defined", v4);
    return 0;
  }
}

uint64_t RXObjectCopyPropertyWithLocale(RXXPC *a1, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = RXXPC::Queue(a1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __RXObjectCopyPropertyWithLocale_block_invoke;
  v9[3] = &unk_279CF6920;
  v9[4] = &v11;
  v9[5] = a1;
  v10 = a2;
  v9[6] = a3;
  dispatch_sync(v6, v9);

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_26B5871E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFArrayRef __RXObjectCopyPropertyWithLocale_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    TypeID = RXLanguageObjectGetTypeID();
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = v5 + 16;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 56);
    if (v3 == TypeID)
    {
      result = (*(*v6 + 72))(v6, v7, *(a1 + 48));
    }

    else
    {
      result = (*(*v6 + 64))(v6, v7);
    }
  }

  else
  {
    result = RXCopyGlobalProperty(*(a1 + 56));
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void RXObjectSetProperty(RXXPC *a1, int a2, uint64_t a3)
{
  v6 = RXXPC::Queue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __RXObjectSetProperty_block_invoke;
  block[3] = &__block_descriptor_52_e5_v8__0l;
  v8 = a2;
  block[4] = a1;
  block[5] = a3;
  dispatch_sync(v6, block);
}

void __RXObjectSetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    if (v8 <= 1885957746)
    {
      if (v8 > 1818324582)
      {
        if (v8 == 1818324583 || v8 == 1819505779)
        {
          v19 = RXPropertyKeyName(v8);
          __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 412, 0, @"Global property %s is read only", v19);
          return;
        }
      }

      else
      {
        if (v8 == 1667326824)
        {
          if (!v9 || *MEMORY[0x277CBED10] == v9)
          {

            RDNukeCache(0);
          }

          return;
        }

        if (v8 == 1668049262)
        {
          if (v9 && (v14 = CFGetTypeID(v9), v14 == CFStringGetTypeID()))
          {

            RXXPC::CancelInstallationForLanguage(v9, v15);
          }

          else
          {
            byte_28040740C = 0;
            __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 428, 0, @"Global property %s wasn't passed CFString argument.", &RXPropertyKeyName::sTmpProp);
          }

          return;
        }
      }
    }

    else if (v8 <= 1936617574)
    {
      if (v8 == 1885957747)
      {
        byte_28040740C = 0;
        __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 433, 0, @"Global property %s is read only", &RXPropertyKeyName::sTmpProp);
        return;
      }

      if (v8 == 1918989923)
      {

        RXXPC::RemoveAllVocabularyEntriesFromCloud(v8);
        return;
      }
    }

    else
    {
      switch(v8)
      {
        case 0x736E7067:
          if (v9 && (v20 = CFGetTypeID(v9), v20 == CFArrayGetTypeID()))
          {

            RXXPC::SetNonPurgeabilityForLanguages(v9, v21);
          }

          else
          {
            byte_28040740C = 0;
            __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 441, 0, @"Global property %s wasn't passed CFString argument.", &RXPropertyKeyName::sTmpProp);
          }

          return;
        case 0x73746C69:
          if (v9 && (v22 = CFGetTypeID(v9), v22 == CFStringGetTypeID()))
          {

            RXXPC::StartInstallationForLanguage(v9, v23);
          }

          else
          {
            byte_28040740C = 0;
            __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 419, 0, @"Global property %s wasn't passed CFString argument.", &RXPropertyKeyName::sTmpProp);
          }

          return;
        case 0x74766F73:

          RXXPC::TriggerVocabularySync(v8);
          return;
      }
    }

    v24 = RXPropertyKeyName(v8);
    __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 458, 0, @"Global property %s not defined", v24);
    return;
  }

  v3 = CFGetTypeID(v2);
  TypeID = CFStringGetTypeID();
  v5 = *(a1 + 32);
  if (v3 == TypeID)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
LABEL_14:

    RXSetLocaleProperty(v5, v6, v7);
    return;
  }

  v10 = CFGetTypeID(v5);
  if (v10 == CFLocaleGetTypeID())
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v5 = MEMORY[0x26D679270](v12);
    v6 = v11;
    v7 = v13;
    goto LABEL_14;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = (v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  RXRecognitionSystem::StartChanges(v17[2]);
  (*(*v17 + 10))(v17, *(a1 + 48), *(a1 + 40));
  RXRecognitionSystem::CommitChanges(v17[2]);
}

void sub_26B587750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RXTransaction<RXObject>::~RXTransaction(va);
  _Unwind_Resume(a1);
}

void RXSetLocaleProperty(const __CFString *a1, int a2, const void *a3)
{
  if (a2 == 1667326824)
  {
    if (!a3 || *MEMORY[0x277CBED10] == a3)
    {

      RDNukeCache(a1);
    }
  }

  else
  {
    v4 = RXPropertyKeyName(a2);
    __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXObject.mm", 472, 0, @"Per-locale property %s not defined", v4);
  }
}

unint64_t RXEngineTypeForLocaleIdentifier(CFStringRef localeIdentifier)
{
  if (!localeIdentifier)
  {
    return 0;
  }

  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, localeIdentifier);
  if (!CanonicalLocaleIdentifierFromString)
  {
    return 0;
  }

  v2 = CanonicalLocaleIdentifierFromString;
  MutableCopy = CFStringCreateMutableCopy(0, 0, CanonicalLocaleIdentifierFromString);
  if (MutableCopy)
  {
    v4 = MutableCopy;
    v8.length = CFStringGetLength(MutableCopy);
    v8.location = 0;
    CFStringFindAndReplace(v4, @"-", @"_", v8, 0);
    if (RXGetSupportedQuasarLocaleIdentifiers::onceToken != -1)
    {
      RXGetSupportedQuasarLocaleIdentifiers_cold_1();
    }

    v5 = RXGetSupportedQuasarLocaleIdentifiers::supportedQuasarLocaleIdentifiers;
    if (RXGetSupportedQuasarLocaleIdentifiers::supportedQuasarLocaleIdentifiers)
    {
      v7.length = CFArrayGetCount(RXGetSupportedQuasarLocaleIdentifiers::supportedQuasarLocaleIdentifiers);
      v7.location = 0;
      v5 = CFArrayContainsValue(v5, v7, v4) != 0;
    }

    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v2);
  return v5;
}

BOOL RXIsLocaleWithNoSpaceInPostITN(CFStringRef theString)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = @"zh_CN";
  v8[1] = @"zh_HK";
  v8[2] = @"zh_TW";
  v8[3] = @"ja_JP";
  v8[4] = @"yue_CN";
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  if (MutableCopy)
  {
    v2 = MutableCopy;
    v10.length = CFStringGetLength(MutableCopy);
    v10.location = 0;
    CFStringFindAndReplace(v2, @"-", @"_", v10, 0);
    v3 = CFArrayCreate(0, v8, 5, MEMORY[0x277CBF128]);
    if (v3)
    {
      v4 = v3;
      v9.length = CFArrayGetCount(v3);
      v9.location = 0;
      v5 = CFArrayContainsValue(v4, v9, v2) != 0;
      CFRelease(v4);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL RXIsLocaleWithSpecialHyphenHandling(CFStringRef theString)
{
  values = @"de_DE";
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  if (!MutableCopy)
  {
    return 0;
  }

  v2 = MutableCopy;
  v9.length = CFStringGetLength(MutableCopy);
  v9.location = 0;
  CFStringFindAndReplace(v2, @"-", @"_", v9, 0);
  v3 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  if (v3)
  {
    v4 = v3;
    v8.length = CFArrayGetCount(v3);
    v8.location = 0;
    v5 = CFArrayContainsValue(v4, v8, v2) != 0;
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v2);
  return v5;
}

BOOL RXIsLocaleSupportingOndeviceSpeechDetection(CFStringRef theString)
{
  values[2] = *MEMORY[0x277D85DE8];
  values[0] = @"en_US";
  values[1] = @"en_CA";
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  if (MutableCopy)
  {
    v2 = MutableCopy;
    v10.length = CFStringGetLength(MutableCopy);
    v10.location = 0;
    CFStringFindAndReplace(v2, @"-", @"_", v10, 0);
    v3 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
    if (v3)
    {
      v4 = v3;
      v9.length = CFArrayGetCount(v3);
      v9.location = 0;
      v5 = CFArrayContainsValue(v4, v9, v2) != 0;
      CFRelease(v4);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL RXIsLocaleSupportingKeywordSpotter(CFStringRef theString)
{
  values[2] = *MEMORY[0x277D85DE8];
  values[0] = @"en_US";
  values[1] = @"en_CA";
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  if (MutableCopy)
  {
    v2 = MutableCopy;
    v10.length = CFStringGetLength(MutableCopy);
    v10.location = 0;
    CFStringFindAndReplace(v2, @"-", @"_", v10, 0);
    v3 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
    if (v3)
    {
      v4 = v3;
      v9.length = CFArrayGetCount(v3);
      v9.location = 0;
      v5 = CFArrayContainsValue(v4, v9, v2) != 0;
      CFRelease(v4);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

__CFDictionary *RXGetAssetFallbackLocales()
{
  v0 = RXGetAllLocalesProperties();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v0)
  {
    Count = CFDictionaryGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v0, v4, 0);
      for (i = 0; i != v3; ++i)
      {
        Value = CFDictionaryGetValue(v0, v4[i]);
        if (Value)
        {
          v7 = CFDictionaryGetValue(Value, @"AssetFallbackLocaleIdentifier");
          if (v7)
          {
            CFDictionaryAddValue(Mutable, v4[i], v7);
          }
        }
      }

      free(v4);
    }
  }

  if (Mutable)
  {
    CFAutorelease(Mutable);
  }

  return Mutable;
}

__CFBundle *RXGetAllLocalesProperties(void)
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.SpeechRecognitionCore");
  if (result)
  {

    return CFBundleGetValueForInfoDictionaryKey(result, @"LocaleProperties");
  }

  return result;
}

__CFDictionary *RXCopyAssetFallbackLocales()
{
  v0 = RXGetAllLocalesProperties();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v0)
  {
    Count = CFDictionaryGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v0, v4, 0);
      for (i = 0; i != v3; ++i)
      {
        Value = CFDictionaryGetValue(v0, v4[i]);
        if (Value)
        {
          v7 = CFDictionaryGetValue(Value, @"AssetFallbackLocaleIdentifier");
          if (v7)
          {
            CFDictionaryAddValue(Mutable, v4[i], v7);
          }
        }
      }

      free(v4);
    }
  }

  return Mutable;
}

__CFDictionary *RXGetAssetFallbackLocaleIdentifier(const void *a1)
{
  result = RXGetAssetFallbackLocales();
  if (result)
  {

    return CFDictionaryGetValue(result, a1);
  }

  return result;
}

__CFDictionary *RXCopyAssetFallbackLocaleIdentifier(const void *a1)
{
  result = RXCopyAssetFallbackLocales();
  if (result)
  {
    v3 = result;
    Value = CFDictionaryGetValue(result, a1);
    CFRelease(v3);
    return Value;
  }

  return result;
}

__CFArray *RXLocalesSupportingSpellingMode()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v1 = RXGetAllLocalesProperties();
  if (v1)
  {
    v2 = v1;
    Count = CFDictionaryGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v2, v5, 0);
      for (i = 0; i != v4; ++i)
      {
        Value = CFDictionaryGetValue(v2, v5[i]);
        if (Value)
        {
          v8 = CFDictionaryGetValue(Value, @"SupportsSpellingMode");
          if (v8)
          {
            if (CFBooleanGetValue(v8))
            {
              CFArrayAppendValue(Mutable, v5[i]);
            }
          }
        }
      }

      free(v5);
    }
  }

  return Mutable;
}

const void *RXLocalizedStringForSpacebar(const void *a1)
{
  v2 = RXGetAllLocalesProperties();
  if (v2)
  {
    v3 = v2;
    Count = CFDictionaryGetCount(v2);
    if (Count < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v3, v5, 0);
      Value = CFDictionaryGetValue(v3, a1);
      if (Value)
      {
        v7 = CFDictionaryGetValue(Value, @"LocalizedSpacebar");
LABEL_8:
        free(v5);
        return v7;
      }
    }

    v7 = 0;
    goto LABEL_8;
  }

  return 0;
}

const void *RXCopyLocalizedStringForSpacebar(const void *a1)
{
  v2 = RXGetAllLocalesProperties();
  if (v2)
  {
    v3 = v2;
    Count = CFDictionaryGetCount(v2);
    if (Count < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v3, v5, 0);
      Value = CFDictionaryGetValue(v3, a1);
      if (Value)
      {
        v7 = CFDictionaryGetValue(Value, @"LocalizedSpacebar");
LABEL_8:
        free(v5);
        return v7;
      }
    }

    v7 = 0;
    goto LABEL_8;
  }

  return 0;
}

const void **RXCFProp<void const*>::~RXCFProp(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t RecognizerStillExists(uint64_t a1)
{
  v1 = *(sSystems + 8) - *sSystems;
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = v1 >> 3;
  while (1)
  {
    v5 = *(*sSystems + 8 * v2);
    if (v5)
    {
      do
      {
        v5 = *(v5 + 104);
      }

      while (v5 != a1 && v5 != 0);
      if (v5)
      {
        break;
      }
    }

    v2 = ++v3;
    if (v4 <= v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL RXRecognitionSystem::DoesOwnRecognizer(uint64_t a1, uint64_t a2)
{
  do
  {
    a1 = *(a1 + 104);
  }

  while (a1 != a2 && a1 != 0);
  return a1 != 0;
}

void RXRecognitionSystem::StartChanges(RXRecognitionSystem *this)
{
  if (this)
  {
    v1 = this;
    v2 = 0;
    v3 = sSystems;
    do
    {
      v4 = v2;
      if (v2 >= ((v3[1] - *v3) >> 3))
      {
        break;
      }

      if ((v1 & (1 << v2)) != 0)
      {
        RXRecognitionSystem::StartChanges(*(*v3 + 8 * v2));
        v1 &= ~(1 << v4);
        v3 = sSystems;
      }

      v2 = v4 + 1;
    }

    while (v1);
  }
}

void RXRecognitionSystem::StartChanges(RXXPC **this)
{
  if (!*(this + 11))
  {
    RXXPC::StartChanges(this[11]);
  }

  if (++*(this + 11) >= 0x100u)
  {

    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXRecognitionSystem.mm", 422, "fChangeNesting < 0x100", @"Out of control change nesting");
  }
}

void RXRecognitionSystem::CommitChanges(RXRecognitionSystem *this)
{
  if (this)
  {
    v1 = this;
    v2 = 0;
    v3 = sSystems;
    do
    {
      v4 = v2;
      if (v2 >= ((v3[1] - *v3) >> 3))
      {
        break;
      }

      if ((v1 & (1 << v2)) != 0)
      {
        RXRecognitionSystem::CommitChanges(*(*v3 + 8 * v2));
        v1 &= ~(1 << v4);
        v3 = sSystems;
      }

      v2 = v4 + 1;
    }

    while (v1);
  }
}

{
  if (!*(this + 11))
  {
    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXRecognitionSystem.mm", 428, "fChangeNesting > 0", @"Unbalanced change nesting");
  }

  if (!--*(this + 11))
  {
    v2 = xpc_array_create(0, 0);
    if (*(this + 3))
    {
      v3 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v3, kRDKeyObjectType, 0);
      xpc_dictionary_set_uint64(v3, kRDKeyObjectID, this);
      if (*(this + 11))
      {
        xpc_dictionary_set_BOOL(v3, kRDKeyIsListening, *(this + 81));
      }

      v4 = *(this + 31);
      v5 = v4 == 0;
      v6 = v4 != 0;
      v7 = 2;
      if (!v5)
      {
        v7 = 3;
      }

      if (*(this + 32))
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      xpc_dictionary_set_uint64(v3, kRDKeyCallbacks, v8);
      if (*(this + 80) == 1)
      {
        xpc_dictionary_set_BOOL(v3, kRDKeyFilterProfanity, 1);
      }

      if (*(this + 82) == 1)
      {
        *(this + 82) = 0;
        v9 = *(this + 7);
        if (v9)
        {
          RXXPC::SerializeURL(v3, v9);
        }

        else
        {
          v10 = *(this + 8);
          if (v10)
          {
            v11 = kRDKeyAudioData;
            BytePtr = CFDataGetBytePtr(v10);
            Length = CFDataGetLength(*(this + 8));
            xpc_dictionary_set_data(v3, v11, BytePtr, Length);
          }

          else
          {
            v14 = *(this + 9);
            if (v14)
            {
              RXXPC::SerializeCFString(v3, kRDKeyTextToBeRecognized, v14);
            }
          }
        }
      }

      xpc_array_append_value(v2, v3);
      *(this + 3) = 0;
    }

    std::__tree<RXObject *>::destroy(this + 224, *(this + 29));
    *(this + 29) = 0;
    *(this + 30) = 0;
    v15 = this;
    *(this + 28) = this + 232;
    while (1)
    {
      v15 = *(v15 + 13);
      if (!v15)
      {
        break;
      }

      (*(*v15 + 96))(v15, v2, this);
    }

    __p = 0;
    v28 = 0;
    v29 = 0;
    v16 = *(this + 28);
    v34 = *(this + 14);
    v32 = v16;
    v33 = (this + 120);
    p_p = &__p;
    v31 = this + 232;
    std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::back_insert_iterator<std::vector<RXObject *>> &>(&v34, &v33, &v32, &v31, &p_p);
    std::__tree<RXObject *>::swap(this + 14, this + 224);
    std::__tree<RXObject *>::destroy(this + 224, *(this + 29));
    *(this + 29) = 0;
    *(this + 30) = 0;
    *(this + 28) = this + 232;
    empty = xpc_array_create_empty();
    if (v28 != __p)
    {
      v18 = (v28 - __p) >> 3;
      v19 = (this + 144);
      v20 = ~(1 << *(this + 10));
      while (v18)
      {
        --v18;
        xpc_array_set_uint64(empty, 0xFFFFFFFFFFFFFFFFLL, *(__p + v18));
        pthread_mutex_lock((this + 160));
        v21 = *v19;
        v22 = *(__p + v18);
        if (!*v19)
        {
          goto LABEL_36;
        }

        v23 = (this + 144);
        do
        {
          v24 = *(v21 + 4);
          v25 = v24 >= v22;
          v26 = v24 < v22;
          if (v25)
          {
            v23 = v21;
          }

          v21 = *&v21[8 * v26];
        }

        while (v21);
        if (v23 == v19 || v22 < v23[4])
        {
LABEL_36:
          *(v22 + 16) &= v20;
        }

        pthread_mutex_unlock((this + 160));
      }
    }

    pthread_mutex_lock((this + 160));
    std::__tree<RXObject *>::destroy(this + 136, *(this + 18));
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = this + 144;
    pthread_mutex_unlock((this + 160));
    RXXPC::CommitChanges(*(this + 11), v2, empty);

    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }
  }
}

uint64_t RXRecognitionSystem::DeadObject(uint64_t this, RXObject *a2, RXObject *a3)
{
  if (this)
  {
    v4 = this;
    v5 = 0;
    v6 = sSystems;
    do
    {
      v7 = v5;
      if (v5 >= ((v6[1] - *v6) >> 3))
      {
        break;
      }

      if ((v4 & (1 << v5)) != 0)
      {
        this = RXRecognitionSystem::DeadObject(*(*v6 + 8 * v5), a2);
        v4 &= ~(1 << v7);
        v6 = sSystems;
      }

      v5 = v7 + 1;
    }

    while (v4);
  }

  return this;
}

uint64_t RXRecognitionSystem::DeadObject(RXRecognitionSystem *this, RXObject *a2)
{
  v4 = a2;
  pthread_mutex_lock((this + 160));
  std::__tree<RXObject *>::__emplace_unique_key_args<RXObject *,RXObject * const&>(this + 136, &v4);
  return pthread_mutex_unlock((this + 160));
}

void RXRecognitionSystem::Callback(void *a1)
{
  xdict = a1;
  uint64 = xpc_dictionary_get_uint64(xdict, kRDKeyObjectID);
  v2 = *(sSystems + 8) - *sSystems;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    v5 = 1;
    while (1)
    {
      v6 = *(*sSystems + 8 * v3);
      if (v6 && uint64 == v6)
      {
        break;
      }

      v3 = v5;
      if (v4 <= v5++)
      {
        goto LABEL_10;
      }
    }

    v9 = xpc_dictionary_get_uint64(xdict, kRDKeyCallbacks);
    RXRecognitionSystem::Callback(v6, v9, xdict);
  }

LABEL_10:
}

void RXRecognitionSystem::Callback(uint64_t a1, uint64_t a2, void *a3)
{
  xdict = a3;
  if (a2 == 2)
  {
    v7 = *(a1 + 256);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  else if (a2 == 1)
  {
    v5 = *(a1 + 248);
    if (v5)
    {
      uint64 = xpc_dictionary_get_uint64(xdict, kRDKeyUtteranceID);
      (*(v5 + 16))(v5, uint64);
    }
  }
}

CFDataRef RXRecognitionSystem::CopyProperty(RXRecognitionSystem *this, int a2)
{
  if (a2 <= 1936946545)
  {
    if (a2 <= 1936487277)
    {
      if (a2 != 1935766884)
      {
        if (a2 == 1935766886)
        {

          return CFDataCreate(0, RXRecognitionSystem::CopyProperty::sClientFormat, 40);
        }

        goto LABEL_32;
      }

      result = *(*(this + 11) + 24);
      goto LABEL_29;
    }

    if (a2 == 1936487278)
    {
      if (*(this + 81))
      {
        v6 = MEMORY[0x277CBED28];
      }

      else
      {
        v6 = MEMORY[0x277CBED10];
      }

      result = *v6;
LABEL_29:

      return CFRetain(result);
    }

    if (a2 == 1936941429)
    {
      result = *(this + 8);
      if (!result)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_32:

    return RXObject::CopyProperty(this, a2);
  }

  if (a2 <= 1937006910)
  {
    if (a2 == 1936946546)
    {
      result = *(this + 7);
      if (!result)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (a2 != 1937006881)
    {
      goto LABEL_32;
    }

    RXXPC::WaitForServer(*(this + 11));
LABEL_21:
    valuePtr = *(*(this + 11) + 1);
    return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  }

  if (a2 == 1937006911)
  {
    goto LABEL_21;
  }

  if (a2 != 1937077355)
  {
    goto LABEL_32;
  }

  RXXPC::WaitForServer(*(this + 11));
  v4 = *(this + 11);
  v5 = MEMORY[0x26D679270](*(this + 6));

  return RXXPC::CopyInstalledAssetSupportedTasksForLanguage(v4, v5);
}

void RXRecognitionSystem::SetProperty(CFTypeRef *this, int a2, const __CFString *cf)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 > 1936487277)
  {
    if (a2 > 1936946545)
    {
      if (a2 == 1937006911 || a2 == 1937006881)
      {
LABEL_20:
        RXObject::PropertyReadOnly(this, a2);
        goto LABEL_39;
      }

      if (a2 != 1936946546)
      {
        goto LABEL_38;
      }

      RXCFProp<void const*>::operator=(this + 7, cf);
    }

    else
    {
      if (a2 == 1936487278)
      {
        *(this + 81) = CFBooleanGetValue(cf) != 0;
        goto LABEL_39;
      }

      if (a2 == 1936749167)
      {
        *(this + 80) = CFBooleanGetValue(cf) != 0;
        goto LABEL_39;
      }

      if (a2 != 1936941429)
      {
        goto LABEL_38;
      }

      RXCFProp<void const*>::operator=(this + 8, cf);
    }

LABEL_32:
    *(this + 82) = 1;
    goto LABEL_39;
  }

  if (a2 > 1935832435)
  {
    switch(a2)
    {
      case 1935832436:
        v14 = MEMORY[0x26D679B00](cf);
        v6 = this[31];
        this[31] = v14;
        goto LABEL_37;
      case 1936027494:
        v15 = MEMORY[0x26D679B00](cf);
        v6 = this[32];
        this[32] = v15;
        goto LABEL_37;
      case 1936028274:
        v5 = MEMORY[0x26D679B00](cf);
        v6 = this[33];
        this[33] = v5;
LABEL_37:

        goto LABEL_39;
    }

LABEL_38:
    RXObject::SetProperty(this, a2, cf);
    goto LABEL_39;
  }

  if (a2 == 1919120244)
  {
    RXCFProp<void const*>::operator=(this + 9, cf);
    if (RXVeryVerbose())
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      if (CFStringGetLength(cf) >= 1)
      {
        v8 = 0;
        do
        {
          v20.location = v8;
          v20.length = 1;
          v9 = CFStringCreateWithSubstring(0, cf, v20);
          CFArrayAppendValue(Mutable, v9);
          ++v8;
        }

        while (v8 < CFStringGetLength(cf));
      }

      v10 = RXOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = cf;
        _os_log_impl(&dword_26B583000, v10, OS_LOG_TYPE_INFO, "input phrase=%@", buf, 0xCu);
      }

      if (CFArrayGetCount(Mutable) >= 1)
      {
        v11 = 0;
        do
        {
          v12 = RXOSLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v11);
            *buf = 138412290;
            v18 = ValueAtIndex;
            _os_log_impl(&dword_26B583000, v12, OS_LOG_TYPE_INFO, "input phrase tokens=%@", buf, 0xCu);
          }

          ++v11;
        }

        while (CFArrayGetCount(Mutable) > v11);
      }
    }

    goto LABEL_32;
  }

  if (a2 != 1935766884)
  {
    if (a2 != 1935766886)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

LABEL_39:
  this[3] = -1;
  v16 = *MEMORY[0x277D85DE8];
}

BOOL RXRecognitionSystem::Initialize(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = RXOSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B583000, v8, OS_LOG_TYPE_DEFAULT, "RXRecognitionSystem Initialize", buf, 2u);
  }

  RXCFProp<void const*>::operator=((a1 + 48), a2);
  *(a1 + 8) = a3;
  *(a1 + 81) = (a3 & 0x1000000) == 0;
  *(a1 + 82) = 1;
  *(a1 + 24) = -1;
  Instance = RXXPC::CreateInstance(a2, a3, v7);
  *(a1 + 88) = Instance;
  if (Instance)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN19RXRecognitionSystem10InitializeEPK10__CFLocalemPU28objcproto17SRDClientProtocol11objc_object_block_invoke;
    v13[3] = &__block_descriptor_40_e98_v20__0i8__RXXPC_BBBQ____CFString_____CFString____Q____CFArray_Q__opaque_pthread_mutex_t_q_56c___12l;
    v13[4] = a1;
    v10 = MEMORY[0x26D679B00](v13);
    v11 = *(a1 + 96);
    *(a1 + 96) = v10;

    RXXPC::AddHandler(*(a1 + 88), *(a1 + 96));
  }

  return Instance != 0;
}

uint64_t ___ZN19RXRecognitionSystem10InitializeEPK10__CFLocalemPU28objcproto17SRDClientProtocol11objc_object_block_invoke(uint64_t result, int a2, uint64_t a3)
{
  if (sSystems)
  {
    v3 = *(sSystems + 8) - *sSystems;
    if (v3)
    {
      v4 = 0;
      v5 = *(result + 32);
      v6 = v3 >> 3;
      v7 = 1;
      while (*(*(*sSystems + 8 * v4) + 88) != a3)
      {
        v4 = v7;
        if (v6 <= v7++)
        {
          return result;
        }
      }

      if (a2 == 1)
      {
        *(v5 + 24) = -1;
        *(v5 + 82) = 1;
        v9 = *(v5 + 104);
        if (v9)
        {
          v10 = *MEMORY[0x277CBED10];
          do
          {
            (*(*v9 + 80))(v9, 1919710062, v10);
            v9 = v9[13];
          }

          while (v9);
        }

        v11 = *(v5 + 112);
        if (v11 != (v5 + 120))
        {
          do
          {
            (*(*v11[4] + 88))(v11[4]);
            v12 = v11[1];
            if (v12)
            {
              do
              {
                v13 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v13 = v11[2];
                v14 = *v13 == v11;
                v11 = v13;
              }

              while (!v14);
            }

            v11 = v13;
          }

          while (v13 != (v5 + 120));
        }

        result = *(v5 + 264);
        if (result)
        {
          v15 = *(result + 16);

          return v15();
        }
      }
    }
  }

  return result;
}

void RXRecognitionSystem::RXRecognitionSystem(RXRecognitionSystem *this)
{
  RXObject::RXObject(this);
  *v2 = &unk_287C0DFE0;
  *(v2 + 44) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 112) = v2 + 120;
  *(v2 + 128) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 144) = 0;
  *(v2 + 136) = v2 + 144;
  *(v2 + 152) = 0;
  *(v2 + 232) = 0;
  *(v2 + 224) = v2 + 232;
  *(v2 + 240) = 0;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  v3 = sSystems;
  if (!sSystems)
  {
    operator new();
  }

  v4 = *sSystems;
  v5 = *(sSystems + 8);
  v6 = v5 - v4;
  if (v5 == v4)
  {
LABEL_8:
    v9 = *(sSystems + 16);
    if (v5 >= v9)
    {
      if ((v6 + 1) >> 61)
      {
        std::vector<RXRecognitionSystem *>::__throw_length_error[abi:ne200100]();
      }

      v11 = v9 - v4;
      v12 = v11 >> 2;
      if (v11 >> 2 <= v6 + 1)
      {
        v12 = v6 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<RXRecognitionSystem *>>(sSystems, v13);
      }

      *(8 * v6) = this;
      v10 = 8 * v6 + 8;
      v14 = *(v3 + 8) - *v3;
      v15 = (8 * v6 - v14);
      memcpy(v15, *v3, v14);
      v16 = *v3;
      *v3 = v15;
      *(v3 + 8) = v10;
      *(v3 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v5 = this;
      v10 = (v5 + 1);
    }

    *(v3 + 8) = v10;
    v8 = ((*(sSystems + 8) - *sSystems) >> 3) - 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while (v4[v7])
    {
      v7 = ++v8;
      if (v6 <= v8)
      {
        goto LABEL_8;
      }
    }

    v4[v7] = this;
  }

  *(this + 10) = v8;
  pthread_mutex_init((this + 160), 0);
  *(this + 2) |= 1 << *(this + 10);
}

void sub_26B589684(_Unwind_Exception *a1)
{
  std::__tree<RXObject *>::destroy(v5, *(v1 + 232));
  std::__tree<RXObject *>::destroy(v4, *(v1 + 144));
  std::__tree<RXObject *>::destroy(v3, *(v1 + 120));

  RXCFProp<__CFString const*>::~RXCFProp((v1 + 72));
  RXCFProp<__CFData const*>::~RXCFProp((v1 + 64));
  RXCFProp<__CFURL const*>::~RXCFProp((v1 + 56));
  RXCFProp<__CFLocale const*>::~RXCFProp(v2);
  RXObject::~RXObject(v1, v7, v8);
  _Unwind_Resume(a1);
}

void RXRecognitionSystem::~RXRecognitionSystem(RXRecognitionSystem *this)
{
  *this = &unk_287C0DFE0;
  v2 = RXXPC::Queue(this);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN19RXRecognitionSystemD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);

  std::__tree<RXObject *>::destroy(this + 224, *(this + 29));
  std::__tree<RXObject *>::destroy(this + 136, *(this + 18));
  std::__tree<RXObject *>::destroy(this + 112, *(this + 15));

  RXCFProp<__CFString const*>::~RXCFProp(this + 9);
  RXCFProp<__CFData const*>::~RXCFProp(this + 8);
  RXCFProp<__CFURL const*>::~RXCFProp(this + 7);
  RXCFProp<__CFLocale const*>::~RXCFProp(this + 6);
  RXObject::~RXObject(this, v3, v4);
}

{
  RXRecognitionSystem::~RXRecognitionSystem(this);

  JUMPOUT(0x26D679770);
}

RXXPC *___ZN19RXRecognitionSystemD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 16) = 0;
  *(*sSystems + 8 * *(v1 + 40)) = 0;
  result = *(v1 + 88);
  if (result)
  {
    RXXPC::RemoveHandler(result, *(v1 + 96));
    v3 = *(v1 + 96);
    *(v1 + 96) = 0;

    result = *(v1 + 88);
    if (result)
    {
      RXXPC::~RXXPC(result);

      JUMPOUT(0x26D679770);
    }
  }

  return result;
}

uint64_t RXRecognitionSystem::AddRecognizer(uint64_t result, uint64_t a2)
{
  *(a2 + 104) = *(result + 104);
  *(result + 104) = a2;
  *(a2 + 16) |= 1 << *(result + 40);
  return result;
}

uint64_t RXRecognitionSystem::DelRecognizer(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104);
  if (v2)
  {
    while (v2 != a2)
    {
      v2 = *(v2 + 104);
      *(result + 104) = v2;
      if (!v2)
      {
        return result;
      }
    }

    *(result + 104) = *(a2 + 104);
  }

  return result;
}

void RXRecognitionSystem::SetSecureFieldFocused(RXXPC **this, uint64_t a2)
{
  v3 = RXXPC::RemoteService(this[11]);
  [v3 setSecureFieldFocused:a2];
}

void RXRecognitionSystem::AddLeadingContext(RXXPC **this, const __CFString *a2)
{
  v3 = RXXPC::RemoteService(this[11]);
  [v3 addLeadingContext:a2];
}

void RXRecognitionSystem::AddOtherContext(RXXPC **this, const __CFArray *a2)
{
  v3 = RXXPC::RemoteService(this[11]);
  [v3 addOtherContext:a2];
}

void RXRecognitionSystem::ResetRecognition(RXXPC **this)
{
  v1 = RXXPC::RemoteService(this[11]);
  [v1 resetRecognition];
}

void RXRecognitionSystem::SetResetMode(uint64_t a1, unsigned int a2)
{
  if (a2 <= 3)
  {
    v2 = a2;
    v3 = RXXPC::RemoteService(*(a1 + 88));
    [v3 setResetRecognitionMode:v2];
  }
}

void RXRecognitionSystem::SaveUserProfileToFile(RXXPC **this, const __CFString *a2)
{
  if (a2)
  {
    v3 = RXXPC::RemoteService(this[11]);
    [v3 saveUserProfileToFile:a2];
  }
}

uint64_t RXRecognitionSystem::PhoneticNeighborsForText(RXXPC **this, const __CFString *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = RXXPC::RemoteSynchronousService(this[11]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN19RXRecognitionSystem24PhoneticNeighborsForTextEPK10__CFString_block_invoke;
  v6[3] = &unk_279CF69A8;
  v6[4] = &v7;
  [v3 phoneticNeighborsWithText:a2 reply:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_26B589C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN19RXRecognitionSystem24PhoneticNeighborsForTextEPK10__CFString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void RXRecognitionSystem::BrokerEvent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == MEMORY[0x277D863F0])
  {
    v4 = sSystems;
    if (sSystems)
    {
      v5 = *sSystems;
      if (*(sSystems + 8) != *sSystems)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(v5 + 8 * v6);
          if (v8)
          {
            v9 = *(v8 + 104);
            if (v9)
            {
              do
              {
                RXRecognizer::BrokerReset(v9);
                v9 = *(v9 + 104);
              }

              while (v9);
              v4 = sSystems;
              v5 = *sSystems;
            }
          }

          v6 = ++v7;
        }

        while (v7 < ((*(v4 + 8) - v5) >> 3));
      }
    }

    else
    {
      v10 = RXOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_impl(&dword_26B583000, v10, OS_LOG_TYPE_ERROR, "BrokerEvent: brokerd connection interrupted and recognition system have not started so not doing anything", v19, 2u);
      }
    }
  }

  else if (MEMORY[0x26D679EE0](v1) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(v2, kRDKeyMessage);
    if (int64 == 600)
    {
      v11 = xpc_dictionary_get_int64(v2, kRDKeyRecognizerID);
      v12 = xpc_dictionary_get_BOOL(v2, kRDKeyBlocked);
      v13 = sSystems;
      v14 = *sSystems;
      if (*(sSystems + 8) != *sSystems)
      {
        v15 = v12;
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(v14 + 8 * v16);
          if (v18)
          {
            while (1)
            {
              v18 = *(v18 + 13);
              if (!v18)
              {
                break;
              }

              if (RXRecognizer::Choke(v18, v11, v15))
              {
                goto LABEL_18;
              }
            }

            v13 = sSystems;
            v14 = *sSystems;
          }

          v16 = ++v17;
        }

        while (v17 < ((*(v13 + 8) - v14) >> 3));
      }
    }

    else if (int64 == 601)
    {
      RXXPC::DownloadCallback(v2);
    }
  }

LABEL_18:
}

uint64_t RXRecognitionSystem::BrokerReset(uint64_t this)
{
  for (i = *(this + 104); i; i = *(i + 104))
  {
    this = RXRecognizer::BrokerReset(i);
  }

  return this;
}

BOOL RXRecognitionSystem::ChokeRecognizer(RXRecognitionSystem *this, uint64_t a2, int a3)
{
  do
  {
    this = *(this + 13);
  }

  while (this && !RXRecognizer::Choke(this, a2, a3));
  return this != 0;
}

uint64_t RXRecognitionSystemGetTypeID()
{
  result = gRXCFTypeID_RXRecognitionSystem;
  if (!gRXCFTypeID_RXRecognitionSystem)
  {
    result = _CFRuntimeRegisterClass();
    gRXCFTypeID_RXRecognitionSystem = result;
  }

  return result;
}

const void *RXRecognitionSystemCreate(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!gRXCFTypeID_RXRecognitionSystem)
  {
    gRXCFTypeID_RXRecognitionSystem = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance && !RXRecognitionSystem::Initialize(Instance + 16, a2, a3, 0))
  {
    CFRelease(v6);
    return 0;
  }

  return v6;
}

const void *RXRecognitionSystemCreateWithServiceClient(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (!gRXCFTypeID_RXRecognitionSystem)
  {
    gRXCFTypeID_RXRecognitionSystem = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance && !RXRecognitionSystem::Initialize(Instance + 16, a2, a3, v6))
  {
    CFRelease(v8);
    v8 = 0;
  }

  return v8;
}

void RXRecognitionSystemSetSecureFieldFocused(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = (a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  RXRecognitionSystem::SetSecureFieldFocused(v2, a2);
}

void RXRecognitionSystemAddLeadingContext(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    v2 = (a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  RXRecognitionSystem::AddLeadingContext(v2, a2);
}

void RXRecognitionSystemAddOtherContext(uint64_t a1, const __CFArray *a2)
{
  if (a1)
  {
    v2 = (a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  RXRecognitionSystem::AddOtherContext(v2, a2);
}

void RXRecognitionSystemReset(uint64_t a1)
{
  if (a1)
  {
    RXRecognitionSystem::ResetRecognition((a1 + 16));
  }

  else
  {
    RXRecognitionSystem::ResetRecognition(0);
  }
}

void RXRecognitionSystemSetResetMode(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v2 = a1 + 16;
  }

  else
  {
    v2 = 0;
  }

  RXRecognitionSystem::SetResetMode(v2, a2);
}

void RXRecognitionSystemSaveUserProfileToFile(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    v2 = (a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  RXRecognitionSystem::SaveUserProfileToFile(v2, a2);
}

uint64_t RXRecognitionSystemCopyPhoneticNeighborsForText(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    v2 = (a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return RXRecognitionSystem::PhoneticNeighborsForText(v2, a2);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF6870, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RXRecognitionSystem *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

const void **RXCFProp<__CFLocale const*>::~RXCFProp(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **RXCFProp<__CFURL const*>::~RXCFProp(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **RXCFProp<__CFData const*>::~RXCFProp(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **RXCFProp<__CFString const*>::~RXCFProp(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__tree<RXObject *>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<RXObject *>::destroy(a1, *a2);
    std::__tree<RXObject *>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<RXObject *>::__emplace_unique_key_args<RXObject *,RXObject * const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<RXObject *>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long> &,std::back_insert_iterator<std::vector<RXObject *>> &>(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = *a2;
  if (*a1 == *a2)
  {
LABEL_31:
    v9 = v8;
    return std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::back_insert_iterator<std::vector<RXObject *>>>(&v27, v8, v9, *a5);
  }

  v11 = *a3;
  if (*a3 != *a4)
  {
    while (1)
    {
      v13 = v8[4];
      v14 = v11[4];
      if (v13 >= v14)
      {
        if (v14 >= v13)
        {
          v21 = v8[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v8[2];
              v18 = *v22 == v8;
              v8 = v22;
            }

            while (!v18);
          }

          *a1 = v22;
          v23 = *a3;
          v24 = *(*a3 + 8);
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v23[2];
              v18 = *v25 == v23;
              v23 = v25;
            }

            while (!v18);
          }

          *a3 = v25;
        }

        else
        {
          v19 = v11[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v11[2];
              v18 = *v20 == v11;
              v11 = v20;
            }

            while (!v18);
          }

          *a3 = v20;
        }
      }

      else
      {
        std::back_insert_iterator<std::vector<RXObject *>>::operator=[abi:ne200100](a5, v8 + 4);
        v15 = *a1;
        v16 = *(*a1 + 8);
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v15[2];
            v18 = *v17 == v15;
            v15 = v17;
          }

          while (!v18);
        }

        *a1 = v17;
      }

      v8 = *a1;
      v9 = *a2;
      if (*a1 == *a2)
      {
        break;
      }

      v11 = *a3;
      if (*a3 == *a4)
      {
        return std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::back_insert_iterator<std::vector<RXObject *>>>(&v27, v8, v9, *a5);
      }
    }

    goto LABEL_31;
  }

  return std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::back_insert_iterator<std::vector<RXObject *>>>(&v27, v8, v9, *a5);
}

uint64_t *std::back_insert_iterator<std::vector<RXObject *>>::operator=[abi:ne200100](uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<RXRecognitionSystem *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *v4;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RXRecognitionSystem *>>(*a1, v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v7 = 8 * v8 + 8;
    v13 = *(v4 + 8) - *v4;
    v14 = v12 - v13;
    memcpy(v12 - v13, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
  return a1;
}

void *std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::__tree_const_iterator<RXObject *,std::__tree_node<RXObject *,void *> *,long>,std::back_insert_iterator<std::vector<RXObject *>>>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v10 = a4;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  do
  {
    std::back_insert_iterator<std::vector<RXObject *>>::operator=[abi:ne200100](&v10, v4 + 4);
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v4[2];
        v8 = *v7 == v4;
        v4 = v7;
      }

      while (!v8);
    }

    v4 = v7;
  }

  while (v7 != v5);
  return v5;
}

uint64_t *std::__tree<RXObject *>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

id RXRecognizer::WillDestroy(RXXPC *this)
{
  v2 = RXXPC::Queue(this);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN12RXRecognizer11WillDestroyEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);

  var4 = this->var4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN12RXRecognizer11WillDestroyEv_block_invoke_2;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = var4;
  v4 = MEMORY[0x26D679B00](v6);

  return v4;
}

void ___ZN12RXRecognizer11WillDestroyEv_block_invoke_2(RXXPC *a1)
{
  v2 = RXXPC::Queue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN12RXRecognizer11WillDestroyEv_block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1->var6;
  dispatch_sync(v2, block);
}

CFNumberRef RXRecognizer::CopyProperty(RXRecognizer *this, int a2)
{
  if (a2 > 1919705452)
  {
    if (a2 <= 1919770999)
    {
      if (a2 == 1919705453)
      {
        v6 = *(this + 12);
        if (v6)
        {
          return CFRetain((v6 - 16));
        }

        else
        {
          return 0;
        }
      }

      if (a2 == 1919710062)
      {
        v2 = MEMORY[0x277CBED28];
        if (!*(this + 40))
        {
          v2 = MEMORY[0x277CBED10];
        }

        return *v2;
      }

      return RXObject::CopyProperty(this, a2);
    }

    if (a2 == 1919771000)
    {
      return CFNumberCreate(0, kCFNumberCFIndexType, this + 48);
    }

    if (a2 != 1919969636)
    {
      return RXObject::CopyProperty(this, a2);
    }

    v4 = this + 56;
    v5 = kCFNumberSInt32Type;
    return CFNumberCreate(0, v5, v4);
  }

  if (a2 == 1918985076)
  {
    v4 = this + 112;
LABEL_24:
    v5 = kCFNumberSInt64Type;
    return CFNumberCreate(0, v5, v4);
  }

  if (a2 == 1919312491)
  {
    v4 = this + 120;
    goto LABEL_24;
  }

  if (a2 != 1919512166)
  {
    return RXObject::CopyProperty(this, a2);
  }

  result = *(this + 17);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void RXRecognizer::SetProperty(RXRecognizer *this, int a2, const __CFBoolean *cf)
{
  if (a2 > 1919710061)
  {
    if (a2 <= 1919841644)
    {
      if (a2 == 1919710062)
      {
        v10 = CFBooleanGetValue(cf) != 0;
        if (*(this + 40) != v10)
        {
          (*(*this + 88))(this);
          *(this + 40) = v10;
        }

        return;
      }

      if (a2 == 1919771000)
      {
        valuePtr = 0;
        if (!CFNumberGetValue(cf, kCFNumberCFIndexType, &valuePtr) || (v9 = valuePtr, valuePtr <= 0))
        {
          v9 = 1;
          valuePtr = 1;
        }

        if (v9 != *(this + 6))
        {
          (*(*this + 88))(this);
          *(this + 6) = valuePtr;
        }

        return;
      }
    }

    else
    {
      switch(a2)
      {
        case 1919841645:
          v11 = CFBooleanGetValue(cf) != 0;
          if (*(this + 43) != v11)
          {
            (*(*this + 88))(this);
            *(this + 43) = v11;
          }

          return;
        case 1919969636:
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr != *(this + 14))
          {
            *(this + 14) = valuePtr;
          }

          return;
        case 1920168044:
          v7 = CFBooleanGetValue(cf) != 0;
          if (*(this + 42) != v7)
          {
            (*(*this + 88))(this);
            *(this + 42) = v7;
          }

          return;
      }
    }

LABEL_43:

    RXObject::SetProperty(this, a2, cf);
    return;
  }

  if (a2 <= 1919312490)
  {
    if (a2 == 1918985076)
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr != *(this + 14))
      {
        *(this + 14) = valuePtr;
      }

      return;
    }

    if (a2 == 1919118445)
    {
      v8 = CFBooleanGetValue(cf) != 0;
      if (*(this + 41) != v8)
      {
        (*(*this + 88))(this);
        *(this + 41) = v8;
      }

      return;
    }

    goto LABEL_43;
  }

  if (a2 == 1919312491)
  {
    return;
  }

  if (a2 != 1919512166)
  {
    if (a2 == 1919705453)
    {
      v5 = cf + 16;
      if (!cf)
      {
        v5 = 0;
      }

      v6 = this + 96;
      if (*(this + 12) != v5)
      {
        if (*(this + 40) == 1 && (*(this + 44) & 1) == 0)
        {
          (*(*this + 88))(this);
        }

        RXProp<RXLanguageObject *>::operator=(this + 12, cf);
        if (*v6)
        {
          *(*v6 + 8) |= 1uLL;
        }
      }

      return;
    }

    goto LABEL_43;
  }

  v12 = (this + 136);

  RXCFProp<void const*>::operator=(v12, cf);
}

uint64_t RXProp<RXLanguageObject *>::operator=(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a1)
  {
    CFRelease((*a1 - 16));
  }

  if (cf)
  {
    result = cf + 16;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t RXRecognizer::ClaimLanguageModel(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    *(v1 + 8) |= 1uLL;
  }

  return this;
}

void RXRecognizer::RXRecognizer(RXRecognizer *this)
{
  RXObject::RXObject(this);
  *v1 = &unk_287C0E070;
  *(v1 + 40) = 0;
  *(v1 + 44) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = -1;
  *(v1 + 136) = 0;
}

void RXRecognizer::Initialize(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = a3;
  RXProp<RXRecognitionSystem *>::operator=(a1 + 8, a2);
  v7 = MEMORY[0x26D679B00](v10);
  v8 = a1[9];
  a1[9] = v7;

  a1[1] = a4;
  CFRetain((a1[8] - 16));
  RXRecognitionSystem::AddRecognizer(a1[8], a1);
  if ((*(a1[8] + 8) & 1) == 0)
  {
    v9 = a1[15] | 3;
    a1[14] = 1;
    a1[15] = v9;
  }
}

uint64_t RXProp<RXRecognitionSystem *>::operator=(void *a1, uint64_t a2)
{
  if (a2)
  {
    CFRetain((a2 - 16));
  }

  if (*a1)
  {
    CFRelease((*a1 - 16));
  }

  *a1 = a2;
  return a2;
}

void RXRecognizer::Initialize(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  obj = a3;
  v9 = a4;
  RXProp<RXRecognitionSystem *>::operator=((a1 + 64), a2);
  *(a1 + 8) = a5;
  objc_storeWeak((a1 + 80), v9);
  objc_storeWeak((a1 + 88), obj);
  CFRetain((*(a1 + 64) - 16));
  RXRecognitionSystem::AddRecognizer(*(a1 + 64), a1);
  if ((*(*(a1 + 64) + 8) & 1) == 0)
  {
    v10 = *(a1 + 120) | 3;
    *(a1 + 112) = 1;
    *(a1 + 120) = v10;
  }
}

void RXRecognizer::~RXRecognizer(RXRecognizer *this)
{
  *this = &unk_287C0E070;
  v2 = RXXPC::Queue(this);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN12RXRecognizerD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);

  v3 = *(this + 9);
  *(this + 9) = 0;

  objc_storeWeak(this + 10, 0);
  CFRelease((*(this + 8) - 16));
  RXCFProp<__CFDictionary const*>::~RXCFProp(this + 17);
  RXProp<RXLanguageObject *>::~RXProp(this + 12);
  objc_destroyWeak(this + 11);
  objc_destroyWeak(this + 10);

  RXProp<RXRecognitionSystem *>::~RXProp(this + 8);
  RXObject::~RXObject(this, v4, v5);
}

{
  RXRecognizer::~RXRecognizer(this);

  JUMPOUT(0x26D679770);
}

void RXRecognizer::Serialize(uint64_t a1, void *a2, RXRecognitionSystem *a3)
{
  v5 = a2;
  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 44) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  RXRecognitionSystem::ReachableObject(*(a1 + 64), a1);
  v7 = v6 & 1;
  v8 = *(a1 + 96);
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN12RXRecognizer9SerializeEPU24objcproto13OS_xpc_object8NSObjectP19RXRecognitionSystem_block_invoke;
    v10[3] = &unk_279CF69D0;
    v12 = a1;
    v14 = v7;
    v11 = v5;
    v13 = a3;
    RXLanguageObject::ApplyBlock(v8, v10, 0x10uLL);
  }

  if (*(a1 + 24) && (v7 || *(a1 + 45) == 1))
  {
    *(a1 + 24) = 0;
    *(a1 + 45) = v7;
    v9 = RXObject::CreateXPCDesc(a1, 1, a3);
    xpc_dictionary_set_BOOL(v9, kRDKeyIsListening, v7);
    xpc_dictionary_set_uint64(v9, kRDKeyMaxResults, *(a1 + 48));
    xpc_dictionary_set_BOOL(v9, kRDKeyAllowCloseMatch, *(a1 + 41));
    xpc_dictionary_set_BOOL(v9, kRDKeySpellingMode, *(a1 + 42));
    xpc_dictionary_set_BOOL(v9, kRDKeyNumberMode, *(a1 + 43));
    if (v7)
    {
      xpc_dictionary_set_uint64(v9, kRDKeyLanguageModel, *(a1 + 96));
    }

    xpc_dictionary_set_BOOL(v9, kRDKeyUseStreaming, *(a1 + 8) & 1);
    xpc_array_append_value(v5, v9);
  }
}

uint64_t ___ZN12RXRecognizer9SerializeEPU24objcproto13OS_xpc_object8NSObjectP19RXRecognitionSystem_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 56) == 1)
  {
    (*(*v3 + 96))(v3, *(a1 + 32), *(a1 + 48));
  }

  else
  {
    v4 = *(a1 + 40);
    RXRecognitionSystem::ReachableObject(*(v4 + 64), v3);
    *(v3 + 2) |= 1 << *(*(a1 + 48) + 40);
    v5 = *(v3 + 20);
    if (v5)
    {
      RXRecognitionSystem::ReachableObject(*(v4 + 64), v5);
    }
  }

  return 0;
}

void RXRecognizer::Recognized(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, kRDKeyObjectID);
  if (RecognizerStillExists(uint64))
  {
    v6 = xpc_dictionary_get_value(v3, kRDKeyLanguageModel);
    v13 = 0;
    GetDaemonLMID(v6, &v13);
    if (v13 == *(uint64 + 96) && v6 != 0)
    {
      operator new();
    }

    CFRetain((uint64 - 16));
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN12RXRecognizer10RecognizedEPU24objcproto13OS_xpc_object8NSObjectP22SRDTranscriptionResult_block_invoke;
    v9[3] = &unk_279CF69F8;
    v11 = uint64;
    v12 = 0;
    v10 = v4;
    dispatch_async(v8, v9);
  }
}

void sub_26B58B90C(_Unwind_Exception *a1)
{
  MEMORY[0x26D679770](v4, 0x1020C403ED2C137);

  _Unwind_Resume(a1);
}

void GetDaemonLMID(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (xpc_dictionary_get_int64(v3, kRDKeyObjectType) == 14 || xpc_dictionary_get_int64(v4, kRDKeyObjectType) == 15)
    {
      v5 = xpc_dictionary_get_value(v4, kRDKeyChildren);
      v6 = v5;
      if (v5)
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = ___ZL13GetDaemonLMIDPU24objcproto13OS_xpc_object8NSObjectRy_block_invoke;
        applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
        applier[4] = a2;
        xpc_array_apply(v5, applier);
      }
    }

    else
    {
      *a2 = xpc_dictionary_get_uint64(v4, kRDKeyObjectID);
    }
  }
}

RXResultDesc *RXResultDesc::DeleteRef(RXResultDesc *this)
{
  if ((*this)-- <= 1)
  {
    RXResultDesc::~RXResultDesc(this);

    JUMPOUT(0x26D679770);
  }

  return this;
}

void ___ZN12RXRecognizer10RecognizedEPU24objcproto13OS_xpc_object8NSObjectP22SRDTranscriptionResult_block_invoke(uint64_t a1)
{
  RXRecognizer::Recognized(*(a1 + 40), *(a1 + 48), *(a1 + 32));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease((v2 - 16));
  }

  v3 = (*(a1 + 40) - 16);

  CFRelease(v3);
}

void RXRecognizer::Recognized(id *this, RXLanguageObject *a2, SRDTranscriptionResult *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(this + 10);

  if (a2 && WeakRetained)
  {
    v6 = [[SRDLanguageObject alloc] initWithLanguageObject:a2 - 16 transcriptionResult:v11];
    v7 = objc_loadWeakRetained(this + 10);
    v8 = objc_loadWeakRetained(this + 11);
    [v7 SRDRecognizer:v8 didRecognize:v6];
  }

  else
  {
    v9 = this[9];
    if (v9)
    {
      if (a2)
      {
        v10 = a2 - 16;
      }

      else
      {
        v10 = 0;
      }

      v9[2](v9, v10);
    }
  }
}

CFDataRef RXRecognizer::CopyAudio(RXRecognizer *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(this + 8) + 88);
  v8 = RXXPC::CreateMessage(0x66);
  xpc_dictionary_set_uint64(v8, kRDKeyResultID, a2);
  xpc_dictionary_set_uint64(v8, kRDKeyStartTime, a3);
  xpc_dictionary_set_uint64(v8, kRDKeyEndTime, a4);
  v9 = RXXPC::SendMessageWithReplySync(v7, v8);
  v10 = xpc_dictionary_get_value(v9, kRDKeyAudioData);
  v11 = v10;
  if (v10)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v10);
    length = xpc_data_get_length(v11);
    v14 = CFDataCreate(0, bytes_ptr, length);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void RXRecognizer::ReleaseResult(RXRecognizer *this, uint64_t a2)
{
  v3 = RXXPC::RemoteService(*(*(this + 8) + 88));
  [v3 releaseResult:a2];
}

uint64_t RXRecognizer::BrokerReset(uint64_t this)
{
  *(this + 128) = -1;
  *(this + 44) = 0;
  return this;
}

BOOL RXRecognizer::Choke(RXRecognizer *this, uint64_t a2, int a3)
{
  v4 = *(this + 16);
  if (v4 == a2 && *(this + 44) != a3)
  {
    *(this + 44) = a3;
    v6 = RXXPC::Queue(this);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN12RXRecognizer5ChokeExb_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_async(v6, block);
  }

  return v4 == a2;
}

void ___ZN12RXRecognizer5ChokeExb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  RXRecognitionSystem::StartChanges(v1[2]);
  (*(*v1 + 11))(v1);
  RXRecognitionSystem::CommitChanges(v1[2]);
}

void sub_26B58BF00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RXTransaction<RXRecognizer>::~RXTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t RXRecognizerGetTypeID()
{
  result = gRXCFTypeID_RXRecognizer;
  if (!gRXCFTypeID_RXRecognizer)
  {
    result = _CFRuntimeRegisterClass();
    gRXCFTypeID_RXRecognizer = result;
  }

  return result;
}

uint64_t RXRecognizerCreate(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (!gRXCFTypeID_RXRecognizer)
  {
    gRXCFTypeID_RXRecognizer = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    v9 = (Instance + 16);
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2 + 16;
  }

  else
  {
    v10 = 0;
  }

  RXRecognizer::Initialize(v9, v10, v6, a4);

  return v8;
}

uint64_t RXRecognizerCreateEx(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  if (!gRXCFTypeID_RXRecognizer)
  {
    gRXCFTypeID_RXRecognizer = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    v12 = Instance + 16;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = a2 + 16;
  }

  else
  {
    v13 = 0;
  }

  RXRecognizer::Initialize(v12, v13, v8, v9, a5);

  return v11;
}

uint64_t ___ZL13GetDaemonLMIDPU24objcproto13OS_xpc_object8NSObjectRy_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    GetDaemonLMID(v5, *(a1 + 32));
  }

  return 1;
}

void *RXProp<RXRecognitionSystem *>::~RXProp(void *a1)
{
  if (*a1)
  {
    CFRelease((*a1 - 16));
  }

  return a1;
}

void *RXProp<RXLanguageObject *>::~RXProp(void *a1)
{
  if (*a1)
  {
    CFRelease((*a1 - 16));
  }

  return a1;
}

const void **RXCFProp<__CFDictionary const*>::~RXCFProp(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void RXCFInit_RXVocabulary(void *a1)
{
  RXObject::RXObject((a1 + 2));
  a1[2] = &unk_287C0E100;
  a1[7] = 0;
  a1[8] = 0;
}

void RXVocabulary::RXVocabulary(RXVocabulary *this)
{
  RXObject::RXObject(this);
  *v1 = &unk_287C0E100;
  v1[5] = 0;
  v1[6] = 0;
}

{
  RXObject::RXObject(this);
  *v1 = &unk_287C0E100;
  v1[5] = 0;
  v1[6] = 0;
}

CFTypeRef RXVocabulary::Initialize(CFTypeRef *this, const __CFLocale *a2, const __CFURL *a3)
{
  RXCFProp<void const*>::operator=(this + 5, a2);
  result = RXCFProp<void const*>::operator=(this + 6, a3);
  this[3] = -1;
  return result;
}

void RXVocabulary::~RXVocabulary(const void **this)
{
  *this = &unk_287C0E100;
  v2 = this + 5;
  RXCFProp<__CFURL const*>::~RXCFProp(this + 6);
  RXCFProp<__CFLocale const*>::~RXCFProp(v2);

  RXObject::~RXObject(this, v3, v4);
}

{
  RXVocabulary::~RXVocabulary(this);

  JUMPOUT(0x26D679770);
}

void RXVocabulary::Serialize(RXObject *a1, void *a2, RXRecognitionSystem *a3)
{
  xarray = a2;
  v5 = RXObject::CreateXPCDesc(a1, 5, a3);
  v6 = v5;
  v7 = *(a1 + 6);
  if (v7)
  {
    RXXPC::SerializeURL(v5, v7);
  }

  xpc_array_append_value(xarray, v6);
}

uint64_t RXVocabularyGetTypeID()
{
  result = gRXCFTypeID_RXVocabulary;
  if (!gRXCFTypeID_RXVocabulary)
  {
    result = _CFRuntimeRegisterClass();
    gRXCFTypeID_RXVocabulary = result;
  }

  return result;
}

uint64_t RXVocabularyCreateWithLocale(uint64_t a1, const void *a2)
{
  if (!gRXCFTypeID_RXVocabulary)
  {
    gRXCFTypeID_RXVocabulary = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    v5 = Instance + 16;
  }

  else
  {
    v5 = 0;
  }

  RXCFProp<void const*>::operator=((v5 + 40), a2);
  v6 = *(v5 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  *(v5 + 48) = 0;
  *(v5 + 24) = -1;
  return v4;
}

uint64_t RXVocabularyCreateWithURL(uint64_t a1, const void *a2)
{
  if (!gRXCFTypeID_RXVocabulary)
  {
    gRXCFTypeID_RXVocabulary = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    v5 = Instance + 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  *(v5 + 40) = 0;
  RXCFProp<void const*>::operator=((v5 + 48), a2);
  *(v5 + 24) = -1;
  return v4;
}

double RXCFInit_RXLanguageObject(void *a1)
{
  RXObject::RXObject((a1 + 2));
  a1[2] = &unk_287C0E190;
  *(a1 + 14) = 0;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  a1[14] = 0;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  return result;
}

void RXLanguageObject::RXLanguageObject(RXLanguageObject *this)
{
  RXObject::RXObject(this);
  *v1 = &unk_287C0E190;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
}

{
  RXObject::RXObject(this);
  *v1 = &unk_287C0E190;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
}

uint64_t RXCFRegister_RXLanguageObject(void)
{
  qword_281FEFF08 = RXCFCopyFormattingDesc;
  qword_281FEFF10 = RXCFCopyDebugDesc;
  return _CFRuntimeRegisterClass();
}

CFArrayRef RXLanguageObject::CopyProperty(RXLanguageObject *this, int a2)
{
  if ((*(this + 10) & 0xFFFFFFFE) == 4)
  {
    if (a2 != 1970563428)
    {
      if (a2 != 1818786160)
      {
        if (a2 == 1818391412)
        {
          v3 = 0;
          *&__p = 0.0;
          v23 = 0;
          v24 = 0;
          v4 = *(this + 21);
          do
          {
            v21 = *(v4 + 8 * v3) - 16;
            std::vector<void const*>::push_back[abi:ne200100](&__p, &v21);
            ++v3;
            v4 = *(this + 21);
          }

          while (v3 < (*(this + 22) - v4) >> 3);
          v5 = CFArrayCreate(0, __p, (v23 - __p) >> 3, MEMORY[0x277CBF128]);
          if (*&__p != 0.0)
          {
            v23 = __p;
            operator delete(__p);
          }

          return v5;
        }

        v12 = *(this + 21);
        if (v12 != *(this + 22))
        {
          v13 = *(**v12 + 64);

          return v13();
        }

        return 0;
      }

      v6 = MEMORY[0x277CBED28];
      v7 = MEMORY[0x277CBED10];
      v8 = (*(this + 1) & 2) == 0;
      goto LABEL_42;
    }

    v11 = this + 216;
    goto LABEL_53;
  }

  if (a2 <= 1819173228)
  {
    if (a2 <= 1818453103)
    {
      if (a2 == 1818326372)
      {
        v14 = *(this + 24);
        if (!v14)
        {
          return 0;
        }

        v16 = *(v14 + 8);
        v15 = *(v14 + 16);
        v17 = *(this + 25);
        v18 = *(this + 26);

        return RXRecognizer::CopyAudio(v15, v16, v17, v18);
      }

      if (a2 != 1818453097)
      {
        goto LABEL_62;
      }

      return *(this + 12);
    }

    else
    {
      if (a2 == 1818453104)
      {
        v11 = this + 104;
LABEL_53:

        return CFNumberCreate(0, kCFNumberSInt64Type, v11);
      }

      if (a2 != 1818457193)
      {
        if (a2 != 1818588269)
        {
          goto LABEL_62;
        }

        v9 = *(this + 26);
        if (!v9)
        {
          return 0;
        }

        goto LABEL_59;
      }

      return *(this + 11);
    }
  }

  if (a2 <= 1819505772)
  {
    if (a2 != 1819173229)
    {
      if (a2 == 1819242612)
      {
        v6 = MEMORY[0x277CBED28];
        v7 = MEMORY[0x277CBED10];
        v8 = (*(this + 1) & 4) == 0;
        goto LABEL_42;
      }

      if (a2 == 1819439220)
      {
        v6 = MEMORY[0x277CBED28];
        v7 = MEMORY[0x277CBED10];
        v8 = (*(this + 1) & 8) == 0;
LABEL_42:
        if (v8)
        {
          v19 = v7;
        }

        else
        {
          v19 = v6;
        }

        v20 = *v19;
        goto LABEL_46;
      }

      goto LABEL_62;
    }

    v20 = *(this + 6);
    if (v20)
    {
LABEL_46:

      return CFRetain(v20);
    }

    return 0;
  }

  if (a2 == 1819505773)
  {
    v9 = *(this + 25);
    if (!v9)
    {
      return 0;
    }

LABEL_59:
    *&__p = v9 / 1000.0;
    return CFNumberCreate(0, kCFNumberDoubleType, &__p);
  }

  if (a2 != 1819571826)
  {
    if (a2 == 1819572340)
    {

      return RXLanguageObject::CopyTextWithLocale(this, 0);
    }

LABEL_62:

    return RXObject::CopyProperty(this, a2);
  }

  return RXLanguageObject::CopyTextVariantsWithLocale(this, 0);
}

void sub_26B58CB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<RXRecognitionSystem *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

CFArrayRef RXLanguageObject::CopyPropertyWithLocale(RXLanguageObject *this, int a2, const __CFLocale *a3)
{
  if (a2 == 1819571826)
  {
    return RXLanguageObject::CopyTextVariantsWithLocale(this, a3);
  }

  if (a2 == 1819572340)
  {
    return RXLanguageObject::CopyTextWithLocale(this, a3);
  }

  return (*(*this + 64))();
}

CFMutableStringRef RXLanguageObject::CopyTextWithLocale(RXLanguageObject *this, const __CFLocale *a2)
{
  v3 = *(this + 10);
  if ((v3 - 2) >= 2 && (v3 != 1 || !*(this + 7)))
  {
    Mutable = CFStringCreateMutable(0, 0);
    if (a2)
    {
      v8 = MEMORY[0x26D679270](a2);
    }

    else
    {
      v8 = @"en_US";
    }

    v9 = RXIsLocaleWithNoSpaceInPostITN(v8);
    v10 = @" | ";
    if (v9)
    {
      v10 = @"|";
      v11 = &stru_287C0EB30;
    }

    else
    {
      v11 = @" ";
    }

    v12 = *(this + 10);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN16RXLanguageObject18CopyTextWithLocaleEPK10__CFLocale_block_invoke;
    v13[3] = &__block_descriptor_64_e12_Q24__0_v8Q16l;
    v13[4] = this - 16;
    v13[5] = a2;
    if (v12 == 1)
    {
      v10 = v11;
    }

    v13[6] = Mutable;
    v13[7] = v10;
    RXLanguageObject::ApplyBlock(this, v13, 2uLL);
    return Mutable;
  }

  v5 = *(this + 7);
  if (!v5)
  {
    return 0;
  }

  return CFRetain(v5);
}

CFArrayRef RXLanguageObject::CopyTextVariantsWithLocale(RXLanguageObject *this, const __CFLocale *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
LABEL_2:

    return CFArrayCreateCopy(0, v3);
  }

  v5 = this;
  while (1)
  {
    v6 = *(v5 + 10);
    if (v6 != 1)
    {
      break;
    }

    if (*(v5 + 7))
    {
LABEL_17:
      v10 = *(v5 + 7);
      v9 = (v5 + 56);
      if (v10)
      {
        v11 = MEMORY[0x277CBF128];
        values = CFArrayCreate(0, v9, 1, MEMORY[0x277CBF128]);
        Mutable = CFArrayCreate(0, &values, 1, v11);
        CFRelease(values);
        return Mutable;
      }

      v13 = MEMORY[0x277CBF128];

      return CFArrayCreate(0, 0, 0, v13);
    }

    v7 = *(v5 + 21);
    if (*(v5 + 22) - v7 != 8)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v14 = *(v5 + 21);
      if (*(v5 + 22) == v14)
      {
        return Mutable;
      }

      v15 = 0;
      v16 = MEMORY[0x277CBF128];
      while (2)
      {
        v17 = RXLanguageObject::CopyTextVariantsWithLocale(*(v14 + 8 * v15), 0);
        Count = CFArrayGetCount(v17);
        v19 = CFArrayGetCount(Mutable);
        v20 = v19;
        if (v19)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v19 - 1);
        }

        else
        {
          ValueAtIndex = 0;
        }

        if (Count == 1)
        {
          v22 = CFArrayGetValueAtIndex(v17, 0);
          if (!v20)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v22 = 0;
          if (!v20)
          {
            goto LABEL_41;
          }
        }

        v23 = CFArrayGetCount(ValueAtIndex);
        v24 = Count == 1 && v23 == 1;
        if (v24 && CFArrayGetCount(v22) == 1)
        {
          v25 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
          values = CFStringCreateMutableCopy(0, 0, v25);
          if (a2)
          {
            v26 = MEMORY[0x26D679270](a2);
          }

          else
          {
            v26 = @"en_US";
          }

          if (!RXIsLocaleWithNoSpaceInPostITN(v26))
          {
            CFStringAppend(values, @" ");
          }

          v27 = values;
          v28 = CFArrayGetValueAtIndex(v22, 0);
          CFStringAppend(v27, v28);
          v29 = CFArrayCreate(0, &values, 1, v16);
          CFArraySetValueAtIndex(Mutable, v20 - 1, v29);
          CFRelease(v29);
          CFRelease(values);
        }

        else
        {
LABEL_41:
          v42.location = 0;
          v42.length = Count;
          CFArrayAppendArray(Mutable, v17, v42);
        }

        CFRelease(v17);
        ++v15;
        v14 = *(v5 + 21);
        if (v15 >= (*(v5 + 22) - v14) >> 3)
        {
          return Mutable;
        }

        continue;
      }
    }

LABEL_15:
    a2 = 0;
    v5 = *v7;
    v3 = *(*v7 + 10);
    if (v3)
    {
      goto LABEL_2;
    }
  }

  if (v6 - 2 < 2)
  {
    goto LABEL_17;
  }

  v7 = *(v5 + 21);
  if (v6 <= 1 && *(v5 + 22) - v7 == 8)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v30 = *(v5 + 21);
  if (*(v5 + 22) != v30)
  {
    v31 = 0;
    do
    {
      v32 = RXLanguageObject::CopyTextVariantsWithLocale(*(v30 + 8 * v31), 0);
      v33 = CFArrayGetCount(v32);
      v34 = CFArrayGetCount(Mutable);
      if (v34 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v34;
      }

      if (v33)
      {
        for (i = 0; i != v33; ++i)
        {
          v37 = CFArrayGetValueAtIndex(v32, i);
          if (i >= v35)
          {
            MutableCopy = CFArrayCreateMutableCopy(0, 0, v37);
            CFArrayAppendValue(Mutable, MutableCopy);
            CFRelease(MutableCopy);
          }

          else
          {
            v38 = CFArrayGetValueAtIndex(Mutable, i);
            v43.length = CFArrayGetCount(v37);
            v43.location = 0;
            CFArrayAppendArray(v38, v32, v43);
          }
        }
      }

      if (v32)
      {
        CFRelease(v32);
      }

      ++v31;
      v30 = *(v5 + 21);
    }

    while (v31 < (*(v5 + 22) - v30) >> 3);
  }

  return Mutable;
}

void RXLanguageObject::SetProperty(RXLanguageObject *this, int a2, const __CFBoolean *cf)
{
  v5 = *(this + 10);
  if ((v5 & 0xFFFFFFFE) == 4)
  {
    v6 = *(this + 21);
    if (v6 != *(this + 22))
    {
      v7 = *(**v6 + 80);

      v7();
    }

    return;
  }

  if (a2 > 1819173228)
  {
    if (a2 > 1819439219)
    {
      if (a2 == 1819439220)
      {
        v14 = (*(this + 1) & 8) == 0;
        if (CFBooleanGetValue(cf) != v14)
        {
          return;
        }

        (*(*this + 88))(this);
        v10 = *(this + 1) ^ 8;
        goto LABEL_37;
      }

      if (a2 != 1819572340)
      {
LABEL_39:

        RXObject::SetProperty(this, a2, cf);
        return;
      }

      if (v5 != 1)
      {
        if (v5 == 2)
        {
          if (!cf)
          {
            __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 151, "value", @"Word cannot have NULL text");
          }

          (*(*this + 88))(this);
          RXCFProp<void const*>::operator=(this + 7, cf);
          v11 = *(this + 8);
          if (v11)
          {
            CFRelease(v11);
          }

          *(this + 8) = 0;
        }

        else
        {

          __RXAbort(0, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 159, 0, @"kRXLanguageObjectProperty_Text is settable only on words or paths");
        }

        return;
      }

      v13 = (this + 56);
      v12 = *this;
    }

    else
    {
      if (a2 != 1819173229)
      {
        if (a2 == 1819242612)
        {
          v9 = (*(this + 1) & 4) == 0;
          if (CFBooleanGetValue(cf) != v9)
          {
            return;
          }

          (*(*this + 88))(this);
          v10 = *(this + 1) ^ 4;
LABEL_37:
          *(this + 1) = v10;
          return;
        }

        goto LABEL_39;
      }

      v13 = (this + 48);
      v12 = *this;
    }

    (*(v12 + 88))(this);
    v8 = v13;
    goto LABEL_44;
  }

  if (a2 > 1818453103)
  {
    if (a2 != 1818453104)
    {
      if (a2 == 1818457193)
      {
        v8 = (this + 88);
        goto LABEL_44;
      }

      goto LABEL_39;
    }

    CFNumberGetValue(cf, kCFNumberSInt64Type, this + 104);
  }

  else
  {
    if (a2 != 1818326372)
    {
      if (a2 == 1818453097)
      {
        v8 = (this + 96);
LABEL_44:

        RXCFProp<void const*>::operator=(v8, cf);
        return;
      }

      goto LABEL_39;
    }

    RXObject::PropertyReadOnly(this, 1818326372);
  }
}

uint64_t RXLanguageObject::ApplyBlock(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 40);
  if ((v7 & 0xFFFFFFFE) != 4)
  {
    if ((a3 & 1) != 0 || v7 > 1)
    {
      v13 = (*(v5 + 2))(v5, a1 - 16, a3 & 0xFFFFFFFFFFFFFFE7);
    }

    else
    {
      v10 = a3;
      if ((a3 & 8) != 0)
      {
        v14 = (*(v5 + 2))(v5, a1 - 16, a3 & 0xFFFFFFFFFFFFFFEELL);
        if ((v14 & 4) != 0)
        {
          goto LABEL_20;
        }

        if (v14)
        {
          goto LABEL_22;
        }

        v10 = v14 | a3;
      }

      if ((v10 & 2) != 0)
      {
        v11 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + 1;
      }

      else
      {
        v11 = a3;
      }

      for (i = *(a1 + 168); i != *(a1 + 176); ++i)
      {
        if ((RXLanguageObject::ApplyBlock(*i, v6, v11) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if ((a3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v13 = v6[2](v6, a1 - 16, a3 & 0xFFFFFFFFFFFFFFF6);
    }

    if ((v13 & 4) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v9 = 0;
    goto LABEL_23;
  }

  v8 = *(a1 + 168);
  if (v8 == *(a1 + 176))
  {
LABEL_22:
    v9 = 1;
    goto LABEL_23;
  }

  v9 = RXLanguageObject::ApplyBlock(*v8, v5, a3);
LABEL_23:

  return v9;
}

uint64_t ___ZN16RXLanguageObject18CopyTextWithLocaleEPK10__CFLocale_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != a2)
  {
    if (a2)
    {
      v3 = a2 + 16;
    }

    else
    {
      v3 = 0;
    }

    v4 = (*(*v3 + 72))(v3, 1819572340, *(a1 + 40));
    if (CFStringGetLength(*(a1 + 48)))
    {
      CFStringAppend(*(a1 + 48), *(a1 + 56));
    }

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = @"";
    }

    CFStringAppend(*(a1 + 48), v5);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return 0;
}

void RXLanguageObject::~RXLanguageObject(RXLanguageObject *this)
{
  *this = &unk_287C0E190;
  v3 = *(this + 21);
  for (i = *(this + 22); v3 != i; i = *(this + 22))
  {
    CFRelease((*v3++ - 16));
  }

  v4 = *(this + 24);
  if (v4)
  {
    RXResultDesc::DeleteRef(v4);
  }

  v5 = *(this + 21);
  if (v5)
  {
    *(this + 22) = v5;
    operator delete(v5);
  }

  RXProp<RXVocabulary *>::~RXProp(this + 20);
  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  RXCFProp<__CFString const*>::~RXCFProp(this + 12);
  RXCFProp<__CFString const*>::~RXCFProp(this + 11);
  RXCFProp<__CFArray const*>::~RXCFProp(this + 10);
  RXCFProp<__CFURL const*>::~RXCFProp(this + 9);
  RXCFProp<__CFString const*>::~RXCFProp(this + 8);
  RXCFProp<__CFString const*>::~RXCFProp(this + 7);
  RXCFProp<__CFString const*>::~RXCFProp(this + 6);

  RXObject::~RXObject(this, v8, v9);
}

{
  RXLanguageObject::~RXLanguageObject(this);

  JUMPOUT(0x26D679770);
}

CFTypeRef RXLanguageObject::InitializeModel(RXLanguageObject *this, const __CFString *a2, const __CFURL *a3, const void *a4)
{
  *(this + 10) = 0;
  RXCFProp<void const*>::operator=(this + 6, a2);
  RXCFProp<void const*>::operator=(this + 9, a3);

  return RXCFProp<void const*>::operator=(this + 4, a4);
}

CFTypeRef RXLanguageObject::InitializePath(RXLanguageObject *this, const __CFString *a2, const void *a3)
{
  *(this + 10) = 1;
  RXCFProp<void const*>::operator=(this + 6, a2);

  return RXCFProp<void const*>::operator=(this + 4, a3);
}

CFTypeRef RXLanguageObject::InitializeWord(RXLanguageObject *this, RXVocabulary *a2, const __CFString *a3, const void *a4)
{
  *(this + 10) = 2;
  RXProp<RXRecognitionSystem *>::operator=(this + 20, a2);
  RXCFProp<void const*>::operator=(this + 7, a3);

  return RXCFProp<void const*>::operator=(this + 4, a4);
}

CFTypeRef RXLanguageObject::InitializeAdLib(RXLanguageObject *this, const __CFString *a2, RXVocabulary *a3, const void *a4)
{
  *(this + 10) = 3;
  RXProp<RXRecognitionSystem *>::operator=(this + 20, a3);
  result = RXCFProp<void const*>::operator=(this + 4, a4);
  *(this + 1) |= 8uLL;
  return result;
}

uint64_t RXLanguageObject::GetCount(RXLanguageObject *this)
{
  while (1)
  {
    v1 = *(this + 10);
    if ((v1 & 0xFFFFFFFE) != 4)
    {
      break;
    }

    v2 = *(this + 21);
    if (v2 == *(this + 22))
    {
      return -1;
    }

    this = *v2;
  }

  if (v1 <= 1)
  {
    return (*(this + 22) - *(this + 21)) >> 3;
  }

  return -1;
}

void RXLanguageObject::AddObject(RXLanguageObject *this, RXLanguageObject *a2)
{
  v3 = this;
  for (i = *(this + 10); (i & 0xFFFFFFFE) == 4; i = *(*v5 + 10))
  {
    v5 = *(v3 + 21);
    if (v5 == *(v3 + 22))
    {
      return;
    }

    v3 = *v5;
  }

  if (i >= 2)
  {
    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 494, "CanBeParent()", &stru_287C0EB30);
  }

  CFRetain(a2 - 16);
  (*(*v3 + 88))(v3);
  v7 = *(v3 + 22);
  v6 = *(v3 + 23);
  if (v7 >= v6)
  {
    v9 = *(v3 + 21);
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<RXRecognitionSystem *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RXRecognitionSystem *>>(v3 + 168, v13);
    }

    v14 = (8 * v10);
    *v14 = a2;
    v8 = 8 * v10 + 8;
    v15 = *(v3 + 21);
    v16 = *(v3 + 22) - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = *(v3 + 21);
    *(v3 + 21) = v17;
    *(v3 + 22) = v8;
    *(v3 + 23) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = a2;
    v8 = (v7 + 1);
  }

  *(v3 + 22) = v8;
}

uint64_t RXLanguageObject::GetObject(RXLanguageObject *this, unint64_t a2)
{
  v3 = this;
  if ((*(this + 10) & 0xFFFFFFFE) == 4)
  {
    do
    {
      v4 = *(v3 + 21);
      if (v4 == *(v3 + 22))
      {
        __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 505, "!fChildren.empty()", &stru_287C0EB30);
        v4 = *(v3 + 21);
      }

      v3 = *v4;
    }

    while ((*(*v4 + 10) & 0xFFFFFFFE) == 4);
  }

  if ((a2 & 0x8000000000000000) != 0 || (v5 = *(v3 + 21), a2 >= (*(v3 + 22) - v5) >> 3))
  {
    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 509, "at >= 0 && at < fChildren.size()", &stru_287C0EB30);
    v5 = *(v3 + 21);
  }

  return *(v5 + 8 * a2);
}

void RXLanguageObject::SetObject(RXLanguageObject *this, unint64_t a2, RXLanguageObject *a3)
{
  v5 = this;
  if ((*(this + 10) & 0xFFFFFFFE) == 4)
  {
    do
    {
      v6 = *(v5 + 21);
      if (v6 == *(v5 + 22))
      {
        __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 519, "!fChildren.empty()", &stru_287C0EB30);
        v6 = *(v5 + 21);
      }

      v5 = *v6;
    }

    while ((*(*v6 + 10) & 0xFFFFFFFE) == 4);
  }

  if ((a2 & 0x8000000000000000) != 0 || a2 >= (*(v5 + 22) - *(v5 + 21)) >> 3)
  {
    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 525, "at >= 0 && at < fChildren.size()", &stru_287C0EB30);
  }

  (*(*v5 + 88))(v5);
  CFRetain(a3 - 16);
  v7 = CFGetRetainCount((*(*(v5 + 21) + 8 * a2) - 16));
  v8 = *(*(v5 + 21) + 8 * a2);
  if (v7 > 1)
  {
    *(v8 + 16) &= ~*(v5 + 2);
  }

  CFRelease((v8 - 16));
  *(*(v5 + 21) + 8 * a2) = a3;
}

void RXLanguageObject::RemoveObject(RXLanguageObject *this, unint64_t a2)
{
  v3 = this;
  if ((*(this + 10) & 0xFFFFFFFE) == 4)
  {
    do
    {
      v4 = *(v3 + 21);
      if (v4 == *(v3 + 22))
      {
        __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 544, "!fChildren.empty()", &stru_287C0EB30);
        v4 = *(v3 + 21);
      }

      v3 = *v4;
    }

    while ((*(*v4 + 10) & 0xFFFFFFFE) == 4);
  }

  if ((a2 & 0x8000000000000000) != 0 || a2 >= (*(v3 + 22) - *(v3 + 21)) >> 3)
  {
    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXLanguageObject.mm", 550, "at >= 0 && at < fChildren.size()", &stru_287C0EB30);
  }

  (*(*v3 + 88))(v3);
  v5 = CFGetRetainCount((*(*(v3 + 21) + 8 * a2) - 16));
  v6 = *(*(v3 + 21) + 8 * a2);
  if (v5 > 1)
  {
    *(v6 + 16) &= ~*(v3 + 2);
  }

  CFRelease((v6 - 16));
  v7 = *(v3 + 22);
  v8 = *(v3 + 21) + 8 * a2;
  v9 = v7 - (v8 + 8);
  if (v7 != v8 + 8)
  {
    memmove(v8, (v8 + 8), v7 - (v8 + 8));
  }

  *(v3 + 22) = v8 + v9;
}

void RXLanguageObject::Serialize(uint64_t a1, void *a2, const __CFLocale **a3)
{
  xarray = a2;
  if (RXObject::ShouldSerialize(a1, a3))
  {
    v5 = RXObject::CreateXPCDesc(a1, *(a1 + 40) + 10, a3);
    v6 = v5;
    v7 = *(a1 + 8);
    if ((v7 & 0xC) != 0)
    {
      xpc_dictionary_set_uint64(v5, kRDKeyOptions, v7);
    }

    if (*(a1 + 56))
    {
      RXLanguageObject::NormalizeText(a1, a3[6]);
      RXXPC::SerializeCFString(v6, kRDKeyText, *(a1 + 64));
    }

    v8 = *(a1 + 96);
    if (v8)
    {
      RXXPC::SerializeCFString(v6, kRDKeyCommandID, v8);
      xpc_dictionary_set_uint64(v6, kRDKeyCommandPriority, *(a1 + 104));
    }

    v9 = *(a1 + 88);
    if (v9)
    {
      RXXPC::SerializeCFString(v6, kRDKeyCategoryID, v9);
    }

    v10 = *(a1 + 72);
    if (v10)
    {
      RXXPC::SerializeURL(v6, v10);
    }

    v11 = *(a1 + 160);
    if (v11)
    {
      xpc_dictionary_set_uint64(v6, kRDKeyVocabulary, v11);
      RXRecognitionSystem::ReachableObject(a3, *(a1 + 160));
    }

    if (*(a1 + 40) <= 1u)
    {
      v12 = xpc_array_create(0, 0);
      v13 = *(a1 + 168);
      if (*(a1 + 176) != v13)
      {
        v14 = 0;
        do
        {
          xpc_array_set_uint64(v12, 0xFFFFFFFFFFFFFFFFLL, *(v13 + 8 * v14++));
          v13 = *(a1 + 168);
        }

        while (v14 < (*(a1 + 176) - v13) >> 3);
      }

      xpc_dictionary_set_value(v6, kRDKeyChildren, v12);
    }

    if (*(a1 + 8))
    {
      xpc_dictionary_set_BOOL(v6, kRDKeyTopLevelLM, 1);
    }

    xpc_array_append_value(xarray, v6);
  }
}

void RXLanguageObject::NormalizeText(RXLanguageObject *this, const __CFLocale *a2)
{
  v3 = *(this + 7);
  if (!v3)
  {
    return;
  }

  v4 = (this + 64);
  if (*(this + 8))
  {
    return;
  }

  Length = CFStringGetLength(v3);
  v7 = *(this + 7);
  theString = v7;
  v37 = 0;
  v38 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  CStringPtr = 0;
  v35 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  v39 = 0;
  v40 = 0;
  v36 = CStringPtr;
  if (Length < 1)
  {
    v11 = 0;
    v28 = 0;
    goto LABEL_47;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 64;
  do
  {
    if (v12 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v12;
    }

    v16 = v38;
    if (v38 <= v12)
    {
      v18 = 0;
    }

    else
    {
      if (v35)
      {
        v17 = &v35[v37];
LABEL_13:
        v18 = v17[v12];
        goto LABEL_15;
      }

      if (!v36)
      {
        v21 = v39;
        if (v40 <= v12 || v39 > v12)
        {
          v23 = -v15;
          v24 = v15 + v10;
          v25 = v14 - v15;
          v26 = v12 + v23;
          v27 = v26 + 64;
          if (v26 + 64 >= v38)
          {
            v27 = v38;
          }

          v39 = v26;
          v40 = v27;
          if (v38 >= v25)
          {
            v16 = v25;
          }

          v41.location = v26 + v37;
          v41.length = v16 + v24;
          CFStringGetCharacters(theString, v41, buffer);
          v21 = v39;
        }

        v17 = &buffer[-v21];
        goto LABEL_13;
      }

      v18 = v36[v37 + v12];
    }

LABEL_15:
    v19 = u_charType(v18);
    if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          ++v13;
        }

        goto LABEL_27;
      }

LABEL_21:
      if (v13)
      {
        v20 = v11 == 0;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v11 = 2;
      }

      else
      {
        ++v11;
      }

      goto LABEL_27;
    }

    if (v19 == 3)
    {
      goto LABEL_21;
    }

    if (v19 == 9)
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, *(this + 7));
      goto LABEL_53;
    }

LABEL_27:
    if (++v12 >= Length)
    {
      break;
    }

    --v10;
    ++v14;
  }

  while (v11 <= 1);
  v28 = v13 == 1;
  if (v11 >= 1)
  {
    v29 = *(this + 7);
    v30 = (this + 64);
    goto LABEL_50;
  }

LABEL_47:
  if (v11 || v28)
  {
    v31 = CFStringCreateMutableCopy(0, 0, *(this + 7));
    MutableCopy = v31;
    if (v11)
    {
      CFStringLowercase(v31, a2);
    }

    else
    {
LABEL_53:
      CFStringUppercase(MutableCopy, a2);
    }

    RXCFProp<void const*>::operator=(v4, MutableCopy);
    CFRelease(MutableCopy);
  }

  else
  {
    v30 = (this + 64);
    v29 = *(this + 7);
LABEL_50:
    RXCFProp<void const*>::operator=(v30, v29);
  }
}

uint64_t RXLanguageObject::CreateFromSerialized(void *a1, void *a2)
{
  v3 = a1;
  if (!gRXCFTypeID_RXLanguageObject)
  {
    qword_281FEFF08 = RXCFCopyFormattingDesc;
    qword_281FEFF10 = RXCFCopyDebugDesc;
    gRXCFTypeID_RXLanguageObject = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance + 16;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    ++*a2;
    *(v5 + 192) = a2;
  }

  if (xpc_dictionary_get_int64(v3, kRDKeyObjectType) == 14)
  {
    *(v5 + 40) = 4;
    if (xpc_dictionary_get_BOOL(v3, kRDKeyIsHypothesis))
    {
      *(v5 + 8) |= 2uLL;
    }
  }

  else if (xpc_dictionary_get_int64(v3, kRDKeyObjectType) == 15)
  {
    *(v5 + 40) = 5;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v3, kRDKeyObjectID);
    *(v5 + 40) = *(uint64 + 40);
    RXCFProp<void const*>::operator=((v5 + 32), *(uint64 + 32));
    RXCFProp<void const*>::operator=((v5 + 48), *(uint64 + 48));
    RXCFProp<void const*>::operator=((v5 + 56), *(uint64 + 56));
    RXCFProp<void const*>::operator=((v5 + 72), *(uint64 + 72));
    RXProp<RXRecognitionSystem *>::operator=((v5 + 160), *(uint64 + 160));
    v7 = xpc_dictionary_get_value(v3, kRDKeyText);
    v8 = v7;
    v20 = a2;
    if (v7)
    {
      string_ptr = xpc_string_get_string_ptr(v7);
      v10 = CFStringCreateWithCString(0, string_ptr, 0x8000100u);
      RXCFProp<void const*>::operator=((v5 + 56), v10);
      if (v10)
      {
        CFRelease(v10);
      }
    }

    *(v5 + 120) = *(v5 + 112);
    *(v5 + 144) = *(v5 + 136);
    v11 = xpc_dictionary_get_value(v3, kRDKeyTextVariants);
    if (v11)
    {
      v12 = 0;
      __p = 0;
      v24 = 0;
      v25 = 0;
      while (v12 < xpc_array_get_count(v11))
      {
        v13 = xpc_array_get_value(v11, v12);
        v14 = xpc_dictionary_get_value(v13, kRDKeyText);
        v22 = _CFXPCCreateCFObjectFromXPCObject();
        std::vector<void const*>::push_back[abi:ne200100](&__p, &v22);

        v22 = xpc_dictionary_get_uint64(v13, kRDKeyStartTime);
        std::vector<unsigned long long>::push_back[abi:ne200100]((v5 + 112), &v22);
        v22 = xpc_dictionary_get_uint64(v13, kRDKeyEndTime);
        std::vector<unsigned long long>::push_back[abi:ne200100]((v5 + 136), &v22);

        ++v12;
      }

      v15 = CFArrayCreate(0, __p, (v24 - __p) >> 3, MEMORY[0x277CBF128]);
      for (i = __p; i != v24; ++i)
      {
        CFRelease(*i);
      }

      RXCFProp<void const*>::operator=((v5 + 80), v15);
      CFRelease(v15);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }
    }

    a2 = v20;
  }

  *(v5 + 200) = xpc_dictionary_get_uint64(v3, kRDKeyStartTime);
  *(v5 + 208) = xpc_dictionary_get_uint64(v3, kRDKeyEndTime);
  *(v5 + 216) = xpc_dictionary_get_uint64(v3, kRDKeyUtteranceID);
  v17 = xpc_dictionary_get_value(v3, kRDKeyChildren);
  v18 = v17;
  if (v17)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = ___ZN16RXLanguageObject20CreateFromSerializedEPU24objcproto13OS_xpc_object8NSObjectP12RXResultDesc_block_invoke;
    applier[3] = &__block_descriptor_48_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
    applier[4] = v5;
    applier[5] = a2;
    xpc_array_apply(v17, applier);
  }

  return v5;
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<RXRecognitionSystem *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t ___ZN16RXLanguageObject20CreateFromSerializedEPU24objcproto13OS_xpc_object8NSObjectP12RXResultDesc_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = RXLanguageObject::CreateFromSerialized();
  v9 = v6[22];
  v8 = v6[23];
  if (v9 >= v8)
  {
    v11 = v6[21];
    v12 = (v9 - v11) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::vector<RXRecognitionSystem *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v8 - v11;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RXRecognitionSystem *>>((v6 + 21), v15);
    }

    v16 = (8 * v12);
    *v16 = v7;
    v10 = 8 * v12 + 8;
    v17 = v6[21];
    v18 = v6[22] - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = v6[21];
    v6[21] = v19;
    v6[22] = v10;
    v6[23] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v9 = v7;
    v10 = (v9 + 1);
  }

  v6[22] = v10;

  return 1;
}

__CFString *RXLanguageObject::CopyFormattingDesc(RXLanguageObject *this, const __CFDictionary *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    return CFRetain(v2);
  }

  else
  {
    return &stru_287C0EB30;
  }
}

CFStringRef RXLanguageObject::CopyDebugDesc(RXLanguageObject *this)
{
  if (!*(this + 10) && *(this + 22) == *(this + 21))
  {
    v3 = &stru_287C0EB30;
  }

  else
  {
    v29 = 10;
    chars = 123;
    v27 = 125;
    MutableCopy = CFStringCreateMutableCopy(0, 0, @"\n  ");
    v3 = MutableCopy;
    if (*(this + 10))
    {
      CFStringAppend(MutableCopy, @"{ ");
      if (CFArrayGetCount(*(this + 10)) >= 1)
      {
        v4 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(this + 10), v4);
          if (v4)
          {
            CFStringAppend(v3, @"  ");
          }

          if (CFArrayGetCount(ValueAtIndex) != 1)
          {
            CFStringAppendCharacters(v3, &chars, 1);
          }

          if (CFArrayGetCount(ValueAtIndex) >= 1)
          {
            v6 = 0;
            do
            {
              if (v6)
              {
                v7 = @", ";
              }

              else
              {
                v7 = &stru_287C0EB30;
              }

              v8 = CFArrayGetValueAtIndex(ValueAtIndex, v6);
              CFStringAppendFormat(v3, 0, @"%@%@", v7, v8);
              ++v6;
            }

            while (v6 < CFArrayGetCount(ValueAtIndex));
          }

          if (CFArrayGetCount(ValueAtIndex) != 1)
          {
            CFStringAppendCharacters(v3, &v27, 1);
          }

          v9 = *(*(this + 14) + 8 * v4);
          CFStringAppendFormat(v3, 0, @" (%llu:%llu)\n", v9, *(*(this + 17) + 8 * v4++));
        }

        while (v4 < CFArrayGetCount(*(this + 10)));
      }

      CFStringAppendCharacters(v3, &v27, 1);
      CFStringAppendCharacters(v3, &v29, 1);
    }

    v10 = *(this + 21);
    if (*(this + 22) != v10)
    {
      v11 = 0;
      do
      {
        v12 = (*(**(v10 + 8 * v11) + 48))(*(v10 + 8 * v11));
        CFStringAppend(v3, v12);
        CFStringAppendCharacters(v3, &v29, 1);
        CFRelease(v12);
        ++v11;
        v10 = *(this + 21);
      }

      while (v11 < (*(this + 22) - v10) >> 3);
    }

    v30.length = CFStringGetLength(v3) - 2;
    v30.location = 1;
    CFStringFindAndReplace(v3, @"\n", @"\n  ", v30, 0);
  }

  v13 = *(this + 6);
  v14 = *(this + 7);
  v15 = v14 == 0;
  v16 = "";
  v17 = " ";
  if (!v14)
  {
    v14 = &stru_287C0EB30;
    v17 = "";
  }

  v18 = "";
  if (v15)
  {
    v18 = "";
  }

  v19 = v13 == 0;
  if (!v13)
  {
    v13 = &stru_287C0EB30;
  }

  v20 = *(this + 4);
  v21 = "] ";
  if (v19)
  {
    v21 = "";
  }

  v22 = "[";
  if (v19)
  {
    v22 = "";
  }

  v23 = v20 == 0;
  if (!v20)
  {
    v20 = &stru_287C0EB30;
  }

  v24 = " [";
  if (v23)
  {
    v24 = "";
  }

  else
  {
    v16 = "]";
  }

  v25 = CFStringCreateWithFormat(0, 0, @"<%@ %p %s%@%s%s%@%s(%llu:%llu) <%llu> %s%@%s%@>", sRXTypeNames[*(this + 10)], this - 16, v22, v13, v21, v18, v14, v17, *(this + 200), *(this + 27), v24, v20, v16, v3);
  CFRelease(v3);
  return v25;
}

uint64_t RXLanguageObjectGetTypeID()
{
  result = gRXCFTypeID_RXLanguageObject;
  if (!gRXCFTypeID_RXLanguageObject)
  {
    qword_281FEFF08 = RXCFCopyFormattingDesc;
    qword_281FEFF10 = RXCFCopyDebugDesc;
    result = _CFRuntimeRegisterClass();
    gRXCFTypeID_RXLanguageObject = result;
  }

  return result;
}

uint64_t RXLanguageModelCreate(uint64_t a1, const void *a2, const void *a3)
{
  if (!gRXCFTypeID_RXLanguageObject)
  {
    qword_281FEFF08 = RXCFCopyFormattingDesc;
    qword_281FEFF10 = RXCFCopyDebugDesc;
    gRXCFTypeID_RXLanguageObject = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    v7 = Instance + 16;
  }

  else
  {
    v7 = 0;
  }

  *(v7 + 40) = 0;
  RXCFProp<void const*>::operator=((v7 + 48), a2);
  v8 = *(v7 + 72);
  if (v8)
  {
    CFRelease(v8);
  }

  *(v7 + 72) = 0;
  RXCFProp<void const*>::operator=((v7 + 32), a3);
  return v6;
}

uint64_t RXLanguageModelCreateWithURL(uint64_t a1, const __CFURL *a2, const void *a3)
{
  if (!gRXCFTypeID_RXLanguageObject)
  {
    qword_281FEFF08 = RXCFCopyFormattingDesc;
    qword_281FEFF10 = RXCFCopyDebugDesc;
    gRXCFTypeID_RXLanguageObject = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  PathComponent = CFURLCopyLastPathComponent(a2);
  v7 = CFURLCopyPathExtension(a2);
  if (v7)
  {
    v8 = v7;
    Length = CFStringGetLength(PathComponent);
    v13.length = Length + ~CFStringGetLength(v8);
    v13.location = 0;
    v10 = CFStringCreateWithSubstring(0, PathComponent, v13);
    CFRelease(PathComponent);
    CFRelease(v8);
    PathComponent = v10;
  }

  if (Instance)
  {
    v11 = Instance + 16;
  }

  else
  {
    v11 = 0;
  }

  *(v11 + 40) = 0;
  RXCFProp<void const*>::operator=((v11 + 48), PathComponent);
  RXCFProp<void const*>::operator=((v11 + 72), a2);
  RXCFProp<void const*>::operator=((v11 + 32), a3);
  CFRelease(PathComponent);
  return Instance;
}

uint64_t RXPathCreate(uint64_t a1, const void *a2, const void *a3)
{
  if (!gRXCFTypeID_RXLanguageObject)
  {
    qword_281FEFF08 = RXCFCopyFormattingDesc;
    qword_281FEFF10 = RXCFCopyDebugDesc;
    gRXCFTypeID_RXLanguageObject = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    v7 = Instance + 16;
  }

  else
  {
    v7 = 0;
  }

  *(v7 + 40) = 1;
  RXCFProp<void const*>::operator=((v7 + 48), a2);
  RXCFProp<void const*>::operator=((v7 + 32), a3);
  return v6;
}

uint64_t RXWordCreate(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (!gRXCFTypeID_RXLanguageObject)
  {
    qword_281FEFF08 = RXCFCopyFormattingDesc;
    qword_281FEFF10 = RXCFCopyDebugDesc;
    gRXCFTypeID_RXLanguageObject = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    v9 = Instance + 16;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2 + 16;
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 40) = 2;
  RXProp<RXRecognitionSystem *>::operator=((v9 + 160), v10);
  RXCFProp<void const*>::operator=((v9 + 56), a3);
  RXCFProp<void const*>::operator=((v9 + 32), a4);
  return v8;
}

uint64_t RXAdLibCreate(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (!gRXCFTypeID_RXLanguageObject)
  {
    qword_281FEFF08 = RXCFCopyFormattingDesc;
    qword_281FEFF10 = RXCFCopyDebugDesc;
    gRXCFTypeID_RXLanguageObject = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    v8 = Instance + 16;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = a3 + 16;
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 40) = 3;
  RXProp<RXRecognitionSystem *>::operator=((v8 + 160), v9);
  RXCFProp<void const*>::operator=((v8 + 32), a4);
  *(v8 + 8) |= 8uLL;
  return v7;
}

uint64_t RXLanguageObjectGetType(uint64_t a1)
{
  v1 = a1 + 16;
  if (!a1)
  {
    v1 = 0;
  }

  return (*(v1 + 40) + 1);
}

uint64_t RXLanguageObjectGetCount(RXXPC *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = RXXPC::Queue(a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __RXLanguageObjectGetCount_block_invoke;
  v5[3] = &unk_279CF6AA8;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_26B58F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RXLanguageObjectGetCount_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = RXLanguageObject::GetCount(v3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void RXLanguageObjectAddObject(RXXPC *a1, uint64_t a2)
{
  v4 = RXXPC::Queue(a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __RXLanguageObjectAddObject_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void __RXLanguageObjectAddObject_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = (v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  RXRecognitionSystem::StartChanges(v3[2]);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  RXLanguageObject::AddObject(v3, v5);
  RXRecognitionSystem::CommitChanges(v3[2]);
}

void sub_26B58F4F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RXTransaction<RXLanguageObject>::~RXTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t RXLanguageObjectGetObjectAtIndex(RXXPC *a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = RXXPC::Queue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __RXLanguageObjectGetObjectAtIndex_block_invoke;
  block[3] = &unk_279CF6AF0;
  block[5] = a2;
  block[6] = a1;
  block[4] = &v8;
  dispatch_sync(v4, block);

  v5 = v9[3] - 16;
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_26B58F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RXLanguageObjectGetObjectAtIndex_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2 || (v3 ? (v4 = (v3 + 16)) : (v4 = 0), (result = RXLanguageObject::GetCount(v4)) != 0))
  {
    if (v3)
    {
      v6 = (v3 + 16);
    }

    else
    {
      v6 = 0;
    }

    result = RXLanguageObject::GetObject(v6, v2);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void RXLanguageObjectSetObjectAtIndex(RXXPC *a1, uint64_t a2, uint64_t a3)
{
  v6 = RXXPC::Queue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __RXLanguageObjectSetObjectAtIndex_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v6, block);
}

void __RXLanguageObjectSetObjectAtIndex_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = (v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  RXRecognitionSystem::StartChanges(v3[2]);
  v4 = a1[6];
  if (v4)
  {
    v5 = (v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  RXLanguageObject::SetObject(v3, a1[5], v5);
  RXRecognitionSystem::CommitChanges(v3[2]);
}

void sub_26B58F758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RXTransaction<RXLanguageObject>::~RXTransaction(va);
  _Unwind_Resume(a1);
}

void RXLanguageObjectRemoveObjectAtIndex(RXXPC *a1, uint64_t a2)
{
  v4 = RXXPC::Queue(a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __RXLanguageObjectRemoveObjectAtIndex_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void __RXLanguageObjectRemoveObjectAtIndex_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = (v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  RXRecognitionSystem::StartChanges(v3[2]);
  RXLanguageObject::RemoveObject(v3, *(a1 + 40));
  RXRecognitionSystem::CommitChanges(v3[2]);
}

void sub_26B58F85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RXTransaction<RXLanguageObject>::~RXTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t RXLanguageObjectApplyBlock(uint64_t a1, void *a2, unint64_t a3)
{
  if (a1)
  {
    v3 = a1 + 16;
  }

  else
  {
    v3 = 0;
  }

  return RXLanguageObject::ApplyBlock(v3, a2, a3);
}

CFMutableStringRef RXReplaceHyphensWithSpace(__CFString *a1, _DWORD *a2)
{
  MutableCopy = a1;
  v10[5] = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    MEMORY[0x28223BE20]();
    v10[0] = @"-";
    v10[1] = @"­";
    v10[2] = @"‐";
    v10[3] = @"‑";
    v4 = *MEMORY[0x277CBECE8];
    Length = CFStringGetLength(MutableCopy);
    MutableCopy = CFStringCreateMutableCopy(v4, Length, MutableCopy);
    for (i = 0; i != 4; ++i)
    {
      v7 = v10[i];
      v11.length = CFStringGetLength(MutableCopy);
      v11.location = 0;
      *a2 += CFStringFindAndReplace(MutableCopy, v7, @" ", v11, 0);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

CFMutableStringRef RXCopyReplaceHyphensWithSpace(__CFString *a1, _DWORD *a2)
{
  MutableCopy = a1;
  v10[5] = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    MEMORY[0x28223BE20]();
    v10[0] = @"-";
    v10[1] = @"­";
    v10[2] = @"‐";
    v10[3] = @"‑";
    v4 = *MEMORY[0x277CBECE8];
    Length = CFStringGetLength(MutableCopy);
    MutableCopy = CFStringCreateMutableCopy(v4, Length, MutableCopy);
    for (i = 0; i != 4; ++i)
    {
      v7 = v10[i];
      v11.length = CFStringGetLength(MutableCopy);
      v11.location = 0;
      *a2 += CFStringFindAndReplace(MutableCopy, v7, @" ", v11, 0);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

void RXLanguageObjectAddPhrase(uint64_t a1, RXXPC *a2, uint64_t a3, void *a4, const __CFLocale *a5)
{
  v19 = a4;
  if ([(__CFString *)v19 length]>= 0x3E8)
  {
    v9 = [(__CFString *)v19 substringWithRange:0, 999];

    v19 = v9;
  }

  v10 = RXPathCreate(0, 0, 0);
  RXObjectSetProperty(v10, 1819572340, v19);
  v11 = MEMORY[0x26D679270](a5);
  if (RXIsLocaleWithNoSpaceInPostITN(v11))
  {
    v13 = RXLanguageObjectCharacterTokenize(v19, v12);
  }

  else
  {
    v13 = RXLanguageObjectCFTokenizerTokenize(v19, a5);
  }

  v14 = v13;
  Count = CFArrayGetCount(v13);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
      v18 = RXWordCreate(a1, a3, ValueAtIndex, 0);
      RXLanguageObjectAddObject(v10, v18);
      CFRelease(v18);
    }
  }

  CFRelease(v14);
  RXLanguageObjectAddObject(a2, v10);
  CFRelease(v10);
}

__CFArray *RXLanguageObjectCharacterTokenize(const __CFString *a1, const __CFLocale *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  CreateCppStringFromCFString(a1, &__p);
  if ((v14 & 0x8000000000000000) != 0)
  {
    p_p = __p;
    v5 = v13;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_14;
    }

    p_p = &__p;
    v5 = v14;
LABEL_5:
    while (1)
    {
      v6 = *p_p;
      if (v6 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
      {
        break;
      }

      ++p_p;
      if (!--v5)
      {
        if (v14 < 0)
        {
          operator delete(__p);
        }

        CFArrayAppendValue(Mutable, a1);
        return Mutable;
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    p_p = __p;
  }

  operator delete(p_p);
LABEL_14:
  if (CFStringGetLength(a1) >= 1)
  {
    v7 = 0;
    do
    {
      if (RXGetLegitimateCharacters(void)::sInitCharSet != -1)
      {
        RXLanguageObjectCharacterTokenize();
      }

      v8 = RXGetLegitimateCharacters(void)::sLegitChars;
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v7);
      if (CFCharacterSetIsCharacterMember(v8, CharacterAtIndex))
      {
        v15.location = v7;
        v15.length = 1;
        v10 = CFStringCreateWithSubstring(0, a1, v15);
        CFArrayAppendValue(Mutable, v10);
      }

      ++v7;
    }

    while (v7 < CFStringGetLength(a1));
  }

  return Mutable;
}

__CFArray *RXLanguageObjectCFTokenizerTokenize(const __CFString *a1, const __CFLocale *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  Length = CFStringGetLength(a1);
  if (RXLanguageObjectCFTokenizerTokenize(__CFString const*,__CFLocale const*)::onceToken != -1)
  {
    RXLanguageObjectCFTokenizerTokenize();
  }

  pthread_mutex_lock(&RXLanguageObjectCFTokenizerTokenize(__CFString const*,__CFLocale const*)::sMutexAroundSharedCFStringTokenizer);
  if (WordBoundaryUnitStringTokenizerForLocale(__CFLocale const*)::onceToken != -1)
  {
    RXLanguageObjectCFTokenizerTokenize();
  }

  v6 = MEMORY[0x26D679270](a2);
  Value = CFDictionaryGetValue(WordBoundaryUnitStringTokenizerForLocale(__CFLocale const*)::sStringTokenizerForLocaleIdentifierTable, v6);
  if (!Value)
  {
    v19.location = 0;
    v19.length = 0;
    Value = CFStringTokenizerCreate(0, &stru_287C0EB30, v19, 4uLL, a2);
    if (Value)
    {
      CFDictionaryAddValue(WordBoundaryUnitStringTokenizerForLocale(__CFLocale const*)::sStringTokenizerForLocaleIdentifierTable, v6, Value);
      CFRelease(Value);
    }
  }

  v20.location = 0;
  v20.length = Length;
  CFStringTokenizerSetString(Value, a1, v20);
  if (CFStringTokenizerAdvanceToNextToken(Value))
  {
    v8 = Length - 1;
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(Value);
      v10 = CurrentTokenRange.length;
      if (RXGetLegitimateCharacters(void)::sInitCharSet != -1)
      {
        RXLanguageObjectCharacterTokenize();
      }

      if (CFStringFindCharacterFromSet(a1, RXGetLegitimateCharacters(void)::sLegitChars, CurrentTokenRange, 0, &v18))
      {
        v11 = CurrentTokenRange.length + CurrentTokenRange.location;
LABEL_14:
        if (v11 < v8)
        {
          if (RXGetLegitimateCharacters(void)::sInitCharSet != -1)
          {
            RXLanguageObjectCharacterTokenize();
          }

          v12 = RXGetLegitimateCharacters(void)::sLegitChars;
          CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v11 + 1);
          if (CFCharacterSetIsCharacterMember(v12, CharacterAtIndex))
          {
            v14 = CFStringGetCharacterAtIndex(a1, v11);
            if ((v14 - 8208) < 2 || v14 == 173 || v14 == 45)
            {
              while (CFStringTokenizerAdvanceToNextToken(Value))
              {
                v15 = CFStringTokenizerGetCurrentTokenRange(Value);
                if (v15.location > v11)
                {
                  v10 = v15.length - CurrentTokenRange.location + v15.location;
                  v11 = v15.length + v15.location;
                  goto LABEL_14;
                }
              }
            }
          }
        }

        v21.location = CurrentTokenRange.location;
        v21.length = v10;
        v16 = CFStringCreateWithSubstring(0, a1, v21);
        CFArrayAppendValue(Mutable, v16);
        CFRelease(v16);
      }
    }

    while (CFStringTokenizerAdvanceToNextToken(Value));
  }

  pthread_mutex_unlock(&RXLanguageObjectCFTokenizerTokenize(__CFString const*,__CFLocale const*)::sMutexAroundSharedCFStringTokenizer);
  return Mutable;
}

void RXLanguageObjectAddPhraseAndAlternatives(uint64_t a1, RXXPC *a2, uint64_t a3, void *a4, const __CFLocale *a5)
{
  v9 = a4;
  v10 = v9;
  if ([(__CFString *)v9 length]>= 0x3E8)
  {
    v10 = [(__CFString *)v9 substringWithRange:0, 999];
  }

  v11 = RXPathCreate(0, 0, 0);
  RXObjectSetProperty(v11, 1819572340, v9);
  v12 = MEMORY[0x26D679270](a5);
  if (!RXIsLocaleWithSpecialHyphenHandling(v12))
  {
    v15 = a2;
    goto LABEL_10;
  }

  v24 = 0;
  v13 = RXReplaceHyphensWithSpace(v10, &v24);
  v14 = v13;
  if (v24 < 1)
  {
    v15 = a2;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = RXLanguageModelCreate(0, 0, 0);
  RXLanguageObjectAddPhraseAndAlternatives(a1, v15, a3, v14, a5);
  RXLanguageObjectAddObject(a2, v15);
  CFRelease(v15);
  if (v14)
  {
LABEL_9:
    CFRelease(v14);
  }

LABEL_10:
  v16 = MEMORY[0x26D679270](a5);
  if (RXIsLocaleWithNoSpaceInPostITN(v16))
  {
    v18 = RXLanguageObjectCharacterTokenize(v10, v17);
  }

  else
  {
    v18 = RXLanguageObjectCFTokenizerTokenize(v10, a5);
  }

  v19 = v18;
  Count = CFArrayGetCount(v18);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
      v23 = RXWordCreate(a1, a3, ValueAtIndex, 0);
      RXLanguageObjectAddObject(v11, v23);
      CFRelease(v23);
    }
  }

  CFRelease(v19);
  RXLanguageObjectAddObject(v15, v11);
  CFRelease(v11);
}

void RXResultDesc::RXResultDesc(RXResultDesc *this, RXRecognizer *a2, uint64_t a3)
{
  *this = 1;
  *(this + 1) = a3;
  *(this + 2) = a2;
  CFRetain(a2 - 16);
}

{
  *this = 1;
  *(this + 1) = a3;
  *(this + 2) = a2;
  CFRetain(a2 - 16);
}

_BYTE *CreateCppStringFromCFString@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    Length = CFStringGetLength(a1);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v5 = MEMORY[0x28223BE20]();
    v7 = v11 - v6;
    CFStringGetCString(a1, v11 - v6, v5 + 1, 0x8000100u);
    result = std::string::basic_string[abi:ne200100]<0>(a2, v7);
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    return std::string::basic_string[abi:ne200100]<0>(a2, 0);
  }

  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void ___ZL25RXGetLegitimateCharactersv_block_invoke()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
  v2 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  CFCharacterSetUnion(MutableCopy, v2);
  CFCharacterSetInvert(MutableCopy);
  CFCharacterSetAddCharactersInString(MutableCopy, @"&");
  RXGetLegitimateCharacters(void)::sLegitChars = MutableCopy;
}

CFMutableDictionaryRef ___ZL40WordBoundaryUnitStringTokenizerForLocalePK10__CFLocale_block_invoke()
{
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  WordBoundaryUnitStringTokenizerForLocale(__CFLocale const*)::sStringTokenizerForLocaleIdentifierTable = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **RXCFProp<__CFArray const*>::~RXCFProp(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *RXProp<RXVocabulary *>::~RXProp(void *a1)
{
  if (*a1)
  {
    CFRelease((*a1 - 16));
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void RXXPC::ClientEvent(uint64_t a1, void *a2)
{
  v3 = a2;
  int64 = xpc_dictionary_get_int64(v3, kRDKeyMessage);
  if (int64 > 204)
  {
    if (int64 == 205)
    {
      v8 = RXXPC::Queue(0xCD);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ___ZN5RXXPC11ClientEventEPU24objcproto13OS_xpc_object8NSObject_block_invoke_130;
      v13[3] = &unk_279CF6C38;
      v14 = v3;
      dispatch_async(v8, v13);

      v5 = v14;
      goto LABEL_10;
    }

    if (int64 == 601)
    {
      v6 = RXXPC::Queue(0x259);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN5RXXPC11ClientEventEPU24objcproto13OS_xpc_object8NSObject_block_invoke_2;
      v11[3] = &unk_279CF6C38;
      v12 = v3;
      dispatch_async(v6, v11);

      v5 = v12;
      goto LABEL_10;
    }
  }

  else
  {
    if (int64 == 200)
    {
      v7 = RXXPC::Queue(0xC8);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = ___ZN5RXXPC11ClientEventEPU24objcproto13OS_xpc_object8NSObject_block_invoke_3;
      v9[3] = &unk_279CF6C38;
      v10 = v3;
      dispatch_async(v7, v9);

      v5 = v10;
      goto LABEL_10;
    }

    if (int64 == 204)
    {
      v5 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN5RXXPC11ClientEventEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(v5, block);
LABEL_10:
    }
  }
}

id RXXPC::Queue(RXXPC *this)
{
  if (RXXPC::Queue(void)::sRXXGlobalQueueInit != -1)
  {
    RXXPC::Queue();
  }

  v2 = RXXPC::Queue(void)::sRXXGlobalQueue;

  return v2;
}

uint64_t RXXPC::CreateInstance(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x26D679270](a1);
  v6 = RXOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&dword_26B583000, v6, OS_LOG_TYPE_DEFAULT, "RXXPC creating instance for locale = %{public}@", &v13, 0xCu);
  }

  if (RXEngineTypeForLocaleIdentifier(v5) != 1)
  {
    if (!RDCopyBestNashvilleLocaleIdentifier(v5))
    {
      goto LABEL_6;
    }

LABEL_8:
    operator new();
  }

  if (RXXPC::RDIsQuasarModelLanguageInstalledForLocaleIdentifier(v5, v7) && v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = RXXPC::CreateMessage(0x1F6);
  v9 = kRDKeyLocale;
  v10 = MEMORY[0x26D679270](a1);
  RXXPC::SerializeCFString(v8, v9, v10);
  RXXPC::SendBrokerMessageWithReplySync(v8, 1);

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26B591008(_Unwind_Exception *a1)
{
  MEMORY[0x26D679770](v2, 0x10E0C408829087ELL);

  _Unwind_Resume(a1);
}

BOOL RXXPC::RDIsQuasarModelLanguageInstalledForLocaleIdentifier(RXXPC *this, const __CFString *a2)
{
  v3 = RXXPC::CopyLanguageInstallationStatus(this);
  if (!v3)
  {
LABEL_8:
    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppend(Mutable, @"/System/Library/Speech/Recognizers/SpeechRecognitionCoreLanguages/");
    CFStringAppend(Mutable, this);
    CFStringAppend(Mutable, @".SpeechRecognition");
    if (!Mutable)
    {
      return 0;
    }

    v10 = CFURLCreateWithFileSystemPath(0, Mutable, kCFURLPOSIXPathStyle, 1u);
    if (v10)
    {
      v11 = v10;
      v12 = CFBundleCreate(0, v10);
      if (v12)
      {
        v13 = v12;
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v12, @"RXConfig");
        if (ValueForInfoDictionaryKey)
        {
          v15 = CFDictionaryContainsKey(ValueForInfoDictionaryKey, @"QuasarConfig") != 0;
        }

        else
        {
          v15 = 0;
        }

        CFRelease(v13);
      }

      else
      {
        v15 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      v15 = 0;
    }

    CFRelease(Mutable);
    return v15;
  }

  v4 = v3;
  Count = CFDictionaryGetCount(v3);
  v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(v4, v6, v7);
  if (Count < 1)
  {
LABEL_7:
    CFRelease(v4);
    free(v6);
    free(v7);
    goto LABEL_8;
  }

  v8 = 0;
  while (!RDDoLocaleIdentifiersMatch(this, v6[v8]) || !CFStringHasPrefix(v7[v8], @"Version:"))
  {
    if (Count == ++v8)
    {
      goto LABEL_7;
    }
  }

  CFRelease(v4);
  free(v6);
  free(v7);
  return 1;
}

id RXXPC::CreateMessage(RXXPC *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, kRDKeyMessage, this);

  return v2;
}

void RXXPC::SerializeCFString(void *a1, const char *a2, const __CFString *a3)
{
  xdict = a1;
  if (a3)
  {
    CStringPtr = CFStringGetCStringPtr(a3, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(a3);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    xpc_dictionary_set_string(xdict, a2, CStringPtr);
  }
}

id RXXPC::SendBrokerMessageWithReplySync(void *a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (RXXPC::SendBrokerMessageWithReplySync(NSObject  {objcproto13OS_xpc_object}*,BOOL)::sRXXBrokerInit != -1)
  {
    RXXPC::SendBrokerMessageWithReplySync();
  }

  v4 = MEMORY[0x26D679DD0](v3);
  if (RXLogClientUpdates())
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = v4;
      _os_log_impl(&dword_26B583000, v5, OS_LOG_TYPE_INFO, "Broker <- %s", &v11, 0xCu);
    }
  }

  free(v4);
  if (a2)
  {
    v6 = xpc_connection_send_message_with_reply_sync(RXXPC::SendBrokerMessageWithReplySync(NSObject  {objcproto13OS_xpc_object}*,BOOL)::sRXXBrokerConn, v3);
    v7 = MEMORY[0x26D679DD0]();
    if (RXLogClientUpdates())
    {
      v8 = RXOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = v7;
        _os_log_impl(&dword_26B583000, v8, OS_LOG_TYPE_INFO, "Broker -> %s", &v11, 0xCu);
      }
    }

    free(v7);
  }

  else
  {
    xpc_connection_send_message(RXXPC::SendBrokerMessageWithReplySync(NSObject  {objcproto13OS_xpc_object}*,BOOL)::sRXXBrokerConn, v3);
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

void ___ZN5RXXPC5QueueEv_block_invoke()
{
  v0 = dispatch_queue_create("RXXPCGlobal", 0);
  v1 = RXXPC::Queue(void)::sRXXGlobalQueue;
  RXXPC::Queue(void)::sRXXGlobalQueue = v0;
}

void RXXPC::RXXPC(RXXPC *this, __CFString *a2, unint64_t a3)
{
  this->var0 = (a3 & 1) == 0;
  *&this->var1 = 0;
  this->var3 = a3;
  this->var4 = a2;
  this->var8 = 0;
  this->var5 = 0;
  this->var6 = 0;
  this->var7 = 0;
  this->var11 = 0;
  if (pthread_mutex_init(&this->var12, 0))
  {
    __RXAbort(1, "/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCore/Sources/RXXPC.mm", 161, "err == 0", @"Could not initialize the content mutex");
  }

  this->var10 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
}

void sub_26B591654(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);

  _Unwind_Resume(a1);
}

void RXXPC::SetAudioDevice(RXXPC *this, AudioObjectID inObjectID)
{
  v2 = inObjectID;
  v15 = *MEMORY[0x277D85DE8];
  outData = inObjectID;
  if (inObjectID)
  {
LABEL_2:
    ioDataSize = 8;
    v9 = 0;
    *&inAddress.mSelector = *" diubolg";
    inAddress.mElement = 0;
    if (!AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &v9))
    {
      RXXPC::SetAudioDevice(this, v9);
      goto LABEL_11;
    }

    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = outData;
      v5 = "Unable to obtain device UID for audio input device %d\n";
      v6 = v4;
      v7 = 8;
LABEL_8:
      _os_log_impl(&dword_26B583000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  LODWORD(v9) = 4;
  *&inAddress.mSelector = *" nIdbolg";
  inAddress.mElement = 0;
  if (!AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &v9, &outData))
  {
    v2 = outData;
    goto LABEL_2;
  }

  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v5 = "Unable to obtain default input device\n";
    v6 = v4;
    v7 = 2;
    goto LABEL_8;
  }

LABEL_9:

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

void RXXPC::SetAudioDevice(RXXPC *this, __CFString *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_impl(&dword_26B583000, v4, OS_LOG_TYPE_DEFAULT, "RXXPC SetAudioDevice = %{public}@", &v7, 0xCu);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  var5 = this->var5;
  if (var5)
  {
    CFRelease(var5);
  }

  this->var5 = a2;
  v6 = *MEMORY[0x277D85DE8];
}

void RXXPC::SetAudioDevice(RXXPC *this, __CFString *cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFStringGetTypeID())
  {

    RXXPC::SetAudioDevice(this, cf);
  }

  else
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr))
      {
        RXXPC::SetAudioDevice(this, valuePtr);
      }
    }
  }
}

void ___ZN5RXXPC30SendBrokerMessageWithReplySyncEPU24objcproto13OS_xpc_object8NSObjectb_block_invoke()
{
  v0 = dispatch_get_global_queue(0, 0);
  v1 = xpc_connection_create("com.apple.SpeechRecognitionCore.brokerd", v0);
  v2 = RXXPC::SendBrokerMessageWithReplySync(NSObject  {objcproto13OS_xpc_object}*,BOOL)::sRXXBrokerConn;
  RXXPC::SendBrokerMessageWithReplySync(NSObject  {objcproto13OS_xpc_object}*,BOOL)::sRXXBrokerConn = v1;

  xpc_connection_set_event_handler(RXXPC::SendBrokerMessageWithReplySync(NSObject  {objcproto13OS_xpc_object}*,BOOL)::sRXXBrokerConn, &__block_literal_global_70);
  v3 = RXXPC::SendBrokerMessageWithReplySync(NSObject  {objcproto13OS_xpc_object}*,BOOL)::sRXXBrokerConn;

  xpc_connection_resume(v3);
}

void ___ZN5RXXPC30SendBrokerMessageWithReplySyncEPU24objcproto13OS_xpc_object8NSObjectb_block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x26D679DD0]();
  if (RXLogClientUpdates())
  {
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = v3;
      _os_log_impl(&dword_26B583000, v4, OS_LOG_TYPE_INFO, "Broker -> %s", &v6, 0xCu);
    }
  }

  free(v3);
  RXRecognitionSystem::BrokerEvent(v2);

  v5 = *MEMORY[0x277D85DE8];
}

id RXXPC::RemoteService(RXXPC *this)
{
  if (!this->var6)
  {
    RXXPC::EstablishConnection(this);
  }

  pthread_mutex_lock(&this->var12);
  var6 = this->var6;
  if (var6)
  {
    v3 = [var6 remoteObjectProxy];
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&this->var12);

  return v3;
}

BOOL RXXPC::WaitForServer(RXXPC *this)
{
  if (!this->var6)
  {
    RXXPC::EstablishConnection(this);
  }

  return !this->var2;
}

id RXXPC::RemoteSynchronousService(RXXPC *this)
{
  if (!this->var6)
  {
    RXXPC::EstablishConnection(this);
  }

  pthread_mutex_lock(&this->var12);
  var6 = this->var6;
  if (var6)
  {
    v3 = [var6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_73];
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&this->var12);

  return v3;
}

void RXXPC::EstablishConnection(RXXPC *this)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B583000, v2, OS_LOG_TYPE_DEFAULT, "PeerConnection: RXXPC EstablishConnection", buf, 2u);
  }

  v3 = SecTaskCreateFromSelf(0);
  v4 = v3;
  if (v3)
  {
    v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.private.voicecontrol.speechrecognition.api", 0);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 == CFBooleanGetTypeID())
      {
        v8 = CFBooleanGetValue(v6) == 0;
        CFRelease(v6);
        CFRelease(v4);
        if (!v8)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      CFRelease(v6);
    }

    CFRelease(v4);
  }

LABEL_10:
  v9 = MEMORY[0x277D6C1A8];
  v10 = *MEMORY[0x277D6C1A8];
  v11 = TCCAccessPreflight();
  if (v11)
  {
    if (v11 == 2)
    {
      v12 = *v9;
      TCCAccessRequest();
    }

    goto LABEL_28;
  }

LABEL_13:
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v13, kRDKeyMessage, 101);
  xpc_dictionary_set_uint64(v13, kRDKeyObjectID, this);
  xpc_dictionary_set_BOOL(v13, kRDKeyLiveAudio, this->var0);
  if (this->var0 && this->var5)
  {
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v13, kRDKeyAudioDevice, v14);
  }

  RXXPC::SerializeCFString(v13, kRDKeyLocale, this->var4);
  xpc_dictionary_set_uint64(v13, kRDKeyOptions, this->var3);
  v15 = RXXPC::SendBrokerMessageWithReplySync(v13, 1);
  *buf = 0;
  v66 = buf;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__0;
  v69 = __Block_byref_object_dispose__0;
  v70 = 0;
  if (MEMORY[0x26D679EE0]() == MEMORY[0x277D86468])
  {
    v49 = objc_alloc_init(MEMORY[0x277CCAEA0]);
    v16 = xpc_dictionary_get_value(v15, kRDKeyConnection);
    [v49 _setEndpoint:v16];

    v17 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v49];
    this->var9 = xpc_dictionary_get_uint64(v15, kRDKeyObjectID);
    v18 = RXOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      var9 = this->var9;
      *v71 = 134218242;
      v72 = var9;
      v73 = 2112;
      v74 = v17;
      _os_log_impl(&dword_26B583000, v18, OS_LOG_TYPE_DEFAULT, "PeerConnection: SRD Connection created [%lld] %@", v71, 0x16u);
    }

    v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C11560];
    [v17 setRemoteObjectInterface:v20];

    v21 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C115C0];
    [v17 setExportedInterface:v21];

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v48 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v25 = [v17 exportedInterface];
    [v25 setClasses:v48 forSelector:sel_recognizedEventWithLegacyMessage_result_ argumentIndex:1 ofReply:0];

    v26 = [RXXPCCSpeechRecognitionClientService alloc];
    WeakRetained = objc_loadWeakRetained(&this->var8);
    v28 = [(RXXPCCSpeechRecognitionClientService *)v26 initWithRXXPC:this externalServiceClient:WeakRetained];
    var7 = this->var7;
    this->var7 = v28;

    [v17 setExportedObject:this->var7];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = ___ZN5RXXPC19EstablishConnectionEv_block_invoke_125;
    v62[3] = &unk_279CF6BC0;
    v64 = this;
    v30 = v17;
    v63 = v30;
    v31 = MEMORY[0x26D679B00](v62);
    v32 = dispatch_semaphore_create(0);
    objc_initWeak(v71, v30);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = ___ZN5RXXPC19EstablishConnectionEv_block_invoke_3;
    v58[3] = &unk_279CF6BE8;
    objc_copyWeak(&v61, v71);
    v47 = v31;
    v60 = v47;
    v46 = v32;
    v59 = v46;
    [v30 setInterruptionHandler:v58];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = ___ZN5RXXPC19EstablishConnectionEv_block_invoke_127;
    v54[3] = &unk_279CF6BE8;
    objc_copyWeak(&v57, v71);
    v33 = v47;
    v56 = v33;
    v34 = v46;
    v55 = v34;
    v45 = v15;
    [v30 setInvalidationHandler:v54];
    objc_storeStrong(&this->var6, v17);
    [this->var6 resume];
    if (this->var0)
    {
      v35 = this->var5;
    }

    else
    {
      v35 = 0;
    }

    v36 = [this->var6 remoteObjectProxy];
    var0 = this->var0;
    var3 = this->var3;
    var4 = this->var4;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = ___ZN5RXXPC19EstablishConnectionEv_block_invoke_128;
    v50[3] = &unk_279CF6C10;
    v51 = v13;
    v53 = buf;
    v40 = v34;
    v52 = v40;
    [v36 helloWithObjectID:this liveAudio:var0 deviceUID:v35 locale:var4 flags:var3 reply:v50];

    v15 = v45;
    v41 = [this->var6 remoteObjectProxy];
    [v41 pingWithObjectID:1337];

    dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
    objc_destroyWeak(&v57);

    objc_destroyWeak(&v61);
    objc_destroyWeak(v71);
  }

  if (*(v66 + 5))
  {
    RXDebugFlagsUpdate();
    if (RXLogClientUpdates())
    {
      v42 = RXXPC::RemoteService(this);
      [v42 logUpdates];
    }

    v43 = RXXPC::RemoteService(this);
    [v43 sendVitamins];
  }

  _Block_object_dispose(buf, 8);

LABEL_28:
  v44 = *MEMORY[0x277D85DE8];
}

void sub_26B5923F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 192), 8);

  _Unwind_Resume(a1);
}

void ___ZN5RXXPC19EstablishConnectionEv_block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"YES";
    if (!a2)
    {
      v4 = @"NO";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_26B583000, v3, OS_LOG_TYPE_DEFAULT, "PeerConnection: TCC service granted: %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN5RXXPC19EstablishConnectionEv_block_invoke_125(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_26B583000, v3, OS_LOG_TYPE_ERROR, "PeerConnection: Lost connection to SRD.", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v2 + 32);
  if (v4 == v5)
  {
    if (!v4)
    {
      return;
    }

    [v5 invalidate];
    v7 = *(v2 + 32);
    *(v2 + 32) = 0;

    *(v2 + 2) = 1;
    v6 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN5RXXPC19EstablishConnectionEv_block_invoke_126;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v2;
    dispatch_async(v6, block);
  }

  else
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B583000, v6, OS_LOG_TYPE_DEFAULT, "PeerConnection: skipping handleConnectionLost because connection was not known", buf, 2u);
    }
  }
}

void ___ZN5RXXPC19EstablishConnectionEv_block_invoke_126(RXXPC *a1)
{
  var6 = a1->var6;
  var6[1] = 0;
  v2 = RXXPC::Queue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN5RXXPC19EstablishConnectionEv_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = var6;
  dispatch_async(v2, block);
}

uint64_t ___ZN5RXXPC19EstablishConnectionEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  pthread_mutex_lock((v1 + 80));
  v2 = *(v1 + 64);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        v6 = CFArrayGetValueAtIndex(*(v1 + 64), i);
        v6[2](v6, 1, v1);
      }
    }
  }

  return pthread_mutex_unlock((v1 + 80));
}

intptr_t ___ZN5RXXPC19EstablishConnectionEv_block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_26B583000, v2, OS_LOG_TYPE_ERROR, "PeerConnection: SRD Connection interrupted %@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  result = dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t ___ZN5RXXPC19EstablishConnectionEv_block_invoke_127(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_26B583000, v2, OS_LOG_TYPE_ERROR, "PeerConnection: SRD Connection invalidated %@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  result = dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN5RXXPC19EstablishConnectionEv_block_invoke_128(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x26D679DD0](*(a1 + 32));
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = v4;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_26B583000, v5, OS_LOG_TYPE_DEFAULT, "PeerConnection: Hello %s -> %@\n", &v10, 0x16u);
  }

  free(v4);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

void ___ZN5RXXPC11ClientEventEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26B583000, v2, OS_LOG_TYPE_DEFAULT, "PeerConnection: Received kRDServerRunning message, setting fServerIsRunning = true", v3, 2u);
  }

  *(v1 + 1) = 1;
}

void RXXPC::DownloadCallback(void *a1)
{
  v2 = xpc_dictionary_get_value(a1, kRDKeyDownloadStatus);
  if (v2)
  {
    if (MEMORY[0x26D679EE0](v2) == MEMORY[0x277D86468])
    {
      v1 = _CFXPCCreateCFObjectFromXPCObject();
      if (v1)
      {
        (*(RXXPC::sDownloadCB + 16))(RXXPC::sDownloadCB, v1);
        CFRelease(v1);
      }
    }
  }
}

void ___ZN5RXXPC11ClientEventEPU24objcproto13OS_xpc_object8NSObject_block_invoke_3(uint64_t a1)
{
  v1 = xpc_dictionary_get_value(*(a1 + 32), kRDKeyRecognizer);
  RXRecognizer::Recognized(v1, 0);
}

void RXXPC::~RXXPC(RXXPC *this)
{
  pthread_mutex_lock(&this->var12);
  if (this->var6)
  {
    v2 = RXXPC::CreateMessage(0x1F7);
    xpc_dictionary_set_uint64(v2, kRDKeyObjectID, this->var9);
    v3 = RXXPC::SendBrokerMessageWithReplySync(v2, 1);
    [this->var6 invalidate];
    var6 = this->var6;
    this->var6 = 0;
  }

  var7 = this->var7;
  if (var7)
  {
    this->var7 = 0;
  }

  var10 = this->var10;
  if (var10)
  {
    CFRelease(var10);
    this->var10 = 0;
  }

  pthread_mutex_unlock(&this->var12);
  CFRelease(this->var4);
  var5 = this->var5;
  if (var5)
  {
    CFRelease(var5);
  }

  objc_destroyWeak(&this->var8);
}

void RXXPC::CommitChanges(RXXPC *a1, void *a2, void *a3)
{
  xarray = a2;
  v5 = a3;
  if (!a1->var6)
  {
    RXXPC::EstablishConnection(a1);
  }

  if (!a1->var2)
  {
    v6 = v5 && xpc_array_get_count(v5) != 0;
    if (xpc_array_get_count(xarray) != 0 || v6)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_uint64(empty, kRDKeyEpoch, a1->var11);
      if (xpc_array_get_count(xarray))
      {
        xpc_dictionary_set_value(empty, kRDKeyObjects, xarray);
      }

      if (v6)
      {
        xpc_dictionary_set_value(empty, kRDKeyDead, v5);
      }

      v8 = xpc_wrap_uint64s_in_object(empty);
      v9 = _CFXPCCreateCFObjectFromXPCObject();
      v10 = RXXPC::RemoteService(a1);
      [v10 clientUpdateWithMessage:v9];

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }
}

void sub_26B592FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

id RXXPC::SendMessageWithReplySync(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  pthread_mutex_lock((a1 + 80));
  if (*(a1 + 32))
  {
    v4 = dispatch_semaphore_create(0);
    v5 = [*(a1 + 32) remoteObjectProxy];
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN5RXXPC24SendMessageWithReplySyncEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    v10[3] = &unk_279CF6C60;
    v12 = &v13;
    v7 = v4;
    v11 = v7;
    [v5 legacySendMessage:v6 reply:v10];
    if (v6)
    {
      CFRelease(v6);
    }

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  pthread_mutex_unlock((a1 + 80));
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_26B593178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ___ZN5RXXPC24SendMessageWithReplySyncEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void RXXPC::SendMessage(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  pthread_mutex_lock((a1 + 80));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 remoteObjectProxy];
    v6 = xpc_wrap_uint64s_in_object(v3);
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v7)
    {
      v8 = RXOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = MEMORY[0x26D679DD0](v6);
        _os_log_impl(&dword_26B583000, v8, OS_LOG_TYPE_DEFAULT, "PeerConnection: failed to convert message %s", &v10, 0xCu);
      }
    }

    [v5 legacySendMessage:v7 reply:&__block_literal_global_133];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  pthread_mutex_unlock((a1 + 80));

  v9 = *MEMORY[0x277D85DE8];
}

void RXXPC::AddHandler(uint64_t a1, void *a2)
{
  value = a2;
  pthread_mutex_lock((a1 + 80));
  v3 = *(a1 + 64);
  if (v3)
  {
    CFArrayAppendValue(v3, value);
  }

  pthread_mutex_unlock((a1 + 80));
}

void RXXPC::RemoveHandler(uint64_t a1, void *a2)
{
  value = a2;
  pthread_mutex_lock((a1 + 80));
  v3 = *(a1 + 64);
  if (v3)
  {
    v7.length = CFArrayGetCount(v3);
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 64), v7, value);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 64), FirstIndexOfValue);
    }
  }

  pthread_mutex_unlock((a1 + 80));
}

void RXXPC::SerializeCFArray(void *a1, const char *a2, const __CFArray *a3)
{
  xdict = a1;
  if (a3)
  {
    empty = xpc_array_create_empty();
    for (i = 0; CFArrayGetCount(a3) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      v8 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
        if (!CStringPtr)
        {
          Length = CFStringGetLength(v8);
          CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          operator new[]();
        }

        v11 = xpc_string_create(CStringPtr);
        xpc_array_append_value(empty, v11);
      }
    }

    xpc_dictionary_set_value(xdict, a2, empty);
  }
}

void RXXPC::SerializeURL(void *a1, uint64_t a2)
{
  xdict = a1;
  v3 = MEMORY[0x26D6795B0](0, a2, 0, 0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v5 = kRDKeyURL;
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v4);
    xpc_dictionary_set_data(xdict, v5, BytePtr, Length);
    CFRelease(v4);
  }
}

uint64_t RXXPC::CopyLanguageInstallationStatus(RXXPC *this)
{
  v1 = RXXPC::CreateMessage(0x1F8);
  v2 = RXXPC::SendBrokerMessageWithReplySync(v1, 1);
  v3 = v2;
  if (v2 && MEMORY[0x26D679EE0](v2) == MEMORY[0x277D86468])
  {
    v5 = xpc_dictionary_get_value(v3, kRDKeyAssetStatus);
    if (v5)
    {
      v4 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void RXXPC::StartInstallationForLanguage(RXXPC *this, const __CFString *a2)
{
  v3 = RXXPC::CreateMessage(0x1F9);
  RXXPC::SerializeCFString(v3, kRDKeyLocale, this);
  RXXPC::SendBrokerMessageWithReplySync(v3, 1);
}

void RXXPC::SetNonPurgeabilityForLanguages(RXXPC *this, const __CFArray *a2)
{
  v3 = RXXPC::CreateMessage(0x1FF);
  RXXPC::SerializeCFArray(v3, kRDKeyLocales, this);
  RXXPC::SendBrokerMessageWithReplySync(v3, 1);
}

uint64_t RXXPC::CopyInstalledAssetPathForLanguage(RXXPC *this, const __CFString *a2)
{
  v3 = RXXPC::CreateMessage(0x1FD);
  RXXPC::SerializeCFString(v3, kRDKeyLocale, this);
  v4 = RXXPC::SendBrokerMessageWithReplySync(v3, 1);
  v5 = v4;
  if (v4 && MEMORY[0x26D679EE0](v4) == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v5, kRDKeyInstalledAssetPath);
    v6 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t RXXPC::CopySupportedLanguagesForVoiceControl(RXXPC *this)
{
  v1 = RXXPC::CreateMessage(0x200);
  v2 = RXXPC::SendBrokerMessageWithReplySync(v1, 1);
  v3 = v2;
  if (v2 && MEMORY[0x26D679EE0](v2) == MEMORY[0x277D86468])
  {
    v5 = xpc_dictionary_get_value(v3, kRDKeySupportedLanguagesForVoiceControl);
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t RXXPC::CopyInstalledAssetSupportedTasksForLanguage(RXXPC *this, const __CFString *a2)
{
  v3 = RXXPC::CreateMessage(0x1FE);
  RXXPC::SerializeCFString(v3, kRDKeyLocale, a2);
  v4 = RXXPC::SendBrokerMessageWithReplySync(v3, 1);
  v5 = v4;
  if (v4 && MEMORY[0x26D679EE0](v4) == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v5, kRDKeyInstalledAssetSupportedTasks);
    v6 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void RXXPC::CancelInstallationForLanguage(RXXPC *this, const __CFString *a2)
{
  v4 = RXXPC::CreateMessage(0x1FC);
  RXXPC::SerializeCFString(v4, kRDKeyLocale, this);
  v3 = RXXPC::SendBrokerMessageWithReplySync(v4, 1);
}

int64_t RXXPC::PurgeInstalledAssets(RXXPC *this)
{
  v1 = RXXPC::CreateMessage(0x1FA);
  v2 = RXXPC::SendBrokerMessageWithReplySync(v1, 1);
  v3 = v2;
  if (v2 && MEMORY[0x26D679EE0](v2) == MEMORY[0x277D86498])
  {
    int64 = xpc_dictionary_get_int64(v3, kRDKeyAssetStatus);
  }

  else
  {
    int64 = 0;
  }

  return int64;
}

void RXXPC::SetDownloadCallback(void *a1)
{
  v5 = a1;
  v1 = [v5 copy];
  v2 = RXXPC::sDownloadCB;
  RXXPC::sDownloadCB = v1;

  v3 = RXXPC::CreateMessage(0x1FB);
  xpc_dictionary_set_BOOL(v3, kRDKeyDownloadProgress, v5 != 0);
  v4 = RXXPC::SendBrokerMessageWithReplySync(v3, 0);
}

void RXXPC::TriggerVocabularySync(RXXPC *this)
{
  v1 = RXXPC::CreateMessage(0x201);
  RXXPC::SendBrokerMessageWithReplySync(v1, 1);
}

void RXXPC::RemoveAllVocabularyEntriesFromCloud(RXXPC *this)
{
  v1 = RXXPC::CreateMessage(0x202);
  RXXPC::SendBrokerMessageWithReplySync(v1, 1);
}

CFStringRef RDCopyModelPath(void)
{
  v0 = CFCopySearchPathForDirectoriesInDomains();
  ValueAtIndex = CFArrayGetValueAtIndex(v0, 0);
  v2 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
  v3 = CFStringCreateWithFormat(0, 0, @"%@/Speech/Recognizers/SpeechRecognitionCoreLanguages", v2);
  CFRelease(v2);
  CFRelease(v0);
  return v3;
}

const __CFURL *RDCopyCacheURL(void)
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = CFCopySearchPathForDirectoriesInDomains();
  ValueAtIndex = CFArrayGetValueAtIndex(v0, 0);
  v2 = CFURLCreateCopyAppendingPathComponent(0, ValueAtIndex, @"com.apple.SpeechRecognitionCore", 1u);
  CFRelease(v0);
  v3 = CFURLCopyPath(v2);
  if (v3)
  {
    v4 = v3;
    CFStringGetCString(v3, buffer, 2000, 0x8000100u);
    v5 = opendir(buffer);
    if (v5)
    {
      closedir(v5);
    }

    else if (mkdir(buffer, 0x1EDu))
    {
      v6 = RXOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = v2;
        _os_log_impl(&dword_26B583000, v6, OS_LOG_TYPE_ERROR, "Error creating %@", &v9, 0xCu);
      }
    }

    CFRelease(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

const __CFDictionary *RDCopyInfoDict(CFURLRef url)
{
  v1 = CFURLCreateCopyAppendingPathComponent(0, url, @"Info.plist", 0);

  return RDCopyInfoDictWithInfoURL(v1);
}

const __CFDictionary *RDCopyInfoDictWithInfoURL(CFURLRef fileURL)
{
  if (!fileURL)
  {
    return 0;
  }

  v2 = CFReadStreamCreateWithFile(0, fileURL);
  if (v2)
  {
    v3 = v2;
    CFReadStreamOpen(v2);
    v4 = CFPropertyListCreateWithStream(0, v3, 0, 0, 0, 0);
    v5 = v4;
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"CFBundleShortVersionString");
      if (CFStringGetCharacterAtIndex(Value, 0) <= 0x31u)
      {
        CFRelease(v5);
        v5 = 0;
      }
    }

    CFReadStreamClose(v3);
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(fileURL);
  return v5;
}

const void *RDCopyCacheVersion(const __CFString *a1)
{
  v1 = RDCopyLanguageCacheURL(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CFURLCreateCopyAppendingPathComponent(0, v1, @"Info.plist", 0);
    v4 = RDCopyInfoDictWithInfoURL(v3);
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(v4, @"CFBundleShortVersionString");
      if (Value)
      {
        v7 = Value;
        CFRetain(Value);
        CFRelease(v5);
LABEL_15:
        CFRelease(v2);
        return v7;
      }

      CFRelease(v5);
    }

    RDURL::RDURL(__p, v2, 0);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (stat(v8, &v12))
    {
      v7 = 0;
    }

    else
    {
      v7 = *MEMORY[0x277CBED28];
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_15;
  }

  return 0;
}

void sub_26B594224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFURLRef RDCopyLanguageCacheURL(const __CFString *a1)
{
  v1 = RDCopyBestNashvilleLocaleIdentifier(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = RDCopyCacheURL();
  if (v3)
  {
    v4 = v3;
    v5 = CFURLCreateCopyAppendingPathComponent(0, v3, @"Users", 1u);
    if (v5)
    {
      v6 = v5;
      v7 = CFURLCreateCopyAppendingPathComponent(0, v5, v2, 1u);
      CFRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v2);
  return v7;
}

void RDNukeCache(const __CFString *a1)
{
  if (a1)
  {
    v1 = RDCopyLanguageCacheURL(a1);
    if (!v1)
    {
      return;
    }

    RDURL::RDURL(__p, v1, 1);
    if (v5 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }
  }

  else
  {
    v3 = RDCopyCacheURL();
    if (!v3)
    {
      return;
    }

    RDURL::RDURL(__p, v3, 1);
    if (v5 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }
  }

  removefile(v2, 0, 1u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26B594398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFSet *RDCopyNashvilleModelLanguages(void)
{
  v0 = RDCopyModelPath();
  RDString::RDString(v22, v0, 1);
  if ((v23 & 0x80u) == 0)
  {
    v1 = v22;
  }

  else
  {
    v1 = v22[0];
  }

  v2 = opendir(v1);
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  v4 = Mutable;
  if (v2)
  {
    v5 = Mutable == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          v6 = readdir(v2);
          if (!v6)
          {
            closedir(v2);
            goto LABEL_30;
          }

          d_name = v6->d_name;
          v8 = strstr(v6->d_name, ".SpeechRecognition");
        }

        while (!v8);
        v9 = v8;
        if ((v23 & 0x80u) == 0)
        {
          v10 = v23;
        }

        else
        {
          v10 = v22[1];
        }

        std::string::basic_string[abi:ne200100](&v20, v10 + 1);
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v20;
        }

        else
        {
          v11 = v20.__r_.__value_.__r.__words[0];
        }

        if (v10)
        {
          if ((v23 & 0x80u) == 0)
          {
            v12 = v22;
          }

          else
          {
            v12 = v22[0];
          }

          memmove(v11, v12, v10);
        }

        *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
        v13 = std::string::append(&v20, d_name);
        v14 = *&v13->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        v15 = CheckLocale(&__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (v15)
        {
          goto LABEL_27;
        }
      }

      operator delete(v20.__r_.__value_.__l.__data_);
      if (v15)
      {
LABEL_27:
        v16 = CFStringCreateWithBytes(0, d_name, v9 - d_name, 0x8000100u, 0);
        CFSetAddValue(v4, v16);
        CFRelease(v16);
        v17 = strchr(d_name, 95);
        if (v17)
        {
          v18 = CFStringCreateWithBytes(0, d_name, v17 - d_name, 0x8000100u, 0);
          CFSetAddValue(v4, v18);
          CFRelease(v18);
        }
      }
    }
  }

LABEL_30:
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  return v4;
}

void sub_26B5945D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CheckLocale(std::string *a1)
{
  v1 = a1;
  std::string::append(a1, "/Contents/Info.plist");
  v2 = v1;
  if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v1->__r_.__value_.__r.__words[0];
  }

  if (stat(v2, &v9))
  {
    return 0;
  }

  if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
  {
    v1 = v1->__r_.__value_.__r.__words[0];
  }

  v4 = CFStringCreateWithCStringNoCopy(0, v1, 0x8000100u, *MEMORY[0x277CBED00]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  v7 = RDCopyInfoDictWithInfoURL(v6);
  v3 = v7 != 0;
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v5);
  return v3;
}

CFStringRef RDCopyBestNashvilleLocaleIdentifier(CFStringRef theString)
{
  RDString::RDString(&v68, theString, 0);
  v69 = v68;
  memset(&v68, 0, sizeof(v68));
  v1 = RDCopyModelPath();
  if (!v1)
  {
    std::string::basic_string[abi:ne200100]<0>(&cStr, "");
    goto LABEL_169;
  }

  RDString::RDString(v82, v1, 1);
  std::string::push_back(v2, 47);
  std::string::basic_string[abi:ne200100]<0>(&v79, ".SpeechRecognition");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v82, &v69.__r_.__value_.__l.__data_, &v77);
  if ((v81 & 0x80u) == 0)
  {
    v3 = &v79;
  }

  else
  {
    v3 = v79;
  }

  if ((v81 & 0x80u) == 0)
  {
    v4 = v81;
  }

  else
  {
    v4 = v80;
  }

  v5 = std::string::append(&v77, v3, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v78.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v78.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = CheckLocale(&v78);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  v8 = std::string::find(&v69, 46, 0);
  if (v8 != -1)
  {
    v9 = &v69 + HIBYTE(v69.__r_.__value_.__r.__words[2]);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v69;
    }

    else
    {
      v9 = (v69.__r_.__value_.__r.__words[0] + v69.__r_.__value_.__l.__size_);
      v10 = v69.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&v69, v8, v9 - (v10 + v8));
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v82, &v69.__r_.__value_.__l.__data_, &v76);
    if ((v81 & 0x80u) == 0)
    {
      v11 = &v79;
    }

    else
    {
      v11 = v79;
    }

    if ((v81 & 0x80u) == 0)
    {
      v12 = v81;
    }

    else
    {
      v12 = v80;
    }

    v13 = std::string::append(&v76, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = CheckLocale(&v77);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
      if (v15)
      {
        goto LABEL_58;
      }
    }

    else if (v15)
    {
      goto LABEL_58;
    }
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v69;
  }

  else
  {
    v16 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v18 = 0;
    v19 = v16;
    while (1)
    {
      v20 = v16->__r_.__value_.__s.__data_[v18];
      if (v20 == 45 || v20 == 95)
      {
        break;
      }

      v19 = (v19 + 1);
      if (size == ++v18)
      {
        goto LABEL_59;
      }
    }

    if (size != v18 && v18 != -1)
    {
      v21 = &v69 + HIBYTE(v69.__r_.__value_.__r.__words[2]);
      if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = (v69.__r_.__value_.__r.__words[0] + v69.__r_.__value_.__l.__size_);
      }

      std::string::erase(&v69, v18, v21 - v19);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v82, &v69.__r_.__value_.__l.__data_, &v75);
      if ((v81 & 0x80u) == 0)
      {
        v22 = &v79;
      }

      else
      {
        v22 = v79;
      }

      if ((v81 & 0x80u) == 0)
      {
        v23 = v81;
      }

      else
      {
        v23 = v80;
      }

      v24 = std::string::append(&v75, v22, v23);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = CheckLocale(&v76);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      if (v26)
      {
LABEL_58:
        cStr = v69;
        memset(&v69, 0, sizeof(v69));
        goto LABEL_165;
      }
    }
  }

LABEL_59:
  std::string::basic_string[abi:ne200100]<0>(&v75, "");
  if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_75;
    }

    if (LOWORD(v69.__r_.__value_.__l.__data_) != 28261)
    {
      if (LOWORD(v69.__r_.__value_.__l.__data_) != 29286)
      {
        if (LOWORD(v69.__r_.__value_.__l.__data_) != 29541)
        {
          v27 = &v69;
          goto LABEL_69;
        }

LABEL_73:
        v28 = "es_US";
        goto LABEL_74;
      }

LABEL_72:
      v28 = "fr_FR";
      goto LABEL_74;
    }

LABEL_71:
    v28 = "en_US";
    goto LABEL_74;
  }

  if (v69.__r_.__value_.__l.__size_ != 2)
  {
    goto LABEL_75;
  }

  v27 = v69.__r_.__value_.__r.__words[0];
  switch(*v69.__r_.__value_.__l.__data_)
  {
    case 0x6E65:
      goto LABEL_71;
    case 0x7266:
      goto LABEL_72;
    case 0x7365:
      goto LABEL_73;
  }

LABEL_69:
  if (LOWORD(v27->__r_.__value_.__l.__data_) == 25956)
  {
    v28 = "de_DE";
LABEL_74:
    MEMORY[0x26D679700](&v75, v28);
  }

LABEL_75:
  v29 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v75.__r_.__value_.__l.__size_;
  }

  if (v29)
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v82, &v75.__r_.__value_.__l.__data_, &__s1);
    if ((v81 & 0x80u) == 0)
    {
      v30 = &v79;
    }

    else
    {
      v30 = v79;
    }

    if ((v81 & 0x80u) == 0)
    {
      v31 = v81;
    }

    else
    {
      v31 = v80;
    }

    v32 = std::string::append(&__s1, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = CheckLocale(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
      if (v34)
      {
        goto LABEL_88;
      }
    }

    else if (v34)
    {
LABEL_88:
      cStr = v75;
      memset(&v75, 0, sizeof(v75));
      goto LABEL_163;
    }
  }

  if ((v83 & 0x80u) == 0)
  {
    v35 = v82;
  }

  else
  {
    v35 = v82[0];
  }

  v36 = opendir(v35);
  v37 = v36;
  if (!v36)
  {
LABEL_162:
    std::string::basic_string[abi:ne200100]<0>(&cStr, "");
    goto LABEL_163;
  }

  v67 = v36;
  while (1)
  {
    v38 = readdir(v37);
    if (!v38)
    {
      closedir(v37);
      goto LABEL_162;
    }

    std::string::basic_string[abi:ne200100]<0>(&__s1, v38->d_name);
    v39 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    v40 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    v42 = __s1.__r_.__value_.__l.__size_;
    v41 = __s1.__r_.__value_.__r.__words[0];
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1.__r_.__value_.__r.__words[0];
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = __s1.__r_.__value_.__l.__size_;
    }

    v44 = (v81 & 0x80u) == 0 ? &v79 : v79;
    v45 = (v81 & 0x80u) == 0 ? v81 : v80;
    if (!v45)
    {
      goto LABEL_140;
    }

    if (v39 >= v45)
    {
      v46 = p_s1 + v39;
      v47 = *v44;
      v48 = p_s1;
      while (1)
      {
        v49 = v39 - v45;
        if (v49 == -1)
        {
          goto LABEL_126;
        }

        v50 = memchr(v48, v47, v49 + 1);
        if (!v50)
        {
          goto LABEL_126;
        }

        v51 = v50;
        if (!memcmp(v50, v44, v45))
        {
          break;
        }

        v48 = (v51 + 1);
        v39 = v46 - (v51 + 1);
        if (v39 < v45)
        {
          goto LABEL_126;
        }
      }

      if (v51 == v46)
      {
LABEL_126:
        v37 = v67;
        goto LABEL_159;
      }

      v37 = v67;
      if (v51 - p_s1 != -1)
      {
LABEL_140:
        v52 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v69.__r_.__value_.__r.__words[2]) : v69.__r_.__value_.__l.__size_;
        if ((v40 & 0x80000000) != 0)
        {
          if (v52 == -1)
          {
LABEL_186:
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v53 = v42 >= 2 ? 2 : v42;
        }

        else
        {
          if (v52 == -1)
          {
            goto LABEL_186;
          }

          v53 = v40 >= 2 ? 2 : v40;
          v41 = &__s1;
        }

        v54 = (v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v69 : v69.__r_.__value_.__r.__words[0];
        v55 = v53 >= v52 ? v52 : v53;
        if (!memcmp(v41, v54, v55) && v53 == v52)
        {
          break;
        }
      }
    }

LABEL_159:
    if ((v40 & 0x80) != 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }
  }

  if ((v83 & 0x80u) == 0)
  {
    v57 = v83;
  }

  else
  {
    v57 = v82[1];
  }

  std::string::basic_string[abi:ne200100](&v71, v57 + 1);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v58 = &v71;
  }

  else
  {
    v58 = v71.__r_.__value_.__r.__words[0];
  }

  if (v57)
  {
    if ((v83 & 0x80u) == 0)
    {
      v59 = v82;
    }

    else
    {
      v59 = v82[0];
    }

    memmove(v58, v59, v57);
  }

  *(&v58->__r_.__value_.__l.__data_ + v57) = 47;
  v60 = std::string::append(&v71, v38->d_name);
  v61 = *&v60->__r_.__value_.__l.__data_;
  v72.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&v72.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v62 = CheckLocale(&v72);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (!v62)
  {
    LOBYTE(v40) = *(&__s1.__r_.__value_.__s + 23);
    goto LABEL_159;
  }

  closedir(v37);
  v66 = std::string::find[abi:ne200100](&__s1, &v79, 0);
  std::string::basic_string(&cStr, &__s1, 0, v66, &v71);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

LABEL_163:
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

LABEL_165:
  if (v81 < 0)
  {
    operator delete(v79);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

LABEL_169:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(cStr.__r_.__value_.__r.__words[2]) < 0)
  {
    if (cStr.__r_.__value_.__l.__size_)
    {
      p_cStr = cStr.__r_.__value_.__r.__words[0];
LABEL_178:
      v64 = CFStringCreateWithCString(0, p_cStr, 0x8000100u);
      if ((SHIBYTE(cStr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v64;
      }
    }

    else
    {
      v64 = 0;
    }

    operator delete(cStr.__r_.__value_.__l.__data_);
    return v64;
  }

  if (*(&cStr.__r_.__value_.__s + 23))
  {
    p_cStr = &cStr;
    goto LABEL_178;
  }

  return 0;
}