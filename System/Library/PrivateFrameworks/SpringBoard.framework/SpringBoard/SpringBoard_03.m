void sub_21EF037E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXAddAlertItemsSuppressionAssertion(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v20 = 0;
  v7 = a4[1];
  v19[0] = *a4;
  v19[1] = v7;
  v8 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v19 forEntitlement:@"com.apple.springboard.alertItemsSuppression" error:&v20];
  v9 = v20;
  if (v8)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v11 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:a3];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___SBXXAddAlertItemsSuppressionAssertion_block_invoke;
    v16[3] = &unk_2783A92D8;
    v17 = v11;
    v18 = v10;
    v12 = v10;
    v13 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v16);

    v14 = 0;
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXAddAlertItemsSuppressionAssertion_cold_1(v9);
    }

    v14 = 5;
  }

  return v14;
}

uint64_t _SBXXTagTouchForTypingMenu(uint64_t a1, int a2)
{
  BSDispatchQueueAssertNotMain();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SBXXTagTouchForTypingMenu_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
  return 0;
}

uint64_t _SBXXAcquireFocusPreventingFullScreenPresentationAssertion(uint64_t a1, uint64_t a2, int a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v6 = [MEMORY[0x277D75128] _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___SBXXAcquireFocusPreventingFullScreenPresentationAssertion_block_invoke;
  v9[3] = &unk_2783AC098;
  v10 = v5;
  v11 = a3;
  v7 = v5;
  [v6 performAsync:v9];

  return 0;
}

uint64_t _SBXXIsReachabilityEnabled(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertNotMain();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SBXXIsReachabilityEnabled_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  return 0;
}

uint64_t _SBXXSetReachabilityEnabled(uint64_t a1, char a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v16[0] = *a3;
  v16[1] = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v16];
  v15 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v15];
  v9 = v15;

  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___SBXXSetReachabilityEnabled_block_invoke;
    v13[3] = &__block_descriptor_33_e5_v8__0l;
    v14 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v13);
    v10 = 0;
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetReachabilityEnabled_cold_1(v9);
    }

    v10 = 5;
  }

  return v10;
}

uint64_t _SBXXOverrideDisplayedDate(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v18 = 0;
  v5 = a3[1];
  v17[0] = *a3;
  v17[1] = v5;
  v6 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v17 forEntitlement:@"com.apple.springboard.overrideDisplayedDate" error:&v18];
  v7 = v18;
  if (v6)
  {
    if (*a2)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
      if (v8)
      {
        v9 = objc_alloc_init(MEMORY[0x277CCA968]);
        v10 = [MEMORY[0x277CBEAF8] currentLocale];
        [v9 setLocale:v10];

        [v9 setDateFormat:@"yyyy'-'MM'-'dd' 'HH':'mm':'ss"];
        v11 = [v9 dateFromString:v8];

LABEL_10:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___SBXXOverrideDisplayedDate_block_invoke;
        block[3] = &unk_2783A8C18;
        v16 = v11;
        v13 = v11;
        dispatch_async(MEMORY[0x277D85CD0], block);

        v12 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = 0;
    goto LABEL_10;
  }

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    _SBXXOverrideDisplayedDate_cold_1(v7);
  }

  v12 = 5;
LABEL_11:

  return v12;
}

uint64_t _SBXXSetIdleText(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v15 = 0;
  v5 = a3[1];
  v14[0] = *a3;
  v14[1] = v5;
  v6 = [MEMORY[0x277D0AAF8] authenticateAuditToken:v14 forEntitlement:@"com.apple.springboard.setIdleText" error:&v15];
  v7 = v15;
  if (v6)
  {
    if (*a2)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    }

    else
    {
      v8 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXSetIdleText_block_invoke;
    block[3] = &unk_2783A8C18;
    v13 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v10 = 0;
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetIdleText_cold_1(v7);
    }

    v10 = 5;
  }

  return v10;
}

void __setApplicationBadge_block_invoke_201(uint64_t a1)
{
  v6 = +[SBIconController sharedIconRepository];
  v2 = [v6 bookmarkIconForWebClipPlaceholderBundleIdentifier:*(a1 + 32)];
  v3 = objc_opt_self();
  v4 = [v2 bookmark];
  v5 = SBSafeCast(v3, v4);

  [v5 setBadgeValue:*(a1 + 40)];
}

__CFString *SBStringFromRemovalSwitcherModifierPhase(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Possible";
  }

  else
  {
    return off_2783AD158[a1 - 1];
  }
}

void sub_21EF05D50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EF0653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF07268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21EF07680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF0987C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_21EF09CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAAUIProfilePictureStoreClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppleAccountUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783AD300;
    v5 = 0;
    AppleAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    __getAAUIProfilePictureStoreClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AAUIProfilePictureStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUIProfilePictureStoreClass_block_invoke_cold_1();
  }

  getAAUIProfilePictureStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleAccountUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21EF0C1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF0C344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromWalletPrearmFailureRecognitionReason(uint64_t a1)
{
  if (a1)
  {
    return @"SinglePress";
  }

  else
  {
    return @"Timeout";
  }
}

void sub_21EF0C998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF0EBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF0FD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromDodgingModifierEventResponseType(uint64_t a1)
{
  v1 = @"Generic";
  if (a1 == 1)
  {
    v1 = @"Invalidation";
  }

  if (a1 == 2)
  {
    return @"ScheduleEvent";
  }

  else
  {
    return v1;
  }
}

__CFString *SBStringFromSwitcherDropModifierEventPhase(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Possible";
  }

  else
  {
    return off_2783AD4C0[a1 - 1];
  }
}

void sub_21EF13908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_21EF14A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_21EF15AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF174C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF18E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF19424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF1A1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF1ABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF1F2F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21EF21C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF23118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF238D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBPBAppLayoutListReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      if ((SBPBAppLayoutListReadFrom_cold_1(a1, &v15, a2, &v16) & 1) == 0)
      {
        return v16;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_21EF273D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NSURLForCameraActivationWithCaptureConfiguration(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (v3)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"capturedevice" value:v3];
    [v5 addObject:v6];
  }

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"capturemode" value:v4];
    [v5 addObject:v7];
  }

  if ([v5 count])
  {
    v8 = [@"camera://" stringByAppendingString:@"configuration"];
    v9 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v8];
    [v9 setQueryItems:v5];
    v10 = [v9 URL];
  }

  else
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:@"camera://"];
  }

  return v10;
}

void sub_21EF2829C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF28734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF28E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF28F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF291F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF29310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF29568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF29674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF2979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF29B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF2A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF2B298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SBTraitsArbiterOrientationActuationEnabledForRole_block_invoke()
{
  v10[14] = *MEMORY[0x277D85DE8];
  v10[0] = @"SBTraitsParticipantRoleInteractiveScreenshotGesture";
  v10[1] = @"SBTraitsParticipantRoleModifierTimeline";
  v0 = *MEMORY[0x277D77658];
  v10[2] = *MEMORY[0x277D77650];
  v10[3] = v0;
  v1 = *MEMORY[0x277D77668];
  v10[4] = *MEMORY[0x277D77660];
  v10[5] = v1;
  v2 = *MEMORY[0x277D77678];
  v10[6] = *MEMORY[0x277D77670];
  v10[7] = v2;
  v3 = *MEMORY[0x277D77688];
  v10[8] = *MEMORY[0x277D77680];
  v10[9] = v3;
  v4 = *MEMORY[0x277D77698];
  v10[10] = *MEMORY[0x277D77690];
  v10[11] = v4;
  v5 = *MEMORY[0x277D776A8];
  v10[12] = *MEMORY[0x277D776A0];
  v10[13] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:14];
  v7 = [v6 mutableCopy];

  if (!_os_feature_enabled_impl() || _os_feature_enabled_impl())
  {
    [v7 addObject:@"SBTraitsParticipantRoleWallpaper"];
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    [v7 addObject:@"SBTraitsParticipantRoleStatusBar"];
  }

  v8 = [v7 copy];
  v9 = SBTraitsArbiterOrientationActuationEnabledForRole__yetToBeManagedTraitsRoles;
  SBTraitsArbiterOrientationActuationEnabledForRole__yetToBeManagedTraitsRoles = v8;
}

id safeStringValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t safeIntValue(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 intValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isSafePlistTrueBoolean(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_21EF363AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id safeArrayOfIntNumberValue(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v15[0] = v1;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
LABEL_3:
    v3 = v2;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v2 = v4;
    goto LABEL_3;
  }

LABEL_15:
  v3 = 0;
LABEL_16:

  return v3;
}

void sub_21EF39238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_21EF39388(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_21EF3BB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF3C108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF3C8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF3CF3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_21EF3EB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF3ED18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF42408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF439BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF44028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF44178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF44B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a70, 8);
  _Unwind_Resume(a1);
}

void sub_21EF451EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF46524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF46654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF46CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF46E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _appIsEligibleForDomainWithIdentifierAndPersona(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1 unsignedLongLongValue];
  v13 = 0;
  v8 = [objc_alloc(MEMORY[0x277D36CB8]) initWithDomain:v7 bundleID:v5 persona:v6 error:&v13];

  v9 = v13;
  if (v8)
  {
    v10 = [v8 answer] == 4;
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "failure getting eligibility info for domain %qu, bundleID %@ with error: %@", buf, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

uint64_t SBDisplayItemTypeFromLegacyType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"App"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Homescreen"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"RemoteAlert"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SwitcherService"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ContinuityApp"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"WebApp"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"PlusControl"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"AppLibrary"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t typeFromProtobufDisplayItemType(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 5)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protobufDisplayItemTypeFromType(uint64_t a1)
{
  if (a1 >= 4)
  {
    if (a1 <= 4)
    {
      return 4;
    }

    else
    {
      if (a1 >= 6)
      {
        if (a1 == 6)
        {
          v5 = SBLogAppSwitcher();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            protobufDisplayItemTypeFromType_cold_1(v5, v13, v14, v15, v16, v17, v18, v19);
          }
        }

        else if (a1 == 7)
        {
          v5 = SBLogAppSwitcher();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            protobufDisplayItemTypeFromType_cold_3(v5, v20, v21, v22, v23, v24, v25, v26);
          }
        }

        else
        {
          v3 = 0;
          if (a1 != 8)
          {
            return v3;
          }

          v5 = SBLogAppSwitcher();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            protobufDisplayItemTypeFromType_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
          }
        }

        exit(0);
      }

      return 5;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v1 = 3;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = v1;
    }

    if (a1 == 1)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }
}

__CFString *SBStringFromTransitionPhase(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Possible";
  }

  else
  {
    return off_2783AE148[a1 - 1];
  }
}

__CFString *SBSAStringFromElementViewInteractionSource(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_2783AE160[a1];
  }
}

void sub_21EF535FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF5B008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF5BF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF5FB64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_21EF62A74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21EF6A0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF6A6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21EF6B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 88));
  _Unwind_Resume(a1);
}

void sub_21EF6B8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF6CA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF6CC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF6CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF6D0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF6D2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF70FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF743E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF75918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF7CCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF81978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF83AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF85410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21EF85990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF85BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF85DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF85F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF86178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF86378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF865C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF8B204(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void SBRecordingIndicatorApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 screen];
  [v5 nativeScale];
  v7 = v6;

  v8 = [v4 screen];
  [v8 scale];
  v10 = v9;

  v11 = vabdd_f64(v10, v7);
  if (v7 == 0.0 || v11 <= 0.00000011920929)
  {
    v13 = *(MEMORY[0x277CBF2C0] + 16);
    *&v15.a = *MEMORY[0x277CBF2C0];
    *&v15.c = v13;
    *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v15, v10 / v7, v10 / v7);
  }

  [v3 setTransform:&v15];
  v14 = [v4 screen];
  [v14 bounds];
  [v3 setFrame:?];
}

