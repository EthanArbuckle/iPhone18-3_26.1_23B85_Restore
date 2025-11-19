id SVXClientServiceCreateXPCInterface()
{
  if (SVXClientServiceCreateXPCInterface_onceToken != -1)
  {
    dispatch_once(&SVXClientServiceCreateXPCInterface_onceToken, &__block_literal_global);
  }

  v1 = SVXClientServiceCreateXPCInterface_sharedInterface;

  return v1;
}

uint64_t __SVXClientServiceCreateXPCInterface_block_invoke()
{
  SVXClientServiceCreateXPCInterface_sharedInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A36910];

  return MEMORY[0x2821F96F8]();
}

id SVXClientServiceDelegateCreateXPCInterface()
{
  if (SVXClientServiceDelegateCreateXPCInterface_onceToken != -1)
  {
    dispatch_once(&SVXClientServiceDelegateCreateXPCInterface_onceToken, &__block_literal_global_80);
  }

  v1 = SVXClientServiceDelegateCreateXPCInterface_sharedInterface;

  return v1;
}

uint64_t __SVXClientServiceDelegateCreateXPCInterface_block_invoke()
{
  SVXClientServiceDelegateCreateXPCInterface_sharedInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A36E78];

  return MEMORY[0x2821F96F8]();
}

void sub_2695BE270(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id SVXLocalizationGetAllTables()
{
  if (SVXLocalizationGetAllTables_onceToken != -1)
  {
    dispatch_once(&SVXLocalizationGetAllTables_onceToken, &__block_literal_global_1092);
  }

  v1 = SVXLocalizationGetAllTables_tables;

  return v1;
}

void __SVXLocalizationGetAllTables_block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"Localizable";
  v3[1] = @"Clock";
  v3[2] = @"DeviceSetup";
  v3[3] = @"Errors";
  v3[4] = @"Interstitials";
  v3[5] = @"StoreDemo";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = SVXLocalizationGetAllTables_tables;
  SVXLocalizationGetAllTables_tables = v0;

  v2 = *MEMORY[0x277D85DE8];
}

id SVXLocalizationGetKeysInTable(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = +[SVXBundleUtils sharedInstance];
  v2 = [v14 getSiriVOXFramework];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = CFBundleCopyLocalizationsForPreferences([v2 localizations], &unk_287A33E38);
  v4 = [(__CFArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v2 URLForResource:v1 withExtension:@"strings" subdirectory:0 localization:*(*(&v18 + 1) + 8 * i)];
        if (v8)
        {
          v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v8];
        }

        else
        {
          v9 = 0;
        }

        if ([v9 count])
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __SVXLocalizationGetKeysInTable_block_invoke;
          v16[3] = &unk_279C66768;
          v17 = v15;
          [v9 enumerateKeysAndObjectsUsingBlock:v16];
        }
      }

      v5 = [(__CFArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v10 = [v15 allObjects];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __SVXLocalizationGetKeysInTable_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 hasSuffix:@"_FEMALE"])
  {
    v3 = *(a1 + 32);
    v4 = [v8 length];
    v5 = @"_FEMALE";
LABEL_5:
    v7 = [v8 substringToIndex:{v4 - -[__CFString length](v5, "length")}];
    [v3 addObject:v7];

    goto LABEL_7;
  }

  v6 = [v8 hasSuffix:@"_MALE"];
  v3 = *(a1 + 32);
  if (v6)
  {
    v4 = [v8 length];
    v5 = @"_MALE";
    goto LABEL_5;
  }

  [v3 addObject:v8];
LABEL_7:
}

id SVXLocalizationGetLocalizedString(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = +[SVXBundleUtils sharedInstance];
  v8 = [v7 getLocalizedStringWithBundle:0 table:0 key:v5 languageCode:v6 gender:a2];

  return v8;
}

__CFString *SVXBooleanGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C66788[a1];
  }
}

uint64_t SVXBooleanGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXBooleanGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXBooleanGetFromName_onceToken, &__block_literal_global_1116);
    }

    v2 = [SVXBooleanGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXBooleanGetFromName_block_invoke()
{
  v0 = SVXBooleanGetFromName_map;
  SVXBooleanGetFromName_map = &unk_287A34CA8;
}

void sub_2695C6FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SVXDeactivationSourceGetName(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C66840[a1];
  }
}

