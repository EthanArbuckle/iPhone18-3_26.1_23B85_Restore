void *HomeKitLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HomeKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2788FE170;
    v7 = 0;
    HomeKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HomeKitLibraryCore_frameworkLibrary;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HomeKitLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"VCVoiceShortcutManager.m" lineNumber:34 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HomeKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2310E7BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2310E7E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id VCNotFoundError(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSError * _Nonnull VCNotFoundError(NSString * _Nonnull __strong)"];
    [v4 handleFailureInFunction:v5 file:@"VCVoiceShortcutManager.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];
  }

  v2 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:{@"Voice shortcut with identifier or name (%@) does not exist", v1}];

  return v2;
}

id VCNotFoundByPhraseError(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSError * _Nonnull VCNotFoundByPhraseError(NSString * _Nonnull __strong)"];
    [v4 handleFailureInFunction:v5 file:@"VCVoiceShortcutManager.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];
  }

  v2 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:{@"Voice shortcut with phrase (%@) does not exist", v1}];

  return v2;
}

void sub_2310EB57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFTimeIntervalForNotificationLevelFromDate(int a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WFTimeIntervalForNotificationLevel(a1);
  [v4 doubleValue];
  v5 = [v3 dateByAddingTimeInterval:?];

  [v5 timeIntervalSinceNow];
  v7 = v6;
  v8 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "WFTimeIntervalForNotificationLevelFromDate";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v3;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Time interval from notif level - Scheduled fire date: %@ inital run date: %@ interval %f", &v13, 0x2Au);
  }

  if (v7 >= 0.0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  }

  else
  {
    v9 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "WFTimeIntervalForNotificationLevelFromDate";
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Scheduled fire date has passed firing now!", &v13, 0xCu);
    }

    v10 = &unk_2845ECED0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void *WFTimeIntervalForNotificationLevel(int a1)
{
  if (+[WFTriggerNotificationScheduler shortenTimeIntervalsForTesting]&& VCIsInternalBuild())
  {
    if (a1 == 1)
    {
      return &unk_2845ECF00;
    }

    if (a1 == 2)
    {
      return &unk_2845ECF18;
    }

    if (a1 != 3)
    {
      return &unk_2845ECEE8;
    }
  }

  else
  {
    if (a1 == 1)
    {
      return &unk_2845ECF48;
    }

    if (a1 == 2)
    {
      return &unk_2845ECF60;
    }

    if (a1 != 3)
    {
      return &unk_2845ECF30;
    }
  }

  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempted to get time interval for non valid level WFTriggerNotificationLevelNever"];
  __break(1u);
  return result;
}

id WFTriggerIdentifierFromXPCActivityIdentifier(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 lastObject];

  return v2;
}

void sub_2310EDFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2310EE404(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2310EE57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNPKCompanionAgentConnectionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!NanoPassKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __NanoPassKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_2788FE378;
    v9 = 0;
    NanoPassKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoPassKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoPassKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFWalletTransactionProvider.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNPKCompanionAgentConnectionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFWalletTransactionProvider.m" lineNumber:22 description:{@"Unable to find class %s", "NPKCompanionAgentConnection"}];

LABEL_10:
    __break(1u);
  }

  getNPKCompanionAgentConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoPassKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPassKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2310EE8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPaymentServiceClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __PassKitCoreLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_2788FE360;
    v9 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitCoreLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFWalletTransactionProvider.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("PKPaymentService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKPaymentServiceClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFWalletTransactionProvider.m" lineNumber:16 description:{@"Unable to find class %s", "PKPaymentService"}];

LABEL_10:
    __break(1u);
  }

  getPKPaymentServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getWFObliteratorLogObject()
{
  if (getWFObliteratorLogObject_onceToken != -1)
  {
    dispatch_once(&getWFObliteratorLogObject_onceToken, &__block_literal_global_221);
  }

  v1 = getWFObliteratorLogObject_log;

  return v1;
}

uint64_t __getWFObliteratorLogObject_block_invoke()
{
  getWFObliteratorLogObject_log = os_log_create(*MEMORY[0x277D7A500], "Obliterator");

  return MEMORY[0x2821F96F8]();
}

id getWFUserNotificationManagerLogObject()
{
  if (getWFUserNotificationManagerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFUserNotificationManagerLogObject_onceToken, &__block_literal_global_320);
  }

  v1 = getWFUserNotificationManagerLogObject_log;

  return v1;
}