void sub_21EF8ECEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF8F758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF90D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF90EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF9105C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF9138C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF9152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF91698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF917DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF91914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF91A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF91BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromSwitcherWindowManagementContext(void *a1)
{
  v1 = a1;
  v2 = NSStringFromSwitcherWindowManagementStyle([v1 baseStyle]);
  if ([v1 isAutomaticStageCreationEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  v5 = [v1 restoresPreviouslyOpenWindows];

  if (v5)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"baseStyle: %@ isAutomaticStageCreationEnabled: %@ restoresPreviouslyOpenWindows: %@", v2, v4, v6];

  return v7;
}

void sub_21EF937B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF962B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBLayoutAttributesDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"supportsAnySize"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"wantsExclusiveForeground"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

__CFString *NSStringFromSBSAIndicatorMitosisTransitionProviderPhase(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2783AF558[a1];
  }
}

__CFString *NSStringFromSBSAIndicatorMitosisTransitionProviderType(uint64_t a1)
{
  v1 = @"Compact";
  if (a1 == 1)
  {
    v1 = @"BabyJindo";
  }

  if (a1 == 2)
  {
    return @"Custom";
  }

  else
  {
    return v1;
  }
}

uint64_t _SBSAIndicatorMitosisSettingsPhaseLessThanOrEqualToProviderPhase(uint64_t a1, unint64_t a2)
{
  v2 = a2 > 1;
  v3 = a2 > 2;
  if (a1 != 3)
  {
    v3 = 0;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  v4 = a2 != 0;
  if (a1 != 1)
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (a1 <= 1)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

void sub_21EF9AACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBRemoteTransientOverlaySessionManagerIsValidSessionForLookupOptions(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if ([v3 isValid] && !objc_msgSend(v4, "isPendingInvalidation"))
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 & 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_21EF9AD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF9AFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF9B214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF9B484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EF9D418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EF9EDC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void _WiFiDeviceClientPowerCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogStatusBarish();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _WiFiDeviceClientPowerCallback", v4, 2u);
  }

  [v2 _powerStateDidChange];
}

void _WiFiDeviceClientExtendedLinkCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _WiFiDeviceClientExtendedLinkCallback", v5, 2u);
  }

  [v3 _linkDidChange];
}

void _WiFiManagerClientServerRestartedCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogStatusBarish();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _WiFiManagerClientServerRestartedCallback", v4, 2u);
  }

  [v2 _updateDevicePresence];
  [v2 _powerStateDidChange];
}

void _WiFiManagerDeviceAttachCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _WiFiManagerDeviceAttachCallback", v5, 2u);
  }

  [v3 _updateWiFiDevice];
}

__CFString *NSStringFromSBExtensionType(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return @"(unknown)";
  }

  else
  {
    return off_2783AF6E8[a1 - 1];
  }
}

void sub_21EFA694C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFA9F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFAA750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFAB9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBAllParticipantRolesAndHints_ForTestingOnly()
{
  v17[12] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D77658];
  v17[0] = *MEMORY[0x277D77650];
  v17[1] = v1;
  v2 = *MEMORY[0x277D77668];
  v17[2] = *MEMORY[0x277D77660];
  v17[3] = v2;
  v3 = *MEMORY[0x277D77678];
  v17[4] = *MEMORY[0x277D77670];
  v17[5] = v3;
  v4 = *MEMORY[0x277D77688];
  v17[6] = *MEMORY[0x277D77680];
  v17[7] = v4;
  v5 = *MEMORY[0x277D77698];
  v17[8] = *MEMORY[0x277D77690];
  v17[9] = v5;
  v6 = *MEMORY[0x277D776A8];
  v17[10] = *MEMORY[0x277D776A0];
  v17[11] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:12];
  v8 = [v0 setWithArray:v7];

  v9 = MEMORY[0x277CBEB58];
  v16[0] = @"SBTraitsParticipantRoleAlert";
  v16[1] = @"SBTraitsParticipantRoleAmbient";
  v16[2] = @"SBTraitsParticipantRoleAssistant";
  v16[3] = @"SBTraitsParticipantRoleAssistantAccessory";
  v16[4] = @"SBTraitsParticipantRoleAudioHUD";
  v16[5] = @"SBTraitsParticipantRoleAXAssistiveTouchUI";
  v16[6] = @"SBTraitsParticipantRoleAXFullKeyboardUI";
  v16[7] = @"SBTraitsParticipantRoleAXVoiceControlUI";
  v16[8] = @"SBTraitsParticipantRoleAXUIServer";
  v16[9] = @"SBTraitsParticipantRoleBanner";
  v16[10] = @"SBTraitsParticipantRoleBiometricMonitorUI";
  v16[11] = @"SBTraitsParticipantRoleHardwareButtonBezelEffectsCoordinator";
  v16[12] = @"SBTraitsParticipantRoleHardwareButtonBezelEffectsCoordinatorHinting";
  v16[13] = @"SBTraitsParticipantRoleCommandTab";
  v16[14] = @"SBTraitsParticipantRoleControlCenter";
  v16[15] = @"SBTraitsParticipantRoleCoverSheet";
  v16[16] = @"SBTraitsParticipantRoleCoverSheetCamera";
  v16[17] = @"SBTraitsParticipantRoleCoverSheetPosterSwitcher";
  v16[18] = @"SBTraitsParticipantRoleCoverSheetHomeScreenOverlay";
  v16[19] = @"SBTraitsParticipantRoleDeviceApplicationSceneViewOverlay";
  v16[20] = @"SBTraitsParticipantRoleDruid";
  v16[21] = @"SBTraitsParticipantRoleEnsembleUI";
  v16[22] = @"SBTraitsParticipantRoleEyedropperUI";
  v16[23] = @"SBTraitsParticipantRoleFloatingDock";
  v16[24] = @"SBTraitsParticipantRoleFloatingKeyboard";
  v16[25] = @"SBTraitsParticipantRoleSystemUIScene";
  v16[26] = @"SBTraitsParticipantRoleHomeScreen";
  v16[27] = @"SBTraitsParticipantRoleHomeScreenDimming";
  v16[28] = @"SBTraitsParticipantRoleHUD";
  v16[29] = @"SBTraitsParticipantRoleInputUI";
  v16[30] = @"SBTraitsParticipantRoleInternalPerfPowerHUD";
  v16[31] = @"SBTraitsParticipantRoleInteractiveScreenshotGesture";
  v16[32] = @"SBTraitsParticipantRoleLiveTranscriptionUI";
  v16[33] = @"SBTraitsParticipantRoleLoginBootToSetupAppZoomInAnimation";
  v16[34] = @"SBTraitsParticipantRoleLogWindowRecipe";
  v16[35] = @"SBTraitsParticipantRoleMedusaDrag";
  v16[36] = @"SBTraitsParticipantRoleMenuBar";
  v16[37] = @"SBTraitsParticipantRoleModifierTimeline";
  v16[38] = @"SBTraitsParticipantRoleMomentsUI";
  v16[39] = @"SBTraitsParticipantRoleOverlayUI";
  v16[40] = @"SBTraitsParticipantRoleSubterraneanOverlayUI";
  v16[41] = @"SBTraitsParticipantRolePerfPowerHUD";
  v16[42] = @"SBTraitsParticipantRolePictureInPicture";
  v16[43] = @"SBTraitsParticipantRolePipelineManager";
  v16[44] = @"SBTraitsParticipantRolePrototypeTools";
  v16[45] = @"SBTraitsParticipantRoleReachability";
  v16[46] = @"SBTraitsParticipantRoleRecordingIndicator";
  v16[47] = @"SBTraitsParticipantRoleRenderOverlayRecipe";
  v16[48] = @"SBTraitsParticipantRoleScreenFlash";
  v16[49] = @"SBTraitsParticipantRoleSecureApp";
  v16[50] = @"SBTraitsParticipantRoleStartupFadeAnimation";
  v16[51] = @"SBTraitsParticipantRoleStatusBar";
  v16[52] = @"SBTraitsParticipantRoleSwitcherLiveOverlay";
  v16[53] = @"SBTraitsParticipantRoleSwitcherPublisher";
  v16[54] = @"SBTraitsParticipantRoleSwitcherRaw";
  v16[55] = @"SBTraitsParticipantRoleTransientOverlay";
  v16[56] = @"SBTraitsParticipantRoleTransientOverlayBackground";
  v16[57] = @"SBTraitsParticipantRoleWallpaperExternal";
  v16[58] = @"SBTraitsParticipantRoleWindowedAccessory";
  v16[59] = @"SBTraitsParticipantRoleSystemAperture";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:60];
  v11 = [v9 setWithArray:v10];

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1 && _os_feature_enabled_impl())
  {
    [v11 addObject:@"SBTraitsParticipantRoleWallpaper"];
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v14 unionSet:v8];
  [v14 unionSet:v11];

  return v14;
}

void sub_21EFB2128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFB62A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v31 - 160), 8);

  _Block_object_dispose((v31 - 112), 8);
  a9.super_class = SBAbstractWindowSceneDelegate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21EFB72CC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_21EFB74DC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_21EFB7AC8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_21EFB7C50(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_21EFB81A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(a1);
    v21 = [v20 name];
    v22 = [v21 isEqualToString:*MEMORY[0x277D73508]];

    if (v22)
    {
      v23 = SBLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [SBAbstractWindowSceneDelegate _acquireParticipantForWindow:reason:];
      }
    }

    else
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:v15 object:v14 file:@"SBAbstractWindowSceneDelegate.m" lineNumber:440 description:@"An unknown exception is being caught."];
    }

    objc_end_catch();
    JUMPOUT(0x21EFB8168);
  }

  _Unwind_Resume(a1);
}

void sub_21EFBA800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFBB980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFBF960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 128));
  _Unwind_Resume(a1);
}

void sub_21EFC03D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_21EFC08E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFC1088(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak(v2);
  _Unwind_Resume(a1);
}

void sub_21EFC15FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21EFC1798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFC1AAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21EFC1D64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21EFC3354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SBUnhideProtectedAppAlertControllerFor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CC1E70];
  v6 = [v3 bundleIdentifier];
  v7 = [v5 bundleRecordWithBundleIdentifier:v6 allowPlaceholder:1 error:0];

  if (v7)
  {
    v8 = [v7 localizedName];
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _SBUnhideProtectedAppAlertControllerFor_cold_1(v3);
    }

    v8 = @"app";
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = APGetDescriptionFor();
  v12 = [v10 stringWithFormat:v11, v8];

  v13 = MEMORY[0x277D75110];
  v14 = APGetDescriptionFor();
  v15 = [v13 alertControllerWithTitle:v12 message:v14 preferredStyle:1];

  [v15 setPreferredStyle:1];
  v16 = MEMORY[0x277D750F8];
  v17 = APGetDescriptionFor();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___SBUnhideProtectedAppAlertControllerFor_block_invoke;
  v26[3] = &unk_2783A9370;
  v27 = v3;
  v28 = v4;
  v18 = v4;
  v19 = v3;
  v20 = [v16 actionWithTitle:v17 style:2 handler:v26];

  v21 = MEMORY[0x277D750F8];
  v22 = [MEMORY[0x277CCA8D8] mainBundle];
  v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_283094718 table:@"SpringBoard"];
  v24 = [v21 actionWithTitle:v23 style:1 handler:0];

  [v15 addAction:v20];
  [v15 addAction:v24];

  return v15;
}

void sub_21EFC602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v41 - 176));
  objc_destroyWeak((v41 - 136));
  objc_destroyWeak((v41 - 128));
  _Unwind_Resume(a1);
}