uint64_t SVXDeactivationSourceGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXDeactivationSourceGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXDeactivationSourceGetFromName_onceToken, &__block_literal_global_1858);
    }

    v2 = [SVXDeactivationSourceGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXDeactivationSourceGetFromName_block_invoke()
{
  v0 = SVXDeactivationSourceGetFromName_map;
  SVXDeactivationSourceGetFromName_map = &unk_287A34CD0;
}

__CFString *SVXStoreDemoTranscriptIDGetName(unint64_t a1)
{
  if (a1 > 0x15)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C66870[a1];
  }
}

uint64_t SVXStoreDemoTranscriptIDGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXStoreDemoTranscriptIDGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXStoreDemoTranscriptIDGetFromName_onceToken, &__block_literal_global_1957);
    }

    v2 = [SVXStoreDemoTranscriptIDGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXStoreDemoTranscriptIDGetFromName_block_invoke()
{
  v0 = SVXStoreDemoTranscriptIDGetFromName_map;
  SVXStoreDemoTranscriptIDGetFromName_map = &unk_287A34CF8;
}

CFDictionaryRef _SVXAnnouncerCreateInstanceMethodSignatureMap(Protocol *a1, BOOL a2)
{
  outCount = 0;
  v2 = protocol_copyMethodDescriptionList(a1, a2, 1, &outCount);
  Mutable = CFDictionaryCreateMutable(0, outCount, 0, MEMORY[0x277CBF150]);
  if (v2 && outCount)
  {
    v4 = 0;
    p_types = &v2->types;
    do
    {
      v6 = *(p_types - 1);
      v7 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:*p_types];
      CFDictionarySetValue(Mutable, v6, v7);

      ++v4;
      p_types += 2;
    }

    while (v4 < outCount);
  }

  free(v2);
  Copy = CFDictionaryCreateCopy(0, Mutable);
  CFRelease(Mutable);
  return Copy;
}

void sub_2695CDB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v56 + 40));
  objc_destroyWeak((v56 + 32));
  objc_destroyWeak((v58 + 40));
  objc_destroyWeak((v58 + 32));
  objc_destroyWeak((v57 + 40));
  objc_destroyWeak((v57 + 32));
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a35);
  objc_destroyWeak((v59 - 208));
  objc_destroyWeak((v59 - 232));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2695CEB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, id a33)
{
  objc_destroyWeak((v35 + 40));
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a33);
  _Unwind_Resume(a1);
}

void sub_2695CFD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

id SVXSpeechSynthesisOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"allowsSynthesizingOnServer"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"disableDeviceRacing"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

uint64_t SVXSpeechSynthesisOptionsGetFromNames(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = v1;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          if ([v8 length])
          {
            if (_SVXSpeechSynthesisOptionsGetFromName_onceToken != -1)
            {
              dispatch_once(&_SVXSpeechSynthesisOptionsGetFromName_onceToken, &__block_literal_global_2519);
            }

            v9 = [_SVXSpeechSynthesisOptionsGetFromName_map objectForKey:v8];
            v10 = [v9 unsignedIntegerValue];
          }

          else
          {
            v10 = 0;
          }

          v5 |= v10;
          ++v7;
        }

        while (v4 != v7);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v1 = v13;
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

__CFString *SVXSpeechSynthesisGenderGetName(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C66CC8[a1];
  }
}

uint64_t SVXSpeechSynthesisGenderGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXSpeechSynthesisGenderGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXSpeechSynthesisGenderGetFromName_onceToken, &__block_literal_global_2874);
    }

    v2 = [SVXSpeechSynthesisGenderGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXSpeechSynthesisGenderGetFromName_block_invoke()
{
  v0 = SVXSpeechSynthesisGenderGetFromName_map;
  SVXSpeechSynthesisGenderGetFromName_map = &unk_287A34D48;
}

void sub_2695D9B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SVXTaskOriginGetName(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C66ED0[a1];
  }
}

uint64_t SVXTaskOriginGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXTaskOriginGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXTaskOriginGetFromName_onceToken, &__block_literal_global_3992);
    }

    v2 = [SVXTaskOriginGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXTaskOriginGetFromName_block_invoke()
{
  v0 = SVXTaskOriginGetFromName_map;
  SVXTaskOriginGetFromName_map = &unk_287A34D70;
}

__CFString *SVXDeviceSetupFlowDisplayKeyFrameIDGetName(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C66F60[a1];
  }
}