uint64_t __getWFUserNotificationManagerLogObject_block_invoke()
{
  getWFUserNotificationManagerLogObject_log = os_log_create(*MEMORY[0x277D7A500], "UserNotificationManager");

  return MEMORY[0x2821F96F8]();
}

uint64_t VCPBIntentDefinitionFileReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___VCPBIntentDefinitionFile__name;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___VCPBIntentDefinitionFile__data;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_2310F24BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VCPartitionMessages(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType", v13)}];
        v10 = [v2 objectForKeyedSubscript:v9];
        if (!v10)
        {
          v10 = objc_opt_new();
          [v2 setObject:v10 forKeyedSubscript:v9];
        }

        [v10 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void VCAssertUniqueMessageTypes(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      v7 = 0x277CCA000uLL;
      v8 = 0x277CCA000uLL;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType", v15)}];
          if ([v2 containsObject:v11])
          {
            v12 = [*(v7 + 2192) currentHandler];
            v13 = [*(v8 + 3240) stringWithUTF8String:"void VCAssertUniqueMessageTypes(NSSet<id<VCPBMessageTyped>> * _Nonnull __strong)"];
            [v12 handleFailureInFunction:v13 file:@"VCPBMessageTyped.m" lineNumber:37 description:@"Only one handler per message type is allowed"];

            v8 = 0x277CCA000;
            v7 = 0x277CCA000;
          }

          [v2 addObject:v11];

          ++v9;
        }

        while (v5 != v9);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

__CFString *VCDescriptionForMessageType(int a1)
{
  v1 = @"IntentDefinition";
  if (a1 == 2)
  {
    v1 = @"VoiceShortcut";
  }

  if (a1 == 3)
  {
    return @"Workflow";
  }

  else
  {
    return v1;
  }
}

uint64_t VCPBIntentDefinitionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(VCPBIntentDefinitionFile);
    [a1 addFiles:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !VCPBIntentDefinitionFileReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id VCOSTransactionWithName(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.shortcuts.%@", a1];
  [v1 UTF8String];
  v2 = os_transaction_create();

  return v2;
}

void sub_2310F4D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2310F5ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2310F6850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__659(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2310F74EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2310F8474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VCAccessSyncServiceState(void *a1, void *a2, void *a3, NSObject **a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_42:
    v40 = [MEMORY[0x277CCA890] currentHandler];
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL VCAccessSyncServiceState(id<VCShortcutSyncService>  _Nonnull __strong, NSString * _Nonnull __strong, VCSyncStateAccessor  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v40 handleFailureInFunction:v41 file:@"VCShortcutSyncService.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v9)
    {
      goto LABEL_4;
    }

LABEL_43:
    v42 = [MEMORY[0x277CCA890] currentHandler];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL VCAccessSyncServiceState(id<VCShortcutSyncService>  _Nonnull __strong, NSString * _Nonnull __strong, VCSyncStateAccessor  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v42 handleFailureInFunction:v43 file:@"VCShortcutSyncService.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"accessor"}];

    goto LABEL_4;
  }

  v38 = [MEMORY[0x277CCA890] currentHandler];
  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL VCAccessSyncServiceState(id<VCShortcutSyncService>  _Nonnull __strong, NSString * _Nonnull __strong, VCSyncStateAccessor  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
  [v38 handleFailureInFunction:v39 file:@"VCShortcutSyncService.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"service"}];

  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (!v9)
  {
    goto LABEL_43;
  }

LABEL_4:
  v10 = [v7 directoryURL];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v49 = 0;
  v12 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v49];
  v13 = v49;

  if (v12)
  {
    goto LABEL_14;
  }

  v14 = [v13 domain];
  if ([v14 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v15 = [v13 code];

    if (v15 == 516)
    {
      v44 = a4;
      v46 = v7;

      v13 = 0;
LABEL_15:
      v45 = v8;
      v19 = [v10 URLByAppendingPathComponent:v8];
      v20 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v19];
      [v20 open];
      v48 = 0;
      v21 = [MEMORY[0x277CCAC58] propertyListWithStream:v20 options:2 format:0 error:&v48];
      v22 = v48;
      v23 = objc_opt_class();
      v24 = v21;
      if (v24 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = getWFGeneralLogObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v27 = objc_opt_class();
          *buf = 136315906;
          v51 = "WFEnforceClass";
          v52 = 2114;
          v53 = v24;
          v54 = 2114;
          v55 = v27;
          v56 = 2114;
          v57 = v23;
          v28 = v27;
          _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
        }

        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      [v20 close];
      if (v25)
      {
        goto LABEL_27;
      }

      if (-[NSObject vc_isFileNotFound](v22, "vc_isFileNotFound") & 1) != 0 || (-[NSObject userInfo](v22, "userInfo"), v29 = objc_claimAutoreleasedReturnValue(), [v29 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "vc_isFileNotFound"), v30, v29, (v31))
      {
        v32 = v22;
        v22 = 0;
      }

      else
      {
        if (!v22)
        {
          goto LABEL_26;
        }

        v32 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "VCAccessSyncServiceState";
          v52 = 2114;
          v53 = v22;
          _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_ERROR, "%s Could not read state for sync service: %{public}@", buf, 0x16u);
        }
      }

LABEL_26:
      v25 = objc_opt_new();
LABEL_27:
      if (v9[2](v9, v25))
      {
        v47 = 0;
        v18 = [v25 writeToURL:v19 error:&v47];
        v33 = v47;
        if ((v18 & 1) == 0)
        {
          v34 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v51 = "VCAccessSyncServiceState";
            v52 = 2114;
            v53 = v33;
            _os_log_impl(&dword_23103C000, v34, OS_LOG_TYPE_ERROR, "%s Could not write state for sync service: %{public}@", buf, 0x16u);
          }

          if (v44)
          {
            v35 = v33;
            *v44 = v33;
          }
        }
      }

      else
      {
        v18 = 1;
      }

      v8 = v45;
      v7 = v46;
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (!v13)
  {
LABEL_14:
    v44 = a4;
    v46 = v7;
    goto LABEL_15;
  }

  v16 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "VCAccessSyncServiceState";
    v52 = 2114;
    v53 = v13;
    _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Could not create sync data directory: %{public}@", buf, 0x16u);
  }

  if (a4)
  {
    v17 = v13;
    v18 = 0;
    *a4 = v13;
  }

  else
  {
    v18 = 0;
  }

LABEL_36:

  v36 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t VCClearSyncServiceState(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 directoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v9 = [v8 removeItemAtURL:v7 error:&v15];
  v10 = v15;

  v11 = [v10 domain];
  if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v12 = [v10 code];

    if (v12 != 4)
    {
      goto LABEL_5;
    }

    v9 = 1;
    v11 = v10;
    v10 = 0;
  }

LABEL_5:
  if (a3)
  {
    v13 = v10;
    *a3 = v10;
  }

  return v9;
}

void sub_2310F9A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2310FC338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VCSerializedEventInfo(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v3 = WFSerializableWithConverter(v1, v2, &__block_literal_global_361);

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id WFSerializableWithConverter(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable WFSerializableWithConverter(id  _Nullable __strong, NSArray<Class> * _Nonnull __strong, id  _Nonnull (^ _Nullable __strong)(id  _Nonnull __strong))"}];
    [v17 handleFailureInFunction:v18 file:@"WFCoreDuetListener.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"allowedValueClasses"}];

    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v5 = v5;
          v15 = v5;
          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v5 allObjects];

    v5 = v14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __WFSerializableWithConverter_block_invoke;
    v24[3] = &unk_2788FE670;
    v25 = v8;
    v26 = v7;
    v15 = [v5 if_compactMap:v24];

    v8 = v25;
LABEL_16:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __WFSerializableWithConverter_block_invoke_2;
    v21[3] = &unk_2788FE698;
    v22 = v8;
    v23 = v7;
    v15 = [v5 if_compactMap:v21];

    v8 = v22;
    goto LABEL_16;
  }

  if (v7)
  {
    v16 = (*(v7 + 2))(v7, v5);
    v15 = WFSerializableWithConverter(v16, v8, 0);
    v8 = v16;
    goto LABEL_16;
  }

LABEL_22:
  v15 = 0;
LABEL_23:

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

id __WFSerializableWithConverter_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  *a5 = WFSerializableWithConverter(a3, v9, v10);
  v12 = WFSerializableWithConverter(v11, *(a1 + 32), *(a1 + 40));

  result = v12;
  *a4 = v12;
  return result;
}

id __VCSerializedEventInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 UUIDString];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 absoluteString];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

void sub_2310FDA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void VCCKPerformBlockInsideAutoreleasePoolInTransaction(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = VCOSTransactionWithName(v6);
  v5 = objc_autoreleasePoolPush();
  v3[2](v3);
  objc_autoreleasePoolPop(v5);
}

void sub_2310FFD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1171(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231102FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFUserDefaultsKeysToObserve()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277D7D078];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id WFSystemUserDefaultsKeysToObserve()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277D7CC08];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

BOOL VCCloudKitErrorContainsErrorWithCode(void *a1, uint64_t a2)
{
  v3 = a1;
  if (CKErrorIsCode())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 allValues];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __VCCloudKitErrorContainsErrorWithCode_block_invoke;
    v12[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
    v12[4] = a2;
    v10 = [v9 if_firstObjectPassingTest:v12];
    v4 = v10 != 0;
  }

  return v4;
}