void sub_21EFC7FFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21EFC8AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFC9A3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21EFCAF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFCB7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFCE008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21EFCE158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21EFCE45C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *_StringFromPreferencesStackSignals(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___StringFromPreferencesStackSignals_block_invoke;
    v9[3] = &unk_2783A8C18;
    v3 = v2;
    v10 = v3;
    v4 = MEMORY[0x223D6F7F0](v9);
    if (v1)
    {
      [v3 appendString:@"collisionThresholdReached"];
    }

    if ((v1 & 2) != 0)
    {
      v4[2](v4);
      [v3 appendString:@"steadyStateReached"];
    }

    if ([v3 length])
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = @"none";
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"[invalid]";
  }

  v7 = v6;

  return v6;
}

__CFString *_StringFromPreferencesStackFlags(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___StringFromPreferencesStackFlags_block_invoke;
    v9[3] = &unk_2783A8C18;
    v3 = v2;
    v10 = v3;
    v4 = MEMORY[0x223D6F7F0](v9);
    if (v1)
    {
      [v3 appendString:@"containerPressActive"];
    }

    if ((v1 & 2) != 0)
    {
      v4[2](v4);
      [v3 appendString:@"containerResizeHysteresisSurpassed"];
    }

    if ([v3 length])
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = @"none";
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"[invalid]";
  }

  v7 = v6;

  return v6;
}

void sub_21EFD7488(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_21EFD808C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFDA100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBSAIndicatorMitosisSettingsMilestoneTarget(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_283094718;
  }

  else
  {
    return off_2783B03E8[a1];
  }
}

__CFString *NSStringFromSBSAIndicatorMitosisSettingsPhase(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unexpected";
  }

  else
  {
    return off_2783B0408[a1];
  }
}

id _SBWindowingLayoutFormatErrorWithCode(unint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v3 = SBWindowingLayoutFormatParserErrorDescription(a1);
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:@"SBWindowingLayoutFormatParserErrorDomain" code:a1 userInfo:v4];

  return v5;
}

uint64_t isValidSymbol(unsigned __int16 a1)
{
  v2 = (((a1 - 44) >> 1) | ((a1 - 44) << 7));
  v3 = 1;
  v4 = (1 << v2) & 0x381;
  if (v2 > 9 || v4 == 0)
  {
    v1 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [v1 characterIsMember:a1];
  }

  if (v2 > 9 || v4 == 0)
  {
  }

  return v3;
}

void SBWindowingLayoutFormatParserErrorDescription(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull SBWindowingLayoutFormatParserErrorDescription(SBWindowingLayoutFormatParserErrorCode)"];
    [v2 handleFailureInFunction:v3 file:@"SBWindowingLayoutFormatParser.m" lineNumber:341 description:{@"Unsupported error: %d", a1}];
  }
}

void sub_21EFE2EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFE5C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFE71F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFE9D1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21EFEB184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFEB6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFEC560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_21EFED704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFEE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21EFEFA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFEFD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EFF0030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBStringFromDodgingModifierEventType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Insertion";
  }

  else
  {
    return off_2783B06D8[a1 - 1];
  }
}

void sub_21EFF53F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBEntityRemovalDefaultFluidAnimationSettings()
{
  v0 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [v0 setBehaviorType:2];
  [v0 setDampingRatio:1.0];
  [v0 setResponse:0.456999987];
  [v0 setTrackingDampingRatio:1.0];
  [v0 setTrackingResponse:0.064];
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v0 setFrameRateRange:1114113 highFrameRateReason:{*&v3.minimum, *&v3.maximum, *&v3.preferred}];

  return v0;
}

void sub_21EFF8D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFF9454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___backgroundQueue_collectAndLogFromContext_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = a4;
  [v8 appendString:a2];
  [*(a1 + 32) appendString:@": "];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = @"Unnamed";
  }

  v11 = v10;
  [*(a1 + 32) appendString:?];
  [*(a1 + 32) appendString:@"\t"];
  [*(a1 + 32) appendString:v9];

  [*(a1 + 32) appendString:@"\n"];
}

void _arrayCallback_collectOneTask(const __CFNumber *a1, const __CFArray *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, 512);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = 648;
  *v9 = 0xE00000001;
  v10 = 1;
  v11 = valuePtr;
  if (sysctl(v9, 4u, v12, &v8, 0, 0) != -1)
  {
    v5 = a3;
    if (!v8 || ([MEMORY[0x277CCACA8] stringWithCString:&v12[15] + 3 encoding:4], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = @"<unknown process>";
    }

    [v5 setProcessName:v6];
    v14.length = CFArrayGetCount(a2);
    v14.location = 0;
    CFArrayApplyFunction(a2, v14, _arrayCallback_collectOnePowerAssertion, v5);
  }
}

void _arrayCallback_collectOnePowerAssertion(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    valuePtr = 0;
    v5 = a2;
    Value = CFDictionaryGetValue(a1, @"AssertType");
    v7 = CFDictionaryGetValue(a1, @"AssertLevel");
    CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
    v8 = CFDictionaryGetValue(a1, @"AssertStartWhen");
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSinceDate:v9];

      v11 = MEMORY[0x277CCACA8];
      v12 = BSFormattedTimeFromSeconds();
      v13 = [v11 stringWithFormat:@", held for %@", v12];
    }

    else
    {
      v13 = &stru_283094718;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ == %ld%@", Value, valuePtr, v13];
    v15 = CFDictionaryGetValue(a1, @"AssertName");
    v16 = [v5 collectionBlock];
    v17 = [v5 processName];

    (v16)[2](v16, v17, v15, v14);
  }
}

void ___backgroundQueue_systemVersionDescription_block_invoke()
{
  v0 = _CFCopyServerVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopySystemVersionDictionary();
  }

  v9 = v0;
  v1 = [v0 objectForKey:*MEMORY[0x277CBEC88]];
  v2 = [v9 objectForKey:*MEMORY[0x277CBEC78]];
  v3 = [v9 objectForKey:*MEMORY[0x277CBEC70]];
  v4 = @"???";
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = @"???";
  }

  if (v1)
  {
    v6 = v1;
  }

  else
  {
    v6 = @"???";
  }

  if (v3)
  {
    v4 = v3;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ (%@)", v5, v6, v4];
  v8 = _backgroundQueue_systemVersionDescription___description;
  _backgroundQueue_systemVersionDescription___description = v7;
}

void ___backgroundQueue_getSOCStats_block_invoke(uint64_t a1)
{
  v10 = IOReportChannelGetChannelName();
  if ([v10 isEqualToString:@"SOCHOT0"])
  {
    Count = IOReportStateGetCount();
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v10, IOReportStateGetNameForIndex()];
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
        [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKeyedSubscript:v5];
      }
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetInTransitions()];
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Transitions", v10];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }
}

void sub_21EFFD9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFFEB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EFFFFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F002A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F008A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0093B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL SBIsSystemGestureAllowed(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 systemGestureManager];
  v24 = [v4 isGestureWithTypeAllowed:a2];

  v5 = +[SBCoverSheetPresentationManager sharedInstance];
  v6 = [v5 coverSheetWindow];
  v7 = [v6 windowScene];
  if ([v7 isEqual:v3])
  {
    v23 = [v5 isVisible];
  }

  else
  {
    v23 = 0;
  }

  v8 = [v3 controlCenterController];
  v9 = [v8 _controlCenterWindow];
  v10 = [v9 windowScene];
  if ([v10 isEqual:v3])
  {
    v11 = [v8 isPresented];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[SBWorkspace mainWorkspace];
  v13 = [v12 transientOverlayPresentationManager];
  v14 = [v13 hasActivePresentationForWindowScene:v3];

  v15 = +[SBAlertItemsController sharedInstance];
  LOBYTE(v13) = [v15 hasVisibleAlertForWindowScene:v3];

  v16 = [v3 switcherController];
  v17 = [v16 isAnySwitcherVisible];

  v18 = +[SBAssistantController sharedInstance];
  v19 = [v18 isVisibleInWindowScene:v3];

  v20 = +[SBLockStateAggregator sharedInstance];
  v21 = [v20 hasAnyLockState];

  return ((v24 ^ 1 | (v23 | v11) | v13 | v14 | (v17 | v19 | v21)) & 1) == 0;
}

id _SBActiveAssertion(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v1 objectForKey:v7];
        if ([v8 wantsControlOfDisplay])
        {
          v9 = [v4 level];
          if (v9 < [v7 level])
          {
            v10 = v7;

            v4 = v10;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *NSStringFromSBEmbeddedDeviceStationaryState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"No Description";
  }

  else
  {
    return off_2783B0BC0[a1];
  }
}

void sub_21F00FF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F011B8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F012078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

void sub_21F01338C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F013CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F014994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21F0192D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F019C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t _SBShelfExpansionIndexFromAnimatableIdentifier(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"-SBShelfExpansionSwitcherModifier"];
  v2 = [v1 firstObject];

  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

void sub_21F01D004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBMediaEventSource(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2783B10E0[a1 - 1];
  }
}

void sub_21F021A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F021C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F021E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F024260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_21F025094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0259C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F026C04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F027150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getDMFApplicationPolicyMonitorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!DeviceManagementLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __DeviceManagementLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2783B1340;
    v5 = 0;
    DeviceManagementLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DeviceManagementLibraryCore_frameworkLibrary)
  {
    __getDMFApplicationPolicyMonitorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DMFApplicationPolicyMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDMFApplicationPolicyMonitorClass_block_invoke_cold_1();
  }

  getDMFApplicationPolicyMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DeviceManagementLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DeviceManagementLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21F02AC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F02AD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F02BF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F02C7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F02F728(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21F030340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F034FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBPBDisplayItemLayoutAttributesKeyReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v27 = objc_alloc_init(SBPBDisplayItem);
        objc_storeStrong((a1 + 8), v27);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SBPBDisplayItemReadFrom(v27, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31[0] & 0x7F) << v21;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_46:
          v28 = 16;
          goto LABEL_51;
        }

        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
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

LABEL_50:
          v28 = 20;