uint64_t SVXDeviceSetupFlowDisplayKeyFrameIDGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXDeviceSetupFlowDisplayKeyFrameIDGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXDeviceSetupFlowDisplayKeyFrameIDGetFromName_onceToken, &__block_literal_global_4459);
    }

    v2 = [SVXDeviceSetupFlowDisplayKeyFrameIDGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXDeviceSetupFlowDisplayKeyFrameIDGetFromName_block_invoke()
{
  v0 = SVXDeviceSetupFlowDisplayKeyFrameIDGetFromName_map;
  SVXDeviceSetupFlowDisplayKeyFrameIDGetFromName_map = &unk_287A34D98;
}

uint64_t _getSchemaInvocationSourceForVoiceTrigger(void *a1)
{
  v1 = 17;
  if (a1)
  {
    v2 = [a1 objectForKey:@"triggeredPhraseId"];
    v3 = [v2 unsignedLongValue];

    if (v3 == 1)
    {
      return 80;
    }

    else
    {
      return 17;
    }
  }

  return v1;
}

uint64_t SVXInstrumentationEmitUIStateTransition(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = MEMORY[0x277CEF098];
  if (a2 == 1 && a3 == 2)
  {
    goto LABEL_15;
  }

  switch(a2)
  {
    case 4:
      if (a3 == 2)
      {
        goto LABEL_15;
      }

LABEL_11:
      if (a3 == 1)
      {
        goto LABEL_15;
      }

      break;
    case 3:
      if (a3 == 4)
      {
        a3 = 5;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 2:
      if (a3 == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
  }

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "SVXInstrumentationEmitUIStateTransition";
    _os_log_debug_impl(&dword_2695B9000, v9, OS_LOG_TYPE_DEBUG, "%s Emitting unknown UIStateTransition; this implies there are unaccounted session state transitions, add them here", &v17, 0xCu);
  }

  a3 = 0;
LABEL_15:
  v10 = objc_alloc_init(MEMORY[0x277D5AC18]);
  [v10 setPresentationType:6];
  v11 = objc_alloc_init(MEMORY[0x277D5AC20]);
  [v11 setPresenting:v10];
  [v11 setPreviousState:a4];
  [v11 setCurrentState:a3];
  v12 = *v8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 1) > 4)
    {
      v13 = @"SIRIUISTATE_UNKNOWN_SIRI_UI_STATE";
    }

    else
    {
      v13 = off_279C67298[(a4 - 1)];
    }

    v14 = off_279C67268[a3];
    v17 = 136315650;
    v18 = "SVXInstrumentationEmitUIStateTransition";
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s #SVXInstrumentation - Emit state transition event (current: %@, next: %@)", &v17, 0x20u);
  }

  [v7 emitInstrumentation:v11];
  v15 = *MEMORY[0x277D85DE8];
  return a3;
}

void SVXInstrumentationEmitViewAppearContextEnd(void *a1)
{
  v1 = MEMORY[0x277D5AB30];
  v2 = a1;
  v4 = objc_alloc_init(v1);
  v3 = objc_alloc_init(MEMORY[0x277D5AB38]);
  [v3 setExists:1];
  [v4 setEnded:v3];
  [v2 emitInstrumentation:v4];
}

uint64_t SVXAudioSessionIsNoRoutesAvailableError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    IsNoRoutesAvailableError = 0;
    goto LABEL_8;
  }

  v3 = [v1 domain];
  if (![v3 isEqualToString:*MEMORY[0x277CCA590]])
  {

    goto LABEL_7;
  }

  v4 = [v2 code];

  if (v4 != -11784)
  {
LABEL_7:
    v6 = [v2 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277CCA7E8]];

    IsNoRoutesAvailableError = SVXAudioSessionIsNoRoutesAvailableError(v7);
    goto LABEL_8;
  }

  IsNoRoutesAvailableError = 1;
LABEL_8:

  return IsNoRoutesAvailableError;
}

void __SVXDispatchRootQueueGetHighPriority_block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.SiriVOXService.root.high-priority");
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  v1 = SVXDispatchRootQueueGetHighPriority_queue;
  SVXDispatchRootQueueGetHighPriority_queue = inactive;
}

__CFString *SVXAudioPowerTypeGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C67430[a1];
  }
}

uint64_t SVXAudioPowerTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXAudioPowerTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXAudioPowerTypeGetFromName_onceToken, &__block_literal_global_5126);
    }

    v2 = [SVXAudioPowerTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXAudioPowerTypeGetFromName_block_invoke()
{
  v0 = SVXAudioPowerTypeGetFromName_map;
  SVXAudioPowerTypeGetFromName_map = &unk_287A34DC0;
}

__CFString *SVXSpeechSynthesisPriorityGetName(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C67498[a1];
  }
}