void sub_23110B358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1358(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initATXHomeScreenConfigCache()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_1362);
  }

  result = objc_getClass("ATXHomeScreenConfigCache");
  classATXHomeScreenConfigCache = result;
  getATXHomeScreenConfigCacheClass = ATXHomeScreenConfigCacheFunction;
  return result;
}

void *__AppPredictionClientLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient", 2);
  AppPredictionClientLibrary_sLib = result;
  return result;
}

void sub_23110BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23110FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23110FD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231110C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231111E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initHKWorkout()
{
  if (HealthKitLibrary_sOnce != -1)
  {
    dispatch_once(&HealthKitLibrary_sOnce, &__block_literal_global_677);
  }

  result = objc_getClass("HKWorkout");
  classHKWorkout = result;
  getHKWorkoutClass = HKWorkoutFunction;
  return result;
}

void *__HealthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HealthKit.framework/HealthKit", 2);
  HealthKitLibrary_sLib = result;
  return result;
}

uint64_t (*init_HKWorkoutSessionStateName(uint64_t a1))()
{
  if (HealthKitLibrary_sOnce != -1)
  {
    dispatch_once(&HealthKitLibrary_sOnce, &__block_literal_global_677);
  }

  v2 = dlsym(HealthKitLibrary_sLib, "_HKWorkoutSessionStateName");
  softLink_HKWorkoutSessionStateName = v2;
  if (v2)
  {
    v2 = (v2)(a1);
  }

  return v2;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_1810);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  memset(&v5, 0, sizeof(v5));
  if (dladdr(WFCurrentBundle, &v5) && v5.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_23103C000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

id WFLocalizedPluralString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [v2 stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = WFCurrentBundle();
    v6 = [v5 localizedStringForKey:v4 value:v1 table:0];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id WFDialogXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284617228];
  v44 = MEMORY[0x277CBEB98];
  v45 = v0;
  v42 = objc_opt_class();
  v40 = objc_opt_class();
  v38 = objc_opt_class();
  v36 = objc_opt_class();
  v34 = objc_opt_class();
  v32 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v44 setWithObjects:{v42, v40, v38, v36, v34, v32, v30, v29, v28, v27, v26, v25, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v45 setClasses:v11 forSelector:? argumentIndex:? ofReply:?];

  v43 = MEMORY[0x277CBEB98];
  v41 = objc_opt_class();
  v39 = objc_opt_class();
  v37 = objc_opt_class();
  v35 = objc_opt_class();
  v33 = objc_opt_class();
  v31 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v43 setWithObjects:{v41, v39, v37, v35, v33, v31, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  [v45 setClasses:v22 forSelector:sel_showDialogRequest_completionHandler_ argumentIndex:0 ofReply:1];

  v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v45 setClasses:v23 forSelector:sel_dismissPersistentChromeWithSuccess_customAttribution_completionHandler_ argumentIndex:0 ofReply:0];

  return v45;
}

uint64_t VCPBIntentDefinitionChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(VCPBIntentDefinition);
        objc_storeStrong((a1 + 24), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !VCPBIntentDefinitionReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 8);
        *(a1 + 8) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 16) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t VCPBChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v21 = PBReaderReadString();
          v22 = 32;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v21 = PBReaderReadData();
          v22 = 16;
        }

        v30 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v26;
          }

LABEL_52:
          v31 = 24;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v31 = 8;
        }

        *(a1 + v31) = v20;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id VCSYChangeClassFromMessageType(int a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 messageType] == a1)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t VCPBChangeTypeFromSYChangeType(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t VCPBWorkflowReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v55) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_69;
        case 3u:
          a1[128] |= 0x10u;
          LODWORD(v55) = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v55 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v55;
          v47 = 56;
          goto LABEL_89;
        case 4u:
          a1[128] |= 0x20u;
          LODWORD(v55) = 0;
          v22 = [a2 position] + 4;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v55 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v55;
          v47 = 60;
          goto LABEL_89;
        case 5u:
          a1[128] |= 1u;
          v55 = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v51 = v55;
          v52 = 8;
          goto LABEL_94;
        case 6u:
          a1[128] |= 8u;
          v55 = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v51 = v55;
          v52 = 32;
LABEL_94:
          *&a1[v52] = v51;
          goto LABEL_95;
        case 7u:
          v24 = PBReaderReadString();
          if (v24)
          {
            [a1 addWorkflowTypes:v24];
          }

          goto LABEL_41;
        case 8u:
          v24 = PBReaderReadString();
          if (v24)
          {
            [a1 addInputClasses:v24];
          }