LABEL_51:
          *(a1 + v28) = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SBPBDisplayItemLayoutAttributesEntryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(SBPBDisplayItemLayoutAttributesKey);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SBPBDisplayItemLayoutAttributesKeyReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SBPBDisplayItemLayoutAttributes);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SBPBDisplayItemLayoutAttributesReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_21F039C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F03E354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t secureAppTypeForSBApplicationSceneEntity(void *a1)
{
  v1 = a1;
  v2 = [v1 application];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.calculator"];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v1 application];
    v7 = [v6 bundleIdentifier];
    v8 = [v7 isEqualToString:@"com.apple.mobiletimer"];

    if (v8)
    {
      v5 = 2;
    }

    else
    {
      v9 = [v1 application];
      v10 = [v9 bundleIdentifier];
      v11 = [v10 isEqualToString:@"com.apple.camera"];

      if (v11)
      {
        v5 = 4;
      }

      else
      {
        v12 = [v1 application];
        v13 = [v12 bundleIdentifier];
        v14 = [v13 isEqualToString:@"com.apple.Magnifier"];

        if (v14)
        {
          v5 = 5;
        }

        else
        {
          v15 = [v1 application];
          v16 = [v15 bundleIdentifier];
          v17 = [v16 isEqualToString:@"com.apple.mobilenotes"];

          if (v17)
          {
            v5 = 3;
          }

          else
          {
            v18 = [v1 application];
            v19 = [v18 bundleIdentifier];
            v20 = [v19 isEqualToString:@"com.apple.TVRemoteUIService"];

            if (v20)
            {
              v5 = 13;
            }

            else
            {
              v21 = [v1 application];
              v22 = [v21 bundleIdentifier];
              v23 = [v22 isEqualToString:@"com.apple.sidecar"];

              if (v23)
              {
                v5 = 6;
              }

              else
              {
                v24 = [v1 application];
                v25 = [v24 bundleIdentifier];
                v26 = [v25 isEqualToString:@"com.apple.ContinuityCaptureShieldUI"];

                if (v26)
                {
                  v5 = 7;
                }

                else
                {
                  v27 = [v1 application];
                  v28 = [v27 bundleIdentifier];
                  v29 = [v28 isEqualToString:@"com.apple.ContinuitySingShieldUI"];

                  if (v29)
                  {
                    v5 = 8;
                  }

                  else
                  {
                    v30 = [v1 application];
                    v31 = [v30 bundleIdentifier];
                    v32 = [v31 isEqualToString:@"com.apple.BarcodeScanner"];

                    if (v32)
                    {
                      v5 = 9;
                    }

                    else
                    {
                      v33 = [v1 application];
                      v34 = [v33 bundleIdentifier];
                      v35 = [v34 isEqualToString:@"com.apple.Translate"];

                      if (v35)
                      {
                        v5 = 14;
                      }

                      else
                      {
                        v5 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_21F0415E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F042A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F04928C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F04DA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F04EA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F054A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F055FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F056EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t SBIsSystemNotesSupported()
{
  if (!__sb__runningInSpringBoard())
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] == 1)
    {
      v3 = [MEMORY[0x277D6B7C8] supportsQuickNote];
    }

    else
    {
      v3 = 0;
    }

    return v3;
  }

  if (SBFEffectiveDeviceClass() != 2)
  {
    return 0;
  }

  v0 = MEMORY[0x277D6B7C8];

  return [v0 supportsQuickNote];
}

uint64_t SBIsSystemNotesEnabled(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = SBIsSystemNotesSupported();
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 isQuickNoteAllowed];

  v5 = +[SBApplicationController sharedInstanceIfExists];
  v6 = [v5 notesApplication];
  v7 = [v6 appProtectionAssistant];
  v8 = [v7 appProtectionApplication];
  v9 = [v8 isLocked];

  if (!a1)
  {
    if (v2)
    {
      return v4 & (v9 ^ 1u);
    }

    return 0;
  }

  if ((v2 & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"QuickNote not supported";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a1 = [v14 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:7 userInfo:v15];

    return 0;
  }

  if ((v4 & 1) == 0)
  {
    v10 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"ManagedConfiguration policy states no QuickNote";
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v21;
    v13 = &v20;
    goto LABEL_11;
  }

  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Notes requires FaceID";
    v11 = MEMORY[0x277CBEAC0];
    v12 = &v19;
    v13 = &v18;
LABEL_11:
    v17 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    *a1 = [v10 errorWithDomain:@"SBPIPSceneContentPresentationErrorDomain" code:7 userInfo:v17];
  }

  return v4 & (v9 ^ 1u);
}

void sub_21F057B78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

__CFString *SBSystemNotesAnalyticsDismissalReasonDescription(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"undefined";
  }

  else
  {
    return off_2783B1C28[a1 - 1];
  }
}

void sub_21F05A760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double SBClassicUtilitiesScaleFactorForPhoneAppZoomedIn(uint64_t a1, double a2, double a3)
{
  if (__sb__runningInSpringBoard())
  {
    __sb__mainScreenReferenceBounds();
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 _referenceBounds];
    v7 = v11;
    v9 = v12;
  }

  v13 = ((a1 - 3) < 2) ^ (([SBApp interfaceOrientationForCurrentDeviceOrientation:0] - 3) < 2);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (v13)
  {
    v7 = v9;
  }

  v15 = [MEMORY[0x277D759A0] mainScreen];
  v16 = SBClassicUtilitiesScaleFactorForPresentationWithHomeAffordance(v15, a1, 0, v7, v14, a2, a3, 1.0);

  UIRectCenteredAboutPoint();
  v23.origin.x = v17;
  v23.origin.y = v18;
  v23.size.width = v19;
  v23.size.height = v20;
  v22.size.width = 72.0;
  v22.origin.x = 0.0;
  v22.origin.y = v14 + -72.0;
  v22.size.height = 72.0;
  if (CGRectIntersectsRect(v22, v23))
  {
    if ((v7 + -144.0) / a2 <= (v14 + -144.0) / a3)
    {
      return (v7 + -144.0) / a2;
    }

    else
    {
      return (v14 + -144.0) / a3;
    }
  }

  return v16;
}

double SBClassicUtilitiesScaleFactorForPresentationWithHomeAffordance(void *a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = [v15 displayIdentity];
  if ([v16 isMainRootDisplay])
  {
    v17 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);

    v19 = 1.0;
    if (v17 != a4 || v18 != a5)
    {
      if (a4 / a6 <= a5 / a7)
      {
        v21 = a4 / a6;
      }

      else
      {
        v21 = a5 / a7;
      }

      v19 = v21 * _SBAdditionalScaleFactorForClassicPresentationWithHomeAffordance(v15, a2, a3, a4, a5, a6, a7, v21 * a8);
    }
  }

  else
  {

    v19 = 1.0;
  }

  return v19;
}

double SBClassicUtilitiesStatusBarInsetsForPadOnRoundedPad(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D75060];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && !SBApplicationClassicModeExpectsRoundedCorners(a2) && SBApplicationClassicModeRepresentsPad(a2))
  {
    v6 = +[SBPlatformController sharedInstance];
    v7 = [v6 isRoundCornerPad];

    if (v7)
    {
      [MEMORY[0x277D75A78] _roundedPadEdgeInsets];
      [MEMORY[0x277D75A78] _regularPadEdgeInsets];
      [MEMORY[0x277D75A78] _regularPadBaselineOffset];
      v9 = v8;
      [MEMORY[0x277D75A78] _roundedPadBaselineOffset];
      return v9 - v10;
    }
  }

  return v3;
}

double _SBAdditionalScaleFactorForClassicPresentationWithHomeAffordance(void *a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = v15;
  v17 = 1.0;
  if ((a3 & 1) == 0)
  {
    v18 = [v15 displayIdentity];
    if ([v18 isMainRootDisplay])
    {
      v19 = *MEMORY[0x277CBF3A8];
      v20 = *(MEMORY[0x277CBF3A8] + 8);

      if (v19 != a4 || v20 != a5)
      {
        if ((a2 - 3) >= 2)
        {
          v22 = a5;
        }

        else
        {
          v22 = a4;
        }

        if ((a2 - 3) < 2)
        {
          a7 = a6;
        }

        v23 = [MEMORY[0x277D75418] currentDevice];
        v24 = [v23 userInterfaceIdiom];

        v25 = 20.0;
        if ((v24 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          v26 = SBFEffectiveHomeButtonType();
          v25 = 0.0;
          if (v26 == 2)
          {
            v25 = 20.0;
          }
        }

        v27 = v22 - v25;
        v28 = [MEMORY[0x277D75418] currentDevice];
        v29 = [v28 userInterfaceIdiom];

        v30 = 24.0;
        if ((v29 & 0xFFFFFFFFFFFFFFFBLL) != 1)
        {
          v31 = SBFEffectiveHomeButtonType();
          v30 = 0.0;
          if (v31 == 2)
          {
            v30 = 6.0;
          }
        }

        v32 = v27 - v30;
        if (a7 * a8 <= v32)
        {
          v17 = 1.0;
        }

        else
        {
          v17 = v32 / v22;
        }
      }
    }

    else
    {
    }
  }

  return v17;
}

void SBClassicUtilitiesInsetAndTranslateLayerForPresentationWithHomeAffordance(void *a1, void *a2, int a3, uint64_t a4, int a5, char a6, int a7, double a8, double a9, double a10, double a11, double a12)
{
  v23 = a1;
  v24 = a2;
  v25 = [v24 displayIdentity];
  v26 = [v25 isMainRootDisplay];

  if (v26)
  {
    v27 = _SBAdditionalScaleFactorForClassicPresentationWithHomeAffordance(v24, a4, a6, a8, a9, a10, a11, a12);
    if (a5)
    {
      v28 = 1.0 / a12;
    }

    else
    {
      v28 = 1.0;
    }

    v29 = 5.0;
    if (a7)
    {
      v29 = SBScreenDisplayCornerRadius();
    }

    v30 = [MEMORY[0x277D75418] currentDevice];
    v31 = [v30 userInterfaceIdiom];

    v32 = 20;
    if ((v31 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      if (SBFEffectiveHomeButtonType() == 2)
      {
        v32 = 20;
      }

      else
      {
        v32 = 0;
      }
    }

    v33 = [MEMORY[0x277D75418] currentDevice];
    v34 = [v33 userInterfaceIdiom];

    if ((v34 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v35 = -24;
    }

    else if (SBFEffectiveHomeButtonType() == 2)
    {
      v35 = -6;
    }

    else
    {
      v35 = 0;
    }

    v36 = 0.0;
    if (v27 != 1.0)
    {
      v36 = -(((v35 + v32) >> 1) * v28);
    }

    v37 = v28 * v29;
    v38 = -0.0;
    v39 = -v36;
    v40 = -0.0;
    if (a4 == 2)
    {
      v41 = -v36;
    }

    else
    {
      v41 = v36;
    }

    if (a4 != 2)
    {
      v40 = 0.0;
    }

    if (a4 == 3)
    {
      v41 = 0.0;
    }

    else
    {
      v39 = v40;
    }

    if (a4 == 4)
    {
      v39 = v36;
    }

    else
    {
      v38 = v41;
    }

    if (a3)
    {
      v42 = v38;
    }

    else
    {
      v42 = v36;
    }

    memset(&v47.c, 0, 32);
    if (a3)
    {
      v43 = v39;
    }

    else
    {
      v43 = 0.0;
    }

    *&v47.a = 0uLL;
    CGAffineTransformMakeScale(&t1, v27, v27);
    CGAffineTransformMakeTranslation(&t2, v43, v42);
    CGAffineTransformConcat(&v47, &t1, &t2);
    if (v23)
    {
      [v23 affineTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v44 = v47;
    CGAffineTransformConcat(&t1, &t2, &v44);
    [v23 setAffineTransform:&t1];
    [v23 setCornerRadius:v37];
    [v23 setCornerCurve:*MEMORY[0x277CDA138]];
  }
}

id _SBApp(void *a1)
{
  v1 = a1;
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 applicationWithBundleIdentifier:v1];

  return v3;
}

void sub_21F060370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F061C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F065C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21F067058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0677C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F069010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBStringFromStreamBuddyConnectionState(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"INVALID";
  }

  else
  {
    return off_2783B20C0[a1];
  }
}

void sub_21F074928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F078840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _switcherKeyboardSuppressionModeByCombiningSuppressionModes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];

  if (v5 == v3)
  {
    v7 = v4;
    goto LABEL_8;
  }

  v6 = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];

  if (v6 == v4)
  {
    v7 = v3;
    goto LABEL_8;
  }

  if (([v3 suppressesAllScenes] & 1) != 0 || objc_msgSend(v4, "suppressesAllScenes"))
  {
    v7 = +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }

  v10 = [v3 appLayouts];
  v11 = [v4 appLayouts];
  v12 = [v10 setByAddingObjectsFromSet:v11];

  v8 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v12];
LABEL_9:

  return v8;
}

id _objectByChoosingNonNilObject(void *a1, void *a2)
{
  if (!a1)
  {
    a1 = a2;
  }

  return a1;
}

id _arrayByCombiningArrays(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 && v4)
  {
    v6 = v4;
LABEL_7:
    v7 = v6;
    goto LABEL_9;
  }

  if (v3 && !v4)
  {
    v6 = v3;
    goto LABEL_7;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v3];
  [v7 addObjectsFromArray:v5];
LABEL_9:

  return v7;
}