uint64_t SVXSpeechSynthesisPriorityGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXSpeechSynthesisPriorityGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXSpeechSynthesisPriorityGetFromName_onceToken, &__block_literal_global_5410);
    }

    v2 = [SVXSpeechSynthesisPriorityGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXSpeechSynthesisPriorityGetFromName_block_invoke()
{
  v0 = SVXSpeechSynthesisPriorityGetFromName_map;
  SVXSpeechSynthesisPriorityGetFromName_map = &unk_287A34DE8;
}

id SVXSessionResignActiveOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"playsSound"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

void sub_2695E7240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarDraft");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRadarDraftClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SVXRadarDraftFactory.m" lineNumber:16 description:{@"Unable to find class %s", "RadarDraft"}];

    __break(1u);
  }
}

void __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RadarComponent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getRadarComponentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SVXRadarDraftFactory.m" lineNumber:17 description:{@"Unable to find class %s", "RadarComponent"}];

    __break(1u);
  }
}

void TapToRadarKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __TapToRadarKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279C67550;
    v6 = 0;
    TapToRadarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *TapToRadarKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"SVXRadarDraftFactory.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TapToRadarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2695EA60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SVXAlarmAndTimerFiringContextGetIsSpeakable(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SVXAlarmAndTimerUtilities);
  v3 = [(SVXAlarmAndTimerUtilities *)v2 getIsSpeakable:v1];

  return v3;
}

id SVXAlarmAndTimerFiringContextCreateSpeechSynthesisRequest(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(SVXAlarmAndTimerUtilities);
  v6 = [(SVXAlarmAndTimerUtilities *)v5 createSpeechSynthesisRequestWithContext:v4 instanceContext:v3];

  return v6;
}

id SVXClientInfoGetCurrent()
{
  if (SVXClientInfoGetCurrent_onceToken != -1)
  {
    dispatch_once(&SVXClientInfoGetCurrent_onceToken, &__block_literal_global_6433);
  }

  v1 = SVXClientInfoGetCurrent_clientInfo;

  return v1;
}

void __SVXClientInfoGetCurrent_block_invoke()
{
  v5 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [SVXClientInfo alloc];
  v1 = [v5 processIdentifier];
  v2 = [v5 processName];
  v3 = [(SVXClientInfo *)v0 initWithProcessIdentifier:v1 processName:v2];
  v4 = SVXClientInfoGetCurrent_clientInfo;
  SVXClientInfoGetCurrent_clientInfo = v3;
}

uint64_t SVXClientInfoIsCurrent(void *a1)
{
  v1 = a1;
  v2 = SVXClientInfoGetCurrent();
  v3 = [v2 isEqual:v1];

  return v3;
}

__CFString *SVXPlatformDependencyTypeGetName(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C67648[a1];
  }
}

uint64_t SVXPlatformDependencyTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXPlatformDependencyTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXPlatformDependencyTypeGetFromName_onceToken, &__block_literal_global_6665);
    }

    v2 = [SVXPlatformDependencyTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXPlatformDependencyTypeGetFromName_block_invoke()
{
  v0 = SVXPlatformDependencyTypeGetFromName_map;
  SVXPlatformDependencyTypeGetFromName_map = &unk_287A34E10;
}

id getTapToRadarServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTapToRadarServiceClass_softClass;
  v7 = getTapToRadarServiceClass_softClass;
  if (!getTapToRadarServiceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getTapToRadarServiceClass_block_invoke;
    v3[3] = &unk_279C677C0;
    v3[4] = &v4;
    __getTapToRadarServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2695F2D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!TapToRadarKitLibraryCore_frameworkLibrary_8017)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __TapToRadarKitLibraryCore_block_invoke_8018;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_279C677E0;
    v9 = 0;
    TapToRadarKitLibraryCore_frameworkLibrary_8017 = _sl_dlopen();
  }

  if (!TapToRadarKitLibraryCore_frameworkLibrary_8017)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *TapToRadarKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SVXRadarFiler.m" lineNumber:13 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getTapToRadarServiceClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"SVXRadarFiler.m" lineNumber:14 description:{@"Unable to find class %s", "TapToRadarService"}];

LABEL_10:
    __break(1u);
  }

  getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TapToRadarKitLibraryCore_block_invoke_8018(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TapToRadarKitLibraryCore_frameworkLibrary_8017 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *SVXSoundIDGetName(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C677F8[a1];
  }
}