LABEL_41:

          goto LABEL_95;
        case 9u:
          v13 = PBReaderReadData();
          v14 = 48;
          goto LABEL_69;
        case 0xAu:
          v13 = PBReaderReadData();
          v14 = 64;
          goto LABEL_69;
        case 0xBu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          a1[128] |= 4u;
          while (1)
          {
            LOBYTE(v55) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v55 & 0x7F) << v38;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v40;
          }

LABEL_83:
          v46 = 24;
          goto LABEL_84;
        case 0xCu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          a1[128] |= 2u;
          while (1)
          {
            LOBYTE(v55) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v55 & 0x7F) << v15;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_75:
          v46 = 16;
LABEL_84:
          *&a1[v46] = v21;
          goto LABEL_95;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_69;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_69;
        case 0xFu:
          v13 = PBReaderReadData();
          v14 = 40;
          goto LABEL_69;
        case 0x10u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          a1[128] |= 0x40u;
          break;
        case 0x11u:
          v13 = PBReaderReadString();
          v14 = 112;
LABEL_69:
          v44 = *&a1[v14];
          *&a1[v14] = v13;

          goto LABEL_95;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_95;
      }

      while (1)
      {
        LOBYTE(v55) = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v29 |= (v55 & 0x7F) << v27;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v11 = v28++ >= 9;
        if (v11)
        {
          v33 = 0;
          goto LABEL_79;
        }
      }

      v33 = [a2 hasError] ? 0 : v29;
LABEL_79:
      v47 = 104;
LABEL_89:
      *&a1[v47] = v33;
LABEL_95:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id VCLatestUniqueChanges(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v1 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectIdentifier];
        v11 = [v2 containsObject:v10];

        if ((v11 & 1) == 0)
        {
          [v3 insertObject:v9 atIndex:0];
          v12 = [v9 objectIdentifier];
          [v2 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

__CFString *VCDescriptionForChangeType(uint64_t a1)
{
  v1 = @"Add";
  if (a1 == 2)
  {
    v1 = @"Update";
  }

  if (a1 == 3)
  {
    return @"Delete";
  }

  else
  {
    return v1;
  }
}

id VCDescriptionForChange(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 changeType];
  v6 = @"Add";
  if (v5 == 2)
  {
    v6 = @"Update";
  }

  if (v5 == 3)
  {
    v6 = @"Delete";
  }

  v7 = v6;
  v8 = [v2 objectIdentifier];
  v9 = [v1 stringWithFormat:@"<%@: %p type=%@ identifier=%@>", v4, v2, v7, v8];

  return v9;
}

id getWFRunQueueLogObject()
{
  if (getWFRunQueueLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRunQueueLogObject_onceToken, &__block_literal_global_2849);
  }

  v1 = getWFRunQueueLogObject_log;

  return v1;
}

uint64_t __getWFRunQueueLogObject_block_invoke()
{
  getWFRunQueueLogObject_log = os_log_create(*MEMORY[0x277D7A500], "RunQueue");

  return MEMORY[0x2821F96F8]();
}