id _setByCombiningSets(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || v4)
  {
    if (v3 || !v4)
    {
      v6 = [v3 setByAddingObjectsFromSet:v4];
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

id _dictionaryByCombingDictionaryOfSetOfAppLayouts(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count] || !objc_msgSend(v4, "count"))
  {
    if (![v3 count] || objc_msgSend(v4, "count"))
    {
      v5 = objc_opt_new();
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___dictionaryByCombingDictionaryOfSetOfAppLayouts_block_invoke;
      v11[3] = &unk_2783B21F8;
      v12 = v4;
      v6 = v5;
      v13 = v6;
      [v3 enumerateKeysAndObjectsUsingBlock:v11];
      v7 = v13;
      v8 = v6;

      goto LABEL_9;
    }

    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v8 = v9;
LABEL_9:

  return v8;
}

void ___dictionaryByCombingDictionaryOfSetOfAppLayouts_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKey:v7];
  v9 = [MEMORY[0x277CBEB58] setWithSet:v6];

  v10 = [v8 allObjects];
  [v9 addObjectsFromArray:v10];

  v11 = *(a1 + 40);
  v13 = v7;
  v14[0] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v11 addEntriesFromDictionary:v12];
}

void _SBRoutingSwitcherModifierRouteToModifier(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[16];
  v7 = a1[16];
  a1[16] = v5;
  v8 = v5;
  v9 = a3;
  v11 = a1;

  v9[2](v9);
  v10 = v11[16];
  v11[16] = v6;
}

void sub_21F07AF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(id *a1, void *a2, void *a3)
{
  v6 = a1[16];
  v7 = a3;
  v8 = a2;
  v15 = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 22);
  v10 = [WeakRetained routingModifier:v15 modifierForAppLayout:v8];

  v11 = v15[16];
  v15[16] = v10;
  v12 = v10;

  v7[2](v7, v12);
  v13 = v15[16];
  v15[16] = v6;
  v14 = v6;
}

void sub_21F07B1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07B334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07B6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07BAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07BC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07BE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07C2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07C3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07C51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SBRoutingSwitcherModifierRouteToModifierContainingIndex(void *a1, unint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v32 = v5[16];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v5[21];
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v36;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v35 + 1) + 8 * v12);
      v14 = [v5 _lastIndexForModifier:v13];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v14 >= a2)
        {
          v15 = v13;

          if (v15)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        v10 = v14 + 1;
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  v10 = 0;
LABEL_15:

LABEL_16:
  WeakRetained = objc_loadWeakRetained(v5 + 22);
  v17 = v5[20];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), v5];
  v31 = v6;
  if (WeakRetained)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), WeakRetained];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v17 keyEnumerator];
  v20 = [v19 allObjects];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = ___SBRoutingSwitcherModifierRouteToModifierContainingIndex_block_invoke;
  v33[3] = &unk_2783B24F0;
  v34 = v17;
  v21 = v17;
  v22 = [v20 bs_reduce:&stru_283094718 block:v33];

  v23 = [MEMORY[0x277CCA890] currentHandler];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SBRoutingSwitcherModifierRouteToModifierContainingIndex(SBRoutingSwitcherModifier *__strong, NSUInteger, void (^__strong)(SBSwitcherModifier *__strong, NSUInteger))"}];
  [v23 handleFailureInFunction:v24 file:@"SBRoutingSwitcherModifier.m" lineNumber:1645 description:{@"%@ with delegate %@ couldn't find a modifier among (%@) for index %lu", v30, v18, v22, a2}];

  v15 = 0;
  v6 = v31;
LABEL_20:
  v25 = a2 - v10;
  v26 = v5[16];
  v5[16] = v15;
  v27 = v15;

  v6[2](v6, v27, v25);
  v28 = v5[16];
  v5[16] = v32;
  v29 = v32;
}

void sub_21F07CA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07CBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07CD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07D32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07D9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07DC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07E1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07E320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07E6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07F2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07F3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07F4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07F8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07FAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07FD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07FE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F07FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0800F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F080280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F080414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F080564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0806D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F080AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F080C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F080D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F080EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F081254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0814C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0815FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F081AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F081DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0836A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F083958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F083F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0841B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0842F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0843EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0844E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0845E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0846D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0847D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0848D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0849CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F084AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F084BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F084CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F084DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F084ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F084FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0850B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0851C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F085504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F085680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0857FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F085978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F085AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F085C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F085F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F086274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08657C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F086880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F086B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F086E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F087028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08715C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F087280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08739C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0874B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0875D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0876F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F087940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F087AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F087FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0882C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F088400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F088ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F088DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0893AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F089534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0896B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08982C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0899A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F089B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08A3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08A674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08A7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08AE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08B11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08B26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t _SBRoutingSwitcherModifierSubIndexFromIndexForModifier(void *a1, unint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5[21];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      if (*(*(&v15 + 1) + 8 * v12) == v6)
      {
        break;
      }

      v13 = [v5 _lastIndexForModifier:v15];
      if (v13 < a2)
      {
        v10 = v13 + 1;
      }

      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return a2 - v10;
}

void sub_21F08C09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08C190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08C86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08CB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08CE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08D47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08D784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08DA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08DCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08DE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08E12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08E394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08E5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08E85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08EAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08ED6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08EF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08F26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08F39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08F4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08F650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08F8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08FA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08FCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08FDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F08FF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F090290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0916A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0917D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F092070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0922FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F092588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0928D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0929EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F092D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F092F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0932F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F093414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F093548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F093680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0937BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F093904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F093FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F094750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F096EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

id _SBDebugRects(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  if (a2 >= 1)
  {
    v5 = a1 + 16;
    do
    {
      v6 = MEMORY[0x277CCACA8];
      v12 = *(v5 - 16);
      v5 += 32;
      v7 = NSStringFromCGRect(v12);
      v8 = [v6 stringWithFormat:@"%@", v7];
      [v4 addObject:v8];

      --a2;
    }

    while (a2);
  }

  v9 = [v4 description];

  return v9;
}

id _SBDebugPoints(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  if (a2 >= 1)
  {
    v5 = a1 + 8;
    do
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = NSStringFromCGPoint(*(v5 - 8));
      v8 = [v6 stringWithFormat:@"%@", v7];
      [v4 addObject:v8];

      v5 += 16;
      --a2;
    }

    while (a2);
  }

  v9 = [v4 description];

  return v9;
}

id _SBDebugFloats(uint64_t *a1, uint64_t a2)
{
  v4 = objc_opt_new();
  if (a2 >= 1)
  {
    do
    {
      v5 = *a1++;
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.2f", v5];
      [v4 addObject:v6];

      --a2;
    }

    while (a2);
  }

  v7 = [v4 description];

  return v7;
}

id _SBDebugFlags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_new();
  if (a2 >= 1)
  {
    v7 = 0;
    do
    {
      if (a3 >= 1)
      {
        v8 = 0;
        do
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld, %ld]]: %ld", v7, v8, *(a1 + v8)];
          [v6 addObject:v9];

          ++v8;
        }

        while (a3 != v8);
      }

      ++v7;
      a1 += a3;
    }

    while (v7 != a2);
  }

  v10 = [v6 description];

  return v10;
}

id _SBDebugCostMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_new();
  if (a2 >= 1)
  {
    v7 = 0;
    do
    {
      if (a3 >= 1)
      {
        v8 = 0;
        do
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld, %ld]]: %ld", v7, v8, *(a1 + 8 * v8)];
          [v6 addObject:v9];

          ++v8;
        }

        while (a3 != v8);
      }

      ++v7;
      a1 += 8 * a3;
    }

    while (v7 != a2);
  }

  v10 = [v6 description];

  return v10;
}

void sub_21F09907C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t SBGestureModifierPhaseForGestureState(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

__CFString *SBStringForFluidSwitcherGestureType(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return off_2783B2610[a1 - 1];
  }
}

void sub_21F09AE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F09DC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F09F034(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F09FD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBSAPulsePhase(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Idle";
  }

  else
  {
    return off_2783B2970[a1 - 1];
  }
}

void sub_21F0A19CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0A3650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *SBInteractiveScreenshotCreateImageFromInterfaceOrientedView(void *a1, uint64_t a2)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 _screen];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  [v4 scale];
  v7 = v6;
  [v3 bounds];
  v9 = v8;
  v11 = v10;
  _UIWindowConvertPointFromOrientationToOrientation();
  memset(&v48, 0, sizeof(v48));
  CATransform3DMakeTranslation(&v48, -v12, -v13, 0.0);
  v14 = 0.0;
  if (a2 != 1)
  {
    if (a2 == 3)
    {
      v14 = 1.57079633;
    }

    else if (a2 == 4)
    {
      v14 = -1.57079633;
    }

    else
    {
      v14 = 3.14159265;
      if (a2 != 2)
      {
        v14 = 0.0;
      }
    }
  }

  CATransform3DMakeRotation(&b, 0.0 - v14, 0.0, 0.0, 1.0);
  a = v48;
  CATransform3DConcat(&v51, &a, &b);
  v48 = v51;
  _UIWindowConvertPointFromOrientationToOrientation();
  CATransform3DMakeTranslation(&b, v15 - v9, v16 - v11, 0.0);
  a = v48;
  CATransform3DConcat(&v51, &a, &b);
  v48 = v51;
  CATransform3DMakeScale(&b, v7, v7, 1.0);
  a = v48;
  CATransform3DConcat(&v51, &a, &b);
  v48 = v51;
  v17 = _SSHDRCaptureEnabled();
  if (!v17)
  {
    v54 = *MEMORY[0x277D776F0];
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "gamut")}];
    v55 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v20 = _UIRenderingBufferCreate();

    v22 = 0;
    if (!v20)
    {
      goto LABEL_30;
    }

LABEL_15:
    v45 = v17;
    v47 = v3;
    v25 = [v3 layer];
    v26 = *MEMORY[0x277CDA8C8];
    v53[0] = *MEMORY[0x277CDA8E0];
    v27 = *MEMORY[0x277CDA888];
    v52[0] = v26;
    v52[1] = v27;
    v46 = v5;
    v28 = [v5 displayConfiguration];
    v29 = [v28 name];
    v53[1] = v29;
    v52[2] = *MEMORY[0x277CDA860];
    v30 = MEMORY[0x277CCABB0];
    v31 = [v25 context];
    v32 = [v30 numberWithUnsignedInt:{objc_msgSend(v31, "contextId")}];
    v53[2] = v32;
    v52[3] = *MEMORY[0x277CDA8C0];
    v44 = v25;
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
    v53[3] = v33;
    v52[4] = *MEMORY[0x277CDA900];
    v51 = v48;
    v34 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v51];
    v52[5] = *MEMORY[0x277CDA898];
    v53[4] = v34;
    v53[5] = MEMORY[0x277CBEC38];
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:6];
    v36 = [v35 mutableCopy];

    if (v22)
    {
      [v36 setObject:v20 forKeyedSubscript:*MEMORY[0x277CDA880]];
      v37 = MEMORY[0x277CDA850];
      v38 = MEMORY[0x277CDA878];
      v39 = v22;
    }

    else
    {
      v37 = MEMORY[0x277CDA858];
      v38 = MEMORY[0x277CDA870];
      v39 = v20;
    }

    [v36 setObject:v39 forKeyedSubscript:*v38];
    [v36 setObject:*v37 forKeyedSubscript:*MEMORY[0x277CDA848]];
    v5 = v46;
    if (CARenderServerSnapshot())
    {
      if (v45)
      {
        v40 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
        CGColorSpaceAttachToIOSurface();
        if (v22)
        {
          CGColorSpaceAttachToIOSurface();
        }

        CGColorSpaceRelease(v40);
      }

      v41 = objc_alloc(MEMORY[0x277D755B8]);
      if (v22)
      {
        v42 = [v41 _initWithSDRIOSurface:v20 HDRIOSurface:v22 scale:0 orientation:v7];
        CFRelease(v20);
      }

      else
      {
        v42 = [v41 _initWithIOSurface:v20 scale:0 orientation:v7];
        v22 = v20;
      }
    }

    else
    {
      CFRelease(v20);
      v42 = 0;
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v22);
LABEL_29:

    v22 = v42;
    v3 = v47;
    goto LABEL_30;
  }

  v58 = *MEMORY[0x277D776E8];
  v18 = v58;
  v59[0] = &unk_283370988;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
  v20 = _UIRenderingBufferCreate();

  v56 = v18;
  v57 = &unk_283370988;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v22 = _UIRenderingBufferCreate();

  if (v20)
  {
    goto LABEL_15;
  }

  if (v22)
  {
    CFRelease(v22);
LABEL_13:
    v22 = 0;
  }