uint64_t SVXSoundIDGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXSoundIDGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXSoundIDGetFromName_onceToken, &__block_literal_global_8177);
    }

    v2 = [SVXSoundIDGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXSoundIDGetFromName_block_invoke()
{
  v0 = SVXSoundIDGetFromName_map;
  SVXSoundIDGetFromName_map = &unk_287A34E38;
}

__CFString *SVXSpeechSynthesisResultTypeGetName(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C678A8[a1];
  }
}

uint64_t SVXSpeechSynthesisResultTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXSpeechSynthesisResultTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXSpeechSynthesisResultTypeGetFromName_onceToken, &__block_literal_global_8457);
    }

    v2 = [SVXSpeechSynthesisResultTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXSpeechSynthesisResultTypeGetFromName_block_invoke()
{
  v0 = SVXSpeechSynthesisResultTypeGetFromName_map;
  SVXSpeechSynthesisResultTypeGetFromName_map = &unk_287A34E60;
}

void sub_2695F8DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9035(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2695F91E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void _recordStartEndBiomeEvent(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEAA8];
  v8 = a1;
  v9 = [v7 date];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___recordStartEndBiomeEvent_block_invoke;
  block[3] = &unk_279C68ED0;
  v14 = v5;
  v15 = v6;
  v16 = v9;
  v10 = v9;
  v11 = v6;
  v12 = v5;
  dispatch_async(v8, block);
}

void ___recordStartEndBiomeEvent_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = BiomeLibrary();
  v3 = [v2 Siri];
  v4 = [v3 UI];

  v5 = [v4 source];
  v6 = &stru_287A1C130;
  if ([*(a1 + 32) isEqualToString:@"com.apple.siri.ui.end"])
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:@"DISMISSAL_REASON"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_287A1C130;
    }

    v6 = v9;

    v10 = MEMORY[0x277CBEC28];
  }

  else
  {
    v10 = MEMORY[0x277CBEC38];
  }

  v11 = objc_alloc(MEMORY[0x277CF1600]);
  v12 = [*(a1 + 40) objectForKeyedSubscript:@"sessionUUID"];
  v13 = [*(a1 + 40) objectForKeyedSubscript:@"activityUUID"];
  v14 = [&unk_287A346D8 stringValue];
  v15 = [v11 initWithSessionID:v12 uuid:v13 viewMode:v14 dismissalReason:v6 starting:v10 absoluteTimestamp:*(a1 + 48)];

  if (v15)
  {
    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "_recordStartEndBiomeEvent_block_invoke";
      _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Donating biome event from SVXSession Manager", &v18, 0xCu);
    }

    [v5 sendEvent:v15];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2695FE1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _myriadStereoPartnerDataChanged(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___myriadStereoPartnerDataChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id SVXPerformingOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"waitsUntilDone"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"allowsFastPath"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

uint64_t SVXPerformingOptionsGetFromNames(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = v1;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          if ([v8 length])
          {
            if (_SVXPerformingOptionsGetFromName_onceToken != -1)
            {
              dispatch_once(&_SVXPerformingOptionsGetFromName_onceToken, &__block_literal_global_9316);
            }

            v9 = [_SVXPerformingOptionsGetFromName_map objectForKey:v8];
            v10 = [v9 unsignedIntegerValue];
          }

          else
          {
            v10 = 0;
          }

          v5 |= v10;
          ++v7;
        }

        while (v4 != v7);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v1 = v13;
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

id initSBSDebugInterface()
{
  if (initSBSDebugInterface_sOnce != -1)
  {
    dispatch_once(&initSBSDebugInterface_sOnce, &__block_literal_global_9695);
  }

  v1 = classSBSDebugInterface;

  return v1;
}

Class __initSBSDebugInterface_block_invoke()
{
  if (SoundBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SoundBoardServicesLibrary_sOnce, &__block_literal_global_123);
  }

  result = objc_getClass("SBSDebugInterface");
  classSBSDebugInterface = result;
  getSBSDebugInterfaceClass = SBSDebugInterfaceFunction;
  return result;
}

void *__SoundBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SoundBoardServices.framework/SoundBoardServices", 2);
  SoundBoardServicesLibrary_sLib = result;
  return result;
}

void sub_269601EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *SVXActivationSourceGetName(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C67C58[a1];
  }
}