void *__ActionKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ActionKit.framework/ActionKit", 2);
  ActionKitLibrary_sLib = result;
  return result;
}

id VCDaemonXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845FC7E0];
  VCVoiceShortcutManagerConfigureXPCInterface();
  WFDatabaseProxyConfigureXPCInterface();

  return v0;
}

void sub_2311269F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3474(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFSiriVocabLogObject()
{
  if (getWFSiriVocabLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSiriVocabLogObject_onceToken, &__block_literal_global_3562);
  }

  v1 = getWFSiriVocabLogObject_log;

  return v1;
}

uint64_t __getWFSiriVocabLogObject_block_invoke()
{
  getWFSiriVocabLogObject_log = os_log_create(*MEMORY[0x277D7A500], "SiriVocab");

  return MEMORY[0x2821F96F8]();
}

uint64_t WFDatabaseChangesContainObjectType(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = &a9;
  v10 = a2;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      v13 = objc_autoreleasePoolPush();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if ([*(*(&v23 + 1) + 8 * v18) objectType] == a1)
            {

              objc_autoreleasePoolPop(v13);
              v20 = 1;
              goto LABEL_14;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      objc_autoreleasePoolPop(v13);
      v19 = v27++;
      v12 = *v19;
    }

    while (v12);
  }

  v20 = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2311283C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231128FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

id VCPromptNotificationTitleForTriggerWithPendingCount(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 localizedDescriptionWithConfigurationSummaryWithCount:a2];
  }

  else
  {
    v4 = [v3 localizedDescriptionWithConfigurationSummary];
  }

  v5 = v4;

  return v5;
}

BOOL VCLocaleIsRTL()
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 characterDirectionForLanguage:v2] == 2;

  return v3;
}

void sub_2311294C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VCAccessSyncServiceIntentDefinitionState(void *a1, void *a2, NSObject **a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __VCAccessSyncServiceIntentDefinitionState_block_invoke;
  v9[3] = &unk_2788FEDF8;
  v10 = v5;
  v6 = v5;
  v7 = VCAccessSyncServiceState(a1, @"IntentDefinitions.plist", v9, a3);

  return v7;
}

BOOL __VCAccessSyncServiceIntentDefinitionState_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0;
  v4 = [MEMORY[0x277D7C768] modelOfClass:objc_opt_class() fromJSONDictionary:v3 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "VCAccessSyncServiceIntentDefinitionState_block_invoke";
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s VCIntentDefinitionSyncDataHandler failed to deserialize sync state into dictionary: %{public}@", buf, 0x16u);
    }
  }

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v13 = 0;
    v7 = [MEMORY[0x277D7C768] JSONDictionaryFromModel:v4 error:&v13];
    v8 = v13;
    v9 = v7 != 0;
    if (v7)
    {
      [v3 removeAllObjects];
      [v3 addEntriesFromDictionary:v7];
    }

    else
    {
      v10 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "VCAccessSyncServiceIntentDefinitionState_block_invoke";
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s VCIntentDefinitionSyncDataHandler failed to serialize sync state into dictionary: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23112AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3861(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23113208C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231132A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4672(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getAFVisualIntelligenceCameraRestrictedSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2788FF2F8;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:84 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AFVisualIntelligenceCameraRestricted");
  *(*(a1[4] + 8) + 24) = result;
  getAFVisualIntelligenceCameraRestrictedSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2311384E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4916(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231138E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2311395CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMRMediaSuggestionRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMRMediaSuggestionRequestClass_softClass;
  v7 = getMRMediaSuggestionRequestClass_softClass;
  if (!getMRMediaSuggestionRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMRMediaSuggestionRequestClass_block_invoke;
    v3[3] = &unk_2788FFE98;
    v3[4] = &v4;
    __getMRMediaSuggestionRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231139C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMRMediaSuggestionRequestOptionsClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MRMediaSuggestionRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMRMediaSuggestionRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMRMediaSuggestionRequestOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:76 description:{@"Unable to find class %s", "MRMediaSuggestionRequestOptions"}];

    __break(1u);
  }
}

void __getMRMediaSuggestionPreferencesClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MRMediaSuggestionPreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMRMediaSuggestionPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMRMediaSuggestionPreferencesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:77 description:{@"Unable to find class %s", "MRMediaSuggestionPreferences"}];

    __break(1u);
  }
}