LABEL_30:

  return v22;
}

void sub_21F0AB974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0ABFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0B66F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0B7D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0B8A44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 136));
  _Unwind_Resume(a1);
}

void sub_21F0BB1E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

__CFString *SBStringForWindowDragGestureDestination(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Cancel";
  }

  else
  {
    return off_2783B3278[a1 - 1];
  }
}

void sub_21F0BFEA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 176));
  _Unwind_Resume(a1);
}

void sub_21F0C1998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v69 + 48));
  objc_destroyWeak((v70 + 48));
  objc_destroyWeak(&a47);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a69);
  objc_destroyWeak(&STACK[0x248]);
  objc_destroyWeak(&STACK[0x2A0]);
  objc_destroyWeak(&STACK[0x2C8]);
  objc_destroyWeak((v71 - 176));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBElasticValueState(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return @"Invalid state";
  }

  else
  {
    return off_2783B35D8[a1 + 1];
  }
}

void sub_21F0C2950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21F0C3ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0C3F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0C91EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 232), 8);
  _Block_object_dispose((v58 - 200), 8);
  _Block_object_dispose((v58 - 168), 8);
  _Block_object_dispose((v58 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_21F0CB300(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_21F0CBA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0CCD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_21F0D070C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBBrightnessRouteType(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"Display";
  }

  if (a1 == 2)
  {
    return @"Keyboard";
  }

  else
  {
    return v1;
  }
}

id NSLocalizedStringFromSBBrightnessRouteType(unint64_t a1)
{
  if (a1 <= 2)
  {
    v2 = off_2783B3998[a1];
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v1 = [v3 localizedStringForKey:v2 value:&stru_283094718 table:@"SpringBoard"];
  }

  return v1;
}

id CCUICAPackageDescriptionForSBBrightnessRouteType(unint64_t a1)
{
  if (a1 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_2783B39B0[a1];
  }

  v8 = [@"BrightnessHUD-" stringByAppendingString:{v7, v4, v3, v2, v1, v5}];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [MEMORY[0x277CFC940] descriptionForPackageNamed:v8 inBundle:v9];
  [v10 setFlipsForRightToLeftLayoutDirection:0];

  return v10;
}

void sub_21F0D6AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0D6E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0D6F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0D7184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0D72E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0D7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0DF8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0E07A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0E0B54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_21F0E1BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0E1EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0E20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0E22A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0E25B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0E31C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0E4388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0E5FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0E6EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0E805C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21F0EBC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0F0064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F0F2408(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_21F0F2FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21F0F39FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F0F3C40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F0F4AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  objc_destroyWeak(&a47);
  objc_destroyWeak((v47 - 176));
  objc_destroyWeak((v47 - 168));
  _Block_object_dispose((v47 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_21F0F79C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21F0F7C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBStringFromMedusaHostedKeyboardWindowLevelPriority(uint64_t a1)
{
  v1 = @"Medusa";
  if (a1 == 1)
  {
    v1 = @"Library";
  }

  if (a1 == 2)
  {
    return @"Spotlight";
  }

  else
  {
    return v1;
  }
}

void sub_21F0FBDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F0FC900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_21F0FE128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double SBFluidSwitcherItemContainerFooterViewIconShadowOffsetYForFooterStyle(uint64_t a1)
{
  result = -1.0;
  if ((a1 - 1) < 2)
  {
    return 4.0;
  }

  return result;
}

double SBFluidSwitcherItemContainerFooterViewIconShadowRadiusForFooterStyle(uint64_t a1)
{
  result = 6.0;
  if ((a1 - 1) < 2)
  {
    return 12.0;
  }

  return result;
}

double SBFluidSwitcherItemContainerFooterViewIconSideLengthForFooterStyle(uint64_t a1)
{
  result = 24.0;
  if (a1 == 1)
  {
    result = 30.0;
  }

  if (a1 == 2)
  {
    return 40.0;
  }

  return result;
}

uint64_t SBFluidSwitcherItemContainerFooterViewIconOffsetForFooterStyle(uint64_t result, uint64_t a2)
{
  v2 = 24.0;
  if (result == 1)
  {
    v2 = 30.0;
  }

  if (result)
  {
    if (a2 == 1)
    {
      return [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    }
  }

  return result;
}

SBApplicationSceneEntityDestructionIntent *SBApplicationSceneEntityDestructionMakeIntent(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(SBApplicationSceneEntityDestructionIntent);
  [(SBApplicationSceneEntityDestructionIntent *)v4 setShouldRemoveFromHistory:a2];
  if ((a1 - 1) <= 2)
  {
    [(SBApplicationSceneEntityDestructionIntent *)v4 setAnimation:?];
  }

  return v4;
}

SBApplicationSceneEntityDestructionIntent *SBApplicationSceneEntityDestructionMakeIntentFromServicesRequest(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(SBApplicationSceneEntityDestructionIntent);
  [(SBApplicationSceneEntityDestructionIntent *)v4 setShouldRemoveFromHistory:a2];
  if ((a1 - 1) <= 2)
  {
    [(SBApplicationSceneEntityDestructionIntent *)v4 setAnimation:?];
  }

  return v4;
}

__CFString *SBStringFromApplicationSceneEntityDestructionIntent(void *a1)
{
  v1 = [a1 animation];
  v2 = @"Delete";
  if (v1 == 1)
  {
    v2 = @"Commit";
  }

  if (v1 == 2)
  {
    return @"Decline";
  }

  else
  {
    return v2;
  }
}

void -[SBDeviceApplicationScreenTimeLockoutViewProvider _blockingViewControllerDismissedItself](SBDeviceApplicationScreenTimeLockoutViewProvider *self, SEL a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_isActive)
  {
    v3 = SBLogScreenTime();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
      v5 = [v4 application];
      v6 = [v5 bundleIdentifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "blocking view controller for app %{public}@ dismissed itself, deactivating overlay preemptively", &v7, 0xCu);
    }

    [(SBDeviceApplicationScreenTimeLockoutViewProvider *)self _deactivateIfPossibleRespectingAppBlockedState:0];
  }
}

void sub_21F1093A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F10A4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F10B43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F10B9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F10CEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F10D540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F10DA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F10EB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 72));
  objc_destroyWeak((v32 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v33 - 144));
  _Unwind_Resume(a1);
}

void sub_21F1104D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1109A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1111B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBPrepareLaunchSentinelIfNecessary()
{
  if (SBPrepareLaunchSentinelIfNecessary___once != -1)
  {
    SBPrepareLaunchSentinelIfNecessary_cold_1();
  }
}

void __SBPrepareLaunchSentinelIfNecessary_block_invoke()
{
  BYSetupAssistantPrepareLaunchSentinel();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = *MEMORY[0x277D4DA00];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, SBSetupAssistantUISessionNoLongerExclusiveNotification, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void SBSetupAssistantUISessionNoLongerExclusiveNotification()
{
  v0 = +[SBSetupManager sharedInstance];
  [v0 setInSetupModeReadyToExit:1];
}

void SBPrepareForSetupIfNecessary()
{
  if (SBPrepareLaunchSentinelIfNecessary___once != -1)
  {
    SBPrepareLaunchSentinelIfNecessary_cold_1();
  }

  v0 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v0 currentUser];

  v1 = [MEMORY[0x277D77BF8] sharedManager];
  if ([v1 isMultiUser])
  {
    v2 = [v3 isLoginUser];

    if ((v2 & 1) == 0)
    {
      kdebug_trace();
      BYSetupAssistantEnsureShortLivedTokenUpgrade();
      kdebug_trace();
    }
  }

  else
  {
  }
}

void SBSetupDeviceMigrationNotificationReceived()
{
  v0 = +[SBSetupManager sharedInstance];
  [v0 _toggleSetupForMigrationNeeded:1 forReason:@"notification from setup"];
}

void sub_21F115778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t NSStringFromSBPhysicalButtonResult(uint64_t a1)
{
  _UIPhysicalButtonStateFromSBPhysicalButtonResult(a1);

  return _NSStringFromUIPhysicalButtonState();
}

uint64_t _UIPhysicalButtonStateFromSBPhysicalButtonResult(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  if (a1 == 1)
  {
    return 3;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown button result: %lu>", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _UIPhysicalButtonStateFromSBPhysicalButtonResult_cold_1(v2);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void sub_21F118670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F118A10(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_21F118C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F118E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBDisplayItemSlideOverConfigurationMake@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  *(a5 + 32) = 0;
  *a5 = result;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a8;
  *(a5 + 32) = a2;
  *(a5 + 33) = a3;
  *(a5 + 34) = a4;
  return result;
}

__n128 SBDisplayItemSlideOverConfigurationNone@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  result = *MEMORY[0x277CBF3A8];
  *(a1 + 16) = *MEMORY[0x277CBF3A8];
  return result;
}

__n128 SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = 0;
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

BOOL SBEqualDisplayItemSlideOverConfigurations(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), v2 && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33)))
  {
    return *(a1 + 34) == *(a2 + 34);
  }

  else
  {
    return 0;
  }
}

__CFString *NSStringFromDisplayItemSlideOverCorner(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"slideover-corner-top-left";
  }

  else
  {
    return off_2783B4B30[a1 - 1];
  }
}

id NSStringFromDisplayItemSlideOverConfiguration(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *a1 - 1;
  if (v3 > 2)
  {
    v4 = @"slideover-corner-top-left";
  }

  else
  {
    v4 = off_2783B4B30[v3];
  }

  v5 = *(a1 + 8);
  v6 = NSStringFromCGSize(*(a1 + 16));
  v7 = v6;
  v8 = @"NO";
  if (*(a1 + 32))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (*(a1 + 33))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (*(a1 + 34))
  {
    v8 = @"YES";
  }

  v11 = [v2 stringWithFormat:@"%@ yOffsetFromCorner=%f size=%@ isActive=%@ isStashed=%@ dodgesDock=%@", v4, v5, v6, v9, v10, v8];

  return v11;
}

void sub_21F119CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F11E800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F120CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F121684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F121948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21F126928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F126BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21F126D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F126EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F127110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F12A77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F12B1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F12B660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F12C6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F12D314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F12D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F12E880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBStringForSceneSnapshotRequestSize(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"current";
  }

  else
  {
    return off_2783B51B0[a1 - 1];
  }
}

__CFString *SBStringForSceneSnapshotRequestOrientation(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"current";
  }

  else
  {
    return off_2783B51E0[a1 - 1];
  }
}

__CFString *SBStringForSceneSnapshotRequestUserInterfaceStyle(uint64_t a1)
{
  if (a1)
  {
    return @"both";
  }

  else
  {
    return @"current";
  }
}

void sub_21F1350D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1393A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