uint64_t SVXActivationSourceGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXActivationSourceGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXActivationSourceGetFromName_onceToken, &__block_literal_global_9887);
    }

    v2 = [SVXActivationSourceGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXActivationSourceGetFromName_block_invoke()
{
  v0 = SVXActivationSourceGetFromName_map;
  SVXActivationSourceGetFromName_map = &unk_287A34EB0;
}

__CFString *SVXStoreDemoGetLocalizationKey(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "SVXStoreDemoGetLocalizationKey";
    v13 = 2048;
    v14 = a1;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_DEFAULT, "%s SVXStoreDemoTranscriptID = %lu", &v11, 0x16u);
  }

  v3 = 0;
  v4 = MGGetProductType();
  if (v4 > 3348380075)
  {
    if (v4 != 3348380076)
    {
      v5 = 4240173202;
      goto LABEL_8;
    }

    v7 = a1 - 10;
    if ((a1 - 10) <= 5)
    {
      v8 = off_279C67EB8;
      goto LABEL_14;
    }
  }

  else
  {
    if (v4 != 1540760353)
    {
      v5 = 2702125347;
LABEL_8:
      if (v4 != v5)
      {
        goto LABEL_17;
      }

      v6 = _SVXStoreDemoGetLocalizationKeyForStyle1(a1);
      goto LABEL_15;
    }

    v7 = a1 - 16;
    if ((a1 - 16) <= 5)
    {
      v8 = off_279C67EE8;
LABEL_14:
      v6 = *v8[v7];
LABEL_15:
      v3 = v6;
      goto LABEL_17;
    }
  }

  v3 = 0;
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

__CFString *_SVXStoreDemoGetLocalizationKeyForStyle1(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_279C67F18[a1 - 1];
  }

  return v2;
}

SVXAudioStreamBasicDescription *SVXAudioStreamBasicDescriptionCreateFromUIAudioDescription(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v19 = [SVXAudioStreamBasicDescription alloc];
    v22 = [v1 sampleRate];
    [v22 doubleValue];
    v3 = v2;
    v21 = [v1 formatID];
    v17 = [v21 unsignedIntValue];
    v20 = [v1 formatFlags];
    v16 = [v20 unsignedIntValue];
    v18 = [v1 bytesPerPacket];
    v15 = [v18 unsignedIntValue];
    v4 = [v1 framesPerPacket];
    v5 = [v4 unsignedIntValue];
    v6 = [v1 bytesPerFrame];
    v7 = [v6 unsignedIntValue];
    v8 = [v1 channelsPerFrame];
    v9 = [v8 unsignedIntValue];
    v10 = [v1 bitsPerChannel];
    v11 = [v10 unsignedIntValue];
    v12 = [v1 reserved];

    v13 = -[SVXAudioStreamBasicDescription initWithSampleRate:formatID:formatFlags:bytesPerPacket:framesPerPacket:bytesPerFrame:channelsPerFrame:bitsPerChannel:reserved:](v19, "initWithSampleRate:formatID:formatFlags:bytesPerPacket:framesPerPacket:bytesPerFrame:channelsPerFrame:bitsPerChannel:reserved:", v17, v16, v15, v5, v7, v9, v3, __PAIR64__([v12 unsignedIntValue], v11));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

__CFString *SVXButtonEventTypeGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C68050[a1];
  }
}

uint64_t SVXButtonEventTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXButtonEventTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXButtonEventTypeGetFromName_onceToken, &__block_literal_global_11576);
    }

    v2 = [SVXButtonEventTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXButtonEventTypeGetFromName_block_invoke()
{
  v0 = SVXButtonEventTypeGetFromName_map;
  SVXButtonEventTypeGetFromName_map = &unk_287A34ED8;
}

__CFString *SVXSystemEventTypeGetName(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C68068[a1];
  }
}