void *__getMRSuggestionContextHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRSuggestionContextHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRSuggestionContextHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaRemoteLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaRemoteLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2788FF2E0;
    v7 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaRemoteLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:74 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __MediaRemoteLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getMRMediaSuggestionRequestClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MRMediaSuggestionRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMRMediaSuggestionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMRMediaSuggestionRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:75 description:{@"Unable to find class %s", "MRMediaSuggestionRequest"}];

    __break(1u);
  }
}

uint64_t __VCVoiceShortcutFromWorkflow_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

id getFCActivityManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFCActivityManagerClass_softClass;
  v7 = getFCActivityManagerClass_softClass;
  if (!getFCActivityManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFCActivityManagerClass_block_invoke;
    v3[3] = &unk_2788FFE98;
    v3[4] = &v4;
    __getFCActivityManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231141D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFCActivityManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!FocusLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __FocusLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_2788FF930;
    v9 = 0;
    FocusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FocusLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FocusLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:35 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("FCActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFCActivityManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:36 description:{@"Unable to find class %s", "FCActivityManager"}];

LABEL_10:
    __break(1u);
  }

  getFCActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FocusLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FocusLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231145380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMTAlarmManagerClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:41 description:{@"Unable to find class %s", "MTAlarmManager"}];

    __break(1u);
  }
}

void __getMTAlarmDataSourceClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmDataSource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmDataSourceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:42 description:{@"Unable to find class %s", "MTAlarmDataSource"}];

    __break(1u);
  }
}

void MobileTimerLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileTimerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2788FF948;
    v6 = 0;
    MobileTimerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileTimerLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:39 description:{@"%s", v4[0]}];

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

uint64_t __MobileTimerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231146720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231146B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5781(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231147450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_231147AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(a1);
}

void sub_231148078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23114857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231149EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6067(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23114A0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23114A874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6187(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23114BC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__6342(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_23114C97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFPhotoMediaContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFPhotoMediaContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFPhotoMediaContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFPhotoMediaContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentManager.m" lineNumber:28 description:{@"Unable to find class %s", "WFPhotoMediaContentItem"}];

    __break(1u);
  }
}

void __getWFCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFCNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFCNContactStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentManager.m" lineNumber:30 description:{@"Unable to find class %s", "WFCNContactStore"}];

    __break(1u);
  }
}

id getWFContentItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFContentItemClass_softClass;
  v7 = getWFContentItemClass_softClass;
  if (!getWFContentItemClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getWFContentItemClass_block_invoke;
    v3[3] = &unk_2788FFE98;
    v3[4] = &v4;
    __getWFContentItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23114CBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentManager.m" lineNumber:27 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

void ContentKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContentKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2788FFEB8;
    v6 = 0;
    ContentKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentManager.m" lineNumber:23 description:{@"%s", v4[0]}];

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

uint64_t __ContentKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23114D7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6467(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2311526D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231152A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231153390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2311534D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231154BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFTriggerEventInfoDictionaryConverter(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v18 = MEMORY[0x277CBEB98];
    v19 = MEMORY[0x277CCAAC8];
    v17 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v18 setWithObjects:{v17, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
    v20 = 0;
    v12 = [v19 unarchivedObjectOfClasses:v11 fromData:v1 error:&v20];
    v13 = v20;

    if (!v12)
    {
      v14 = getWFTriggersLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v22 = "WFTriggerEventInfoDictionaryConverter";
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_FAULT, "%s Conversion from data to NSDictionary failed with error: %{public}@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

id WFSerializedTriggerEventInfo(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 objectForKey:@"NewValue"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v1 objectForKey:@"NewValue"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v10 = getWFTriggersLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v17 = "WFSerializedTriggerEventInfo";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to cast message or email eventInfo to NSArray", buf, 0xCu);
      }

      goto LABEL_15;
    }

    v7 = MEMORY[0x277CCAAB0];
    v20 = @"NewValue";
    v21[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = 0;
    v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v15];
    v10 = v15;

    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
    v10 = v14;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "WFSerializedTriggerEventInfo";
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Could not encode object with error: %{public}@", buf, 0x16u);
  }

LABEL_15:
  v9 = 0;
LABEL_16:

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}