__CFString *SBWorkspaceEntityRemovalAnimationStyleDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2783B5278[a1 - 1];
  }
}

__CFString *SBWorkspaceEntityRemovalActionTypeDescription(uint64_t a1)
{
  v1 = @"preserve-containing-space";
  if (a1 == 2)
  {
    v1 = @"remove-containing-space";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"none";
  }
}

void SBKeyDoubleValueLog(void *a1, int a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%*s%@:%*s%.2f", (2 * a2) | 1u, " ", v5, 33 - (objc_msgSend(v5, "length") + 2 * a2), " ", *&a3];
    *buf = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "SBWPA%@", buf, 0xCu);
  }
}

void sub_21F13F4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBCameraPrewarmIntentDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized (%lu)", a1];
  }

  else
  {
    v2 = off_2783B52D8[a1];
  }

  return v2;
}

uint64_t SBCameraPrewarmIntentFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Suppress"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Prewarm"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PrewarmVisionIntelligence"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *SBCameraLaunchIntentDescription(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized (%lu)", a1];
  }

  else
  {
    v2 = off_2783B52F8[a1];
  }

  return v2;
}

uint64_t SBCameraLaunchIntentFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Abort"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Launch"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PendedDueToButtonDownWhileSuppressed"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"PendedDueToViewObstruction"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"LaunchVisionIntelligence"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *SBCameraWakeIntentDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized (%lu)", a1];
  }

  else
  {
    v2 = off_2783B5328[a1];
  }

  return v2;
}

uint64_t SBCameraWakeIntentFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Wake Screen"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Prevent Wake"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *SBCaptureButtonBehaviorIdentifierDescription(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized (%lu)", a1];
  }

  else
  {
    v2 = off_2783B5340[a1];
  }

  return v2;
}

uint64_t SBCaptureButtonBehaviorIdentifierFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Wake Screen"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"View Obstructed"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Device Stationary"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Console Mode"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Launch"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Camera Pose Launch"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Click Again"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *SBCameraCoachIntentDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized (%lu)", a1];
  }

  else
  {
    v2 = off_2783B5378[a1];
  }

  return v2;
}

uint64_t SBCameraCoachIntentFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Game mode"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Click again"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"None"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SBCaptureButtonEventFromLoggingEvent(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6840[a1 - 1];
  }
}

uint64_t SBCaptureButtonLoggingEventFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Button Down"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Button Up"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Long Press"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *SBCaptureButtonLoggingEventDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2783B5398[a1 - 1];
  }
}

uint64_t SBCaptureButtonLoggingEventFromContext(void *a1)
{
  v1 = a1;
  if ([v1 gesture] == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = [v1 event];
    if (v3 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = v3 == 1;
    }
  }

  return v2;
}

__CFString *SBCaptureButtonEventDescription(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Prepare";
  }

  if (a1 == 2)
  {
    return @"Activate";
  }

  else
  {
    return v1;
  }
}

uint64_t SBCaptureButtonEventFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Prepare"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Activate"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_21F145E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F145FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F149F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SBFindFirstViewController(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  v3 = [v2 bs_mapNoNulls:&__block_literal_global_146];

  v4 = MEMORY[0x277D75D28];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___SBFindFirstViewController_block_invoke_2;
  v8[3] = &unk_2783B5428;
  v9 = v1;
  v5 = v1;
  v6 = [v4 sb_firstDescendantOfViewControllers:v3 passingTest:v8];

  return v6;
}

id _SBFluidSwitcherTitledButtonContentImageWithTitle(void *a1)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setLineBreakMode:4];
  [v2 setAlignment:0];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D743F8]];
  v4 = *MEMORY[0x277D74118];
  v33[0] = *MEMORY[0x277D740A8];
  v33[1] = v4;
  v34[0] = v3;
  v34[1] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v1 sizeWithAttributes:v5];
  v7 = v6;
  v9 = v8;
  v31 = 0.0;
  v32 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  if (v3 && CTFontGetLanguageAwareOutsets())
  {
    v10 = v32;
    v11 = v31;
    if (v32 < v30)
    {
      v10 = v30;
    }

    if (v31 < v29)
    {
      v11 = v29;
    }

    v12 = v7 + v10 + v10;
    v13 = v9 + v11 + v11;
    v14 = v10 + 0.0;
    v15 = v11 + 0.0;
  }

  else
  {
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
    v13 = v9;
    v12 = v7;
  }

  v16 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v12, v13}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = ___SBFluidSwitcherTitledButtonContentImageWithTitle_block_invoke;
  v22[3] = &unk_2783B5558;
  v25 = v14;
  v26 = v15;
  v27 = v7;
  v28 = v9;
  v23 = v1;
  v24 = v5;
  v17 = v5;
  v18 = v1;
  v19 = [v16 imageWithActions:v22];
  v20 = [v19 imageWithAlignmentRectInsets:{v31, v32, v29, v30}];

  return v20;
}

void sub_21F1527C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F152CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F15356C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F154DC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

__CFString *SBStringFromScrollSwitcherModifierEventPhase(uint64_t a1)
{
  if (a1)
  {
    return @"EndScrolling";
  }

  else
  {
    return @"Scrolling";
  }
}

void sub_21F15A510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F15A76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1613AC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x450], 8);
  _Block_object_dispose(&STACK[0x480], 8);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Block_object_dispose(&STACK[0x4D0], 8);
  _Unwind_Resume(a1);
}

__CFString *SBDisplayItemAttributesSemanticSizeTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"None";
  }

  else
  {
    return off_2783B5790[a1 - 1];
  }
}

uint64_t _SBDisplayItemAttributedSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = a8;
  *(a2 + 48) = result;
  return result;
}

__n128 SBDisplayItemAttributedSizeUnspecified@<Q0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CBF3A0];
  *a1 = 0;
  *(a1 + 8) = 0;
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  return result;
}

uint64_t SBDisplayItemAttributedSizeInfer@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v14 = BSFloatEqualToFloat();
  result = BSFloatEqualToFloat();
  v16 = 3;
  if ((v14 & result) == 0)
  {
    v16 = 1;
  }

  if (!v14)
  {
    v16 = 2;
  }

  if ((v14 & 1) == 0 && (result & 1) == 0)
  {
    v17 = BSFloatEqualToFloat();
    result = BSFloatEqualToFloat();
    v16 = 4;
    if ((v17 & result) != 0)
    {
      v16 = 6;
    }

    if (!v17)
    {
      v16 = 5;
    }

    if ((v17 & 1) == 0 && (result & 1) == 0)
    {
      v18 = BSFloatEqualToFloat();
      result = BSFloatEqualToFloat();
      v16 = 7;
      if ((v18 & result) != 0)
      {
        v16 = 9;
      }

      v19 = 8;
      if (!result)
      {
        v19 = 0;
      }

      if (!v18)
      {
        v16 = v19;
      }
    }
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = v16;
  return result;
}

BOOL SBEqualDisplayItemAttributedSizes(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  result = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

BOOL SBDisplayItemAttributedSizeIsValid(uint64_t a1)
{
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v2 = BSFloatGreaterThanOrEqualToFloat();
  }

  else
  {
    v2 = 0;
  }

  if (CGRectIsEmpty(*(a1 + 16)) || CGRectIsNull(*(a1 + 16)))
  {
    v3 = 0;
    if (v2)
    {
      return *(a1 + 48) < 0xAuLL && v3;
    }

    return 0;
  }

  v3 = !CGRectIsInfinite(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return *(a1 + 48) < 0xAuLL && v3;
}

id SBDisplayItemAttributedSizeDescription(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = SBDisplayItemAttributesSemanticSizeTypeDescription(v2);
  }

  else
  {
    if (BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat())
    {
      v4 = vmulq_f64(*a1, *(a1 + 32));
    }

    else
    {
      v4 = *a1;
    }

    height = v4.height;
    v3 = NSStringFromCGSize(v4);
  }

  return v3;
}

uint64_t SBDisplayItemSizeIsUnspecified(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (v1[5])
    {
      goto LABEL_10;
    }

    if (*(v1 + 20) != *MEMORY[0x277CBF3A8] || *(v1 + 21) != *(MEMORY[0x277CBF3A8] + 8))
    {
      goto LABEL_10;
    }

    if (v1[26])
    {
      goto LABEL_10;
    }

    v7 = *(v1 + 6);
    *&v8 = v1[14];
    if (SBDisplayItemTileConfigurationIsValid(&v7))
    {
      goto LABEL_10;
    }

    v6 = *(v2 + 136);
    v7 = *(v2 + 120);
    v8 = v6;
    v9 = *(v2 + 19);
    goto LABEL_13;
  }

  v4 = 0;
  if (*MEMORY[0x277CBF3A8] == 0.0 && *(MEMORY[0x277CBF3A8] + 8) == 0.0)
  {
    v7 = 0uLL;
    *&v8 = 0;
    if (SBDisplayItemTileConfigurationIsValid(&v7))
    {
LABEL_10:
      v4 = 0;
      goto LABEL_11;
    }

    v9 = 0;
    v7 = 0u;
    v8 = 0u;
LABEL_13:
    v4 = SBDisplayItemSlideOverConfigurationIsValid(&v7) ^ 1;
  }

LABEL_11:

  return v4;
}

id SBDisplayItemDescendingInteractionTimeComparator(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SBDisplayItemDescendingInteractionTimeComparator_block_invoke;
  v5[3] = &unk_2783B5770;
  v6 = v1;
  v2 = v1;
  v3 = MEMORY[0x223D6F7F0](v5);

  return v3;
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return [v0 setObject:v1 forKey:?];
}

uint64_t OUTLINED_FUNCTION_17(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return [a1 _initWithContentOrientation:a3 lastInteractionTime:a4 sizingPolicy:a5 attributedSize:v19 - 96 tileConfiguration:v19 - 128 slideOverConfiguration:va normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
}

void sub_21F16B88C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_21F16B940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_21F16D894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBPBDisplayItemReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            v27 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_40:
          *(a1 + 24) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromSBHomeGestureFinalDestination(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2783B5938[a1];
  }
}

void sub_21F171EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21F172100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F172DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _SBADIStringCompareWithSet(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 isEqualToString:{v5, v20}];
          v15 = [v13 isEqualToString:v6];
          if (v14 & 1) != 0 || (v15)
          {
            v17 = -1;
            if (!v14)
            {
              v17 = 1;
            }

            if (v14 != v15)
            {
              v16 = v17;
            }

            else
            {
              v16 = 0;
            }

            goto LABEL_26;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  if (v5 && v6)
  {
    v16 = 0;
  }

  else
  {
    v18 = -1;
    if (v5)
    {
      v18 = 1;
    }

    if ((v5 == 0) != (v6 == 0))
    {
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_26:

  return v16;
}

uint64_t _SBADIStringCompare(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEB70];
  v6 = a2;
  v7 = a1;
  if (a3)
  {
    [v5 orderedSetWithObject:a3];
  }

  else
  {
    [v5 orderedSet];
  }
  v8 = ;
  v9 = _SBADIStringCompareWithSet(v7, v6, v8);

  return v9;
}

void sub_21F1753C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F17980C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(uint64_t a1, double a2, double a3)
{
  if (fabs(a2) > 6.28318531)
  {
    _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection_cold_1();
  }

  if (fabs(a3) > 6.28318531)
  {
    _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection_cold_2();
  }

  v6 = a3 - a2;
  if (a1 == 2)
  {
      ;
    }
  }

  else if (a1 == 1)
  {
    while (v6 < 0.0)
    {
      v6 = v6 + 6.28318531;
    }
  }
}