uint64_t SVXSystemEventTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXSystemEventTypeGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXSystemEventTypeGetFromName_onceToken, &__block_literal_global_11645);
    }

    v2 = [SVXSystemEventTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXSystemEventTypeGetFromName_block_invoke()
{
  v0 = SVXSystemEventTypeGetFromName_map;
  SVXSystemEventTypeGetFromName_map = &unk_287A34F00;
}

void sub_26960E4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26960FF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269610E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SVXSessionCreateSetApplicationContext(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277D477C8]);
  v3 = objc_alloc_init(MEMORY[0x277D47178]);
  [v3 setAppName:@"SiriVOXService"];
  v4 = objc_alloc_init(MEMORY[0x277D47968]);
  [v4 setBundleId:@"com.apple.SiriVOXService"];
  [v3 setAppIdentifyingInfo:v4];
  v5 = [v1 beginDate];
  v6 = [v1 endDate];
  IsActive = AFDeviceSetupIsActive();

  if (IsActive)
  {
    v8 = [v1 flowScene];
    v9 = [v8 sceneID];

    if (v9 == 5)
    {
      v10 = *MEMORY[0x277D47D38];
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_alloc_init(MEMORY[0x277D47280]);
    [v11 setSetupSceneId:v10];
    v12 = [v3 dictionary];
    v20[0] = v12;
    v13 = [v11 dictionary];
    v20[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v21[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v2 setOrderedContext:v15];
  }

  else
  {
    v10 = [v3 dictionary];
    v18 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v19 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v2 setOrderedContext:v12];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_26961CA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26961CC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26961CFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SiriVOXErrorCodeGetName(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C68958[a1];
  }
}

uint64_t SiriVOXErrorCodeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SiriVOXErrorCodeGetFromName_onceToken != -1)
    {
      dispatch_once(&SiriVOXErrorCodeGetFromName_onceToken, &__block_literal_global_12314);
    }

    v2 = [SiriVOXErrorCodeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SiriVOXErrorCodeGetFromName_block_invoke()
{
  v0 = SiriVOXErrorCodeGetFromName_map;
  SiriVOXErrorCodeGetFromName_map = &unk_287A34F50;
}

__CFString *SVXDeviceSetupFlowSceneIDGetName(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C689C8[a1];
  }
}

uint64_t SVXDeviceSetupFlowSceneIDGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXDeviceSetupFlowSceneIDGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXDeviceSetupFlowSceneIDGetFromName_onceToken, &__block_literal_global_12528);
    }

    v2 = [SVXDeviceSetupFlowSceneIDGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXDeviceSetupFlowSceneIDGetFromName_block_invoke()
{
  v0 = SVXDeviceSetupFlowSceneIDGetFromName_map;
  SVXDeviceSetupFlowSceneIDGetFromName_map = &unk_287A34F78;
}

__CFString *SVXSessionStateGetName(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C68A18[a1];
  }
}

uint64_t SVXSessionStateGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXSessionStateGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXSessionStateGetFromName_onceToken, &__block_literal_global_12698);
    }

    v2 = [SVXSessionStateGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXSessionStateGetFromName_block_invoke()
{
  v0 = SVXSessionStateGetFromName_map;
  SVXSessionStateGetFromName_map = &unk_287A34FA0;
}

__CFString *SVXAudioPowerUpdateFrequencyGetName(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279C68A60[a1];
  }
}

uint64_t SVXAudioPowerUpdateFrequencyGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SVXAudioPowerUpdateFrequencyGetFromName_onceToken != -1)
    {
      dispatch_once(&SVXAudioPowerUpdateFrequencyGetFromName_onceToken, &__block_literal_global_12730);
    }

    v2 = [SVXAudioPowerUpdateFrequencyGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SVXAudioPowerUpdateFrequencyGetFromName_block_invoke()
{
  v0 = SVXAudioPowerUpdateFrequencyGetFromName_map;
  SVXAudioPowerUpdateFrequencyGetFromName_map = &unk_287A34FC8;
}

uint64_t _audioFileReadData(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 length];
    if (a2 < 0)
    {
      a3 = 0;
      v12 = 4294967256;
    }

    else if (v11 <= a2)
    {
      a3 = 0;
      v12 = 4294967257;
    }

    else
    {
      if (v11 - a2 < a3)
      {
        a3 = v11 - a2;
      }

      [v10 getBytes:a4 range:{a2, a3}];
      v12 = 0;
    }
  }

  else
  {
    a3 = 0;
    v12 = 4294967246;
  }

  *a5 = a3;

  return v12;
}

void sub_26962C26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12981(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269635344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269637270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13784(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

SVXSpeechSynthesisRequest *SVXDeviceSetupCreateSpeechSynthesisRequestForSceneWithID(uint64_t a1)
{
  if (a1 == 5)
  {
    v2 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:3 options:0 speakableText:0 speakableContext:0 localizationKey:0 presynthesizedAudio:0 streamID:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SVXDeviceSetupCreateOptionsArray(void *a1)
{
  v84[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 languageCode];

  v35 = v1;
  if (v2)
  {
    v3 = [v1 languageCode];
    v84[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = AFPreferencesSupportedLanguages();
    v5 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v75;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v75 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v74 + 1) + 8 * i);
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v10 = [MEMORY[0x277CEF528] allVoicesForSiriSessionLanguage:{v9, v35}];
          v11 = [v10 countByEnumeratingWithState:&v70 objects:v82 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v71;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v71 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(*(&v70 + 1) + 8 * j) languageCode];
                [v3 addObject:v15];
              }

              v12 = [v10 countByEnumeratingWithState:&v70 objects:v82 count:16];
            }

            while (v12);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v6);
    }

    v4 = [v3 array];
    v1 = v35;
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 gender] == 2)
  {
    v16 = &unk_287A34C60;
  }

  else if ([v1 gender] == 1)
  {
    v16 = &unk_287A34C78;
  }

  else
  {
    if ([v1 gender] != 3)
    {
      [v39 addObject:&unk_287A34C60];
      [v39 addObject:&unk_287A34C78];
    }

    v16 = &unk_287A34C90;
  }

  [v39 addObject:{v16, v35}];
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 hasActiveAccount] == 2)
  {
    v17 = &unk_287A34C60;
  }

  else
  {
    if ([v1 hasActiveAccount] != 1)
    {
      [v43 addObject:&unk_287A34C60];
    }

    v17 = &unk_287A34C78;
  }

  [v43 addObject:v17];
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 isNewsRestricted] == 2)
  {
    v18 = &unk_287A34C60;
  }

  else
  {
    if ([v1 isNewsRestricted] != 1)
    {
      [v48 addObject:&unk_287A34C60];
    }

    v18 = &unk_287A34C78;
  }

  [v48 addObject:v18];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v37 = v4;
  v40 = [v37 countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (v40)
  {
    v38 = *v67;
    do
    {
      v20 = 0;
      do
      {
        if (*v67 != v38)
        {
          objc_enumerationMutation(v37);
        }

        v41 = v20;
        v21 = *(*(&v66 + 1) + 8 * v20);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v42 = v39;
        v45 = [v42 countByEnumeratingWithState:&v62 objects:v80 count:16];
        if (v45)
        {
          v44 = *v63;
          do
          {
            v22 = 0;
            do
            {
              if (*v63 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v46 = v22;
              v23 = *(*(&v62 + 1) + 8 * v22);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v47 = v43;
              v50 = [v47 countByEnumeratingWithState:&v58 objects:v79 count:16];
              if (v50)
              {
                v49 = *v59;
                do
                {
                  v24 = 0;
                  do
                  {
                    if (*v59 != v49)
                    {
                      objc_enumerationMutation(v47);
                    }

                    obja = v24;
                    v25 = *(*(&v58 + 1) + 8 * v24);
                    v54 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v57 = 0u;
                    v26 = v48;
                    v27 = [v26 countByEnumeratingWithState:&v54 objects:v78 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v55;
                      do
                      {
                        for (k = 0; k != v28; ++k)
                        {
                          if (*v55 != v29)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v31 = *(*(&v54 + 1) + 8 * k);
                          v53[0] = MEMORY[0x277D85DD0];
                          v53[1] = 3221225472;
                          v53[2] = __SVXDeviceSetupCreateOptionsArray_block_invoke;
                          v53[3] = &unk_279C68F98;
                          v53[4] = v21;
                          v53[5] = v23;
                          v53[6] = v25;
                          v53[7] = v31;
                          v32 = [SVXDeviceSetupOptions newWithBuilder:v53];
                          [v19 addObject:v32];
                        }

                        v28 = [v26 countByEnumeratingWithState:&v54 objects:v78 count:16];
                      }

                      while (v28);
                    }

                    v24 = obja + 1;
                  }

                  while (obja + 1 != v50);
                  v50 = [v47 countByEnumeratingWithState:&v58 objects:v79 count:16];
                }

                while (v50);
              }

              v22 = v46 + 1;
            }

            while (v46 + 1 != v45);
            v45 = [v42 countByEnumeratingWithState:&v62 objects:v80 count:16];
          }

          while (v45);
        }

        v20 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [v37 countByEnumeratingWithState:&v66 objects:v81 count:16];
    }

    while (v40);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v19;
}

void __SVXDeviceSetupCreateOptionsArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLanguageCode:v3];
  [v4 setGender:{objc_msgSend(*(a1 + 40), "integerValue")}];
  [v4 setHasActiveAccount:{objc_msgSend(*(a1 + 48), "integerValue")}];
  [v4 setIsNewsRestricted:{objc_msgSend(*(a1 + 56), "integerValue")}];
}