uint64_t _UIInterfaceOrientationRotationDirectionForRotationFromInterfaceOrientationToInterfaceOrientation(uint64_t a1, uint64_t a2, int a3)
{
  if ((a1 - 3) < 2 != (a2 - 3) < 2)
  {
    v3 = 0.0;
    v4 = 0.0;
    if (a1 != 1)
    {
      switch(a1)
      {
        case 3:
          v4 = 1.57079633;
          break;
        case 4:
          v4 = -1.57079633;
          break;
        case 2:
          v4 = 3.14159265;
          break;
        default:
          v4 = 0.0;
          break;
      }
    }

    if (a2 != 1)
    {
      switch(a2)
      {
        case 3:
          v3 = 1.57079633;
          break;
        case 4:
          v3 = -1.57079633;
          break;
        case 2:
          v3 = 3.14159265;
          break;
        default:
          v3 = 0.0;
          break;
      }
    }

    _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(1, v4, v3);
    v7 = v6;
    _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(2, v4, v3);
    if (fabs(v7) < fabs(v8))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t _UIInterfaceOrientationFromCATransform3D(_OWORD *a1)
{
  if (_UIInterfaceOrientationFromCATransform3D_onceToken != -1)
  {
    _UIInterfaceOrientationFromCATransform3D_cold_1();
  }

  v2 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v2;
  v3 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v3;
  v4 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v4;
  v5 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v5;
  if (!MEMORY[0x223D6B680](&a))
  {
    return 0;
  }

  v6 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v6;
  v7 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v7;
  v8 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v8;
  v9 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v9;
  v23 = *_UIInterfaceOrientationFromCATransform3D_canonicalPortraitTransform;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 1;
  }

  v11 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v11;
  v12 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v12;
  v13 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v13;
  v14 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v14;
  v23 = *_UIInterfaceOrientationFromCATransform3D_canonicalLandscapeLeftTransform;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 4;
  }

  v15 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v15;
  v16 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v16;
  v17 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v17;
  v18 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v18;
  v23 = *_UIInterfaceOrientationFromCATransform3D_canonicalLandscapeRightTransform;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 3;
  }

  v19 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v19;
  v20 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v20;
  v21 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v21;
  v22 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v22;
  v23 = *_UIInterfaceOrientationFromCATransform3D_canonicalPortraitUpsideDownTransform;
  if (CATransform3DEqualToTransform(&a, &v23))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void _UIMakeBasicTransformAnimationUnambiguous(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a2 && a3)
  {
    v9 = a1;
    v10 = _UIInterfaceOrientationRotationDirectionForRotationFromInterfaceOrientationToInterfaceOrientation(a2, a3, a4 | a5);
    v11 = 0.0;
    v12 = 0.0;
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        v12 = 1.57079633;
      }

      else if (a2 == 4)
      {
        v12 = -1.57079633;
      }

      else
      {
        v12 = 3.14159265;
        if (a2 != 2)
        {
          v12 = 0.0;
        }
      }
    }

    if (a3 != 1)
    {
      switch(a3)
      {
        case 3:
          v11 = 1.57079633;
          break;
        case 4:
          v11 = -1.57079633;
          break;
        case 2:
          v11 = 3.14159265;
          break;
        default:
          v11 = 0.0;
          break;
      }
    }

    _UIAngleInRadiansForRotationBetweenAngleAndAngleInDirection(v10, v12, v11);
    if (a5)
    {
      v14 = -v13;
    }

    else
    {
      v14 = v13;
    }

    [v9 setFromValue:0];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    [v9 setByValue:v15];

    v16 = MEMORY[0x277CCABB0];
    v17 = [v9 isAdditive];
    v18 = 0.0;
    if (!v17)
    {
      v18 = v11;
    }

    v19 = [v16 numberWithDouble:v18];
    [v9 setToValue:v19];

    v20 = [MEMORY[0x277CDA008] functionWithName:*MEMORY[0x277CDA998]];
    [v9 setValueFunction:v20];
  }
}

void sub_21F187468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double *indexingAscendingLUT(double *result, uint64_t a2, double a3)
{
  if (!a2)
  {
    indexingAscendingLUT_cold_2();
  }

  v4 = result;
  if (*result < a3 && result[a2 - 1] > a3 && a2 != 1)
  {
    for (i = 0; ; ++i)
    {
      v6 = v4[1];
      if (v6 > a3)
      {
        break;
      }

      ++v4;
      v7 = i + 2;
      if (v7 > a2 - 1)
      {
        return result;
      }
    }

    v8 = v6 - *v4;
    result = BSCGFloatEpsilon();
    if (v8 <= v9)
    {
      indexingAscendingLUT_cold_1();
    }
  }

  return result;
}

double resampleLinearInterpolation(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 < 0.0)
  {
    return *a1;
  }

  if ((a2 - 1) <= a3)
  {
    return *(a1 + 8 * (a2 - 1));
  }

  v4 = a3;
  v5 = vcvtms_u32_f32(v4);
  return (1.0 - (v5 + 1.0 - a3)) * *(a1 + 8 * v5 + 8) + *(a1 + 8 * v5) * (v5 + 1.0 - a3);
}

__CFString *SBStringFromSystemApertureKeyLineStyle(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"Alert";
  }

  if (a1 == 2)
  {
    return @"Activity";
  }

  else
  {
    return v1;
  }
}

__CFString *SBStringFromSystemApertureKeyLineMode(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"Light - Enabled";
  }

  if (a1 == 2)
  {
    return @"Dark - Enabled";
  }

  else
  {
    return v1;
  }
}

__CFString *SBStringFromSystemApertureShadowStyle(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Inert";
  }

  else
  {
    return off_2783B5CF8[a1 - 1];
  }
}

void sub_21F18A7B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21F18C548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F18E2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F190880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F192CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

SBDisplayItemLayoutAttributes *_SBEmptyLayoutAttributes()
{
  v0 = objc_alloc_init(SBDisplayItemLayoutAttributes);

  return v0;
}

void sub_21F1947AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromUIUserInterfaceActiveAppearance(uint64_t a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid:%d>", a1];
  }

  else
  {
    v2 = off_2783B5F28[a1 + 1];
  }

  return v2;
}

void sub_21F198428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F19A25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1A2694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1A4E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBWallpaperOrientationSourceDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_2783B6388[a1];
  }
}

void sub_21F1A85B4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21F1B0958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1B0F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1B185C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_21F1B1D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21F1B38E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1B3B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1B3F3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_21F1B55EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1B5B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1B97E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1BB270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1BDC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1C14D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C3FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C4DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C4F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C5294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C5664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C5B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C6524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C8D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1C99C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBZStackForegroundSceneResolution(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"didChange";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid:%X>", a1];
    }
  }

  else
  {
    v2 = @"unchanged";
  }

  return v2;
}

void sub_21F1CC138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 96), 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBHardwareButtonHintDropletKeylineStyle(uint64_t a1)
{
  v1 = @"AdaptiveMatrix";
  if (a1 == 1)
  {
    v1 = @"GlowEffectStageSoftEdge";
  }

  if (a1 == 2)
  {
    return @"GlowEffectStageHardEdge";
  }

  else
  {
    return v1;
  }
}

void sub_21F1CEB48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v2 - 184), 8);
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSBHomeGrabberViewPresence(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_2783B6968[a1];
  }

  return v2;
}

void sub_21F1D2584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1D31EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1D3538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1D5418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1D6DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1D8258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1DA324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1DBBF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *SBStringFromPIPLayoutTrait(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 7)
    {
      v2 = @"All";
    }

    else
    {
      v3 = [MEMORY[0x277CCAB68] string];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v10 = __SBStringFromPIPLayoutTrait_block_invoke;
      v11 = &unk_2783A95A0;
      v2 = v3;
      v12 = v2;
      v4 = v9;
      v5 = 0;
      v13 = 0;
      v6 = vcnt_s8(a1);
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.i32[0];
      do
      {
        if (((1 << v5) & a1) != 0)
        {
          (v10)(v4);
          if (v13)
          {
            break;
          }

          --v7;
        }

        if (v5 > 0x3E)
        {
          break;
        }

        ++v5;
      }

      while (v7 > 0);
    }
  }

  else
  {
    v2 = @"None";
  }

  return v2;
}

uint64_t __SBStringFromPIPLayoutTrait_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) length];
  if (result)
  {
    result = [*(a1 + 32) appendString:@"+"];
  }

  switch(a2)
  {
    case 1:
      v5 = @"Position";
      break;
    case 2:
      v5 = @"Size";
      break;
    case 4:
      v5 = @"Rotation";
      break;
    default:
      return result;
  }

  v6 = *(a1 + 32);

  return [v6 appendString:v5];
}

__CFString *SBStringFromPIPLayoutReason(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1920)
    {
      v2 = @"All Gestures";
    }

    else
    {
      v3 = [MEMORY[0x277CCAB68] string];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v10 = __SBStringFromPIPLayoutReason_block_invoke;
      v11 = &unk_2783A95A0;
      v2 = v3;
      v12 = v2;
      v4 = v9;
      v5 = 0;
      v13 = 0;
      v6 = vcnt_s8(a1);
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.i32[0];
      do
      {
        if (((1 << v5) & a1) != 0)
        {
          (v10)(v4);
          if (v13)
          {
            break;
          }

          --v7;
        }

        if (v5 > 0x3E)
        {
          break;
        }

        ++v5;
      }

      while (v7 > 0);
    }
  }

  else
  {
    v2 = @"Undefined";
  }

  return v2;
}

uint64_t __SBStringFromPIPLayoutReason_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) length];
  if (result)
  {
    result = [*(a1 + 32) appendString:@"+"];
  }

  if (a2 > 511)
  {
    if (a2 > 4095)
    {
      if (a2 >= 0x4000)
      {
        if (a2 == 0x4000)
        {
          v5 = @"RegionComposerUpdate";
        }

        else
        {
          if (a2 != 0x8000)
          {
            return result;
          }

          v5 = @"OverlayViewSetup";
        }
      }

      else if (a2 == 4096)
      {
        v5 = @"UpdateMetrics";
      }

      else
      {
        if (a2 != 0x2000)
        {
          return result;
        }

        v5 = @"UpdateRegions";
      }
    }

    else if (a2 > 1919)
    {
      if (a2 == 1920)
      {
        v5 = @"AllGestures";
      }

      else
      {
        if (a2 != 2048)
        {
          return result;
        }

        v5 = @"StashedTabHandle";
      }
    }

    else if (a2 == 512)
    {
      v5 = @"RotationGesture";
    }

    else
    {
      if (a2 != 1024)
      {
        return result;
      }

      v5 = @"InteractionEnded";
    }
  }

  else if (a2 > 15)
  {
    if (a2 > 127)
    {
      if (a2 == 128)
      {
        v5 = @"PanGesture";
      }

      else
      {
        if (a2 != 256)
        {
          return result;
        }

        v5 = @"ResizeGesture";
      }
    }

    else if (a2 == 16)
    {
      v5 = @"PreferredScale";
    }

    else
    {
      if (a2 != 32)
      {
        return result;
      }

      v5 = @"UpdateStashState";
    }
  }

  else if (a2 > 3)
  {
    if (a2 == 4)
    {
      v5 = @"EdgeInsets";
    }

    else
    {
      if (a2 != 8)
      {
        return result;
      }

      v5 = @"PreferredContentSize";
    }
  }

  else if (a2 == 1)
  {
    v5 = @"InitialLayout";
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    v5 = @"ContainerSize";
  }

  v6 = *(a1 + 32);

  return [v6 appendString:v5];
}

void sub_21F1DF4C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21F1E2C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21F1E4A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 88));
  _Unwind_Resume(a1);
}

void sub_21F1E4D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_21F1E52C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1E6070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_21F1E9ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1EA60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1EA7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1EA994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1EAB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1EACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1EB298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21F1EB438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}