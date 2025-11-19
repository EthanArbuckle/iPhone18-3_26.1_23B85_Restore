void sub_1B22C4048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MemoryEnumeratePublicKeys(uint64_t a1, void *a2)
{
  v3 = a2;
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v4 = *(a1 + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __MemoryEnumeratePublicKeys_block_invoke;
    v5[3] = &unk_1E7B191E8;
    v7 = a1;
    v6 = v3;
    CFDictionaryApplyFunction(v4, apply_block_2_2, v5);
  }
}

uint64_t MemoryRepairCurrentIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return (*(a4 + 16))(a4, 1, 0);
  }

  return result;
}

void __MemoryCopyOrderedIdentities_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  ServiceName = PCSIdentityGetServiceName(a3);
  v6 = *(a1 + 48);
  if (ServiceName && v6)
  {
    if (!CFEqual(ServiceName, v6))
    {
      return;
    }
  }

  else if (ServiceName != v6)
  {
    return;
  }

  if (!CFEqual(a3, [*(a1 + 32) identity]) && _PCSIdentityValidate(a3, (*(*(a1 + 40) + 8) + 24), 0) && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v7 = *(a1 + 56);

    CFArrayAppendValue(v7, a3);
  }
}

uint64_t __MemoryEnumeratePublicKeys_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 32);
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      result = PCSIdentityGetServiceName(a3);
      v8 = *(*(a1 + 40) + 32);
      if (result && v8)
      {
        result = CFEqual(result, v8);
        if (!result)
        {
          return result;
        }
      }

      else if (result != v8)
      {
        return result;
      }
    }
  }

  v9 = *(*(a1 + 32) + 16);

  return v9();
}

CFArrayRef KeychainCopyOrderedIdentities(uint64_t a1, __CFString *a2)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v12 = Mutable;
  if (!Mutable)
  {
    Copy = 0;
    v15 = 0;
    goto LABEL_20;
  }

  if (a2)
  {
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(Mutable, v5, v6, v7, v8, v9, v10, v11, kPCSSetupService[0], a2);
    if (!MutableForCFTypesWith)
    {
      Copy = 0;
      v15 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    MutableForCFTypesWith = 0;
  }

  v16 = KeychainCopyCurrentIdentity(a1, a2, 0);
  v15 = v16;
  if (v16 && (v17 = [v16 identity], (v18 = v17) != 0))
  {
    CFRetain(v17);
    v19 = KeychainCopyIdentities();
    if (v19)
    {
      if (_PCSIdentityValidate(v18, v24 + 24, 0) && (v24[3] & 1) == 0)
      {
        CFArrayAppendValue(v12, v18);
      }

      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __KeychainCopyOrderedIdentities_block_invoke;
      context[3] = &unk_1E7B19020;
      context[4] = &v23;
      context[5] = v18;
      context[6] = v12;
      CFDictionaryApplyFunction(v19, apply_block_2_2, context);
      Count = CFArrayGetCount(v12);
      if (Count >= 2)
      {
        v27.length = Count - 1;
        v27.location = 1;
        CFArraySortValues(v12, v27, _PCSIdentityComparePublicKey, 0);
      }

      Copy = CFArrayCreateCopy(0, v12);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v18);
    if (v19)
    {
      CFRelease(v19);
    }

    if (!MutableForCFTypesWith)
    {
      goto LABEL_19;
    }
  }

  else
  {
    Copy = 0;
    if (!MutableForCFTypesWith)
    {
      goto LABEL_19;
    }
  }

  CFRelease(MutableForCFTypesWith);
LABEL_19:
  CFRelease(v12);
LABEL_20:
  _Block_object_dispose(&v23, 8);

  return Copy;
}

void sub_1B22C4658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void KeychainRepairCurrentIdentity(const void *a1, void *a2, const void *a3, void *a4)
{
  v7 = a4;
  if (PCSServiceItemTypeIsManatee(a2))
  {
    if (v7)
    {
      v7[2](v7, 1, 0);
    }
  }

  else
  {
    CFRetain(a1);
    CFRetain(a2);
    CFRetain(a3);
    v8 = dispatch_get_global_queue(21, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __KeychainRepairCurrentIdentity_block_invoke;
    v9[3] = &unk_1E7B192F8;
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v10 = v7;
    dispatch_async(v8, v9);
  }
}

uint64_t KeychainIsICDPNetwork(uint64_t a1, const __CFDictionary *a2, const void **a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  SecurityDomainStatus = KeychainGetSecurityDomainStatus(a1, kPCSiCloudServiceMarkerName[0], &v21, a3, a5, a6, a7, a8);
  v12 = 0;
  if ((SecurityDomainStatus & 1) == 0 && v21 == -25300)
  {
    if (a2 && (v13 = CFGetTypeID(a2), v13 == CFDictionaryGetTypeID()))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v12 = MutableCopy;
    if (!CFDictionaryGetValue(MutableCopy, kPCSSetupDSID[0]) && *(a1 + 40))
    {
      if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) == 0)
      {
        if (a3)
        {
          v18 = MEMORY[0x1E696ABC0];
          v19 = kPCSErrorDomain;
          v24 = *MEMORY[0x1E696A578];
          v25[0] = @"Current persona does not match chosen dsid";
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
          *a3 = [v18 errorWithDomain:v19 code:152 userInfo:v20];
        }

        SecurityDomainStatus = 0;
        if (v12)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      CFDictionarySetValue(v12, kPCSSetupDSID[0], *(a1 + 40));
    }

    v15 = __PCSCopyStingrayInfo(0, 0, v12, a3);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v15)
    {
      SecurityDomainStatus = _PCSIsiCDPEnabled(v15, 1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v23 = SecurityDomainStatus;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PCSIsiCDPEnabled: status: %d", buf, 8u);
      }

      v12 = v15;
    }

    else
    {
      v12 = 0;
      SecurityDomainStatus = 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = SecurityDomainStatus;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "KeychainIsICDPNetwork: status: %d", buf, 8u);
  }

  if (v12)
  {
LABEL_17:
    CFRelease(v12);
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return SecurityDomainStatus;
}

uint64_t KeychainSetICDP(uint64_t a1, int a2, CFErrorRef *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = _PCSIdentitySetGetAltDSIDorPCSAccountsModel(a1);
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E697AA88]);
    [v7 setAltDSID:v6];
    v13 = 0;
    v8 = [MEMORY[0x1E697AA80] setCDPEnabled:v7 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "setting Octagon CDP failed: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to determine altDSID, not setting Octagon CDP", buf, 2u);
  }

  v10 = KeychainSetSecurityDomainStatus(a1, kPCSiCloudServiceMarkerName[0], a2, a3);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t KeychainIsPlesio(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v15 = 0;
  if (KeychainGetSecurityDomainStatus(a1, kPCSPlesioMarkerNewName[0], &v15, a2, a5, a6, a7, a8))
  {
    return 1;
  }

  else
  {
    return KeychainGetSecurityDomainStatus(a1, kPCSPlesioMarkerName[0], &v15, a2, v10, v11, v12, v13);
  }
}

uint64_t KeychainSetPlesio(uint64_t a1, int a2, CFErrorRef *a3)
{
  KeychainSetSecurityDomainStatus(a1, kPCSPlesioMarkerName[0], a2, a3);
  v6 = kPCSPlesioMarkerNewName[0];

  return KeychainSetSecurityDomainStatus(a1, v6, a2, a3);
}

uint64_t KeychainIsWalrus(uint64_t a1, uint64_t a2, const void **a3)
{
  if (KeychainIsWalrus_once != -1)
  {
    KeychainIsWalrus_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  if (objc_opt_class())
  {
    v7 = _PCSIdentitySetGetAltDSIDorPCSAccountsModel(a1);
    v8 = v7;
    if (v7)
    {
      if ((a2 & 1) == 0)
      {
        v9 = KeychainIsWalrus_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __KeychainIsWalrus_block_invoke_196;
        block[3] = &unk_1E7B18DE8;
        v26 = &v27;
        v25 = v7;
        dispatch_sync(v9, block);
        v10 = v28[5];
        if (v10)
        {
          v11 = [v10 walrus];
          v12 = [v11 enabled];

          v13 = 0;
          v14 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      v14 = objc_alloc_init(MEMORY[0x1E697AA88]);
      [v14 setAltDSID:v8];
      [v14 setContext:*MEMORY[0x1E697AAD0]];
      v23 = 0;
      v15 = [MEMORY[0x1E697AA80] fetchAccountWideSettingsDefaultWithForceFetch:a2 configuration:v14 error:&v23];
      v13 = v23;
      v16 = v28[5];
      v28[5] = v15;

      if (v28[5])
      {
        v17 = KeychainIsWalrus_queue;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __KeychainIsWalrus_block_invoke_2_197;
        v20[3] = &unk_1E7B18DC0;
        v21 = v8;
        v22 = &v27;
        dispatch_barrier_async(v17, v20);
        v18 = [v28[5] walrus];
        v12 = [v18 enabled];
      }

      else
      {
        v12 = 0;
        if (a3 && v13)
        {
          v13 = v13;
          v12 = 0;
          *a3 = v13;
        }
      }

      goto LABEL_16;
    }

    _PCSError(a3, 90, @"altDSID not available");
    v13 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  _PCSError(a3, 15, @"OctagonTrust not available");
  v13 = 0;
  v14 = 0;
  v12 = 0;
LABEL_17:
  _Block_object_dispose(&v27, 8);

  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t KeychainSetWalrus(uint64_t a1, uint64_t a2, const void **a3)
{
  if (objc_opt_class())
  {
    v6 = _PCSIdentitySetGetAltDSIDorPCSAccountsModel(a1);
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E697AA88]);
      [v7 setAltDSID:v6];
      [v7 setContext:*MEMORY[0x1E697AAD0]];
      v8 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v7];
      v9 = objc_alloc_init(MEMORY[0x1E69B7CC8]);
      v10 = objc_alloc_init(MEMORY[0x1E69B7CE8]);
      [v9 setWalrus:v10];

      v11 = [v9 walrus];
      [v11 setEnabled:a2];

      v16 = 0;
      v12 = [v8 setAccountSetting:v9 error:&v16];
      v13 = v16;
      v14 = v13;
      if (a3 && (v12 & 1) == 0)
      {
        v14 = v13;
        v12 = 0;
        *a3 = v14;
      }
    }

    else
    {
      _PCSError(a3, 90, @"altDSID not available");
      v14 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v12 = 0;
    }
  }

  else
  {
    _PCSError(a3, 15, @"OctagonTrust not available");
    return 0;
  }

  return v12;
}

void CopyValueValue(const __CFDictionary *a1, __CFDictionary *a2, void *key)
{
  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {

    CFDictionarySetValue(a2, key, Value);
  }
}

CFIndex __KeychainCopyCurrentIdentity_block_invoke_136(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 24);
  if (v3)
  {
    *(v2 + 24) = 0;
    CFRelease(v3);
    v2 = *(*(a1 + 40) + 8);
  }

  return _PCSError((v2 + 24), 27, @"identity timed out fetching from local store");
}

CFComparisonResult IdentityAttributesCompare(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x1E697ACD0];
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697ACD0]);
  v6 = CFDictionaryGetValue(a2, v4);
  if (!Value || ((v7 = v6, v8 = CFGetTypeID(Value), v8 == CFDateGetTypeID()) ? (v9 = v7 == 0) : (v9 = 1), v9 || (v10 = CFGetTypeID(v7), v10 != CFDateGetTypeID()) || (result = CFDateCompare(Value, v7, 0)) == kCFCompareEqualTo))
  {
    v12 = *MEMORY[0x1E697AC30];
    v13 = CFDictionaryGetValue(a1, *MEMORY[0x1E697AC30]);
    v14 = CFDictionaryGetValue(a2, v12);
    if (v13 && ((v15 = v14, v16 = CFGetTypeID(v13), v16 == CFStringGetTypeID()) ? (v17 = v15 == 0) : (v17 = 1), !v17 && (v18 = CFGetTypeID(v15), v18 == CFStringGetTypeID())))
    {

      return CFStringCompare(v13, v15, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void processQuery(uint64_t a1, void *a2)
{
  v3 = a2;
  cf = 0;
  v4 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  LODWORD(a1) = _PCSKeychainForwardTable(a1, &cf);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v4;
  if (a1)
  {
    goto LABEL_2;
  }

  if (!cf)
  {
    goto LABEL_10;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFArrayGetTypeID() && CFArrayGetCount(cf))
  {
    v7 = cf;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __processQuery_block_invoke;
    v9[3] = &unk_1E7B192A8;
    v10 = v3;
    v12.length = CFArrayGetCount(v7);
    v12.location = 0;
    CFArrayApplyFunction(v7, v12, apply_block_1_1, v9);
    v8 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v8);
    }
  }

  else
  {
LABEL_2:
    v5 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v5);
    }
  }

LABEL_10:
}

void __processQuery_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v11 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E697B3C0]);
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFDataGetTypeID())
    {
      v6 = PCSIdentityCreateWithKeychainAttributes(theDict);
      if (v6)
      {
        v7 = v6;
        UpdateCKKSIdentity(v6, theDict);
        (*(*(a1 + 32) + 16))();
        CFRelease(v7);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to parse identity from keychain: %@", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __KeychainCopyIdentities_block_invoke(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 32);
  PublicKey = PCSIdentityGetPublicKey(a2);

  CFDictionarySetValue(v3, PublicKey, a2);
}

void __KeychainCopyOrderedIdentities_block_invoke(void *a1, int a2, CFTypeRef cf2)
{
  v5 = a1[5];
  if (cf2 && v5)
  {
    if (CFEqual(v5, cf2))
    {
      return;
    }
  }

  else if (v5 == cf2)
  {
    return;
  }

  if (_PCSIdentityValidate(cf2, (*(a1[4] + 8) + 24), 0) && (*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v6 = a1[6];

    CFArrayAppendValue(v6, cf2);
  }
}

void __KeychainIsWalrus_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.ProtectedCloudStorage.OTAccountSettings", v0);
  v2 = KeychainIsWalrus_queue;
  KeychainIsWalrus_queue = v1;

  v3 = notify_register_dispatch("_CDPWalrusStateChangeDarwinNotification", &KeychainIsWalrus_cdpStateToken, KeychainIsWalrus_queue, &__block_literal_global_186);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = v4;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "notify_register_dispatch failed: %u", &v8, 8u);
    }
  }

  v5 = notify_register_dispatch("com.apple.security.octagon.peer-changed", &KeychainIsWalrus_peerChangeToken, KeychainIsWalrus_queue, &__block_literal_global_186);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = v6;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "notify_register_dispatch failed: %u", &v8, 8u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __KeychainIsWalrus_block_invoke_2()
{
  v0 = KeychainIsWalrus_cachedSettings;
  KeychainIsWalrus_cachedSettings = 0;
}

uint64_t __KeychainIsWalrus_block_invoke_196(uint64_t a1)
{
  v2 = [KeychainIsWalrus_cachedSettings objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __KeychainIsWalrus_block_invoke_2_197(uint64_t a1)
{
  v2 = KeychainIsWalrus_cachedSettings;
  if (!KeychainIsWalrus_cachedSettings)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = KeychainIsWalrus_cachedSettings;
    KeychainIsWalrus_cachedSettings = v3;

    v2 = KeychainIsWalrus_cachedSettings;
  }

  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 setObject:v6 forKeyedSubscript:v5];
}

uint64_t OUTLINED_FUNCTION_5_1(uint64_t result)
{
  *(v3 + 56) += result - v2;
  v4 = *v1;
  return result;
}

CFNumberRef OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(0, kCFNumberIntType, a3);
}

void OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, void *a3)
{

  CopyValueValue(v3, v4, a3);
}

uint64_t MobileBackupLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!MobileBackupLibraryCore_frameworkLibrary)
  {
    MobileBackupLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = MobileBackupLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileBackupLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileBackupLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getMBManagerClass_block_invoke(uint64_t a1)
{
  if (!MobileBackupLibraryCore())
  {
    v2 = abort_report_np();
    free(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MBManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMBManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMBManagerClass_block_invoke_cold_1();
    [(PCSMigrationState *)v3 clearMetadata];
  }
}

id LocalStorageCreatePath(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [v8 initWithFormat:@"%@/%@-%@.%@", v7, kPCSServiceName[0], a1, v6];

  return v9;
}

uint64_t PCSIdentityMigrateToiCDP(void *a1, void *a2)
{
  v7 = 0;
  v3 = PCSAccountMigrateToiCDP(0, a1, &v7);
  v4 = v7;
  v5 = v4;
  if (a2 && v4)
  {
    *a2 = v4;
  }

  return v3;
}

uint64_t _PCSIdentityMigrateEnableWalrus(const void *a1, const void **a2)
{
  v4 = os_transaction_create();
  v5 = +[PCSLockManager manager];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.protectedcloudstorage.migrateenablewalrus"];
  v7 = [v5 lockAssertion:v6];

  if ([v7 holdAssertion])
  {
    v8 = PCSIdentityMigrateEngineExecute(&migrateEnableWalrus, @"MigrateEnableWalrus", a1, a2);
    [v7 dropAssertion];
  }

  else
  {
    PCSMigrationLog(0, @"Failed to get lock assertion, failing migration step");
    _PCSError(a2, 151, @"Failed to get lock assertion");
    v8 = 0;
  }

  return v8;
}

uint64_t _PCSIdentityMigrateDisableWalrus(const void *a1, const void **a2)
{
  v4 = os_transaction_create();
  v5 = +[PCSLockManager manager];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.protectedcloudstorage.migratedisablewalrus"];
  v7 = [v5 lockAssertion:v6];

  if ([v7 holdAssertion])
  {
    v8 = PCSIdentityMigrateEngineExecute(&migrateDisableWalrus, @"MigrateDisableWalrus", a1, a2);
    [v7 dropAssertion];
  }

  else
  {
    PCSMigrationLog(0, @"Failed to get lock assertion, failing migration step");
    _PCSError(a2, 151, @"Failed to get lock assertion");
    v8 = 0;
  }

  return v8;
}

BOOL PCSIdentityHaveiCloudIdentityLocally(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:kPCSSetupDSIDAny[0]] & 1) == 0 && PCSCurrentPersonaMatchesDSID(v4))
  {
    v10 = __PCSCopyFromiCloudKeychain(a1, v4, 0, v5, v6, v7, v8, v9);
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL PCSIdentityiCDPSignOut(const void *a1, const void **a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a1)
  {
    __PCSDeleteFromKeychainICDP(a1, 0, a3, a4, a5, a6, a7, a8);
    __PCSDeleteKeyfile(a1, 0);
  }

  else
  {
    _PCSError(a2, 121, @"iCDPSignOut missing DSID");
  }

  return a1 != 0;
}

uint64_t __PCSDeleteKeyfile(const void *a1, const void **a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 != CFStringGetTypeID())
    {
      __PCSDeleteKeyfile_cold_1(a2);
      result = 0;
      goto LABEL_34;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v55[0] = @"backup";
    v55[1] = @"witness";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v6 = [v5 countByEnumeratingWithState:&v41 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v42;
      do
      {
        v9 = 0;
        do
        {
          if (*v42 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = LocalStorageCreatePath(a1, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", *(*(&v41 + 1) + 8 * v9));
          v11 = [MEMORY[0x1E696AC08] defaultManager];
          [v11 removeItemAtPath:v10 error:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v41 objects:v56 count:16];
      }

      while (v7);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v53 = @"messages";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v54 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        v16 = 0;
        do
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = LocalStorageCreatePath(a1, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", *(*(&v37 + 1) + 8 * v16));
          v18 = [MEMORY[0x1E696AC08] defaultManager];
          [v18 removeItemAtPath:v17 error:0];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v37 objects:v54 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v58[0] = @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup";
    v58[1] = @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup";
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
    v19 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v19)
    {
      v20 = v19;
      v36 = *v50;
      do
      {
        v21 = 0;
        do
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v49 + 1) + 8 * v21);
          v23 = [MEMORY[0x1E696AC08] defaultManager];
          v24 = [v23 contentsOfDirectoryAtPath:v22 error:0];

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v25 = v24;
          v26 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v46;
            do
            {
              v29 = 0;
              do
              {
                if (*v46 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v45 + 1) + 8 * v29);
                v31 = [MEMORY[0x1E696AC08] defaultManager];
                v32 = [@"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup" stringByAppendingPathComponent:v30];
                [v31 removeItemAtPath:v32 error:0];

                ++v29;
              }

              while (v27 != v29);
              v27 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
            }

            while (v27);
          }

          ++v21;
        }

        while (v21 != v20);
        v20 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v20);
    }
  }

  result = 1;
LABEL_34:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCSEngineLogStatus(void *a1)
{
  v1 = a1;
  cf = 0;
  v2 = PCSIdentitySetCreate([v1 options], 0, &cf);
  v3 = v2;
  if (v2)
  {
    v4 = _PCSIdentitySetCopyCurrentIdentityInternal(v2, kPCSServiceMaster, &cf);
    v5 = [v1 log];
    if (v4)
    {
      PCSMigrationLog(v5, @"Master identity: %@", v4);
    }

    else
    {
      PCSMigrationLog(v5, @"Failed getting master key: %@", cf);
      v8 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v8);
      }
    }

    IsICDP = PCSIdentitySetIsICDP(v3, &cf);
    v10 = cf;
    v11 = [v1 log];
    if (v10)
    {
      PCSMigrationLog(v11, @"Failed getting iCDPState: %@", cf);
    }

    else
    {
      PCSMigrationLog(v11, @"Local iCDP status is %d", IsICDP);
    }
  }

  else
  {
    v6 = [v1 log];
    PCSMigrationLog(v6, @"No local credential store: %@", cf);
    v7 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v7);
    }

    v4 = 0;
  }

  v12 = PCSCopyPIIClearedOptions([v1 options]);
  PCSMigrationLog([v1 log], @"PCS%@ options: %@", objc_msgSend(v1, "type"), v12);
  v13 = [MEMORY[0x1E69DF068] sharedManager];
  v14 = [v13 currentPersona];

  v15 = [v1 log];
  v16 = [v14 userPersonaUniqueString];
  PCSMigrationLog(v15, @"Current persona: %@", v16);

  if (v12)
  {
    CFRelease(v12);
  }

  v17 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v17);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 1;
}

uint64_t PCSEnginePreCheckKeychain(void *a1, const void **a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupStingray[0]);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && !CFBooleanGetValue(v6))
    {
      v13 = 1;
      goto LABEL_11;
    }
  }

  v8 = [v3 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupDSID[0]);
  if (!v9 || (v10 = v9, v11 = CFGetTypeID(v9), v11 != CFStringGetTypeID()))
  {
    PCSEnginePreCheckKeychain_cold_1(v3, a2);
    goto LABEL_9;
  }

  v12 = PCSCurrentPersonaMatchesDSID(v10);
  v13 = 1;
  if (a2 && !v12)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = kPCSErrorDomain;
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"Current persona does not match chosen dsid";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a2 = [v14 errorWithDomain:v15 code:152 userInfo:v16];

LABEL_9:
    v13 = 0;
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

BOOL PCSEngineFetchMetaData(void *a1, void *a2)
{
  v3 = a1;
  [v3 clearMetadata];
  [v3 setMetadata:{__PCSCopyStingrayInfo(objc_msgSend(v3, "recordTypeForReading"), objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
  v4 = [v3 metadata];

  return v4 != 0;
}

uint64_t PCSEngineCheckForceUpdate(void *a1)
{
  v1 = a1;
  v2 = [v1 options];
  Value = CFDictionaryGetValue(v2, kPCSSetupForceUpdate[0]);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v4))
      {
        [v1 setModified:1];
      }
    }
  }

  if ([v1 metadata])
  {
    v6 = [v1 metadata];
    v7 = CFDictionaryGetValue(v6, *MEMORY[0x1E6994F70]);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFDictionaryGetTypeID())
      {
        if (([v1 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v1, "iCDPHSMPlesio") & 1) == 0)
        {
          v10 = CFDictionaryGetValue(v8, *MEMORY[0x1E6994F78]);
          if (v10)
          {
            v11 = v10;
            v12 = CFGetTypeID(v10);
            if (v12 == CFBooleanGetTypeID())
            {
              [v1 setTriggerUpdate:CFBooleanGetValue(v11) != 0];
            }
          }
        }

        if ([v1 triggerUpdate])
        {
          [v1 setModified:1];
        }
      }
    }
  }

  return 1;
}

uint64_t PCSEngineDifferentOnDroppedKeys(void *a1)
{
  v1 = a1;
  if (([v1 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v1, "iCDPHSMPlesio"))
  {
    PCSEngineHaveSyncEnoughToCreateIdentities();
    if (v3)
    {
      [v1 setCurrentStep:&validationInNoTouchHSMContent];
    }

    else
    {
      [v1 setDone:1];
    }
  }

  return 1;
}

uint64_t PCSEngineEnsureClassicContent(void *a1, const void **a2)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 recordTypeForReading];
  v5 = [v3 options];
  Value = CFDictionaryGetValue(v5, kPCSSetupUsername[0]);
  v7 = [v3 options];
  v8 = CFDictionaryGetValue(v7, kPCSSetupPassword[0]);
  v9 = [v3 options];
  v10 = CFDictionaryGetValue(v9, kPCSSetupDSID[0]);
  v11 = PCSCurrentPersonaMatchesDSID(v10);
  if (!a2 || v11)
  {
    if (![v3 metadata])
    {
      PCSEngineEnsureClassicContent_cold_5(v3, a2);
      goto LABEL_51;
    }

    v16 = [v3 metadata];
    v17 = CFDictionaryGetValue(v16, *MEMORY[0x1E6994E60]);
    v18 = v17;
    if (v17)
    {
      v19 = CFGetTypeID(v17);
      if (v19 == CFBooleanGetTypeID())
      {
        v20 = CFBooleanGetValue(v18) == 0;
      }

      else
      {
        v21 = CFGetTypeID(v18);
        if (v21 != CFNumberGetTypeID())
        {
          LODWORD(v18) = 0;
          goto LABEL_16;
        }

        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr))
        {
          v20 = valuePtr == 0;
        }

        else
        {
          v20 = 1;
        }
      }

      LODWORD(v18) = !v20;
    }

LABEL_16:
    if ([v3 iCDP] && (v18 & 1) == 0)
    {
      PCSEngineEnsureClassicContent_cold_6(v3, a2);
      goto LABEL_51;
    }

    if (!(v18 & 1 | (([v3 requireIdentityInHSM] & 1) == 0)))
    {
      _PCSErrorContext([v3 log], a2, 58, @"No writing allowed");
      v15 = 1;
      [v3 setNeedPassword:1];
      [v3 setDone:1];
      goto LABEL_49;
    }

    if (v18)
    {
      [v3 setClassicContent:{__PCSCopyFromiCloudKeychain(v4, v10, 0, v22, v23, v24, v25, v26)}];
      v31 = [v3 classicContent];
      if (!v31)
      {
        [v3 setClassicContent:{__PCSCopyFromKeychain(v4, Value, v10, 0, v27, v28, v29, v30)}];
      }

      if (![v3 classicContent])
      {
        if (!v10)
        {
          PCSEngineEnsureClassicContent_cold_4(v3, a2);
          goto LABEL_51;
        }

        if (![v3 classicContent])
        {
          [v3 options];
          PCSMigrationLog([v3 log], @"Attempting to obtain classicContent from HSM");
          [v3 setClassicContent:{__PCSCopyHSMData(v4, objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
        }

        if (![v3 classicContent])
        {
          PCSEngineEnsureClassicContent_cold_3(v3);
          goto LABEL_51;
        }

        if (!checkData(v3, a2))
        {
          goto LABEL_51;
        }

        v43 = [v3 classicContent];
        if (!__PCSStoreInKeychain(v4, v43, v10, a2, v44, v45, v46, v47))
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      PCSMigrationLog([v3 log], @"No need to use escrow proxy at this point");
      valuePtr = 0;
      if (!checkData(v3, &valuePtr))
      {
        v36 = [v3 log];
        PCSMigrationLog(v36, @"Merge required: %@", valuePtr);
        CFRelease(valuePtr);
        [v3 setEscrowMergeNeeded:{objc_msgSend(v3, "classicContent")}];
        [v3 options];
        [v3 setClassicContent:{__PCSCopyHSMData(v4, objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
        if (![v3 classicContent])
        {
          PCSEngineEnsureClassicContent_cold_2(v3);
LABEL_51:
          PCSEngineEnsureClassicContent_cold_7(v3, a2 != 0, a2, &valuePtr);
          v15 = valuePtr;
          goto LABEL_49;
        }
      }
    }

    else
    {
      if (!v8)
      {
        PCSEngineEnsureClassicContent_cold_1(v3, a2);
        goto LABEL_51;
      }

      [v3 setClassicContent:{__PCSCopyFromiCloudKeychain(v4, v10, 0, v22, v23, v24, v25, v26)}];
      v31 = [v3 classicContent];
      if (!v31)
      {
        [v3 setClassicContent:{__PCSCopyFromKeychain(v4, Value, v10, 0, v37, v38, v39, v40)}];
      }

      if (![v3 classicContent])
      {
        [v3 setNewIdentity:1];
        v48 = pcsLogObjForScope("migration");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(valuePtr) = 0;
          _os_log_impl(&dword_1B229C000, v48, OS_LOG_TYPE_DEFAULT, "Classic content is missing; requesting new identities", &valuePtr, 2u);
        }

        goto LABEL_48;
      }

      PCSMigrationLog([v3 log], @"Detected missing/lost escrow data, will attempt to restore.");
      [v3 setEscrowMissing:1];
    }

    if (v31)
    {
      v41 = __PCSCopyFromKeychain(v4, Value, v10, 0, v32, v33, v34, v35);
      if (v41)
      {
        v42 = v41;
        if (!CFEqual(v41, [v3 classicContent]))
        {
          PCSMigrationLog([v3 log], @"sync and non sync keychain doesn't match!");
        }

        CFRelease(v42);
      }

      goto LABEL_48;
    }

LABEL_43:
    if (!__PCSStoreIniCloudKeychain(v4, [v3 classicContent], v10, a2))
    {
      goto LABEL_51;
    }

LABEL_48:
    v15 = 1;
    goto LABEL_49;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = kPCSErrorDomain;
  v52 = *MEMORY[0x1E696A578];
  v53[0] = @"Current persona does not match chosen dsid";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  *a2 = [v12 errorWithDomain:v13 code:152 userInfo:v14];

  v15 = 0;
LABEL_49:

  v49 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t PCSEngineExtractKeys(void *a1, const void **a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [v3 recordTypeForReading];
  if (![v3 metadata])
  {
    v37 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v37);
    }

    goto LABEL_71;
  }

  if ([v3 newIdentity])
  {
    v4 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "New identites requested; creating empty set", buf, 2u);
    }

    [v3 clearSet];
    [v3 setSet:PCSIdentitySetCreateMutable(a2)];
    if ([v3 set])
    {
      v5 = 1;
      goto LABEL_60;
    }

    _PCSErrorOOM(a2);
LABEL_71:
    v5 = 0;
    goto LABEL_60;
  }

  v44 = 0;
  v6 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 classicContent];
    v8 = @"present";
    if (!v7)
    {
      v8 = @"not present";
    }

    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "extracting keys; classicContent is %@", buf, 0xCu);
  }

  if (![v3 classicContent])
  {
    v38 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v38);
    }

    v26 = 0;
    v20 = 0;
    v21 = 0;
    v10 = 0;
    goto LABEL_81;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, [v3 options]);
  v10 = MutableCopy;
  if (!MutableCopy)
  {
    _PCSErrorOOM(a2);
    goto LABEL_80;
  }

  CFDictionarySetValue(MutableCopy, kPCSSetupDontImportManatee[0], *MEMORY[0x1E695E4D0]);
  [v3 setSet:{PCSIdentitySetCreateFromExternalForm(v10, objc_msgSend(v3, "classicContent"), &v44, a2)}];
  v11 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v3 set];
    v13 = @"present";
    if (!v12)
    {
      v13 = @"not present";
    }

    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "parsed classicContent set is %@", buf, 0xCu);
  }

  if (![v3 set])
  {
    goto LABEL_80;
  }

  v14 = [v3 set];
  [v3 setEscrowIdentity:{_PCSIdentitySetCopyCurrentIdentityInternal(v14, kPCSServiceEscrow, 0)}];
  v15 = GetiCDPMetadata([v3 metadata]);
  if (!v15)
  {
    v29 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v3 escrowIdentity];
      v31 = @"present";
      if (!v30)
      {
        v31 = @"not present";
      }

      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&dword_1B229C000, v29, OS_LOG_TYPE_DEFAULT, "No 'iCDP' metadata present; (escrow identity is %@)", buf, 0xCu);
    }

    if ([v3 escrowIdentity])
    {
      v26 = 0;
      v20 = 0;
      v21 = 0;
      v27 = 0;
      goto LABEL_42;
    }

    PCSEngineExtractKeys_cold_5(v3);
    goto LABEL_80;
  }

  v16 = kPCSMetadataEscrowedKeys[0];
  Value = CFDictionaryGetValue(v15, kPCSMetadataEscrowedKeys[0]);
  if (Value)
  {
    v18 = Value;
    v19 = CFGetTypeID(Value);
    if (v19 == CFDataGetTypeID())
    {
      if ([v3 escrowIdentity])
      {
        v20 = PCSBackupCopyRecoveredKeysetWithIdentity([v3 escrowIdentity], v18, a2);
        if (!v20)
        {
          PCSEngineExtractKeys_cold_3(v3, a2, v43, buf);
          v26 = 0;
          v21 = 0;
          v27 = 0;
          v28 = *buf;
          goto LABEL_32;
        }

        v21 = CFRetain([v3 set]);
        [v3 clearSet];
        [v3 setSet:{PCSIdentitySetCreateFromExternalForm(v10, v20, 0, a2)}];
        v22 = pcsLogObjForScope("migration");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v3 set];
          v24 = @"present";
          if (!v23)
          {
            v24 = @"not present";
          }

          *buf = 138412290;
          *&buf[4] = v24;
          _os_log_impl(&dword_1B229C000, v22, OS_LOG_TYPE_DEFAULT, "parsed identity set is %@", buf, 0xCu);
        }

        if ([v3 set])
        {
          v25 = [v3 set];
          v26 = _PCSIdentitySetCopyCurrentIdentityInternal(v25, kPCSServiceEscrow, a2);
          if (!v26 || !CFEqual(v26, [v3 escrowIdentity]))
          {
            PCSIdentitySetSetCurrentIdentity([v3 set], objc_msgSend(v3, "escrowIdentity"));
            [v3 setModified:1];
          }

          v27 = PCSIdentitySetCopyIdentities(v21, 0);
          context[0] = MEMORY[0x1E69E9820];
          context[1] = 3221225472;
          context[2] = __PCSEngineExtractKeys_block_invoke_571;
          context[3] = &unk_1E7B193D0;
          v42 = v3;
          CFDictionaryApplyFunction(v27, apply_block_2_3, context);
          v28 = v42;
          goto LABEL_32;
        }

        v26 = 0;
LABEL_81:
        v27 = 0;
        goto LABEL_66;
      }

      PCSEngineExtractKeys_cold_2(v3);
    }

    else
    {
      PCSEngineExtractKeys_cold_1(v3);
    }

LABEL_80:
    v26 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_81;
  }

  v28 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_1B229C000, v28, OS_LOG_TYPE_DEFAULT, "No serialized keys found (at key path %@)", buf, 0xCu);
  }

  v26 = 0;
  v20 = 0;
  v21 = 0;
  v27 = 0;
LABEL_32:

  if ((_PCSIsiCDPIsWalrus([v3 metadata]) & 1) == 0 && (_PCSIsiCDPIsPlesio(objc_msgSend(v3, "metadata")) & 1) == 0 && !objc_msgSend(v3, "escrowIdentity"))
  {
    PCSEngineExtractKeys_cold_4(v3);
    goto LABEL_66;
  }

LABEL_42:
  if ((v44 & 8) != 0 && ([v3 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v3, "iCDPHSMPlesio") & 1) == 0)
  {
    PCSEngineExtractKeys_cold_6(v3, a2);
    goto LABEL_66;
  }

  if (![v3 escrowMergeNeeded])
  {
    goto LABEL_50;
  }

  v32 = pcsLogObjForScope("migration");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v32, OS_LOG_TYPE_DEFAULT, "Beginning escrow merge", buf, 2u);
  }

  v33 = PCSIdentitySetCreateFromExternalForm(0, [v3 escrowMergeNeeded], 0, a2);
  if (!v33)
  {
LABEL_66:
    v5 = 0;
    if (!v27)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v34 = v33;
  v27 = PCSIdentitySetCopyIdentities(v33, 0);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __PCSEngineExtractKeys_block_invoke_582;
  v39[3] = &unk_1E7B193D0;
  v40 = v3;
  CFDictionaryApplyFunction(v27, apply_block_2_3, v39);
  CFRelease(v34);

LABEL_50:
  v5 = 1;
  if (v27)
  {
LABEL_51:
    CFRelease(v27);
  }

LABEL_52:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_60:

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t PCSEngineOverrideiCDP(void *a1, uint64_t *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (![v3 iCDP] || (objc_msgSend(v3, "iCDPArmed") & 1) == 0)
  {
    v4 = [v3 options];
    v5 = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
    v6 = [PCSAccountsModel altDSIDForDSID:v5];
    v7 = [v3 log];
    if (v6)
    {
      PCSMigrationLog(v7, @"No iCDP, now checking Octagon CDP status");
      v8 = objc_alloc_init(MEMORY[0x1E697AA88]);
      [v8 setAltDSID:v6];
      v9 = PCSCurrentPersonaMatchesDSID(v5);
      if (a2)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v19 = 0;
        v11 = [MEMORY[0x1E697AA80] getCDPStatus:v8 error:&v19];
        v12 = v19;
        switch(v11)
        {
          case 2:
            PCSMigrationLog([v3 log], @"Octagon CDP is enabled, overriding iCDP value");
            [v3 setICDP:1];
            [v3 setICDPArmed:1];
            [v3 setModified:1];
            break;
          case 1:
            PCSMigrationLog([v3 log], @"Octagon CDP is disabled");
            break;
          case 0:
            PCSMigrationLog([v3 log], @"Unable to check Octagon CDP status: %@", v12);
            break;
        }
      }

      else
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = kPCSErrorDomain;
        v20 = *MEMORY[0x1E696A578];
        v21[0] = @"Current persona does not match chosen dsid";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        *a2 = [v13 errorWithDomain:v14 code:152 userInfo:v15];

        v12 = 0;
      }

      if (!v10)
      {
        v16 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      PCSMigrationLog(v7, @"Unable to determine altDSID, skipping Octagon CDP check");
    }
  }

  v16 = 1;
LABEL_20:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t PCSEngineSynchronizeWithLocalstore(void *a1, const void **a2)
{
  v3 = a1;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames();
  v5 = PCSIdentitySetCreate([v3 options], 0, a2);
  if (v5)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    if (Mutable)
    {
      v7 = Mutable;
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __PCSEngineSynchronizeWithLocalstore_block_invoke;
      context[3] = &unk_1E7B193F8;
      v8 = v3;
      v23 = v8;
      v24 = v7;
      v25.length = CFArrayGetCount(CFArrayOfNames);
      v25.location = 0;
      CFArrayApplyFunction(CFArrayOfNames, v25, apply_block_1_2, context);
      v9 = PCSIdentitySetCopyIdentities(v5, 0);
      if (v9)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __PCSEngineSynchronizeWithLocalstore_block_invoke_2;
        v18[3] = &unk_1E7B19420;
        v19 = v8;
        v20 = v7;
        v21 = v5;
        CFDictionaryApplyFunction(v9, apply_block_2_3, v18);
      }

      v10 = [v8 options];
      Value = CFDictionaryGetValue(v10, kPCSSetupPreferLocalKeyPreference[0]);
      if (Value)
      {
        v12 = Value;
        v13 = CFGetTypeID(Value);
        if (v13 == CFBooleanGetTypeID())
        {
          if (CFBooleanGetValue(v12))
          {
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __PCSEngineSynchronizeWithLocalstore_block_invoke_3;
            v15[3] = &unk_1E7B193F8;
            v17 = v5;
            v16 = v8;
            v26.length = CFArrayGetCount(CFArrayOfNames);
            v26.location = 0;
            CFArrayApplyFunction(CFArrayOfNames, v26, apply_block_1_2, v15);
          }
        }
      }

      CFRelease(v5);
      if (v9)
      {
        CFRelease(v9);
      }

      CFRelease(v7);

      v5 = 1;
    }

    else
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  return v5;
}

uint64_t PCSEngineSynchronizeLocalKeyFile(void *a1, const void **a2)
{
  cf = 0;
  v3 = a1;
  SynchronizeLocalKeyFile(v3, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", @"backup", &cf);
  SynchronizeLocalKeyFile(v3, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", @"messages", a2);

  v4 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v4);
  }

  return 1;
}

uint64_t PCSEngineStepValidateRegistry(void *a1)
{
  v1 = a1;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames();
  v3 = _PCSServiceItemsGetTooRolledServiceTypes();
  if (([v1 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v1, "iCDPHSMPlesio"))
  {
    PCSMigrationLog([v1 log], @"  Skipping registry validation");
  }

  else
  {
    if ([v1 oldRegistry])
    {
      v4 = [v1 options];
      Value = CFDictionaryGetValue(v4, kPCSSetupRegistryCleanup[0]);
      v8 = Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()) && CFBooleanGetValue(v6) != 0;
      v9 = [v1 oldRegistry];
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __PCSEngineStepValidateRegistry_block_invoke;
      context[3] = &unk_1E7B19470;
      v15 = v3;
      v16 = v1;
      v17 = v8;
      CFDictionaryApplyFunction(v9, apply_block_2_3, context);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __PCSEngineStepValidateRegistry_block_invoke_2;
    v11[3] = &unk_1E7B19498;
    v12 = v3;
    v13 = v1;
    v18.length = CFArrayGetCount(CFArrayOfNames);
    v18.location = 0;
    CFArrayApplyFunction(CFArrayOfNames, v18, apply_block_1_2, v11);
  }

  return 1;
}

uint64_t PCSEngineStoreHSM(void *a1, const void **a2)
{
  v3 = a1;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 0;
  v95 = dispatch_semaphore_create(0);
  if ([v3 newIdentity] && (objc_msgSend(v3, "dropHSM") & 1) != 0)
  {
    goto LABEL_124;
  }

  if ([v3 newIdentity])
  {
    v4 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Creating new identity", buf, 2u);
    }

    if (GetClassicServiceArray_onceToken != -1)
    {
      PCSEngineStoreHSM_cold_1();
    }

    [v3 setNewHSMContent:{PCSIdentitySetCreateExternalForm(objc_msgSend(v3, "log"), objc_msgSend(v3, "set"), 1, GetClassicServiceArray_array, a2)}];
    if (![v3 newHSMContent])
    {
      goto LABEL_124;
    }

    [v3 setModified:1];
  }

  if ([v3 restoreHSM])
  {
    if ([v3 iCDPHSMWalrus] & 1) != 0 || (objc_msgSend(v3, "iCDPHSMPlesio"))
    {
      _PCSError(a2, 69, @"Asked to restore HSM content, but flag in HSM doesn't match");
      goto LABEL_124;
    }

    [v3 setNewHSMContent:{PCSStateCopyKeychainClassicIdentities(v3, 1, a2)}];
    if (![v3 newHSMContent])
    {
      goto LABEL_124;
    }

    [v3 setModified:1];
  }

  if ([v3 dropHSM])
  {
    if (([v3 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v3, "iCDPHSMPlesio") & 1) == 0)
    {
      _PCSError(a2, 69, @"Asked to drop HSM content, but flag in HSM already set");
      goto LABEL_124;
    }

    if (GetDroppedServiceArray_onceToken != -1)
    {
      PCSEngineStoreHSM_cold_2();
    }

    [v3 setNewHSMContent:{PCSIdentitySetCreateExternalForm(objc_msgSend(v3, "log"), objc_msgSend(v3, "set"), 1, GetDroppedServiceArray_array, a2)}];
    if (![v3 newHSMContent])
    {
      goto LABEL_124;
    }

    [v3 setModified:1];
  }

  if ([v3 escrowMissing])
  {
    [v3 setNewHSMContent:{CFRetain(objc_msgSend(v3, "classicContent"))}];
    [v3 setModified:1];
  }

  if ([v3 escrowMergeNeeded])
  {
    [v3 setNewHSMContent:0];
    [v3 setModified:1];
  }

  if ([v3 newHSMContent] && (objc_msgSend(v3, "dropHSM") & 1) == 0)
  {
    v5 = [v3 newHSMContent];
  }

  else
  {
    if (![v3 escrowMergeNeeded])
    {
      v6 = PCSStateCopyKeychainClassicIdentities(v3, 0, a2);
      if (!v6)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    v5 = [v3 classicContent];
  }

  v6 = CFRetain(v5);
LABEL_33:
  v7 = PCSIdentitySetCreateFromExternalForm(0, v6, 0, a2);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    v8 = _PCSIdentitySetCopyCurrentIdentityInternal(v7, kPCSServiceEscrow, a2);
    v9 = v8;
    if (!v8)
    {
      _PCSError(a2, 70, @"Escrow identity not in escrowed set");
LABEL_123:
      CFRelease(v7);
      goto LABEL_124;
    }

    if (!PCSIdentityCheckWrappable(v8, a2))
    {
      ExternalForm = 0;
      v13 = 0;
      MutableForCFTypesWith = 0;
      cf = 0;
      value = 0;
      v94 = 0;
      v91 = 0;
      goto LABEL_109;
    }

    if (![v3 modified])
    {
      v91 = 0;
      cf = 0;
      value = 0;
      v94 = 0;
      v13 = 0;
      ExternalForm = 0;
LABEL_78:
      if ([v3 newIdentity])
      {
        v47 = pcsLogObjForScope("migration");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v47, OS_LOG_TYPE_DEFAULT, "New identity was requested, prepping new record creation", buf, 2u);
        }

        v89 = [v3 newHSMContent];
        v88 = *MEMORY[0x1E6994FB0];
        v86 = *MEMORY[0x1E6994EE0];
        MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v89, v48, v49, v50, v51, v52, v53, v54, *MEMORY[0x1E6994E60], *MEMORY[0x1E695E4D0]);
        applyOptions(v3, MutableForCFTypesWith);
        if ([v3 metadata])
        {
          v56 = [v3 metadata];
          v57 = *MEMORY[0x1E6994F68];
          v58 = CFDictionaryGetValue(v56, *MEMORY[0x1E6994F68]);
          if (v58)
          {
            CFDictionarySetValue(MutableForCFTypesWith, v57, v58);
          }

          else
          {
            PCSMigrationLog([v3 log], @"MetadataHashKey missing");
          }
        }

        v101 = MEMORY[0x1E69E9820];
        v102 = 3221225472;
        v103 = __PCSEngineStoreHSM_block_invoke_736;
        v104 = &unk_1E7B19538;
        v105 = v3;
        v107 = &v109;
        v108 = a2;
        v106 = v95;
        _PCSSecureBackupEnableWithInfo();
        __PCS_WAITING_FOR_COM_APPLE_SBD(v106);

        goto LABEL_109;
      }

      if ([v3 modified])
      {
        v59 = [v3 metadata];
        v60 = *MEMORY[0x1E6994F68];
        v61 = CFDictionaryGetValue(v59, *MEMORY[0x1E6994F68]);
        v87 = *MEMORY[0x1E6994EE0];
        MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v61, v62, v63, v64, v65, v66, v67, v68, *MEMORY[0x1E6994E60], *MEMORY[0x1E695E4D0]);
        if (MutableForCFTypesWith)
        {
          applyOptions(v3, MutableForCFTypesWith);
          if ([v3 newHSMContent])
          {
            PCSMigrationLog([v3 log], @"New HSM content (update)");
            v69 = [v3 newHSMContent];
            CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E6994FB0], v69);
          }

          if (v61)
          {
            CFDictionarySetValue(MutableForCFTypesWith, v60, v61);
          }

          else
          {
            v71 = [v3 log];
            v72 = [v3 newHSMContent];
            v73 = "with content, this will not end well";
            if (!v72)
            {
              v73 = "no content";
            }

            PCSMigrationLog(v71, @"MetadataHashKey missing: %s", v73);
          }

          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = __PCSEngineStoreHSM_block_invoke_2;
          v96[3] = &unk_1E7B19538;
          v74 = v3;
          v97 = v74;
          v99 = &v109;
          v100 = a2;
          v75 = v95;
          v98 = v75;
          v76 = MEMORY[0x1B2745320](v96);
          if ([v74 newHSMContent])
          {
            PCSMigrationLog([v74 log], @"StoreHSM Performing Enable");
            _PCSSecureBackupEnableWithInfo();
          }

          else
          {
            PCSMigrationLog([v74 log], @"StoreHSM Performing Update");
            _PCSSecureBackupUpdateMetadataWithInfo();
          }

          __PCS_WAITING_FOR_COM_APPLE_SBD(v75);
          if (a2)
          {
            if ((v110[3] & 1) == 0 && CFErrorGetCode(*a2) == 22)
            {
              Domain = CFErrorGetDomain(*a2);
              if (CFEqual(Domain, *MEMORY[0x1E6994DA8]))
              {
                PCSMigrationLog([v74 log], @"Congestion event happen restarting state machine: %@", *a2);
                v78 = *a2;
                if (*a2)
                {
                  *a2 = 0;
                  CFRelease(v78);
                }

                [v74 setRestart:1];
                *(v110 + 24) = 1;
              }
            }
          }

          goto LABEL_109;
        }

        _PCSErrorOOM(a2);
        goto LABEL_140;
      }

      MutableForCFTypesWith = 0;
      *(v110 + 24) = 1;
LABEL_109:
      CFRelease(v9);
      if (ExternalForm)
      {
        CFRelease(ExternalForm);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (MutableForCFTypesWith)
      {
        CFRelease(MutableForCFTypesWith);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (v91)
      {
        CFRelease(v91);
      }

      goto LABEL_123;
    }

    v11 = [v3 set];
    v12 = _PCSIdentitySetCopyCurrentIdentityInternal(v11, kPCSServiceBladerunner, 0);
    v94 = v12;
    if (v12)
    {
      value = PCSIdentityCopyPublicKeyInfo(v12);
    }

    else
    {
      value = 0;
    }

    key = kPCSMetadataiCDP[0];
    v16 = [v3 iCDP];
    v17 = [v3 iCDPArmed];
    v25 = *MEMORY[0x1E695E4D0];
    v26 = *MEMORY[0x1E695E4C0];
    if (v16)
    {
      v27 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v27 = *MEMORY[0x1E695E4C0];
    }

    if (v17)
    {
      v28 = *MEMORY[0x1E695E4D0];
    }

    v13 = CFDictionaryCreateMutableForCFTypesWith(v17, v18, v19, v20, v21, v22, v23, v24, key, v27);
    if (v13)
    {
      if ([v3 iCDPHSMWalrus])
      {
        v29 = kPCSMetadataiCDPWalrus;
LABEL_53:
        CFDictionarySetValue(v13, *v29, v25);
        v91 = 0;
        cf = 0;
        goto LABEL_60;
      }

      if ([v3 iCDPHSMPlesio])
      {
        v29 = kPCSMetadataiCDPDrop;
        goto LABEL_53;
      }

      if ([v3 escrowIdentity] && !CFEqual(objc_msgSend(v3, "escrowIdentity"), v9))
      {
        _PCSError(a2, 71, @"Escrow identity not same");
        ExternalForm = 0;
      }

      else
      {
        if ([v3 iCDPHSMWalrus])
        {
          _os_assert_log();
          v85 = _os_crash();
          PCSEngineStoreHSM_cold_3(v85);
        }

        ExternalForm = PCSIdentitySetCreateExternalForm([v3 log], objc_msgSend(v3, "set"), 1, 0, a2);
        if (ExternalForm)
        {
          EscrowedKeysetWithIdentity = PCSBackupCreateEscrowedKeysetWithIdentity(v9, ExternalForm, 0, a2);
          v91 = ExternalForm;
          if (!EscrowedKeysetWithIdentity)
          {
            ExternalForm = 0;
            MutableForCFTypesWith = 0;
            cf = 0;
            goto LABEL_109;
          }

          cf = EscrowedKeysetWithIdentity;
          CFDictionarySetValue(v13, kPCSMetadataEscrowedKeys[0], EscrowedKeysetWithIdentity);
LABEL_60:
          if ([v3 stableMetadata] || (objc_msgSend(v3, "setStableMetadata:", CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])), objc_msgSend(v3, "stableMetadata")))
          {
            v31 = [v3 stableMetadata];
            v32 = kPCSSecureBackupCFStableEscrowKey[0];
            PublicKey = PCSIdentityGetPublicKey(v9);
            CFDictionarySetValue(v31, v32, PublicKey);
            ExternalForm = CFDictionaryCreateMutableForCFTypesWith(v34, v35, v36, v37, v38, v39, v40, v41, kPCSSecureBackupCFiCloudDataProtectionKey[0], v13);
            if (ExternalForm)
            {
              if ([v3 stableMetadata] && CFDictionaryGetCount(objc_msgSend(v3, "stableMetadata")) >= 1)
              {
                CFDictionarySetValue(ExternalForm, kPCSSecureBackupCFStableMetadataKey[0], [v3 stableMetadata]);
              }

              if (([v3 iCDPHSMWalrus] & 1) == 0)
              {
                v42 = [v3 iCDPHSMPlesio];
                v43 = value ? v42 : 1;
                if ((v43 & 1) == 0)
                {
                  CFDictionarySetValue(ExternalForm, *MEMORY[0x1E6994FB8], value);
                }
              }

              v44 = v3;
              CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames();
              v46 = _PCSServiceItemsGetTooRolledServiceTypes();
              if (([v44 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v44, "iCDPHSMPlesio"))
              {
                PCSMigrationLog([v44 log], @"  Skipping registry creation");
              }

              else
              {
                if ([v44 oldRegistry])
                {
                  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, [v44 oldRegistry]);
                }

                else
                {
                  MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                }

                v81 = MutableCopy;
                if (MutableCopy)
                {
                  if ([v44 removeFromRegistry])
                  {
                    theArray = [v44 removeFromRegistry];
                    context[0] = MEMORY[0x1E69E9820];
                    context[1] = 3221225472;
                    context[2] = __CreateKeyRegistry_block_invoke;
                    context[3] = &unk_1E7B193F8;
                    v121 = v44;
                    v122 = v81;
                    v123.length = CFArrayGetCount(theArray);
                    v123.location = 0;
                    CFArrayApplyFunction(theArray, v123, apply_block_1_2, context);
                  }

                  *buf = MEMORY[0x1E69E9820];
                  v114 = 3221225472;
                  v115 = __CreateKeyRegistry_block_invoke_2;
                  v116 = &unk_1E7B19588;
                  v119 = v81;
                  v82 = v46;
                  v117 = v82;
                  v83 = v44;
                  v118 = v83;
                  v124.length = CFArrayGetCount(CFArrayOfNames);
                  v124.location = 0;
                  CFArrayApplyFunction(CFArrayOfNames, v124, apply_block_1_2, buf);
                  v84 = CFRetain(v81);

                  CFRelease(v81);
                  if (v84)
                  {
                    CFDictionarySetValue(ExternalForm, kPCSSecureBackupCFSecureBackupKeyRegistry[0], v84);
                    CFRelease(v84);
                  }

                  goto LABEL_76;
                }
              }

LABEL_76:
              ClientInfo = PCSSupportGetClientInfo();
              if (ClientInfo)
              {
                CFDictionarySetValue(ExternalForm, kPCSSecureBackupCFVersionMetadataKey, ClientInfo);
              }

              goto LABEL_78;
            }

            _PCSErrorOOM(a2);
          }

          ExternalForm = 0;
LABEL_140:
          MutableForCFTypesWith = 0;
          goto LABEL_109;
        }
      }
    }

    else
    {
      _PCSErrorOOM(a2);
      ExternalForm = 0;
      v13 = 0;
    }

    MutableForCFTypesWith = 0;
    v91 = 0;
    cf = 0;
    goto LABEL_109;
  }

LABEL_124:
  v79 = *(v110 + 24);

  _Block_object_dispose(&v109, 8);
  return v79;
}

uint64_t PCSEngineStoreLocal(void *a1, const void **a2)
{
  v3 = a1;
  v4 = PCSIdentitySetCreate([v3 options], 0, a2);
  if (v4)
  {
    v5 = v4;
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __PCSEngineStoreLocal_block_invoke;
    v33 = &unk_1E7B195B0;
    v6 = v3;
    v34 = v6;
    v35 = v5;
    v7 = MEMORY[0x1B2745320](&v30);
    PCSIdentitySetEnumerateIdentities([v6 set], 0, v7);
    v8 = [v6 recordTypeForReading];
    if ([v6 newHSMContent] && (objc_msgSend(v6, "dropHSM") & 1) == 0 && (objc_msgSend(v6, "restoreHSM") & 1) == 0)
    {
      v9 = [v6 options];
      Value = CFDictionaryGetValue(v9, kPCSSetupDSID[0]);
      if (!PCSCurrentPersonaMatchesDSID(Value))
      {
        goto LABEL_15;
      }

      v11 = [v6 newHSMContent];
      if (!__PCSStoreInKeychain(v8, v11, Value, a2, v12, v13, v14, v15) || !__PCSStoreIniCloudKeychain(v8, [v6 newHSMContent], Value, a2))
      {
        goto LABEL_18;
      }
    }

    if (![v6 escrowMergeNeeded])
    {
LABEL_12:
      PCSEngineStoreLocal_cold_1(v6, v5);
      v28 = 1;
LABEL_13:
      CFRelease(v5);
LABEL_16:

      goto LABEL_17;
    }

    v16 = [v6 options];
    v17 = CFDictionaryGetValue(v16, kPCSSetupDSID[0]);
    if (PCSCurrentPersonaMatchesDSID(v17))
    {
      v18 = [v6 classicContent];
      if (__PCSStoreInKeychain(v8, v18, v17, a2, v19, v20, v21, v22))
      {
        v23 = [v6 classicContent];
        if (__PCSUpdateIniCloudKeychain(v8, v23, v17, a2, v24, v25, v26, v27))
        {
          goto LABEL_12;
        }
      }

LABEL_18:
      v28 = 0;
      goto LABEL_13;
    }

LABEL_15:
    _PCSError(a2, 152, @"current persona does not match dsid");
    v28 = 0;
    goto LABEL_16;
  }

  v28 = 0;
LABEL_17:

  return v28;
}

uint64_t PCSEngineStoreLocalKeyfile(void *a1, const void **a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (![v3 modified])
  {
    goto LABEL_16;
  }

  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFStringGetTypeID()))
  {
    _PCSErrorContext([v3 log], a2, 121, @"Missing parameter: dsid");
    goto LABEL_9;
  }

  if (!CFEqual(v6, kPCSSetupDSIDAny[0]))
  {
    v8 = PCSCurrentPersonaMatchesDSID(v6);
    if (a2 && !v8)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = kPCSErrorDomain;
      v24 = *MEMORY[0x1E696A578];
      v25[0] = @"Current persona does not match chosen dsid";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *a2 = [v9 errorWithDomain:v10 code:152 userInfo:v11];

      goto LABEL_9;
    }

    if (!StoreLocalKeyfile(v3, v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", @"backup", 0, 0x20000000, a2))
    {
      goto LABEL_9;
    }

    v13 = LocalStorageCreatePath(v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/LocalBackup", @"witness");
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    v15 = [MEMORY[0x1E695DF00] date];
    v16 = [v15 description];
    [v16 writeToFile:v14 atomically:0 encoding:4 error:0];

    v17 = +[PCSMobileBackup defaultMobileBackup];
    if ([v17 isBackupEnabled])
    {
      v23 = kPCSMessages3;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      StoreLocalKeyfile(v3, v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", @"messages", v18, 0x40000000, 0);
    }

    else
    {
      v19 = LocalStorageCreatePath(v6, @"/var/mobile/Library/Application Support/com.apple.ProtectedCloudStorage/Backup", @"messages");
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      [v20 removeItemAtPath:v19 error:0];
    }

LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

LABEL_9:
  v12 = 0;
LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t PCSEngineAddMissingCurrentPointers(void *a1, const void **a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!_PCSRunningInUnitTests())
  {
    if ([v3 iCDP])
    {
      v4 = [v3 options];
      Value = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
      if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFStringGetTypeID()))
      {
        _PCSErrorContext([v3 log], a2, 121, @"Missing parameter: dsid");
        goto LABEL_11;
      }

      v8 = PCSCurrentPersonaMatchesDSID(v6);
      if (a2 && !v8)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = kPCSErrorDomain;
        v18 = *MEMORY[0x1E696A578];
        v19[0] = @"Current persona does not match chosen dsid";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        *a2 = [v9 errorWithDomain:v10 code:152 userInfo:v11];

LABEL_11:
        v12 = 0;
        goto LABEL_12;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __PCSEngineAddMissingCurrentPointers_block_invoke;
      v15[3] = &unk_1E7B19628;
      v17 = v6;
      v16 = v3;
      PCSServiceItemsGetEachName(v15);
    }

    else
    {
      PCSMigrationLog([v3 log], @"CDP not enabled, skipping AddMissingCurrentPointers");
    }
  }

  v12 = 1;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

CFTypeRef PCSStateCopyKeychainClassicIdentities(void *a1, int a2, const void **a3)
{
  v5 = a1;
  v6 = [v5 options];
  Value = CFDictionaryGetValue(v6, kPCSSetupDSID[0]);
  v8 = [v5 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupUsername[0]);
  v53 = 0;
  err = 0;
  v10 = [v5 recordTypeForReading];
  if (!Value || (v11 = v10, v12 = CFGetTypeID(Value), v12 != CFStringGetTypeID()))
  {
    _PCSError(a3, 3, @"DSID not a string");
    goto LABEL_9;
  }

  if (!PCSCurrentPersonaMatchesDSID(Value))
  {
    _PCSError(a3, 152, @"current persona does not match dsid");
    goto LABEL_9;
  }

  v18 = __PCSCopyFromiCloudKeychain(v11, Value, &err, v13, v14, v15, v16, v17);
  v23 = __PCSCopyFromKeychain(v11, v9, Value, &v53, v19, v20, v21, v22);
  v24 = 0;
  v25 = err;
  if (err && v53)
  {
    v24 = CFErrorGetCode(err) == -25300 && CFErrorGetCode(v53) == -25300;
    v25 = err;
  }

  if (v25)
  {
    err = 0;
    CFRelease(v25);
  }

  v26 = v53;
  if (v53)
  {
    v53 = 0;
    CFRelease(v26);
  }

  if (v18 && v23)
  {
    if (CFEqual(v18, v23))
    {
      CFRelease(v23);
      v23 = 0;
      goto LABEL_20;
    }

    _PCSError(a3, 74, @"local and iCKC not the same PCS keys");
    CFRelease(v23);
    CFRelease(v18);
LABEL_9:
    v18 = 0;
    goto LABEL_73;
  }

LABEL_20:
  if (v18)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24;
  }

  if (a2 && v27)
  {
    v28 = v5;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v59 = 0;
    v29 = [MEMORY[0x1E697AA20] controlObject:&v59];
    v30 = v59;
    v31 = v30;
    if (!v29)
    {
      if (a3)
      {
        *a3 = v30;
      }

      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&v64, 8);
      goto LABEL_65;
    }

    v32 = dispatch_semaphore_create(0);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __PCSFetchCKKSWithTimeout_block_invoke;
    v55[3] = &unk_1E7B19358;
    v57 = &v64;
    v58 = &v60;
    v33 = v32;
    v56 = v33;
    [v29 rpcFetchAndProcessChangesIfNoRecentFetch:@"ProtectedCloudStorage" reply:v55];
    v34 = dispatch_time(0, 20000000000);
    if (dispatch_semaphore_wait(v33, v34))
    {
      _PCSError(a3, 99, @"rpcFetchAndProcessChanges timed out");
      v35 = 0;
    }

    else
    {
      v36 = v61;
      if (a3)
      {
        v37 = v61[3];
        if (v37)
        {
          *a3 = CFRetain(v37);
          v36 = v61;
        }
      }

      v38 = v36[3];
      if (v38)
      {
        v36[3] = 0;
        CFRelease(v38);
      }

      v35 = *(v65 + 24);
    }

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    if (v35)
    {
      if (v18)
      {
        v39 = PCSIdentitySetCreateFromExternalForm(0, v18, 0, a3);
        if (!v39)
        {
          goto LABEL_65;
        }

        v40 = v39;
        v41 = _PCSIdentitySetCopyCurrentIdentityInternal(v39, kPCSServiceMaster, 0);
        v42 = _PCSIdentitySetCopyCurrentIdentityInternal(v40, kPCSServiceEscrow, 0);
        CFRelease(v40);
        if (v41 && v42)
        {
          CFRelease(v41);
          CFRelease(v42);
          ExternalForm = CFRetain(v18);
LABEL_68:

          if (v23)
          {
            CFRelease(v23);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v18 = ExternalForm;
          goto LABEL_73;
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (v42)
        {
          CFRelease(v42);
        }
      }

      v44 = [v28 set];
      v45 = _PCSIdentitySetCopyCurrentIdentityInternal(v44, kPCSServiceMaster, 0);
      if (v45)
      {
        goto LABEL_54;
      }

      Master = PCSIdentityCreateMaster(0, a3);
      if (Master)
      {
        v45 = Master;
        if (!PCSIdentitySetAddIdentityWithError([v28 set], Master, a3) || !PCSIdentitySetSetCurrentIdentityWithError(objc_msgSend(v28, "set"), v45, a3))
        {
LABEL_64:
          ExternalForm = 0;
LABEL_67:
          CFRelease(v45);
          goto LABEL_68;
        }

LABEL_54:
        if (GetClassicServiceArray_onceToken != -1)
        {
          PCSEngineStoreHSM_cold_1();
        }

        v47 = GetClassicServiceArray_array;
        if (CFArrayGetCount(GetClassicServiceArray_array) >= 1)
        {
          for (i = 0; i < CFArrayGetCount(v47); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v47, i);
            if (!CFEqual(ValueAtIndex, kPCSServiceMaster))
            {
              v50 = _PCSIdentitySetCopyCurrentIdentityInternal([v28 set], ValueAtIndex, 0);
              if (v50)
              {
                CFRelease(v50);
              }

              else
              {
                AddService();
                if ((v51 & 1) == 0)
                {
                  goto LABEL_64;
                }
              }
            }
          }
        }

        ExternalForm = PCSIdentitySetCreateExternalForm([v28 log], objc_msgSend(v28, "set"), 1, v47, a3);
        goto LABEL_67;
      }
    }

LABEL_65:
    ExternalForm = 0;
    goto LABEL_68;
  }

  if (!v18)
  {
    v18 = v23;
    if (!v23)
    {
      _PCSError(a3, 74, @"no PCS keys in keychain!");
    }
  }

LABEL_73:

  return v18;
}

void sub_1B22CA1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

const void *isArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

void __PCSFetchCKKSWithTimeout_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  v4 = v3;
  *(*(*(a1 + 48) + 8) + 24) = v4;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __GetClassicServiceArray_block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = kPCSServiceMaster;
  v2[1] = kPCSServiceBladerunner;
  v2[2] = kPCSServiceHyperion;
  v2[3] = kPCSServiceLiverpool;
  v2[4] = kPCSServiceEscrow;
  v2[5] = kPCSServiceFDE;
  v2[6] = kPCSServicePianoMover;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  GetClassicServiceArray_array = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCSEngineValidateStepEnsureServicesHaveCurrentSet(void *a1)
{
  v1 = a1;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames();
  if ([v1 set])
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSEngineValidateStepEnsureServicesHaveCurrentSet_block_invoke;
    context[3] = &unk_1E7B19380;
    v5 = v1;
    v6.length = CFArrayGetCount(CFArrayOfNames);
    v6.location = 0;
    CFArrayApplyFunction(CFArrayOfNames, v6, apply_block_1_2, context);
  }

  return 1;
}

void __PCSEngineValidateStepEnsureServicesHaveCurrentSet_block_invoke(uint64_t a1, void *a2)
{
  if ((![*(a1 + 32) limitLocalStoring] || IsLocalStoringService(*(a1 + 32), a2)) && ((objc_msgSend(*(a1 + 32), "iCDP") & 1) != 0 || (PCSServiceItemTypeIsManatee(a2) & 1) == 0))
  {
    v4 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], a2, 0);
    if (v4)
    {
LABEL_6:

      CFRelease(v4);
      return;
    }

    v5 = PCSIdentitySetCopyOrderedIdentities([*(a1 + 32) set], a2);
    if (!v5)
    {
      return;
    }

    v6 = v5;
    if (!CFArrayGetCount(v5))
    {
      v4 = v6;
      goto LABEL_6;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], ValueAtIndex);
    CFRelease(v6);
    v8 = *(a1 + 32);

    [v8 setModified:1];
  }
}

BOOL IsLocalStoringService(void *a1, const void *a2)
{
  v3 = a1;
  if (![v3 limitLocalStoring])
  {
    IsLocalStoringService_cold_1();
  }

  v4 = [v3 limitLocalStoring];
  v7.length = CFArrayGetCount([v3 limitLocalStoring]);
  v7.location = 0;
  v5 = CFArrayContainsValue(v4, v7, a2) != 0;

  return v5;
}

BOOL checkData(void *a1, const void **a2)
{
  v3 = a1;
  Value = CFDictionaryGetValue([v3 metadata], @"SecureBackupStingrayMetadata");
  if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFDictionaryGetTypeID()))
  {
    PCSEngineEnsureClassicContent_cold_5(v3, a2);
LABEL_18:
    v14 = 0;
    goto LABEL_14;
  }

  v7 = CFDictionaryGetValue(v5, @"BackupKeybagSHA256");
  v8 = v7;
  if (!v7 && (v8 = CFDictionaryGetValue(v5, @"BackupKeybagDigest")) == 0 || (v9 = CFGetTypeID(v8), v9 != CFDataGetTypeID()))
  {
    checkData_cold_2(v3, a2);
    goto LABEL_18;
  }

  v10 = [v3 classicContent];
  Mutable = CFDataCreateMutable(0, 0);
  v12 = Mutable;
  if (!v7)
  {
    CFDataSetLength(Mutable, 20);
    if (v12)
    {
      ccsha1_di();
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  CFDataSetLength(Mutable, 32);
  if (!v12)
  {
LABEL_16:
    _PCSErrorOOM(a2);
    goto LABEL_18;
  }

  ccsha256_di();
LABEL_11:
  CFDataGetLength(v10);
  CFDataGetBytePtr(v10);
  CFDataGetMutableBytePtr(v12);
  ccdigest();
  v13 = CFEqual(v12, v8);
  v14 = v13 != 0;
  if (!v13)
  {
    checkData_cold_1(v3, a2);
  }

  CFRelease(v12);
LABEL_14:

  return v14;
}

void __PCSEngineExtractKeys_block_invoke_571(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v5)
  {

    CFRelease(v5);
  }

  else
  {
    PCSIdentitySetAddIdentity([*(a1 + 32) set], a3);
    v6 = *(a1 + 32);

    [v6 setModified:1];
  }
}

void __PCSEngineExtractKeys_block_invoke_582(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v5)
  {

    CFRelease(v5);
  }

  else
  {
    PCSIdentitySetAddIdentity([*(a1 + 32) set], a3);
    v6 = *(a1 + 32);

    [v6 setModified:1];
  }
}

void __PCSEngineSynchronizeWithLocalstore_block_invoke(uint64_t a1, const void *a2)
{
  v4 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], a2, 0);
  if (v4)
  {

    CFRelease(v4);
  }

  else
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

void __PCSEngineSynchronizeWithLocalstore_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceName = PCSIdentityGetServiceName(a3);
  v7 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v7)
  {

    CFRelease(v7);
    return;
  }

  PCSMigrationLog([*(a1 + 32) log], @"adding local service to memory store: %@", a3);
  if (ServiceName && CFSetContainsValue(*(a1 + 40), ServiceName))
  {
    IsCurrentIdentity = _PCSIdentitySetIsCurrentIdentity(*(a1 + 48), a3);
    v9 = [*(a1 + 32) set];
    if (IsCurrentIdentity)
    {
      PCSIdentitySetSetCurrentIdentity(v9, a3);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = [*(a1 + 32) set];
  }

  PCSIdentitySetAddIdentity(v9, a3);
LABEL_11:
  IsManatee = _PCSIdentityIsManatee(a3);
  v11 = *(a1 + 32);
  if (IsManatee)
  {
    v12 = [v11 log];

    PCSMigrationLog(v12, @"was a manatee identity, skipping update of metadata");
  }

  else
  {

    [v11 setModified:1];
  }
}

void __PCSEngineSynchronizeWithLocalstore_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = _PCSIdentitySetCopyCurrentIdentityInternal(*(a1 + 40), a2, 0);
  if (v4)
  {
    v5 = v4;
    v6 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], a2, 0);
    if (v6)
    {
      v7 = v6;
      if (!CFEqual(v5, v6))
      {
        PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], v5);
      }

      CFRelease(v5);
    }

    else
    {
      PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], v5);
      v7 = v5;
    }

    CFRelease(v7);
  }
}

void SynchronizeLocalKeyFile(void *a1, void *a2, void *a3, const void **a4)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = _PCSServiceItemsGetTooRolledServiceTypes();
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__2;
  v38[4] = __Block_byref_object_dispose__2;
  v39 = 0;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = [v11 options];
  Value = CFDictionaryGetValue(v14, kPCSSetupDSID[0]);
  v16 = Value;
  if (!Value || (v17 = CFGetTypeID(Value), v17 != CFStringGetTypeID()))
  {
    _PCSErrorContext([v11 log], a4, 121, @"Missing parameter: dsid");
    goto LABEL_13;
  }

  v18 = PCSCurrentPersonaMatchesDSID(v16);
  if (a4)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = kPCSErrorDomain;
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"Current persona does not match chosen dsid";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *a4 = [v24 errorWithDomain:v25 code:152 userInfo:v26];

LABEL_13:
    v22 = 0;
    v20 = 0;
LABEL_14:
    v21 = 0;
    v23 = 0;
    goto LABEL_15;
  }

  if (kPCSSetupDSIDAny[0] && CFEqual(v16, kPCSSetupDSIDAny[0]))
  {
    goto LABEL_13;
  }

  v20 = LocalStorageCreatePath(v16, v12, v13);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_14;
  }

  v41[0] = 0;
  v21 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v20 options:0 error:v41];
  v22 = v41[0];
  if (v21)
  {
    v23 = PCSIdentitySetCreateFromExternalForm(0, v21, 0, a4);
    goto LABEL_15;
  }

  PCSMigrationLog([v11 log], @"Failed reading local backup: %@: %@", v12, v22);
  if (!a4)
  {
    goto LABEL_14;
  }

  v33 = *a4;
  if (*a4)
  {
    *a4 = 0;
    CFRelease(v33);
  }

  v22 = v22;
  v21 = 0;
  v23 = 0;
  *a4 = v22;
LABEL_15:

  if (v23)
  {
    v27 = PCSIdentitySetCopyIdentities(v23, 0);
    if (v27)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __SynchronizeLocalKeyFile_block_invoke;
      context[3] = &unk_1E7B19448;
      v35 = v11;
      v36 = v10;
      v37 = v38;
      CFDictionaryApplyFunction(v27, apply_block_2_3, context);
      CFRelease(v23);
      CFRelease(v27);
      if (a4)
      {
        v28 = *a4;
        if (*a4)
        {
          *a4 = 0;
          CFRelease(v28);
        }
      }
    }

    else
    {
      CFRelease(v23);
    }
  }

  else
  {
    v29 = [v11 log];
    if (a4)
    {
      v30 = *a4;
    }

    else
    {
      v30 = 0;
    }

    PCSMigrationLog(v29, @" open local storage failed: %@", v30);
    if (a4)
    {
      v31 = *a4;
      if (*a4)
      {
        *a4 = 0;
        CFRelease(v31);
      }
    }
  }

  _Block_object_dispose(v38, 8);

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1B22CAF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SynchronizeLocalKeyFile_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceName = PCSIdentityGetServiceName(a3);
  v7 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], a2);
  if (v7)
  {

    CFRelease(v7);
    return;
  }

  if (_PCSIdentityIsManatee(a3) && (PCSIdentityIsNewManatee(a3) & 1) == 0)
  {
    PCSMigrationLog([*(a1 + 32) log], @"Skip recovering old manatee identity (%@) from keyfile", a3);
    return;
  }

  if (ServiceName && [*(a1 + 40) containsObject:ServiceName])
  {
    PCSMigrationLog([*(a1 + 32) log], @"Skip tooRolled identity (%@) from keyfile", a3);
    return;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (ServiceName)
    {
LABEL_12:
      v8 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 32) set], ServiceName, 0);
      goto LABEL_16;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AD60] string];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (ServiceName)
    {
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_16:
  PCSIdentitySetAddIdentity([*(a1 + 32) set], a3);
  if (ServiceName && !v8)
  {
    PCSIdentitySetSetCurrentIdentity([*(a1 + 32) set], a3);
  }

  [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Identity %@ of service %@ existed in backup (but not in local storage)\n", PCSIdentityGetPublicKey(a3), ServiceName];
  if (v8)
  {
    CFRelease(v8);
  }

  v12 = *(a1 + 32);

  [v12 setModified:1];
}

void __PCSEngineStepValidateRegistry_block_invoke(uint64_t a1, void *key)
{
  if ((PCSServiceItemTypeIsManatee(key) & 1) != 0 || [*(a1 + 32) containsObject:key])
  {
    PCSMigrationLog([*(a1 + 40) log], @"Registry contains Manatee service: %@", key);
    if (*(a1 + 48) == 1)
    {
      if (![*(a1 + 40) removeFromRegistry])
      {
        [*(a1 + 40) setRemoveFromRegistry:{CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])}];
      }

      CFArrayAppendValue([*(a1 + 40) removeFromRegistry], key);
      v4 = *(a1 + 40);

      [v4 setModified:1];
    }
  }
}

void __PCSEngineStepValidateRegistry_block_invoke_2(uint64_t a1, void *key)
{
  if (PCSServiceItemTypeIsManatee(key) & 1) != 0 || ([*(a1 + 32) containsObject:key])
  {
    return;
  }

  v4 = _PCSIdentitySetCopyCurrentIdentityInternal([*(a1 + 40) set], key, 0);
  if (!v4 || (v5 = v4, v6 = PCSIdentityCheckValidPublicKey(v4, 0), CFRelease(v5), v6))
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    v8 = PCSIdentitySetCopyOrderedIdentities([*(a1 + 40) set], key);
    if (!v8)
    {
      goto LABEL_29;
    }

    v9 = v8;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSEngineStepValidateRegistry_block_invoke_3;
    context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    context[4] = Mutable;
    v28.length = CFArrayGetCount(v8);
    v28.location = 0;
    CFArrayApplyFunction(v9, v28, apply_block_1_2, context);
    CFRelease(v9);
    if (![*(a1 + 40) oldRegistry])
    {
      goto LABEL_29;
    }

    Value = CFDictionaryGetValue([*(a1 + 40) oldRegistry], key);
    if (PCSEngineIgnoreService(key))
    {
      if (Value)
      {
        [*(a1 + 40) setModified:1];
      }

      goto LABEL_10;
    }

    if (!Value || (v11 = CFGetTypeID(Value), v11 != CFDictionaryGetTypeID()) || (v12 = CFDictionaryGetValue(Value, kPCSSecureBackupCFKeyRegistryPublicIdentities[0]), !isArray(v12)) || (Count = CFArrayGetCount(v12)) == 0)
    {
LABEL_29:
      v23 = 1;
      goto LABEL_30;
    }

    v14 = Count;
    if (Count < 1)
    {
      if (!CFSetGetCount(Mutable))
      {
LABEL_10:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

      v23 = 0;
    }

    else
    {
      v26 = 0;
      v15 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15 - 1);
        if (!ValueAtIndex)
        {
          break;
        }

        v17 = ValueAtIndex;
        v18 = CFGetTypeID(ValueAtIndex);
        if (v18 != CFDataGetTypeID())
        {
          break;
        }

        v19 = PCSPublicIdentityCreateWithPublicKeyInfo(v17, 0);
        if (!v19)
        {
          PCSMigrationLog([*(a1 + 40) log], @"Failed to parse identity: %@", v17);
          break;
        }

        v20 = v19;
        ServiceName = PCSPublicIdentityGetServiceName(v19);
        v22 = ServiceName;
        v23 = ServiceName == 0;
        if (ServiceName)
        {
          if (CFEqual(ServiceName, key))
          {
            PublicID = PCSPublicIdentityGetPublicID(v20);
            if (PublicID)
            {
              v25 = PublicID;
              PCSMigrationLog([*(a1 + 40) log], @"Found identity %@ in registry for %@", PublicID, key);
              CFSetRemoveValue(Mutable, v25);
            }
          }

          else
          {
            PCSMigrationLog([*(a1 + 40) log], @"Need regen of registry since %@ have the service %@ (%@) in it", key, v20, v22);
            v26 = 1;
          }
        }

        CFRelease(v20);
        if (v15 < v14)
        {
          ++v15;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_42;
      }

      v23 = 1;
LABEL_42:
      if (!CFSetGetCount(Mutable))
      {
        if ((v26 & 1) == 0)
        {
LABEL_30:
          if (Mutable)
          {
            CFRelease(Mutable);
            if (!v23)
            {
              return;
            }
          }

          else if (!v23)
          {
            return;
          }

          goto LABEL_34;
        }

LABEL_44:
        PCSMigrationLog([*(a1 + 40) log], @"Triggering update for metadata");
        [*(a1 + 40) setModified:1];
        goto LABEL_30;
      }
    }

    PCSMigrationLog([*(a1 + 40) log], @"Identities not in registry, updating needed: %@", key);
    goto LABEL_44;
  }

LABEL_34:
  if (![*(a1 + 40) missingFromRegistry])
  {
    [*(a1 + 40) setMissingFromRegistry:{CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])}];
  }

  CFArrayAppendValue([*(a1 + 40) missingFromRegistry], key);
  [*(a1 + 40) setModified:1];
}

void __PCSEngineStepValidateRegistry_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  PublicKey = PCSIdentityGetPublicKey(a2);

  CFSetAddValue(v2, PublicKey);
}

void __PCSEngineStepValidateLooseLeaves_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDataGetTypeID())
    {
      v5 = PCSBackupCopyRecoveredKeyWithIdentitySet([*(a1 + 32) set], *(a1 + 40), cf, 0);
      if (v5)
      {
        v6 = v5;
        PublicKey = PCSIdentityGetPublicKey(v5);
        v8 = PCSIdentitySetCopyIdentity([*(a1 + 32) set], PublicKey);
        if (v8)
        {
          CFRelease(v8);
        }

        else
        {
          PCSMigrationLog([*(a1 + 32) log], @"Identity %@ not found locally, adding it from LooseLeaves", v6);
          PCSIdentitySetAddIdentity([*(a1 + 32) set], v6);
          [*(a1 + 32) setModified:1];
        }

        CFDictionarySetValue(*(a1 + 56), PublicKey, v6);

        CFRelease(v6);
      }

      else
      {
        PCSMigrationLog([*(a1 + 32) log], @"Service %@ have an un-decrypted item", *(a1 + 48));
      }
    }
  }
}

uint64_t __PCSEngineStepValidateLooseLeaves_block_invoke_2(uint64_t a1, uint64_t a2)
{
  PublicKey = PCSIdentityGetPublicKey(a2);
  result = CFDictionaryContainsKey(*(a1 + 40), PublicKey);
  if (!result)
  {
    result = _PCSIdentityIsManatee(a2);
    if ((result & 1) == 0)
    {
      AddLeaf(*(a1 + 48), [*(a1 + 32) escrowIdentity], a2);
      PCSMigrationLog([*(a1 + 32) log], @"Local identity %@ missing in LooseLeaves, adding it", a2);
      v6 = *(a1 + 32);

      return [v6 setModified:1];
    }
  }

  return result;
}

void AddLeaf(__CFArray *a1, uint64_t a2, uint64_t a3)
{
  EscrowedKeyWithIdentity = PCSBackupCreateEscrowedKeyWithIdentity(a2, a3, 0);
  if (EscrowedKeyWithIdentity)
  {
    v5 = EscrowedKeyWithIdentity;
    CFArrayAppendValue(a1, EscrowedKeyWithIdentity);

    CFRelease(v5);
  }
}

uint64_t __PCSEngineStepValidateLooseLeaves_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _PCSIdentityIsManatee(a3);
  if ((result & 1) == 0)
  {
    AddLeaf(*(a1 + 40), [*(a1 + 32) escrowIdentity], a3);
    PCSMigrationLog([*(a1 + 32) log], @"Re-adding preexisting LooseLeaves identity %@", a3);
    v6 = *(a1 + 32);

    return [v6 setModified:1];
  }

  return result;
}

void applyOptions(void *a1, __CFDictionary *a2)
{
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupUsername[0]);
  v6 = [v3 options];
  v7 = CFDictionaryGetValue(v6, kPCSSetupPassword[0]);
  v8 = [v3 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupAuthToken[0]);
  v10 = [v3 options];
  v11 = CFDictionaryGetValue(v10, kPCSSetupEscrowURL[0]);
  v12 = [v3 options];
  v13 = CFDictionaryGetValue(v12, kPCSSetupiCloudEnvironment[0]);
  v14 = [v3 options];

  v15 = CFDictionaryGetValue(v14, kPCSSetupDSID[0]);
  if (Value)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994DD0], Value);
  }

  if (v7)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994E10], v7);
  }

  if (v9)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994DE0], v9);
  }

  if (v11)
  {
    CFDictionarySetValue(a2, *MEMORY[0x1E6994E00], v11);
  }

  if (v15)
  {
    if (!PCSCurrentPersonaMatchesDSID(v15))
    {
      return;
    }

    CFDictionarySetValue(a2, *MEMORY[0x1E6994DF0], v15);
  }

  if (v13)
  {
    v16 = *MEMORY[0x1E6994E20];

    CFDictionarySetValue(a2, v16, v13);
  }
}

intptr_t __PCSEngineStoreHSM_block_invoke_736(uint64_t a1, const void *a2)
{
  if (a2)
  {
    PCSMigrationLog([*(a1 + 32) log], @"_PCSSecureBackupEnableWithInfo: %@", a2);
    v4 = *(a1 + 56);
    if (v4)
    {
      *v4 = a2;
      CFRetain(a2);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

intptr_t __PCSEngineStoreHSM_block_invoke_2(uint64_t a1, const void *a2)
{
  v4 = [*(a1 + 32) log];
  v5 = [*(a1 + 32) newHSMContent];
  v6 = "Enable";
  if (!v5)
  {
    v6 = "UpdateMetadata";
  }

  PCSMigrationLog(v4, @"_PCSSecureBackup%sWithInfo: %@", v6, a2);
  if (a2)
  {
    if (*(a1 + 56))
    {
      **(a1 + 56) = CFRetain(a2);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

uint64_t __GetDroppedServiceArray_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = kPCSServiceFDE;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  GetDroppedServiceArray_array = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void __CreateKeyRegistry_block_invoke(uint64_t a1, const void *a2)
{
  PCSMigrationLog([*(a1 + 32) log], @"  Removing Manatee service from registry: %@", a2);
  v4 = *(a1 + 40);

  CFDictionaryRemoveValue(v4, a2);
}

void __CreateKeyRegistry_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = 0;
  if (PCSEngineIgnoreService(a2))
  {
    v4 = *(a1 + 48);

    CFDictionaryRemoveValue(v4, a2);
  }

  else if ((PCSServiceItemTypeIsManatee(a2) & 1) == 0 && ([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = PCSIdentitySetCopyPublishableIdentities([*(a1 + 40) set], a2, &v16);
    if (v5)
    {
      PCSMigrationLog([*(a1 + 40) log], @"  Updating service %@ registry", a2);
      Value = CFDictionaryGetValue(v5, kPCSSecureBackupCFKeyRegistryPublicIdentities[0]);
      if (Value)
      {
        v7 = Value;
        v8 = CFGetTypeID(Value);
        if (v8 == CFArrayGetTypeID())
        {
          v14[0] = 0;
          v14[1] = v14;
          v14[2] = 0x2020000000;
          v15 = 0;
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __CreateKeyRegistry_block_invoke_3;
          v11[3] = &unk_1E7B19560;
          v12 = *(a1 + 40);
          v13 = v14;
          v9 = v11;
          v18.length = CFArrayGetCount(v7);
          v18.location = 0;
          CFArrayApplyFunction(v7, v18, apply_block_1_2, v9);

          _Block_object_dispose(v14, 8);
        }
      }

      CFDictionarySetValue(*(a1 + 48), a2, v5);
    }

    v10 = v16;
    if (v16)
    {
      v16 = 0;
      CFRelease(v10);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void sub_1B22CBEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CreateKeyRegistry_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) log];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  PCSMigrationLog(v4, @"     %d: %@", v6, a2);
}

void __PCSEngineStoreLocal_block_invoke(uint64_t a1, uint64_t a2)
{
  PublicKey = PCSIdentityGetPublicKey(a2);
  if (![*(a1 + 32) limitLocalStoring] || (ServiceName = PCSIdentityGetServiceName(a2)) != 0 && IsLocalStoringService(*(a1 + 32), ServiceName))
  {
    IsManatee = _PCSIdentityIsManatee(a2);
    v7 = PCSIdentitySetCopyIdentity(*(a1 + 40), PublicKey);
    if (v7)
    {
      CFRelease(v7);
      if (IsManatee)
      {
        return;
      }
    }

    else
    {
      PCSMigrationLog([*(a1 + 32) log], @"adding service to localStore: %@", a2);
      PCSIdentitySetAddIdentity(*(a1 + 40), a2);
      [*(a1 + 32) setModified:1];
      if (IsManatee)
      {
        return;
      }
    }

    if (_PCSIdentitySetIsCurrentIdentity([*(a1 + 32) set], a2) && (_PCSIdentitySetIsCurrentIdentity(*(a1 + 40), a2) & 1) == 0)
    {
      PCSMigrationLog([*(a1 + 32) log], @"marking identity current: %@", a2);
      PCSIdentitySetSetCurrentIdentity(*(a1 + 40), a2);
      v8 = *(a1 + 32);

      [v8 setModified:1];
    }
  }
}

BOOL StoreLocalKeyfile(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, const void **a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  ExternalForm = PCSIdentitySetCreateExternalForm(0, [a1 set], 0, v15, a7);

  if (ExternalForm)
  {
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    [v17 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];

    v18 = LocalStorageCreatePath(a2, v13, v14);
    v19 = v18 != 0;
    if (v18)
    {
      [ExternalForm writeToFile:v18 options:a6 error:0];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __PCSEngineAddMissingCurrentPointers_block_invoke(uint64_t a1, __CFString *key)
{
  v54[9] = *MEMORY[0x1E69E9840];
  if ((PCSServiceItemTypeIsManatee(key) & 1) == 0)
  {
    v4 = dispatch_semaphore_create(0);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    if (PCSServiceItemGetCKKSViewByName(key))
    {
      PCSServiceItemGetAccessGroupByName(key);
      cf[1] = MEMORY[0x1E69E9820];
      cf[2] = 3221225472;
      cf[3] = __PCSEngineAddMissingCurrentPointers_block_invoke_844;
      cf[4] = &unk_1E7B195D8;
      v37 = &v45;
      v38 = &v41;
      v5 = *(a1 + 40);
      v39 = key;
      v40 = v5;
      v6 = v4;
      v36 = v6;
      SecItemFetchCurrentItemAcrossAllDevices();
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v46 + 24) == 1)
      {
        v7 = pcsLogObjForScope("ckks");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = key;
          _os_log_impl(&dword_1B229C000, v7, OS_LOG_TYPE_DEFAULT, "Found current item pointer for service %@", buf, 0xCu);
        }

        if (v42[3])
        {
          v8 = [*(a1 + 32) set];
          if ((_PCSIdentitySetIsCurrentIdentity(v8, v42[3]) & 1) == 0)
          {
            v9 = pcsLogObjForScope("ckks");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = key;
              _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "Current item for %@ does not have current bit set, attempting to fix", buf, 0xCu);
            }

            cf[0] = 0;
            v10 = [*(a1 + 32) set];
            if ((PCSIdentitySetSetCurrentIdentityWithError(v10, v42[3], cf) & 1) == 0)
            {
              v11 = pcsLogObjForScope("ckks");
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v50 = cf[0];
                _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "Failed to set current bit: %@", buf, 0xCu);
              }
            }

            v12 = cf[0];
            if (cf[0])
            {
              cf[0] = 0;
              CFRelease(v12);
            }
          }
        }

        v13 = v42[3];
        if (v13)
        {
          v42[3] = 0;
          CFRelease(v13);
        }
      }

      else
      {
        IndexByName = PCSServiceItemGetIndexByName(key);
        if (IndexByName)
        {
          v16 = *MEMORY[0x1E697AFF8];
          v54[0] = *MEMORY[0x1E697B018];
          v17 = *MEMORY[0x1E697AEF8];
          v53[0] = v16;
          v53[1] = v17;
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IndexByName | 0x10000];
          v19 = *MEMORY[0x1E697B310];
          v54[1] = v18;
          v54[2] = MEMORY[0x1E695E118];
          v20 = *MEMORY[0x1E697B318];
          v53[2] = v19;
          v53[3] = v20;
          v21 = *MEMORY[0x1E697B320];
          v54[3] = MEMORY[0x1E695E118];
          v54[4] = MEMORY[0x1E695E118];
          v22 = *MEMORY[0x1E697AEB0];
          v53[4] = v21;
          v53[5] = v22;
          v23 = *MEMORY[0x1E697AE70];
          v54[5] = MEMORY[0x1E695E118];
          v54[6] = kPCSServiceName[0];
          v24 = *MEMORY[0x1E697AE80];
          v53[6] = v23;
          v53[7] = v24;
          v54[7] = *(a1 + 40);
          v53[8] = *MEMORY[0x1E697AEA8];
          v54[8] = PCSServiceItemGetViewHintByName(key);
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:9];

          cf[0] = 0;
          v26 = SecItemCopyMatching(v25, cf);
          if (v26)
          {
            v27 = pcsLogObjForScope("ckks");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v50 = key;
              v51 = 1024;
              v52 = v26;
              _os_log_impl(&dword_1B229C000, v27, OS_LOG_TYPE_DEFAULT, "Failed to get current in local keychain for service %@: %d", buf, 0x12u);
            }
          }

          else
          {
            v28 = cf[0];
            if (cf[0])
            {
              v29 = [cf[0] objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];

              v30 = [v28 objectForKeyedSubscript:*MEMORY[0x1E697AE68]];

              if (v29 && v30)
              {
                PCSServiceItemGetAccessGroupByName(key);
                v33 = v28;
                v34 = v6;
                SecItemSetCurrentItemAcrossAllDevices();
                dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
              }

              else
              {
                v31 = pcsLogObjForScope("ckks");
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v50 = key;
                  _os_log_impl(&dword_1B229C000, v31, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS pref and digest %@", buf, 0xCu);
                }
              }
            }
          }
        }

        else
        {
          v25 = pcsLogObjForScope("ckks");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v50 = key;
            _os_log_impl(&dword_1B229C000, v25, OS_LOG_TYPE_DEFAULT, "Failed to get service ID for %@", buf, 0xCu);
          }
        }
      }

      v14 = v36;
    }

    else
    {
      v14 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = key;
        _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS view for service %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v45, 8);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1B22CC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

intptr_t __PCSEngineAddMissingCurrentPointers_block_invoke_844(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 && !a3)
  {
    goto LABEL_6;
  }

  v6 = pcsLogObjForScope("ckks");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS current item pointer for service %@: %@", &v10, 0x16u);
  }

  if (a2)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = PCSIdentityCreateFromPersistentReference(a2, *(a1 + 64));
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

intptr_t __PCSEngineAddMissingCurrentPointers_block_invoke_847(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = pcsLogObjForScope("ckks");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = a2;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Failed to setting CKKS current for service %@: %@", &v11, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Set CKKS current for service %@ to the identity: %@", &v11, 0x16u);
  }

  result = dispatch_semaphore_signal(*(a1 + 40));
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCSEnginePreCheckHSMWrite(void *a1, const void **a2)
{
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupStingray[0]);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && !CFBooleanGetValue(v6))
    {
      goto LABEL_8;
    }
  }

  v8 = [v3 options];
  v9 = CFDictionaryGetValue(v8, kPCSSetupUsername[0]);
  v10 = [v3 options];
  v11 = CFDictionaryGetValue(v10, kPCSSetupPassword[0]);
  if (!v9 || (v12 = v11, v13 = CFGetTypeID(v9), v13 != CFStringGetTypeID()))
  {
    PCSEnginePreCheckHSMWrite_cold_2(v3, a2);
LABEL_12:
    v15 = 0;
    goto LABEL_9;
  }

  if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFStringGetTypeID()))
  {
    PCSEnginePreCheckHSMWrite_cold_1(v3, a2);
    goto LABEL_12;
  }

LABEL_8:
  v15 = 1;
LABEL_9:

  return v15;
}

uint64_t PCSEngineStepEnableiCDP(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setICDP:{objc_msgSend(v1, "iCDPHSM")}];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMWalrus:0];
  [v1 setICDPHSMPlesio:0];

  return 1;
}

uint64_t PCSEngineNotifyKeyChanges(void *a1)
{
  v1 = a1;
  if (([v1 modified] & 1) != 0 || objc_msgSend(v1, "newIdentity"))
  {
    notify_post("com.apple.ProtectedCloudStorage.updatedKeys");
    _PCSPostHaveCredentials();
  }

  return 1;
}

Class __getAKAccountManagerClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AuthKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B19648;
    v7 = 0;
    AuthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (AuthKitLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
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
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAccountManagerClass_block_invoke_cold_1();
  }

  getAKAccountManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void PCSEngineFixOctagonW(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = MEMORY[0x1E69B7CC8];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  v9 = objc_alloc_init(MEMORY[0x1E69B7CE8]);
  [v9 setEnabled:a3];
  [v8 setWalrus:v9];
  v14 = 0;
  v10 = [v7 setAccountSetting:v8 error:&v14];

  v11 = v14;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    PCSMigrationLog([v5 log], @"Failed to set account setting :%@", v11);
  }
}

uint64_t PCSEngineStepEnableiCDPIfArmed(void *a1, const void **a2)
{
  v3 = a1;
  v4 = [v3 newIdentity];
  if (v4)
  {
    _PCSError(a2, 62, @"can't close door with new identity");
  }

  else
  {
    [v3 setModified:1];
    if ([v3 iCDPHSMArmed])
    {
      [v3 setICDPArmed:{objc_msgSend(v3, "iCDPHSMArmed")}];
      v5 = [v3 iCDPHSMArmed];
    }

    else
    {
      [v3 setICDPArmed:{objc_msgSend(v3, "iCDPHSM")}];
      v5 = [v3 iCDPHSM];
    }

    [v3 setICDP:v5];
    [v3 setICDPHSMWalrus:0];
    [v3 setICDPHSMPlesio:0];
  }

  return v4 ^ 1u;
}

uint64_t PCSEngineStepDropStingray(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setDropHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPPlesio:1];
  [v1 setICDPHSMPlesio:1];

  return 1;
}

uint64_t PCSEngineFailOnNotDroppedKeys(void *a1, const void **a2)
{
  v3 = a1;
  if ([v3 iCDPHSMWalrus] & 1) != 0 || (objc_msgSend(v3, "iCDPHSMPlesio"))
  {
    v4 = 1;
  }

  else
  {
    _PCSError(a2, 160, @"Keys was NOT dropped from HSM");
    v4 = 0;
  }

  return v4;
}

uint64_t PCSEngineStepUndropStingray(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setRestoreHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMPlesio:0];

  return 1;
}

uint64_t PCSEngineUnsetCurrentItems(void *a1, const void **a2)
{
  v3 = a1;
  if (_os_feature_enabled_impl())
  {
    v4 = PCSIdentitySetCreate([v3 options], 0, a2);
    if (v4)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v5 = _PCSServiceItemsGetNoRollStingrayServiceTypes();
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __PCSEngineUnsetCurrentItems_block_invoke;
      v17[3] = &unk_1E7B19668;
      v7 = v5;
      v18 = v7;
      v19 = v3;
      v21 = &v27;
      v22 = v4;
      v8 = v6;
      v20 = v8;
      PCSServiceItemsGetEachName(v17);
      if (*(v28 + 24) == 1)
      {
        _PCSError(a2, 4, @"Failed to make one or more current identities non-current");
      }

      else if (_PCSRunningInUnitTests())
      {
        *(v24 + 24) = 1;
      }

      else
      {
        v9 = dispatch_semaphore_create(0);
        v10 = off_1ED6F2380;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __PCSEngineUnsetCurrentItems_block_invoke_2;
        v13[3] = &unk_1E7B18B68;
        v15 = &v23;
        v16 = a2;
        v11 = v9;
        v14 = v11;
        v10(@"com.apple.ProtectedCloudStorage", v8, @"ProtectedCloudStorage", v13);
        dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      }

      CFRelease(v4);
      LOBYTE(v4) = *(v24 + 24);

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(&v27, 8);
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

void sub_1B22CD3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t PCSEngineStepEnableWalrus(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setDropHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMWalrus:1];

  return 1;
}

uint64_t PCSEngineAddMissingCurrentPointersWithFFCheck(void *a1, const void **a2)
{
  v3 = a1;
  if (_os_feature_enabled_impl())
  {
    v4 = 1;
  }

  else
  {
    v4 = PCSEngineAddMissingCurrentPointers(v3, a2);
  }

  return v4;
}

uint64_t PCSEngineStepInitiateKeyRolling(void *a1, const void **a2)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!_os_feature_enabled_impl())
  {
    v5 = +[PCSAnalytics logger];
    [v5 logSuccessForEvent:@"PCSEventInitiateKeyRolling"];
    [v3 setModified:1];
    v6 = [v3 options];
    Value = CFDictionaryGetValue(v6, kPCSSetupDSID[0]);
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()))
    {
      v10 = PCSCurrentPersonaMatchesDSID(v8);
      if (!a2 || v10)
      {
        v16 = _PCSServiceItemsGetNoRollStingrayServiceTypes();
        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v49 = 0;
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v45 = 0;
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __PCSEngineStepInitiateKeyRolling_block_invoke;
        v31 = &unk_1E7B19690;
        v17 = v16;
        v32 = v17;
        v18 = v3;
        v36 = &v42;
        v37 = v8;
        v33 = v18;
        v34 = &v46;
        v35 = &v38;
        PCSServiceItemsGetEachName(&v28);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%u", @"PCSEventMarkForKeyRolling", *(v47 + 6)];
        if (*(v43 + 6) || *(v39 + 6))
        {
          v20 = [v18 log];
          PCSMigrationLog(v20, @"While marking identities for rolling: %u marked, %u failed to find, %u failed to mark", *(v47 + 6), *(v43 + 6), *(v39 + 6), v28, v29, v30, v31, v32);
          v21 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:158 userInfo:0];
          v50[0] = @"markedToRoll";
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v47 + 6)];
          v51[0] = v22;
          v50[1] = @"failedToMark";
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v43 + 6)];
          v51[1] = v23;
          v50[2] = @"notFoundToMark";
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v39 + 6)];
          v51[2] = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
          [v5 logRecoverableError:v21 forEvent:v19 withAttributes:v25];
        }

        else
        {
          [v5 logSuccessForEvent:v19];
        }

        v26 = objc_alloc_init(MEMORY[0x1E695E000]);
        v27 = [MEMORY[0x1E695DF00] distantPast];
        [v26 setObject:v27 forKey:kPCSSettingStingrayRoll];

        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&v46, 8);

        v4 = 1;
        goto LABEL_10;
      }

      v11 = MEMORY[0x1E696ABC0];
      v12 = kPCSErrorDomain;
      v52 = *MEMORY[0x1E696A578];
      v53[0] = @"Current persona does not match chosen dsid";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      *a2 = [v11 errorWithDomain:v12 code:152 userInfo:v13];
    }

    else
    {
      _PCSErrorContext([v3 log], a2, 121, @"Missing parameter: dsid");
    }

    v4 = 0;
LABEL_10:

    goto LABEL_11;
  }

  PCSMigrationLog([v3 log], @"Feature enabled, skipping");
  v4 = 1;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B22CD914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void __PCSEngineUnsetCurrentItems_block_invoke(uint64_t a1, __CFString *a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((PCSServiceItemTypeIsManatee(a2) & 1) == 0 && ([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    AccessGroupByName = PCSServiceItemGetAccessGroupByName(a2);
    if (CFEqual(@"com.apple.ProtectedCloudStorage", AccessGroupByName))
    {
      CKKSViewByName = PCSServiceItemGetCKKSViewByName(a2);
      if (CFEqual(@"ProtectedCloudStorage", CKKSViewByName))
      {
        v11 = 0;
        v7 = PCSIdentitySetUnsetCurrentIdentity(*(a1 + 64), a2, &v11);
        v8 = *(a1 + 40);
        if (v7)
        {
          if (PCSIdentitySetUnsetCurrentIdentity([v8 set], a2, &v11))
          {
            [*(a1 + 48) addObject:a2];
            goto LABEL_13;
          }

          v10 = [*(a1 + 40) log];
          PCSMigrationLog(v10, @"Failed to unset current identity in set: %@", v11);
        }

        else
        {
          v9 = [v8 log];
          PCSMigrationLog(v9, @"Failed to unset current identity: %@", v11);
        }
      }

      else
      {
        PCSMigrationLog([*(a1 + 40) log], @"Incorrect view for %@", a2);
      }
    }

    else
    {
      PCSMigrationLog([*(a1 + 40) log], @"Incorrect access group for %@", a2);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_13:
  objc_autoreleasePoolPop(v4);
}

intptr_t __PCSEngineUnsetCurrentItems_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  v3 = *(*(a1 + 40) + 8);
  if (cf)
  {
    *(v3 + 24) = 0;
    if (*(a1 + 48))
    {
      **(a1 + 48) = CFRetain(cf);
    }
  }

  else
  {
    *(v3 + 24) = 1;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void __PCSEngineStepInitiateKeyRolling_block_invoke(uint64_t a1, const __CFNumber *a2)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if ((PCSServiceItemTypeIsManatee(a2) & 1) == 0 && ([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    IndexByName = PCSServiceItemGetIndexByName(a2);
    if (IndexByName)
    {
      v6 = IndexByName;
      v7 = *MEMORY[0x1E697B018];
      v8 = *MEMORY[0x1E697AEB0];
      v22[0] = *MEMORY[0x1E697AFF8];
      v22[1] = v8;
      v9 = MEMORY[0x1E695E118];
      v23[0] = v7;
      v23[1] = MEMORY[0x1E695E118];
      v10 = *MEMORY[0x1E697AE80];
      v22[2] = *MEMORY[0x1E697AE70];
      v22[3] = v10;
      v11 = *(a1 + 72);
      v23[2] = kPCSServiceName[0];
      v23[3] = v11;
      v22[4] = *MEMORY[0x1E697AEF8];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IndexByName | 0x10000];
      v23[4] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];

      v20 = *MEMORY[0x1E697AD10];
      v21 = v9;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v15 = qword_1ED6F2358(v13, v14);
      if (v15 == -25300)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        PCSMigrationLog([*(a1 + 40) log], @"Failed to find identity for service %@ to mark for rolling", a2);
      }

      else if (v15)
      {
        ++*(*(*(a1 + 64) + 8) + 24);
        PCSMigrationLog([*(a1 + 40) log], @"Failed to mark identities for service %@ for rolling: %d", a2, v15);
      }

      else
      {
        ++*(*(*(a1 + 48) + 8) + 24);
        v16 = [*(a1 + 40) options];
        v17 = CFDictionaryGetValue(v16, kPCSSetupCallbackMarkNegative[0]);
        v18 = v17;
        if (v17)
        {
          (*(v17 + 16))(v17, *(a1 + 72), v6);
        }
      }
    }

    else
    {
      PCSMigrationLog([*(a1 + 40) log], @"Failed to get service ID for %@", a2);
    }
  }

  objc_autoreleasePoolPop(v4);
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t PCSEngineStepDisableWalrus(void *a1)
{
  v1 = a1;
  [v1 setModified:1];
  [v1 setRestoreHSM:1];
  [v1 setICDP:1];
  [v1 setICDPArmed:1];
  [v1 setICDPHSMWalrus:0];

  return 1;
}

BOOL PCSEngineExitOnDroppedKeys(void *a1, const void **a2)
{
  v3 = a1;
  if (([v3 iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v3, "iCDPHSMPlesio"))
  {
    v4 = v3;
    v5 = 1;
    [v4 setDone:1];
    if (![v4 set])
    {
      [v4 setSet:{PCSIdentitySetCreate(objc_msgSend(v4, "options"), 0, a2)}];
      v5 = [v4 set] != 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __GetLegacyServiceArray_block_invoke()
{
  v2[11] = *MEMORY[0x1E69E9840];
  v2[0] = kPCSServiceMaster;
  v2[1] = kPCSServiceBladerunner;
  v2[2] = kPCSServiceHyperion;
  v2[3] = kPCSServiceLiverpool;
  v2[4] = kPCSServiceEscrow;
  v2[5] = kPCSServiceFDE;
  v2[6] = kPCSServicePianoMover;
  v2[7] = kPCSServiceBackup;
  v2[8] = kPCSServiceSharing;
  v2[9] = kPCSServiceGaming;
  v2[10] = kPCSServiceBTPairing;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:11];
  _MergedGlobals_0 = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCSEngineDifferentOniCDP(void *a1)
{
  v1 = a1;
  cf = 0;
  if ([v1 iCDPHSM] && (objc_msgSend(v1, "triggerUpdate") & 1) == 0)
  {
    PCSEngineDifferentOniCDP_cold_1(v1, &cf);
  }

  else
  {
    v2 = [v1 log];
    v3 = _PCSYESNO([v1 iCDPHSM]);
    v4 = _PCSYESNO([v1 triggerUpdate]);
    PCSMigrationLog(v2, @"DifferentOniCDP: %@ triggerUpdate: %@", v3, v4);
  }

  v5 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v5);
  }

  return 1;
}

BOOL PCSEngineCreateEmptyKeyset(void *a1, const void **a2)
{
  v3 = a1;
  [v3 clearSet];
  [v3 setSet:PCSIdentitySetCreateMutable(a2)];
  v4 = [v3 set];

  return v4 != 0;
}

uint64_t PCSEnginePreCheckHSMRead(void *a1, const void **a2)
{
  v3 = a1;
  v4 = [v3 options];
  Value = CFDictionaryGetValue(v4, kPCSSetupStingray[0]);
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()) && !CFBooleanGetValue(v6) || (v8 = [v3 options], (v9 = CFDictionaryGetValue(v8, kPCSSetupUsername[0])) != 0) && (v10 = CFGetTypeID(v9), v10 == CFStringGetTypeID()))
  {
    v11 = 1;
  }

  else
  {
    PCSEnginePreCheckHSMWrite_cold_2(v3, a2);
    v11 = 0;
  }

  return v11;
}

BOOL PCSEngineForceRecover(void *a1, const void **a2)
{
  v3 = a1;
  [v3 setClassicContent:{__PCSCopyHSMData(0, objc_msgSend(v3, "log"), objc_msgSend(v3, "options"), a2)}];
  v4 = [v3 classicContent];

  return v4 != 0;
}

CFIndex OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{

  return _PCSErrorContext(a1, v4, 57, a4);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return PCSIdentityMigrateEngineRun(v0, v1);
}

void sub_1B22CF048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PCSCacheCurrentIdentitiesForServices(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  if (_os_feature_enabled_impl())
  {
    v4 = +[PCSCKKSOutOfBandFetchCache cache];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __PCSCacheCurrentIdentitiesForServices_block_invoke;
    v25[3] = &unk_1E7B197D0;
    v25[4] = &v32;
    v25[5] = &v26;
    [v4 getCurrentIdentities:a1 result:v25];

    if ([v27[5] count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v27[5];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v37 count:16];
      if (v7)
      {
        v8 = *v22;
        v9 = MEMORY[0x1E69E9C10];
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            AccessGroupByName = PCSServiceItemGetAccessGroupByName(v11);
            CKKSViewByName = PCSServiceItemGetCKKSViewByName(v11);
            if (AccessGroupByName)
            {
              v14 = CKKSViewByName == 0;
            }

            else
            {
              v14 = 1;
            }

            if (v14)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                PCSCacheCurrentIdentitiesForServices_cold_1(buf, v11, &buf[4]);
              }
            }

            else
            {
              v15 = [objc_alloc(MEMORY[0x1E697AA28]) initWithIdentifier:v11 accessGroup:AccessGroupByName zoneID:CKKSViewByName];
              [v5 addObject:v15];
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v21 objects:v37 count:16];
        }

        while (v7);
      }

      if (!v33[3])
      {
        v33[3] = PCSIdentitySetCreateMutable(0);
      }

      v20 = v19;
      SecItemFetchCurrentItemOutOfBand();
    }

    else
    {
      (*(v19 + 2))(v19, v33[3], 0);
      v17 = v33[3];
      if (v17)
      {
        v33[3] = 0;
        CFRelease(v17);
      }
    }
  }

  else
  {
    *buf = 0;
    _PCSError(buf, 164, @"feature disabled");
    (*(v19 + 2))(v19, 0, *buf);
    v16 = *buf;
    if (*buf)
    {
      *buf = 0;
      CFRelease(v16);
    }
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B22CF500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void __PCSCacheCurrentIdentitiesForServices_block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __PCSCacheCurrentIdentitiesForServices_block_invoke_53(void *a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!v5 || a3)
  {
    (*(a1[4] + 16))();
  }

  else
  {
    cf = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = *(*(a1[5] + 8) + 40);
          v14 = [v12 identifier];
          [v13 removeObject:v14];

          v15 = [v12 decryptedRecord];
          v16 = PCSIdentityCreateWithKeychainAttributes(v15);

          v17 = *(a1[6] + 8);
          v18 = *(v17 + 24);
          if (v16)
          {
            v19 = cf == 0;
          }

          else
          {
            v19 = 0;
          }

          if (!v19)
          {
            if (v18)
            {
              *(v17 + 24) = 0;
              CFRelease(v18);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            goto LABEL_21;
          }

          PCSIdentitySetAddIdentity(v18, v16);
          PCSIdentitySetSetCurrentIdentity(*(*(a1[6] + 8) + 24), v16);
          CFRelease(v16);
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    if (*(*(a1[6] + 8) + 24))
    {
      v20 = cf == 0;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = +[PCSCKKSOutOfBandFetchCache cache];
      [v21 cacheCurrentIdentityFetchResult:*(*(a1[6] + 8) + 24) notFound:*(*(a1[5] + 8) + 40)];

      v22 = *(*(a1[6] + 8) + 24);
    }

    (*(a1[4] + 16))();
    v23 = *(a1[6] + 8);
    v24 = *(v23 + 24);
    if (v24)
    {
      *(v23 + 24) = 0;
      CFRelease(v24);
    }

    v25 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v25);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void PCSCacheCurrentIdentitiesForDefaultServicesForceFetch(uint64_t a1, void *a2)
{
  v3 = a2;
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  CFSetAddValue(Mutable, @"com.apple.homekit");
  CFSetAddValue(Mutable, @"com.apple.siri.data");
  PCSCacheCurrentIdentitiesForServices(Mutable, a1, v3);

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t PCSCacheCopyIdentity(uint64_t a1)
{
  v2 = +[PCSCKKSOutOfBandFetchCache cache];
  v3 = [v2 copyIdentity:a1];

  return v3;
}

void _PCSCKKSOutOfBandFetchIdentities(void *a1, void *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v6 = a2;
  v22 = a4;
  IndexByName = PCSServiceItemGetIndexByName(v6);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v7 = +[PCSCKKSOutOfBandFetchCache cache];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___PCSCKKSOutOfBandFetchIdentities_block_invoke;
  v31[3] = &unk_1E7B197D0;
  v31[4] = &v38;
  v31[5] = &v32;
  [v7 getPCSIdentities:v23 forServiceID:IndexByName result:v31];

  v8 = v39[3];
  if (v8)
  {
    v22[2](v22, v8, 0);
    v9 = v39[3];
    if (v9)
    {
      v39[3] = 0;
      CFRelease(v9);
    }
  }

  else if ([v33[5] count])
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v33[5];
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v44 count:16];
    if (v11)
    {
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          AccessGroupByName = PCSServiceItemGetAccessGroupByName(v6);
          CKKSViewByName = PCSServiceItemGetCKKSViewByName(v6);
          if (AccessGroupByName && (v17 = CKKSViewByName) != 0)
          {
            v18 = objc_alloc(MEMORY[0x1E697AA40]);
            v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IndexByName];
            v20 = [v18 initWithServiceNumber:v19 accessGroup:AccessGroupByName publicKey:v14 zoneID:v17];

            [v24 addObject:v20];
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            PCSCacheCurrentIdentitiesForServices_cold_1(buf, v6, &v43);
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v27 objects:v44 count:16];
      }

      while (v11);
    }

    v26 = v22;
    SecItemFetchPCSIdentityOutOfBand();
  }

  else
  {
    v22[2](v22, 0, 0);
  }

  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1B22CFCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void PCSServiceItemDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      a1[2] = 0;
      CFRelease(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      a1[5] = 0;
      CFRelease(v3);
    }

    v4 = a1[6];
    if (v4)
    {
      a1[6] = 0;
      CFRelease(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      a1[4] = 0;
      CFRelease(v5);
    }

    v6 = a1[7];
    if (v6)
    {
      a1[7] = 0;
      CFRelease(v6);
    }

    v7 = a1[8];
    if (v7)
    {
      a1[8] = 0;
      CFRelease(v7);
    }

    v8 = a1[11];
    if (v8)
    {
      a1[11] = 0;

      CFRelease(v8);
    }
  }
}

uint64_t PCSServiceItemCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (v5 != v6)
      {
        return 0;
      }
    }

    else
    {
      result = CFEqual(v5, v6);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(a1 + 40);
    v9 = *(a2 + 40);
    if (v8 && v9)
    {
      return CFEqual(v8, v9) != 0;
    }

    else
    {
      return v8 == v9;
    }
  }

  return result;
}

CFStringRef PCSServiceItemCopyDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SI@%p", a1);
  v4 = @"NA";
  v5 = *(a1 + 40);
  if (!v5)
  {
    v5 = @"NA";
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (!v6)
  {
    v6 = @"NA";
  }

  if (!v7)
  {
    v7 = @"NA";
  }

  if (*(a1 + 64))
  {
    v4 = *(a1 + 64);
  }

  v8 = 121;
  if (*(a1 + 79))
  {
    v8 = 89;
  }

  if (*(a1 + 78))
  {
    v9 = 75;
  }

  else
  {
    v9 = 107;
  }

  v10 = 101;
  if (*(a1 + 77))
  {
    v10 = 69;
  }

  v11 = 97;
  if (*(a1 + 76))
  {
    v11 = 65;
  }

  v12 = 109;
  if (*(a1 + 74))
  {
    v12 = 77;
  }

  v13 = 114;
  if (*(a1 + 73))
  {
    v13 = 82;
  }

  v14 = 45;
  if (*(a1 + 72))
  {
    v14 = 55;
  }

  v15 = CFStringCreateWithFormat(v2, 0, @"<%@: [name/oldName: %@/%@] [viewHint: %@] [class: %@] [keyDescription: %@] [number: %@] [%c%c%c%c%c%c%c] %08d %08x [accessGroup: %@]", v3, *(a1 + 16), v5, v6, v7, v4, *(a1 + 32), v14, v13, v12, v11, v10, v9, v8, *(a1 + 28), *(a1 + 80), *(a1 + 88));
  if (v3)
  {
    CFRelease(v3);
  }

  return v15;
}

CFIndex PCSServiceItemsCount()
{
  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v1 = PCSServiceItemsInit_localServiceItems;

  return CFDictionaryGetCount(v1);
}

void PCSServiceItemsInfoIteration(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemsInfoIteration_block_invoke;
  v3[3] = &unk_1E7B19848;
  v4 = v1;
  v2 = v1;
  PCSServiceItemsIterate(v3);
}

uint64_t __PCSServiceItemsInfoIteration_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 74);
  v5 = *(a3 + 73);
  v6 = *(a3 + 24);
  v7 = *(a3 + 28);
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  return (*(*(a1 + 32) + 16))();
}

void PCSServiceItemsGetEachName(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemsGetEachName_block_invoke;
  v3[3] = &unk_1E7B19848;
  v4 = v1;
  v2 = v1;
  PCSServiceItemsIterate(v3);
}

uint64_t PCSServiceItemsGetCFArrayOfNames()
{
  if (PCSServiceItemsGetCFArrayOfNames_once != -1)
  {
    PCSServiceItemsGetCFArrayOfNames_cold_1();
  }

  return PCSServiceItemsGetCFArrayOfNames_array;
}

void __PCSServiceItemsGetCFArrayOfNames_block_invoke()
{
  PCSServiceItemsGetCFArrayOfNames_array = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);

  PCSServiceItemsIterate(&__block_literal_global_59);
}

void __PCSServiceItemsGetCFArrayOfNames_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!CFEqual(kPCSServiceRaw, *(a3 + 16)))
  {
    v4 = PCSServiceItemsGetCFArrayOfNames_array;
    v5 = *(a3 + 16);

    CFArrayAppendValue(v4, v5);
  }
}

uint64_t PCSServiceItemsGetCFArraySortedByIndex()
{
  if (PCSServiceItemsGetCFArraySortedByIndex_once != -1)
  {
    PCSServiceItemsGetCFArraySortedByIndex_cold_1();
  }

  return PCSServiceItemsGetCFArraySortedByIndex_array;
}

void __PCSServiceItemsGetCFArraySortedByIndex_block_invoke()
{
  PCSServiceItemsGetCFArraySortedByIndex_array = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  PCSServiceItemsIterate(&__block_literal_global_63);
  v0 = PCSServiceItemsGetCFArraySortedByIndex_array;
  v1.length = CFArrayGetCount(PCSServiceItemsGetCFArraySortedByIndex_array);
  v1.location = 0;

  CFArraySortValues(v0, v1, compareServiceItemIndex, 0);
}

uint64_t compareServiceItemIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = v2 < v3;
  v5 = v2 != v3;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void PCSServiceItemsGetInfoSortedByIndex(void *a1)
{
  v6 = a1;
  if (PCSServiceItemsGetCFArraySortedByIndex_once != -1)
  {
    PCSServiceItemsGetCFArraySortedByIndex_cold_1();
  }

  v1 = PCSServiceItemsGetCFArraySortedByIndex_array;
  Count = CFArrayGetCount(PCSServiceItemsGetCFArraySortedByIndex_array);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
      (*(v6 + 2))(v6, *(ValueAtIndex + 6), ValueAtIndex[2], *(ValueAtIndex + 74), *(ValueAtIndex + 73), *(ValueAtIndex + 7), ValueAtIndex[7], ValueAtIndex[6]);
    }
  }
}

uint64_t PCSServiceItemTypeIsShareableManatee(void *key)
{
  if (!key)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (v2)
  {
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if (CFEqual(*(v2 + 16), @"Raw"))
  {
LABEL_11:
    v3 = 0;
    return v3 & 1;
  }

LABEL_9:
  if (!PCSServiceItemTypeIsManatee(key))
  {
    goto LABEL_11;
  }

  v3 = *(v2 + 75);
  return v3 & 1;
}

void sub_1B22D0848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemCanRoll(void *key)
{
  if (!key)
  {
    goto LABEL_8;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (v2)
  {
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!CFEqual(*(v2 + 16), @"Raw"))
  {
    v3 = *(v2 + 73);
    return v3 & 1;
  }

LABEL_8:
  v3 = 0;
  return v3 & 1;
}

void sub_1B22D097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemRequireAuthorship(void *key)
{
  if (!key)
  {
    goto LABEL_8;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (!v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  _Block_object_dispose(&v6, 8);
LABEL_7:
  v3 = *(v2 + 76);
  return v3 & 1;
}

void sub_1B22D0A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *PCSServiceItemGetFlagsByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 80);
  }

  return key;
}

void sub_1B22D0BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *PCSServiceItemGetRollIntervalByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 28);
  }

  return key;
}

void sub_1B22D0CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *PCSServiceItemGetAccessClassByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 56);
  }

  return key;
}

void sub_1B22D0DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemEscrowManateeIdentityByName(void *key)
{
  if (!key)
  {
    goto LABEL_8;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (!v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  _Block_object_dispose(&v6, 8);
LABEL_7:
  v3 = *(v2 + 77);
  return v3 & 1;
}

void sub_1B22D0F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemAllowKeyExportByIndex(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PCSServiceItemGetByIndex_block_invoke;
  v4[3] = &unk_1E7B19890;
  v5 = a1;
  v4[4] = &v6;
  PCSServiceItemsIterate(v4);
  v1 = v7[3];
  _Block_object_dispose(&v6, 8);
  if (v1 && (*(v1 + 74) & 1) == 0)
  {
    v2 = *(v1 + 78);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1B22D0FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemAnonymousSharingByIndex(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PCSServiceItemGetByIndex_block_invoke;
  v4[3] = &unk_1E7B19890;
  v5 = a1;
  v4[4] = &v6;
  PCSServiceItemsIterate(v4);
  v1 = v7[3];
  _Block_object_dispose(&v6, 8);
  if (v1)
  {
    v2 = *(v1 + 79);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1B22D10B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemGetViewHintByIndex(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemGetByIndex_block_invoke;
  v3[3] = &unk_1E7B19890;
  v4 = a1;
  v3[4] = &v5;
  PCSServiceItemsIterate(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

void sub_1B22D1184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PCSServiceItemGetAccessGroupByIndex(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemGetByIndex_block_invoke;
  v3[3] = &unk_1E7B19890;
  v4 = a1;
  v3[4] = &v5;
  PCSServiceItemsIterate(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 88))
  {
    return *(v1 + 88);
  }

  return kPCSDefaultKeychainGroup[0];
}

void sub_1B22D1264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSServiceItemGetNumberByIndex(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemGetByIndex_block_invoke;
  v3[3] = &unk_1E7B19890;
  v4 = a1;
  v3[4] = &v5;
  PCSServiceItemsIterate(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_1B22D1330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFIndex PCSServiceItemsCountByFlags(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __PCSServiceItemsCountByFlags_block_invoke;
    v3[3] = &unk_1E7B19890;
    v4 = a1;
    v3[4] = &v5;
    PCSServiceItemsIterate(v3);
    v1 = v6[3];
  }

  else
  {
    v1 = PCSServiceItemsCount() - 1;
  }

  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_1B22D1400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PCSServiceItemsCountByFlags_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 80) & *(result + 40)) != 0)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

id _PCSServiceItemsGetTooRolledServiceTypes()
{
  if (_PCSServiceItemsGetTooRolledServiceTypes_onceToken != -1)
  {
    _PCSServiceItemsGetTooRolledServiceTypes_cold_1();
  }

  v1 = _PCSServiceItemsGetTooRolledServiceTypes_tooRolled;

  return v1;
}

id _PCSServiceItemsGetNoRollStingrayServiceTypes()
{
  if (_PCSServiceItemsGetNoRollStingrayServiceTypes_once != -1)
  {
    _PCSServiceItemsGetNoRollStingrayServiceTypes_cold_1();
  }

  v1 = _PCSServiceItemsGetNoRollStingrayServiceTypes_noRoll;

  return v1;
}

id _PCSServiceItemsGetAllManateeServices()
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (PCSServiceItemsGetCFArrayOfNames_once != -1)
  {
    PCSServiceItemsGetCFArrayOfNames_cold_1();
  }

  v0 = PCSServiceItemsGetCFArrayOfNames_array;
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = _PCSServiceItemsGetTooRolledServiceTypes();
  v15[0] = kPCSiCloudAccountsAttestationFramework;
  v15[1] = kPCSSafariSharedBookmarks;
  v15[2] = @"Messages2";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = ___PCSServiceItemsGetAllManateeServices_block_invoke;
  context[3] = &unk_1E7B198B8;
  v12 = v2;
  v13 = v3;
  v4 = v1;
  v14 = v4;
  v5 = v3;
  v6 = v2;
  v16.length = CFArrayGetCount(v0);
  v16.location = 0;
  CFArrayApplyFunction(v0, v16, apply_block_1_3, context);
  v7 = v14;
  v8 = v4;

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

const void *__PCSServiceItemGetByName_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 40);
  v6 = *(a1 + 40);
  if (result)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (result != v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = CFEqual(result, v6);
  if (result)
  {
LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

id _PCSGuitarfishDeriveRecoveryTokenWrap(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 length];
  if (v7 == [v6 length])
  {
    v8 = [v6 length];
    v9 = [MEMORY[0x1E695DF88] dataWithLength:v8];
    v10 = [v5 bytes];
    v11 = [v6 bytes];
    for (i = [v9 mutableBytes]; v8; --v8)
    {
      v14 = *v10++;
      v13 = v14;
      v15 = *v11++;
      *i++ = v15 ^ v13;
    }
  }

  else if (a3)
  {
    v16 = [v5 length];
    [v6 length];
    PCSErrorCreate(20, @"Mismatched lengths of input keys: %lu, %lu", v17, v18, v19, v20, v21, v22, v16);
    *a3 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id _PCSGuitarfishDerivePTokenFromPRecoveryAndMnemonic(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___PCSGuitarfishDerivePTokenFromPRecoveryAndMnemonic_block_invoke;
  v10[3] = &unk_1E7B19998;
  v10[4] = &v17;
  v10[5] = &v11;
  PCSGuitarfishDeriveRecoveryKeyFromMnemonic(v6, v10);
  v7 = v12[5];
  if (v7)
  {
    v8 = 0;
    if (a3)
    {
      *a3 = v7;
    }
  }

  else
  {
    v8 = _PCSGuitarfishDeriveRecoveryTokenWrap(v5, v18[5], a3);
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void sub_1B22D1C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void PCSGuitarfishDeriveRecoveryKeyFromMnemonic(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MnemonicRepresentation seedFromMnemonic:a1];
  if (v4)
  {
    v5 = [@"GuitarfishSalt" dataUsingEncoding:4];
    ccsha512_di();
    [v4 length];
    [v4 bytes];
    [v5 length];
    [v5 bytes];
    [@"key" lengthOfBytesUsingEncoding:4];
    [@"key" UTF8String];
    if (cchkdf())
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = kPCSErrorDomain;
      v20 = *MEMORY[0x1E696A578];
      v21 = @"Unable to derive key from input entropy";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:{1, v22}];
      v9 = [v6 errorWithDomain:v7 code:147 userInfo:v8];
      (*(v3 + 2))(v3, 0, 0, v9);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v22 length:{32, v22}];
      ccsha512_di();
      [v4 length];
      [v4 bytes];
      [v5 length];
      [v5 bytes];
      [@"pid" lengthOfBytesUsingEncoding:4];
      [@"pid" UTF8String];
      if (cchkdf())
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = kPCSErrorDomain;
        v18 = *MEMORY[0x1E696A578];
        v19 = @"Unable to derive pid from input entropy";
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:{1, v22}];
        v16 = [v14 errorWithDomain:v15 code:147 userInfo:v9];
        (*(v3 + 2))(v3, v8, 0, v16);
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v22 length:{32, v22}];
        (*(v3 + 2))(v3, v8, v9, 0);
      }
    }
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = kPCSErrorDomain;
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"unable to derive seed from stored mnemonic";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v13 = [v10 errorWithDomain:v11 code:18 userInfo:v12];
    (*(v3 + 2))(v3, 0, 0, v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

__CFData *_PCSGuitarfishWrapDataWithAESKey(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  if ([(__CFData *)v6 length]== 16 || [(__CFData *)v6 length]== 24 || [(__CFData *)v6 length]== 32)
  {
    v17 = _PCSStingrayCopyEncryptedData(v6, v5);
    if (!v17)
    {
      _PCSNSError(a3, 12, @"unable to encrypt data with AES key", v12, v13, v14, v15, v16, v19);
    }
  }

  else
  {
    _PCSNSError(a3, 165, @"bad key length", v7, v8, v9, v10, v11, v19);
    v17 = 0;
  }

  return v17;
}

__CFData *_PCSGuitarfishUnwrapDataWithAESKey(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  if ([(__CFData *)v6 length]== 16 || [(__CFData *)v6 length]== 24 || [(__CFData *)v6 length]== 32)
  {
    v17 = _PCSStingrayCopyDecryptedData(v6, v5);
    if (!v17)
    {
      _PCSNSError(a3, 13, @"unable to decrypt data with AES key", v12, v13, v14, v15, v16, v19);
    }
  }

  else
  {
    _PCSNSError(a3, 165, @"bad key length", v7, v8, v9, v10, v11, v19);
    v17 = 0;
  }

  return v17;
}

id _PCSGuitarfishWrapKeyWithAESKey(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1;
  wrappedKeyLen = CCSymmetricWrappedSize(1u, [v6 length]);
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:wrappedKeyLen];
  v8 = [v7 mutableBytes];
  v9 = *MEMORY[0x1E69E94C8];
  v10 = *MEMORY[0x1E69E94D0];
  v11 = [v5 bytes];
  v12 = [v5 length];

  v13 = [v6 bytes];
  v14 = [v6 length];

  v15 = CCSymmetricKeyWrap(1u, v9, v10, v11, v12, v13, v14, v8, &wrappedKeyLen);
  if (v15)
  {
    v16 = v15;
    v17 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v16;
      _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "Unable to wrap data: %d", buf, 8u);
    }

    if (a3)
    {
      PCSErrorCreate(12, @"Unable to wrap data: %d", v18, v19, v20, v21, v22, v23, v16);
      *a3 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = v7;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

id _PCSGuitarfishUnwrapKeyWithAESKey(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1;
  rawKeyLen = CCSymmetricUnwrappedSize(1u, [v6 length]);
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:rawKeyLen];
  v8 = [v7 mutableBytes];
  v9 = *MEMORY[0x1E69E94C8];
  v10 = *MEMORY[0x1E69E94D0];
  v11 = [v5 bytes];
  v12 = [v5 length];

  v13 = [v6 bytes];
  v14 = [v6 length];

  v15 = CCSymmetricKeyUnwrap(1u, v9, v10, v11, v12, v13, v14, v8, &rawKeyLen);
  if (v15)
  {
    v16 = v15;
    v17 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v16;
      _os_log_impl(&dword_1B229C000, v17, OS_LOG_TYPE_DEFAULT, "Unable to unwrap data: %d", buf, 8u);
    }

    if (a3)
    {
      PCSErrorCreate(13, @"Unable to unwrap data: %d", v18, v19, v20, v21, v22, v23, v16);
      *a3 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = v7;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

void PCSGuitarfishGetRecoveryTokenInfo(void *a1, void *a2)
{
  v154[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v10 = a2;
  v135 = 0;
  v136 = &v135;
  v137 = 0x3032000000;
  v138 = __Block_byref_object_copy__4;
  v139 = __Block_byref_object_dispose__4;
  v140 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  if (!v3)
  {
    v18 = 0;
LABEL_9:
    v15 = PCSErrorCreate(121, @"Missing DSID in parameters", v4, v5, v6, v7, v8, v9, v88);
    (*(v10 + 2))(v10, 2, v18, 0, 0, v15);
    goto LABEL_17;
  }

  v11 = [v3 objectForKey:@"forcedMnemonicForTesting"];
  v12 = v11 == 0;

  if (!v12)
  {
    v13 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v13, OS_LOG_TYPE_DEFAULT, "PCSGetRecoveryTokenInfo using provided mnemonic", buf, 2u);
    }

    v14 = [v3 objectForKey:@"forcedMnemonicForTesting"];
    v15 = 0;
    v16 = v136[5];
    v136[5] = v14;
    goto LABEL_6;
  }

  v19 = [v3 objectForKeyedSubscript:kPCSSetupDSID[0]];
  v15 = v19;
  if (!v19)
  {
    v18 = v132[3];
    goto LABEL_9;
  }

  if (!PCSCurrentPersonaMatchesDSID(v19))
  {
    v33 = v132[3];
    v34 = PCSErrorCreate(152, @"Current persona does not match chosen dsid", v20, v21, v22, v23, v24, v25, v88);
    (*(v10 + 2))(v10, 2, v33, 0, 0, v34);

    goto LABEL_17;
  }

  v26 = dispatch_semaphore_create(0);
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke;
  v127[3] = &unk_1E7B199C0;
  v129 = &v135;
  v130 = &v131;
  v27 = v26;
  v128 = v27;
  _PCSGuitarfishGetKeychainItem(@"RecoveryToken", v15, v127);
  dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
  *buf = 0;
  v122 = buf;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__4;
  v125 = __Block_byref_object_dispose__4;
  v126 = 0;
  v28 = dispatch_semaphore_create(0);

  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_120;
  v117[3] = &unk_1E7B199C0;
  v119 = buf;
  v120 = &v131;
  v16 = v28;
  v118 = v16;
  _PCSGuitarfishGetKeychainItem(@"WrappingKey", v15, v117);
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v122 + 5) && v136[5])
  {
    goto LABEL_14;
  }

  v116 = 0;
  v153 = kPCSSetupDSID[0];
  v154[0] = v15;
  v35 = __PCSCopyStingrayInfo(1, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:&v153 count:1], &v116);
  v36 = v35;
  v37 = v116;
  if (v116 || !v35)
  {
    v132[3] |= 2uLL;
    (*(v10 + 2))(v10, 2);
LABEL_32:

LABEL_63:
    _Block_object_dispose(buf, 8);

    goto LABEL_17;
  }

  v38 = *MEMORY[0x1E6994F70];
  v39 = [v35 objectForKeyedSubscript:*MEMORY[0x1E6994F70]];
  v40 = v39 == 0;

  if (v40)
  {
    v132[3] |= 2uLL;
    v54 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v146) = 0;
      _os_log_impl(&dword_1B229C000, v54, OS_LOG_TYPE_DEFAULT, "No Guitarfish Primary Record to decode", &v146, 2u);
    }

    v55 = v132[3];
    v37 = PCSErrorCreate(238, @"No Primary Guitarfish Record. Account needs PCSGuitarfishSetupIdentities or migration.", v56, v57, v58, v59, v60, v61, v88);
    (*(v10 + 2))(v10, 2, v55, 0, 0, v37);
    goto LABEL_32;
  }

  v41 = [v36 objectForKeyedSubscript:v38];
  v42 = [v41 objectForKeyedSubscript:*MEMORY[0x1E6994E48]];
  v43 = [v42 objectForKeyedSubscript:kPCSSecureBackupCFiCloudDataProtectionKey[0]];
  v44 = [v43 objectForKeyedSubscript:@"SecureBackupWrappedKeys"];

  v45 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [v44 base64EncodedStringWithOptions:0];
    LODWORD(v146) = 138412290;
    *(&v146 + 4) = v46;
    _os_log_impl(&dword_1B229C000, v45, OS_LOG_TYPE_DEFAULT, "OuterBlob: %@", &v146, 0xCu);
  }

  if (!v44)
  {
    v62 = v132[3] | 2;
    v132[3] = v62;
    v63 = PCSErrorCreate(200, @"Failed to decode Outer blob, potential missing guitarfish record", v47, v48, v49, v50, v51, v52, v88);
    (*(v10 + 2))(v10, 1, v62, 0, 0, v63);
LABEL_61:

LABEL_62:
    goto LABEL_63;
  }

  if (*(v122 + 5))
  {
    v53 = v136;
LABEL_51:
    if (!v53[5])
    {
      *&v146 = 0;
      *(&v146 + 1) = &v146;
      v147 = 0x3032000000;
      v148 = __Block_byref_object_copy__4;
      v149 = __Block_byref_object_dispose__4;
      v150 = 0;
      v83 = dispatch_semaphore_create(0);

      v84 = *(v122 + 5);
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_134;
      v96[3] = &unk_1E7B19A38;
      v98 = &v135;
      v99 = &v131;
      v100 = &v146;
      v16 = v83;
      v97 = v16;
      _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(v84, v44, v96);
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v85 = *(*(&v146 + 1) + 40);
      if (v85)
      {
        (*(v10 + 2))(v10, 1, v132[3], 0, 0, *(*(&v146 + 1) + 40));
      }

      else if (*(v122 + 5) && (v132[3] & 0x20) != 0)
      {
        v86 = dispatch_semaphore_create(0);

        v87 = *(v122 + 5);
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_136;
        v93[3] = &unk_1E7B19A60;
        v95 = &v131;
        v16 = v86;
        v94 = v16;
        _PCSGuitarfishSetKeychainItem(@"WrappingKey", v15, v87, v93);
        dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      }

      _Block_object_dispose(&v146, 8);
      if (v85)
      {
        goto LABEL_62;
      }

      v53 = v136;
    }

    goto LABEL_52;
  }

  v151 = kPCSSetupDSID[0];
  v152 = v15;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
  v115 = 0;
  v64 = PCSIdentitySetCreate(v63, 0, &v115);
  if (v115 || !v64)
  {
    v75 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v146) = 138412290;
      *(&v146 + 4) = v115;
      _os_log_impl(&dword_1B229C000, v75, OS_LOG_TYPE_DEFAULT, "no identity set available, unable to attempt silent repair: %@", &v146, 0xCu);
    }

    v132[3] |= 0x200uLL;
  }

  else
  {
    v88 = v64;
    *&v146 = 0;
    *(&v146 + 1) = &v146;
    v147 = 0x3032000000;
    v148 = __Block_byref_object_copy__4;
    v149 = __Block_byref_object_dispose__4;
    v150 = 0;
    v109 = 0;
    v110 = &v109;
    v111 = 0x3032000000;
    v112 = __Block_byref_object_copy__4;
    v113 = __Block_byref_object_dispose__4;
    v114 = 0;
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_127;
    v108[3] = &unk_1E7B199E8;
    v108[4] = &v146;
    v108[5] = &v109;
    _PCSBackupGuitarfishDecodeOuterRecord(v44, v108);
    v65 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [*(*(&v146 + 1) + 40) base64EncodedStringWithOptions:{0, v88}];
      LODWORD(v143) = 138412290;
      *(&v143 + 4) = v66;
      _os_log_impl(&dword_1B229C000, v65, OS_LOG_TYPE_DEFAULT, "wrappedKey: %@", &v143, 0xCu);
    }

    v72 = (v110 + 5);
    v73 = v110[5];
    if (v73)
    {
      obj = v110[5];
      _PCSNSError(&obj, 200, @"Failed to decode Outer blob", v67, v68, v69, v70, v71, v88);
      objc_storeStrong(v72, obj);
      v132[3] |= 2uLL;
      v74 = v110[5];
      (*(v10 + 2))(v10, 1);
    }

    else if (*(*(&v146 + 1) + 40))
    {
      *&v143 = 0;
      *(&v143 + 1) = &v143;
      v144 = 0x2020000000;
      v145 = 0;
      v103 = 0;
      v104 = &v103;
      v105 = 0x2020000000;
      v106 = 0;
      v141 = kPCSSetupService[0];
      v142 = kPCSServiceEscrow;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_132;
      v102[3] = &unk_1E7B19A10;
      v102[4] = &v103;
      v102[5] = &v146;
      v102[6] = &v143;
      PCSIdentitySetEnumerateIdentities(v88, v76, v102);
      v77 = v104[3];
      if (v77)
      {
        v78 = *(v122 + 5);
        *(v122 + 5) = v77;
      }

      else
      {
        v132[3] |= 2uLL;
        v78 = pcsLogObjForScope("Guitarfish");
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *v101 = 0;
          _os_log_impl(&dword_1B229C000, v78, OS_LOG_TYPE_DEFAULT, "unable to unwrap wrapping key with escrow identities", v101, 2u);
        }
      }

      _Block_object_dispose(&v103, 8);
      _Block_object_dispose(&v143, 8);
    }

    _Block_object_dispose(&v109, 8);

    _Block_object_dispose(&v146, 8);
    if (v73)
    {
      goto LABEL_61;
    }
  }

  v53 = v136;
  if (*(v122 + 5))
  {
    goto LABEL_51;
  }

LABEL_52:
  v79 = v132[3];
  if (!v53[5])
  {
    v63 = PCSErrorCreate(39, @"no stored mnemonic available, silent recovery failed, needs repair", v47, v48, v49, v50, v51, v52, v88);
    (*(v10 + 2))(v10, 1, v79, 0, 0, v63);
    goto LABEL_61;
  }

  if ((v79 & 0x10) != 0)
  {
    v80 = dispatch_semaphore_create(0);

    v81 = [v136[5] componentsJoinedByString:@" "];
    v82 = [v81 dataUsingEncoding:4];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_141;
    v90[3] = &unk_1E7B19A60;
    v92 = &v131;
    v16 = v80;
    v91 = v16;
    _PCSGuitarfishSetKeychainItem(@"RecoveryToken", v15, v82, v90);

    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_14:
  _Block_object_dispose(buf, 8);

LABEL_6:
  *buf = 0;
  v122 = buf;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__4;
  v125 = __Block_byref_object_dispose__4;
  v126 = 0;
  *&v146 = 0;
  *(&v146 + 1) = &v146;
  v147 = 0x3032000000;
  v148 = __Block_byref_object_copy__4;
  v149 = __Block_byref_object_dispose__4;
  v150 = 0;
  v17 = v136[5];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_142;
  v89[3] = &unk_1E7B19A88;
  v89[4] = &v146;
  v89[5] = &v131;
  v89[6] = buf;
  PCSGuitarfishDeriveRecoveryKeyFromMnemonic(v17, v89);
  if (*(v122 + 5))
  {
    (*(v10 + 2))(v10, 1, v132[3], 0, 0);
  }

  else
  {
    v29 = v132[3];
    v30 = v136[5];
    v31 = [*(*(&v146 + 1) + 40) base64EncodedStringWithOptions:0];
    (*(v10 + 2))(v10, 0, v29, v30, v31, 0);
  }

  _Block_object_dispose(&v146, 8);

  _Block_object_dispose(buf, 8);
LABEL_17:

  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1B22D3568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v71 - 256), 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v71 - 224), 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void _PCSGuitarfishGetKeychainItem(void *a1, void *a2, void *a3)
{
  v29[9] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = *MEMORY[0x1E697B018];
  v8 = *MEMORY[0x1E697B390];
  v28[0] = *MEMORY[0x1E697AFF8];
  v28[1] = v8;
  v29[0] = v7;
  v29[1] = MEMORY[0x1E695E118];
  v9 = *MEMORY[0x1E697AE70];
  v28[2] = *MEMORY[0x1E697ABD0];
  v28[3] = v9;
  v29[2] = kPCSDefaultKeychainGroup[0];
  v29[3] = kPCSGuitarfishKeychainSecurityDomain;
  v10 = *MEMORY[0x1E697AE80];
  v28[4] = *MEMORY[0x1E697AC30];
  v28[5] = v10;
  v29[4] = v6;
  v29[5] = v5;
  v11 = *MEMORY[0x1E697B270];
  v12 = *MEMORY[0x1E697B310];
  v28[6] = *MEMORY[0x1E697B260];
  v28[7] = v12;
  v29[6] = v11;
  v29[7] = MEMORY[0x1E695E118];
  v28[8] = *MEMORY[0x1E697B318];
  v29[8] = MEMORY[0x1E695E118];
  v13 = MEMORY[0x1E695DF20];
  v14 = a3;
  v15 = [v13 dictionaryWithObjects:v29 forKeys:v28 count:9];
  result = 0;
  v16 = SecItemCopyMatching(v15, &result);
  v17 = result;
  if (v16)
  {
    v18 = v16;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _PCSGuitarfishGetKeychainItem_cold_1();
    }

    v25 = PCSErrorCreate(39, @"Missing keychain item: %d", v19, v20, v21, v22, v23, v24, v18);
    v14[2](v14, 0, v25);
  }

  else
  {
    v25 = [result objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    (v14)[2](v14, v25, 0);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "unable to recover token from keychain: %@", &v16, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x10uLL;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    v9 = [v8 componentsSeparatedByString:@" "];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(*(a1 + 40) + 8) + 40) count];
      v16 = 134217984;
      v17 = v13;
      _os_log_impl(&dword_1B229C000, v12, OS_LOG_TYPE_DEFAULT, "recovered token from keychain of length: %lu", &v16, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v15 = *MEMORY[0x1E69E9840];
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v10 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1B229C000, v10, OS_LOG_TYPE_DEFAULT, "unable to recover wrapping key from keychain: %@", &v12, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 0x20uLL;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v9 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "recovered wrapping key from keychain of length", &v12, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x1E69E9840];
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_127(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a4;
  v9 = a6;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
  }
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_132(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(*(a1[4] + 8) + 24))
  {
    v4 = PCSIdentityGetPublicKey(a2);
    *(*(a1[4] + 8) + 24) = PCSServiceIdentityCopyUnwrappedKey(a2, *(*(a1[5] + 8) + 40), (*(a1[6] + 8) + 24));
    if (*(*(a1[6] + 8) + 24))
    {
      v5 = pcsLogObjForScope("Guitarfish");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1[6] + 8) + 24);
        v11 = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "encountered unwrapping error with possible identity %@: %@", &v11, 0x16u);
      }

      v7 = *(a1[6] + 8);
      v8 = *(v7 + 24);
      if (v8)
      {
        *(v7 + 24) = 0;
        CFRelease(v8);
      }
    }

    else if (*(*(a1[4] + 8) + 24))
    {
      v9 = pcsLogObjForScope("Guitarfish");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "successfully unwrapped data with identity %@", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_134(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a6;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v10)
  {
    v11 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "Unable to recover recovery token from inner blob", v12, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) |= 2uLL;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void _PCSGuitarfishSetKeychainItem(void *a1, void *a2, void *a3, void *a4)
{
  v57[9] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v53 = a4;
  v10 = *MEMORY[0x1E697AFF8];
  v11 = *MEMORY[0x1E697B018];
  v12 = *MEMORY[0x1E697B390];
  v56[0] = *MEMORY[0x1E697AFF8];
  v56[1] = v12;
  v57[0] = v11;
  v57[1] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E697AEB0];
  v14 = *MEMORY[0x1E697ABD8];
  v56[2] = *MEMORY[0x1E697AEB0];
  v56[3] = v14;
  v15 = *MEMORY[0x1E697ABE0];
  v57[2] = MEMORY[0x1E695E110];
  v57[3] = v15;
  v16 = *MEMORY[0x1E697ABD0];
  v56[4] = *MEMORY[0x1E697B3C0];
  v56[5] = v16;
  v54 = v9;
  v57[4] = v9;
  v57[5] = kPCSDefaultKeychainGroup[0];
  v17 = *MEMORY[0x1E697AC30];
  v18 = *MEMORY[0x1E697AE80];
  v56[6] = *MEMORY[0x1E697AC30];
  v56[7] = v18;
  v55 = v8;
  v57[6] = v8;
  v57[7] = v7;
  v19 = *MEMORY[0x1E697AE70];
  v56[8] = *MEMORY[0x1E697AE70];
  v57[8] = kPCSGuitarfishKeychainSecurityDomain;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:9];
  v21 = SecItemAdd(v20, 0);
  if (v21 == -25299)
  {
    v52 = v7;
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = [(__CFDictionary *)v20 objectForKeyedSubscript:v10];
    [v26 setObject:v27 forKeyedSubscript:v10];

    v28 = [(__CFDictionary *)v20 objectForKeyedSubscript:v13];
    [v26 setObject:v28 forKeyedSubscript:v13];

    v29 = [(__CFDictionary *)v20 objectForKeyedSubscript:v16];
    [v26 setObject:v29 forKeyedSubscript:v16];

    v30 = [(__CFDictionary *)v20 objectForKeyedSubscript:v17];
    [v26 setObject:v30 forKeyedSubscript:v17];

    v31 = [(__CFDictionary *)v20 objectForKeyedSubscript:v18];
    [v26 setObject:v31 forKeyedSubscript:v18];

    v32 = [(__CFDictionary *)v20 objectForKeyedSubscript:v12];
    [v26 setObject:v32 forKeyedSubscript:v12];

    v33 = [(__CFDictionary *)v20 objectForKeyedSubscript:v19];
    [v26 setObject:v33 forKeyedSubscript:v19];

    v34 = [(__CFDictionary *)v20 mutableCopy];
    [v34 setObject:0 forKeyedSubscript:v10];
    v35 = SecItemUpdate(v26, v34);
    if (v35)
    {
      v36 = v35;
      v7 = v52;
      v23 = v53;
      v25 = v54;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _PCSGuitarfishSetKeychainItem_cold_1();
      }

      v43 = PCSErrorCreate(39, @"Missing keychain item: %d", v37, v38, v39, v40, v41, v42, v36);
      (*(v53 + 2))(v53, v43);
    }

    else
    {
      v23 = v53;
      (*(v53 + 2))(v53, 0);
      v7 = v52;
      v25 = v54;
    }

    v24 = v55;
  }

  else
  {
    v22 = v21;
    if (v21)
    {
      v25 = v54;
      v24 = v55;
      v23 = v53;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _PCSGuitarfishSetKeychainItem_cold_2();
      }

      v50 = PCSErrorCreate(4, @"failed to store in keychain: %d", v44, v45, v46, v47, v48, v49, v22);
      (*(v53 + 2))(v53, v50);
    }

    else
    {
      v23 = v53;
      (*(v53 + 2))(v53, 0);
      v25 = v54;
      v24 = v55;
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_136(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save wrapping key to keychain: %@", &v8, 0xCu);
    }

    v6 = 32;
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved wrapping key to keychain successfully", &v8, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) &= ~0x20uLL;
    v6 = 1024;
  }

  *(*(*(a1 + 40) + 8) + 24) |= v6;
  dispatch_semaphore_signal(*(a1 + 32));

  v7 = *MEMORY[0x1E69E9840];
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_141(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pcsLogObjForScope("Guitarfish");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "unable to save recovery token to keychain: %@", &v8, 0xCu);
    }

    v6 = 16;
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "saved recovery token to keychain successfully", &v8, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) &= ~0x10uLL;
    v6 = 2048;
  }

  *(*(*(a1 + 40) + 8) + 24) |= v6;
  dispatch_semaphore_signal(*(a1 + 32));

  v7 = *MEMORY[0x1E69E9840];
}

void __PCSGuitarfishGetRecoveryTokenInfo_block_invoke_142(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  if (v7)
  {
    *(*(a1[5] + 8) + 24) |= 0x10uLL;
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

uint64_t (**_PCSUpdateStingrayForwardTableForTesting(uint64_t (**result)()))()
{
  savedPCSStingrayForwardTable = _PCSStingrayForwardTable;
  _PCSStingrayForwardTable = *result;
  return result;
}

uint64_t (**_PCSUpdateMigrateToiCDPForwardTableForTesting(uint64_t (**result)()))()
{
  savedPCSMigrateToiCDPForwardTable = _PCSMigrateToiCDPForwardTable;
  _PCSMigrateToiCDPForwardTable = *result;
  return result;
}

void PCSGuitarfishResetProtectedData(void *a1, void *a2)
{
  v214 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [AAFAnalyticsEventPCS alloc];
  v6 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
  v7 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
  v8 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
  LOBYTE(v161) = 1;
  v9 = [AAFAnalyticsEventPCS initWithPCSMetrics:v5 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v6 eventName:v7 testsAreEnabled:v8 canSendMetrics:@"com.apple.pcs.resetProtectedData" category:0];

  v207 = 0;
  v208 = 0;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v17 = [v3 objectForKeyedSubscript:kPCSSetupDSID[0]];
    if (v17)
    {
      v18 = v17;
      if (PCSCurrentPersonaMatchesDSID(v17))
      {
        v25 = [v3 objectForKeyedSubscript:kPCSAuthenticateAppleID[0]];

        if (v25)
        {
          v26 = [v3 objectForKeyedSubscript:kPCSSetupPassword[0]];

          if (v26)
          {
            v27 = [v3 objectForKeyedSubscript:kPCSSetupRawPassword[0]];

            if (v27)
            {
              v28 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];

              if (v28)
              {
                v29 = [v3 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];

                if (v29)
                {
                  v30 = [v3 objectForKeyedSubscript:kPCSSetupVerifierIterationCount[0]];

                  if (v30)
                  {
                    v31 = [v3 objectForKeyedSubscript:kPCSSetupVerifierProtocol[0]];

                    if (v31)
                    {
                      v32 = [v3 objectForKeyedSubscript:kPCSSetupVerifierSalt[0]];

                      if (v32)
                      {
                        v198 = v18;
                        v33 = [v3 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
                        v34 = [v33 isEqualToNumber:MEMORY[0x1E695E118]];

                        if (v34)
                        {
                          v35 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v35, OS_LOG_TYPE_DEFAULT, "Will join CDP", buf, 2u);
                          }
                        }

                        v206 = 0;
                        v36 = performStingrayRecovery(v198, &v206);
                        v37 = v206;
                        v38 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v191 = v37;
                        if (!v36 || v37)
                        {
                          v39 = v38;
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_1();
                          }
                        }

                        else
                        {
                          v39 = v38;
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v39, OS_LOG_TYPE_DEFAULT, "Successfully recovered Stingray data", buf, 2u);
                          }
                        }

                        v192 = [AAFAnalyticsEventPCS alloc];
                        v194 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v59 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v60 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v161) = 1;
                        v193 = [AAFAnalyticsEventPCS initWithPCSMetrics:v192 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v194 eventName:v59 testsAreEnabled:v60 canSendMetrics:@"com.apple.pcs.deleteGuitarfishRecord" category:0];

                        v205 = 0;
                        LODWORD(v59) = deleteRecord(v198, 1, &v205);
                        v61 = v205;
                        v62 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (!v59 || v61)
                        {
                          v82 = v62;
                          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_2(&v205);
                          }

                          v207 |= 0x2000uLL;
                          v208 = 2;
                          v83 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v83 forKeyedSubscript:@"flags"];

                          v84 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                          [v16 setObject:v84 forKeyedSubscript:@"status"];

                          v91 = v205;
                          v18 = v198;
                          v92 = v191;
                          v93 = v193;
                          if (!v205)
                          {
                            v91 = PCSErrorCreate(219, @"Failed to delete Guitarfish record", v85, v86, v87, v88, v89, v90, v161);
                          }

                          [PCSAnalyticsReporterRTC sendMetricWithEvent:v193 success:0 error:v91];
                          v4[2](v4, 2, 0x2000, v16, v91);
                          goto LABEL_148;
                        }

                        v63 = v62;
                        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v63, OS_LOG_TYPE_DEFAULT, "successfully deleted guitarfish record", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v193 success:1 error:0];
                        v189 = [AAFAnalyticsEventPCS alloc];
                        v195 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v64 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v65 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v161) = 1;
                        v190 = [AAFAnalyticsEventPCS initWithPCSMetrics:v189 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v195 eventName:v64 testsAreEnabled:v65 canSendMetrics:@"com.apple.pcs.deleteTokenRecord" category:0];

                        v204 = 0;
                        LODWORD(v65) = deleteRecord(v198, 2, &v204);
                        v66 = v204;
                        v67 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (!v65 || v66)
                        {
                          v94 = v67;
                          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_3(&v204);
                          }

                          v207 |= 0x10000uLL;
                          v208 = 2;
                          v95 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v95 forKeyedSubscript:@"flags"];

                          v96 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                          [v16 setObject:v96 forKeyedSubscript:@"status"];

                          v103 = v204;
                          v18 = v198;
                          v92 = v191;
                          v93 = v193;
                          v91 = v190;
                          if (!v204)
                          {
                            v103 = PCSErrorCreate(225, @"Failed to delete Recovery Token record", v97, v98, v99, v100, v101, v102, v161);
                          }

                          [PCSAnalyticsReporterRTC sendMetricWithEvent:v190 success:0 error:v103];
                          v4[2](v4, 2, 0x10000, v16, v103);
                          goto LABEL_147;
                        }

                        v68 = v67;
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v68, OS_LOG_TYPE_DEFAULT, "successfully deleted token record", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v190 success:1 error:0];
                        v196 = [AAFAnalyticsEventPCS alloc];
                        v185 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v69 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v70 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v161) = 1;
                        v197 = [(AAFAnalyticsEventPCS *)v196 initWithPCSMetrics:0 altDSID:v185 flowID:v69 deviceSessionID:v70 eventName:@"com.apple.pcs.rpdDeleteICDPFromKeychain" testsAreEnabled:0 canSendMetrics:v161 category:0x1F2998430];

                        v203 = 0;
                        LODWORD(v70) = __PCSDeleteFromKeychainICDPForRPD(v198, &v203, v71, v72, v73, v74, v75, v76);
                        v186 = v203;
                        v77 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
                        if (!v70 || v186)
                        {
                          if (v78)
                          {
                            *buf = 138412290;
                            *&buf[4] = v203;
                            _os_log_impl(&dword_1B229C000, v77, OS_LOG_TYPE_DEFAULT, "failed to delete cdp keychain items, error: %@", buf, 0xCu);
                          }

                          v81 = v203;
                          v79 = v197;
                          v80 = 0;
                        }

                        else
                        {
                          if (v78)
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v77, OS_LOG_TYPE_DEFAULT, "successfully deleted keychain items", buf, 2u);
                          }

                          v79 = v197;
                          v80 = 1;
                          v81 = 0;
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v79 success:v80 error:v81];
                        v187 = [AAFAnalyticsEventPCS alloc];
                        cfb = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v104 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v105 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v162) = 1;
                        v188 = [(AAFAnalyticsEventPCS *)v187 initWithPCSMetrics:0 altDSID:cfb flowID:v104 deviceSessionID:v105 eventName:@"com.apple.pcs.rpdDeleteGFStashFromKeychain" testsAreEnabled:0 canSendMetrics:v162 category:0x1F2998430];

                        v18 = v198;
                        v106 = _PCSGuitarfishDeleteKeychainState(v198);
                        if ((v106 & 1) == 0)
                        {
                          v107 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_1B229C000, v107, OS_LOG_TYPE_DEFAULT, "failed to delete guitarfish stash keychain items", buf, 2u);
                          }

                          v18 = v198;
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v188 success:v106 error:0];
                        v211 = kPCSSetupDSID[0];
                        v212 = v18;
                        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
                        v180 = v202 = 0;
                        cf = PCSIdentitySetCreate(v180, 0, &v202);
                        if (!cf || v202)
                        {
                          v109 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_6(&v202);
                          }

                          v92 = v191;
                          v93 = v193;
                          v91 = v190;
                          if (!v16)
                          {
                            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          }

                          v207 |= 0x800000uLL;
                          v208 = 2;
                          v110 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v110 forKeyedSubscript:@"flags"];

                          v111 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                          [v16 setObject:v111 forKeyedSubscript:@"status"];

                          v112 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(v207, 0);
                          [v16 setObject:v112 forKeyedSubscript:@"flags_dict"];

                          if (cf)
                          {
                            CFRelease(cf);
                          }

                          v113 = v202;
                          v103 = v197;
                          if (v202)
                          {
                            v202 = 0;
                            CFRelease(v113);
                            v114 = v202;
                          }

                          else
                          {
                            v114 = 0;
                          }

                          goto LABEL_121;
                        }

                        v108 = [v3 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
                        if ([v108 isEqualToNumber:MEMORY[0x1E695E118]])
                        {
                        }

                        else
                        {
                          v115 = [v3 objectForKeyedSubscript:kPCSRPDDBROnly[0]];
                          v178 = [v115 isEqualToNumber:MEMORY[0x1E695E118]];

                          if (!v178)
                          {
                            v165 = 0;
                            goto LABEL_106;
                          }
                        }

                        *v201 = 0;
                        v116 = PCSIdentitySetIsWalrusWithForceFetch(cf, 1, v201);
                        if (*v201)
                        {
                          v117 = pcsLogObjForScope("guitarfish-reset-protected-data");
                          v18 = v198;
                          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *&buf[4] = *v201;
                            _os_log_impl(&dword_1B229C000, v117, OS_LOG_TYPE_DEFAULT, "Failed to fetch w status: %@", buf, 0xCu);
                          }

                          v92 = v191;
                          v93 = v193;
                          v91 = v190;
                          if (!v16)
                          {
                            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          }

                          v207 |= 0x1000000uLL;
                          v208 = 2;
                          v118 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v118 forKeyedSubscript:@"flags"];

                          v119 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                          [v16 setObject:v119 forKeyedSubscript:@"status"];

                          v120 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(v207, 0);
                          [v16 setObject:v120 forKeyedSubscript:@"flags_dict"];

                          CFRelease(cf);
                          v121 = *v201;
                          if (*v201)
                          {
                            *v201 = 0;
                            CFRelease(v121);
                            v114 = *v201;
                          }

                          else
                          {
                            v114 = 0;
                          }

                          v103 = v197;
LABEL_121:
                          v4[2](v4, v208, v207, v16, v114);

LABEL_146:
LABEL_147:

LABEL_148:
                          goto LABEL_46;
                        }

                        v165 = v116;
                        CFRelease(cf);
LABEL_106:
                        cfc = [AAFAnalyticsEventPCS alloc];
                        v122 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v123 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v124 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v163) = 1;
                        cfa = [(AAFAnalyticsEventPCS *)cfc initWithPCSMetrics:0 altDSID:v122 flowID:v123 deviceSessionID:v124 eventName:@"com.apple.pcs.rpdSetupIdentities" testsAreEnabled:0 canSendMetrics:v163 category:0x1F2998430];

                        v176 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v174 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v171 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        v173 = [v3 objectForKeyedSubscript:kPCSAuthenticateAppleID[0]];
                        v172 = [v3 objectForKeyedSubscript:kPCSSetupRawPassword[0]];
                        v169 = [v3 objectForKeyedSubscript:kPCSSetupPassword[0]];
                        v168 = [v3 objectForKeyedSubscript:kPCSSetupVerifierIterationCount[0]];
                        v167 = [v3 objectForKeyedSubscript:kPCSSetupVerifierProtocol[0]];
                        v166 = [v3 objectForKeyedSubscript:kPCSSetupPasswordGeneration[0]];
                        v125 = [v3 objectForKeyedSubscript:kPCSSetupVerifierSalt[0]];
                        v200 = 0;
                        v179 = PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken(v198, v176, v174, v171, v173, v172, v169, v168, v167, v166, v125, &v207, &v208, &v200);
                        v170 = v200;

                        v126 = v208;
                        if (v179)
                        {
                          v127 = 1;
                        }

                        else
                        {
                          v127 = v165;
                        }

                        v128 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v129 = v128;
                        if (v126 || v170 || (v127 & 1) == 0)
                        {
                          if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_4();
                          }

                          v135 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v135 forKeyedSubscript:@"flags"];

                          v136 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                          [v16 setObject:v136 forKeyedSubscript:@"status"];

                          v137 = v170;
                          [PCSAnalyticsReporterRTC sendMetricWithEvent:cfa success:0 error:v170];
                          v4[2](v4, v208, v207, v16, v170);
                          v103 = v197;
                          v18 = v198;
                          v92 = v191;
                          v93 = v193;
                          v91 = v190;
                          goto LABEL_145;
                        }

                        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v129, OS_LOG_TYPE_DEFAULT, "successfully enrolled Guitarfish and Recovery Token Records", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:cfa success:1 error:0];
                        v130 = [AAFAnalyticsEventPCS alloc];
                        v131 = [v3 objectForKeyedSubscript:kPCSAltDSID[0]];
                        v132 = [v3 objectForKeyedSubscript:kPCSFlowID[0]];
                        v133 = [v3 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
                        LOBYTE(v164) = 1;
                        v177 = [(AAFAnalyticsEventPCS *)v130 initWithPCSMetrics:0 altDSID:v131 flowID:v132 deviceSessionID:v133 eventName:@"com.apple.pcs.migrateToiCDP" testsAreEnabled:0 canSendMetrics:v164 category:0x1F2998430];

                        v134 = [v3 objectForKeyedSubscript:kPCSRPDDBROnly[0]];
                        if ([v134 isEqualToNumber:MEMORY[0x1E695E118]])
                        {
                        }

                        else
                        {
                          v138 = [v3 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
                          v139 = [v138 isEqualToNumber:MEMORY[0x1E695E118]];

                          if (!v139)
                          {
                            goto LABEL_128;
                          }
                        }

                        v140 = [v3 mutableCopy];
                        [v140 setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupGuitarfish[0]];
                        *buf = 0;
                        v175 = v140;
                        v141 = _PCSMigrateToiCDPForwardTable(v140, buf);
                        v142 = *buf;
                        v143 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        v144 = v143;
                        if (!v141 || v142)
                        {
                          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                          {
                            PCSGuitarfishResetProtectedData_cold_5();
                          }

                          if (!v16)
                          {
                            v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                          }

                          v207 |= 0x2000000uLL;
                          v208 = 2;
                          v151 = [MEMORY[0x1E696AD98] numberWithLong:?];
                          [v16 setObject:v151 forKeyedSubscript:@"flags"];

                          v152 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                          [v16 setObject:v152 forKeyedSubscript:@"status"];

                          v153 = _PCSGuitarfishPopulateFlagNamesToTelemetryArray(v207, 0);
                          [v16 setObject:v153 forKeyedSubscript:@"flags_dict"];

                          if (!v142)
                          {
                            v154 = MEMORY[0x1E696ABC0];
                            v155 = kPCSErrorDomain;
                            v209 = *MEMORY[0x1E696A578];
                            v210 = @"Failed to enable iCDP";
                            v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
                            v142 = [v154 errorWithDomain:v155 code:240 userInfo:v156];
                          }

                          [PCSAnalyticsReporterRTC sendMetricWithEvent:v177 success:0 error:v142];
                          v4[2](v4, v208, v207, v16, v142);

                          goto LABEL_142;
                        }

                        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                        {
                          *v201 = 0;
                          _os_log_impl(&dword_1B229C000, v144, OS_LOG_TYPE_DEFAULT, "successfully enabled iCDP", v201, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v177 success:1 error:0];
LABEL_128:
                        v199 = 0;
                        v145 = PCSGuitarfishResetOnOTClique(v3, &v207, &v199);
                        v146 = v199;
                        if (!v145 || v146)
                        {
                          v208 = 2;
                          v158 = v146;
                          v159 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                          [v16 setObject:v159 forKeyedSubscript:@"flags"];

                          v157 = v158;
                          v160 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                          [v16 setObject:v160 forKeyedSubscript:@"status"];

                          v4[2](v4, 2, v207, v16, v158);
                          v18 = v198;
                          v92 = v191;
                          v93 = v193;
                          v91 = v190;
                          goto LABEL_144;
                        }

                        v175 = 0;
                        v147 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v147, OS_LOG_TYPE_DEFAULT, "successfully reset otclique", buf, 2u);
                        }

                        v148 = pcsLogObjForScope("guitarfish-reset-protected-data");
                        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1B229C000, v148, OS_LOG_TYPE_DEFAULT, "successfully reset protected data", buf, 2u);
                        }

                        [PCSAnalyticsReporterRTC sendMetricWithEvent:v9 success:1 error:0];
                        v149 = [MEMORY[0x1E696AD98] numberWithLong:v207];
                        [v16 setObject:v149 forKeyedSubscript:@"flags"];

                        v150 = [MEMORY[0x1E696AD98] numberWithLong:v208];
                        [v16 setObject:v150 forKeyedSubscript:@"status"];

                        v4[2](v4, v208, v207, v16, 0);
LABEL_142:
                        v18 = v198;
                        v92 = v191;
                        v93 = v193;
                        v91 = v190;
                        v157 = v175;
LABEL_144:

                        v103 = v197;
                        v137 = 0;
LABEL_145:

                        goto LABEL_146;
                      }

                      v52 = pcsLogObjForScope("guitarfish-reset-protected-data");
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                      {
                        PCSGuitarfishResetProtectedData_cold_7();
                      }

                      v50 = PCSErrorCreate(218, @"kPCSSetupVerifierSalt is missing and is a required fields", v53, v54, v55, v56, v57, v58, v161);
LABEL_45:
                      v4[2](v4, 2, 1, v16, v50);

LABEL_46:
                      goto LABEL_47;
                    }

                    v49 = pcsLogObjForScope("guitarfish-reset-protected-data");
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                    {
                      PCSGuitarfishResetProtectedData_cold_8();
                    }

                    v41 = @"kPCSSetupVerifierProtocol is missing and is a required fields";
                  }

                  else
                  {
                    v48 = pcsLogObjForScope("guitarfish-reset-protected-data");
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      PCSGuitarfishResetProtectedData_cold_9();
                    }

                    v41 = @"kPCSSetupVerifierIterationCount is missing and is a required field";
                  }
                }

                else
                {
                  v47 = pcsLogObjForScope("guitarfish-reset-protected-data");
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    PCSGuitarfishResetProtectedData_cold_10();
                  }

                  v41 = @"kPCSSetupPasswordGeneration is missing and is a required field";
                }
              }

              else
              {
                v46 = pcsLogObjForScope("guitarfish-reset-protected-data");
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  PCSGuitarfishResetProtectedData_cold_11();
                }

                v41 = @"kPCSAltDSID is missing and is a required field";
              }
            }

            else
            {
              v45 = pcsLogObjForScope("guitarfish-reset-protected-data");
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                PCSGuitarfishResetProtectedData_cold_12();
              }

              v41 = @"kPCSSetupRawPassword is missing and is a required field";
            }
          }

          else
          {
            v44 = pcsLogObjForScope("guitarfish-reset-protected-data");
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              PCSGuitarfishResetProtectedData_cold_13();
            }

            v41 = @"kPCSSetupPassword is missing and is a required field";
          }
        }

        else
        {
          v43 = pcsLogObjForScope("guitarfish-reset-protected-data");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            PCSGuitarfishResetProtectedData_cold_14();
          }

          v41 = @"kPCSAuthenticateAppleID is missing and is a required field";
        }

        v42 = 218;
      }

      else
      {
        v41 = @"Current persona does not match chosen dsid";
        v42 = 152;
      }

      v50 = PCSErrorCreate(v42, v41, v19, v20, v21, v22, v23, v24, v161);
      [PCSAnalyticsReporterRTC sendMetricWithEvent:v9 success:0 error:v50];
      goto LABEL_45;
    }
  }

  v40 = PCSErrorCreate(121, @"Missing DSID in parameters", v10, v11, v12, v13, v14, v15, v161);
  [PCSAnalyticsReporterRTC sendMetricWithEvent:v9 success:0 error:v40];
  v4[2](v4, 2, 1, v16, v40);

LABEL_47:
  v51 = *MEMORY[0x1E69E9840];
}

BOOL performStingrayRecovery(void *a1, void *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 setObject:v3 forKeyedSubscript:kPCSSetupDSID[0]];
  v25 = 0;
  v5 = __PCSCopyHSMData(0, 0, v4, &v25);
  if (!v5)
  {
    v14 = pcsLogObjForScope("guitarfish-reset-protected-data");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      performStingrayRecovery_cold_3(&v25);
    }

    if (!a2)
    {
      goto LABEL_24;
    }

    v13 = v25;
LABEL_15:
    v15 = v13;
    v16 = 0;
LABEL_16:
    *a2 = v15;
    goto LABEL_25;
  }

  v10 = v5;
  cf = 0;
  if (__PCSStoreInKeychain(0, v5, v3, &cf, v6, v7, v8, v9))
  {
    v11 = cf == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = pcsLogObjForScope("guitarfish-reset-protected-data");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      performStingrayRecovery_cold_1(&cf);
    }

    v13 = cf;
    if (!a2)
    {
      if (cf)
      {
        cf = 0;
        CFRelease(v13);
      }

LABEL_24:
      v16 = 0;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v23 = 0;
  v17 = __PCSStoreIniCloudKeychain(0, v10, v3, &v23);
  if (v23)
  {
    v16 = 0;
  }

  else
  {
    v16 = v17;
  }

  v18 = pcsLogObjForScope("guitarfish-reset-protected-data");
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      _os_log_impl(&dword_1B229C000, v19, OS_LOG_TYPE_DEFAULT, "successfully recovered stingray data", &v22, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      performStingrayRecovery_cold_2(&v23);
    }

    v21 = v23;
    if (a2)
    {
      v15 = v23;
      goto LABEL_16;
    }

    if (v23)
    {
      v23 = 0;
      CFRelease(v21);
    }
  }

LABEL_25:

  return v16;
}

uint64_t deleteRecord(void *a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "deleteRecord", buf, 2u);
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:v5 forKeyedSubscript:kPCSSetupDSID[0]];

  v20 = 0;
  v8 = __PCSDisableStingrayIdentity(a2, 0, v7, &v20);
  v9 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"failed";
    if (v8)
    {
      v10 = @"succeeded";
    }

    *buf = 138412546;
    v22 = v10;
    v23 = 2112;
    v24 = v20;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "__PCSDisableStingrayIdentity result: %@, error: %@", buf, 0x16u);
  }

  if (v20)
  {
    v11 = [v20 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v13 = [v12 domain];
    if ([v13 isEqualToString:@"EscrowServiceErrorDomain"])
    {
      v14 = [v12 code];
      v15 = kPCSEscrowServiceEscrowRecordNotFound;

      if (v14 == v15)
      {
        v16 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = @"Recovery Token";
          if (a2 == 1)
          {
            v17 = @"Guitarfish";
          }

          *buf = 138412290;
          v22 = v17;
          _os_log_impl(&dword_1B229C000, v16, OS_LOG_TYPE_DEFAULT, "%@ record does not exist", buf, 0xCu);
        }

        v8 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    if (a3)
    {
      v8 = 0;
      *a3 = v20;
    }

    goto LABEL_18;
  }

LABEL_19:

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _PCSGuitarfishDeleteKeychainState(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___PCSGuitarfishDeleteKeychainState_block_invoke;
  v4[3] = &unk_1E7B19AB0;
  v4[4] = &v5;
  _PCSGuitarfishDeleteKeychainItem(0, v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1B22D64E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _PCSGuitarfishPopulateFlagNamesToTelemetryArray(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  if ([&unk_1F29983B8 count])
  {
    v14 = 0;
    do
    {
      if ((a1 >> v14))
      {
        v15 = [&unk_1F29983B8 objectAtIndexedSubscript:v14];
        [v6 setObject:&unk_1F2998400 forKeyedSubscript:v15];

        a1 &= ~(1 << v14);
      }

      ++v14;
    }

    while ([&unk_1F29983B8 count] > v14);
  }

  if (a1)
  {
    PCSAbort("_PCSGuitarfishPopulateFlagNamesToTelemetryArray is missing a flag definition", v7, v8, v9, v10, v11, v12, v13, v17);
  }

  return v6;
}

id PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v21 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v58 = a8;
  v59 = a9;
  v22 = a10;
  v23 = a11;
  v24 = [MEMORY[0x1E695DF90] dictionary];
  [v24 setObject:v52 forKeyedSubscript:kPCSAltDSID[0]];
  [v24 setObject:v53 forKeyedSubscript:kPCSFlowID[0]];
  [v24 setObject:v54 forKeyedSubscript:kPCSDeviceSessionID[0]];
  [v24 setObject:v21 forKeyedSubscript:kPCSSetupDSID[0]];
  [v24 setObject:v55 forKeyedSubscript:kPCSSetupUsername[0]];
  [v24 setObject:v56 forKeyedSubscript:kPCSSetupRawPassword[0]];
  [v24 setObject:v57 forKeyedSubscript:kPCSSetupPassword[0]];
  [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:kPCSSetupGuitarfish[0]];
  [v24 setObject:v59 forKeyedSubscript:kPCSSetupVerifierProtocol[0]];
  [v24 setObject:v58 forKeyedSubscript:kPCSSetupVerifierIterationCount[0]];
  [v24 setObject:v22 forKeyedSubscript:kPCSSetupPasswordGeneration[0]];
  [v24 setObject:v23 forKeyedSubscript:kPCSSetupVerifierSalt[0]];
  v82 = 0;
  v83[0] = &v82;
  v83[1] = 0x3032000000;
  v83[2] = __Block_byref_object_copy__4;
  v83[3] = __Block_byref_object_dispose__4;
  v84 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__4;
  v80 = __Block_byref_object_dispose__4;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v25 = dispatch_semaphore_create(0);
  v26 = _PCSStingrayForwardTable;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_block_invoke;
  v62[3] = &unk_1E7B19B28;
  v64 = &v82;
  v65 = &v76;
  v66 = &v72;
  v67 = &v68;
  v27 = v25;
  v63 = v27;
  (v26)(v24, v62);
  dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
  if (a12)
  {
    *a12 = v73[3];
  }

  if (a13)
  {
    *a13 = v69[3];
  }

  if (!a14 || !*(v83[0] + 40))
  {
    v85 = kPCSSetupDSID[0];
    v86[0] = v21;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    v61 = 0;
    v31 = PCSIdentitySetCreate(v30, 0, &v61);
    v29 = v31;
    if (!v31 || v61)
    {
      v35 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        PCSGuitarfishResetProtectedData_cold_6(&v61);
      }

      v36 = v61;
      if (a14)
      {
        *a14 = v61;
      }

      else if (v61)
      {
        v61 = 0;
        CFRelease(v36);
      }

      if (!v29)
      {
        goto LABEL_37;
      }

      CFRelease(v29);
    }

    else
    {
      v60 = 0;
      v32 = PCSIdentitySetIsWalrusWithForceFetch(v31, 1, &v60);
      if (v60)
      {
        v33 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_2(&v60);
        }

        v34 = v60;
        if (a14)
        {
          *a14 = v60;
        }

        else if (v60)
        {
          v60 = 0;
          CFRelease(v34);
        }

        CFRelease(v29);
      }

      else
      {
        v37 = v32;
        CFRelease(v29);
        v38 = v77[5];
        if (v38)
        {
          v39 = 1;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          v29 = v38;
LABEL_37:

          goto LABEL_38;
        }

        v40 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_3();
        }

        v47 = PCSErrorCreate(224, @"PCSGuitarfishSetupIdentities failed to return a recovery token", v41, v42, v43, v44, v45, v46, v51);
        v48 = *(v83[0] + 40);
        *(v83[0] + 40) = v47;
      }
    }

    v29 = 0;
    goto LABEL_37;
  }

  v28 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_1(v83);
  }

  v29 = 0;
  *a14 = *(v83[0] + 40);
LABEL_38:

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  v49 = *MEMORY[0x1E69E9840];

  return v29;
}

void sub_1B22D6C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t PCSGuitarfishResetOnOTClique(void *a1, void *a2, void *a3)
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = objc_alloc_init(MEMORY[0x1E697AA88]);
  v6 = [v4 objectForKeyedSubscript:kPCSAuthenticateAppleID[0]];
  [v5 setAuthenticationAppleID:v6];

  v7 = [v4 objectForKeyedSubscript:kPCSSetupPassword[0]];
  [v5 setPasswordEquivalentToken:v7];

  v8 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
  [v5 setFlowID:v8];

  v9 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
  [v5 setDeviceSessionID:v9];

  v10 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
  [v5 setAltDSID:v10];

  [v5 setIsGuitarfish:1];
  v11 = [v4 objectForKeyedSubscript:kPCSRPDDBROnly[0]];
  v12 = [v11 isEqualToNumber:MEMORY[0x1E695E118]];

  if (!v12)
  {
    v30 = [v4 objectForKeyedSubscript:kPCSShouldJoinCDP[0]];
    v31 = [v30 isEqualToNumber:MEMORY[0x1E695E118]];

    if (v31)
    {
      v84 = [v4 objectForKeyedSubscript:kPCSIDMSTargetContext[0]];
      v32 = [v4 objectForKeyedSubscript:kPCSIDMSCuttlefishPassword[0]];
      v33 = [v4 objectForKeyedSubscript:kPCSNotifyIDMS[0]];
      v34 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, v34, OS_LOG_TYPE_DEFAULT, "Invoking resetProtectedData on OTClique", buf, 2u);
      }

      v35 = [AAFAnalyticsEventPCS alloc];
      v36 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
      v37 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
      v38 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
      LOBYTE(v83) = 1;
      v39 = [AAFAnalyticsEventPCS initWithPCSMetrics:v35 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v36 eventName:v37 testsAreEnabled:v38 canSendMetrics:@"com.apple.pcs.resetProtectedDataOnOTClique" category:0];

      v87 = 0;
      v40 = [MEMORY[0x1E697AA80] resetProtectedData:v5 idmsTargetContext:v84 idmsCuttlefishPassword:v32 notifyIdMS:v33 != 0 error:&v87];
      v41 = v87;
      v42 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        if (v41)
        {
          v43 = 1;
        }

        else
        {
          v43 = v40 == 0;
        }

        v44 = @"failed";
        if (!v43)
        {
          v44 = @"succeeded";
        }

        *buf = 138412546;
        v90 = v44;
        v91 = 2112;
        v92 = v41;
        _os_log_impl(&dword_1B229C000, v42, OS_LOG_TYPE_DEFAULT, "resetProtectedData result: %@, error: %@", buf, 0x16u);
      }

      if (v40)
      {
        v51 = v41 == 0;
      }

      else
      {
        v51 = 0;
      }

      v52 = v51;
      if (v51)
      {
        v53 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v53, OS_LOG_TYPE_DEFAULT, "successfully reset protected data on otclique", buf, 2u);
        }

        [PCSAnalyticsReporterRTC sendMetricWithEvent:v39 success:1 error:0];
      }

      else
      {
        if (v41)
        {
          v73 = v41;
        }

        else
        {
          v73 = PCSErrorCreate(220, @"Failed to reset protected data on otclique", v45, v46, v47, v48, v49, v50, v83);
        }

        v77 = v73;
        [PCSAnalyticsReporterRTC sendMetricWithEvent:v39 success:0 error:v73];
        if (a3)
        {
          v78 = v77;
          *a3 = v77;
        }

        if (a2)
        {
          *a2 |= 0x4000uLL;
        }
      }

      if (v52)
      {
LABEL_69:
        v19 = 1;
        goto LABEL_77;
      }
    }

    else
    {
      v55 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, v55, OS_LOG_TYPE_DEFAULT, "Invoking clearCliqueFromAccount on OTClique", buf, 2u);
      }

      v56 = [AAFAnalyticsEventPCS alloc];
      v57 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
      v58 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
      v59 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
      LOBYTE(v83) = 1;
      v60 = [AAFAnalyticsEventPCS initWithPCSMetrics:v56 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v57 eventName:v58 testsAreEnabled:v59 canSendMetrics:@"com.apple.pcs.clearCliqueFromAccount" category:0];

      v86 = 0;
      v61 = [MEMORY[0x1E697AA80] clearCliqueFromAccount:v5 error:&v86];
      v62 = v86;
      v63 = pcsLogObjForScope("guitarfish-reset-protected-data");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = @"failed";
        if ((v61 & (v62 == 0)) != 0)
        {
          v64 = @"succeeded";
        }

        *buf = 138412546;
        v90 = v64;
        v91 = 2112;
        v92 = v62;
        _os_log_impl(&dword_1B229C000, v63, OS_LOG_TYPE_DEFAULT, "clearCliqueFromAccount result: %@, error: %@", buf, 0x16u);
      }

      if (v62)
      {
        v71 = 0;
      }

      else
      {
        v71 = v61;
      }

      if (v71)
      {
        v72 = pcsLogObjForScope("guitarfish-reset-protected-data");
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, v72, OS_LOG_TYPE_DEFAULT, "successfully reset protected data on otclique", buf, 2u);
        }

        [PCSAnalyticsReporterRTC sendMetricWithEvent:v60 success:1 error:0];
        goto LABEL_69;
      }

      if (v62)
      {
        v74 = v62;
      }

      else
      {
        v74 = PCSErrorCreate(0x8000, @"Failed to clear clique from account on otclique", v65, v66, v67, v68, v69, v70, v83);
      }

      v79 = v74;
      [PCSAnalyticsReporterRTC sendMetricWithEvent:v60 success:0 error:v74];
      if (a3)
      {
        v80 = v79;
        *a3 = v79;
      }

      if (a2)
      {
        *a2 |= 0x8000uLL;
      }
    }

    v19 = 0;
    goto LABEL_77;
  }

  v13 = [AAFAnalyticsEventPCS alloc];
  v14 = [v4 objectForKeyedSubscript:kPCSAltDSID[0]];
  v15 = [v4 objectForKeyedSubscript:kPCSFlowID[0]];
  v16 = [v4 objectForKeyedSubscript:kPCSDeviceSessionID[0]];
  LOBYTE(v83) = 1;
  v17 = [AAFAnalyticsEventPCS initWithPCSMetrics:v13 altDSID:"initWithPCSMetrics:altDSID:flowID:deviceSessionID:eventName:testsAreEnabled:canSendMetrics:category:" flowID:0 deviceSessionID:v14 eventName:v15 testsAreEnabled:v16 canSendMetrics:@"com.apple.pcspPerformCKServerUnreadableDataRemoval" category:0];

  v18 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v18, OS_LOG_TYPE_DEFAULT, "Performing performCKServerUnreadableDataRemoval on OTClique", buf, 2u);
  }

  v88 = 0;
  LODWORD(v19) = [MEMORY[0x1E697AA80] performCKServerUnreadableDataRemoval:v5 error:&v88];
  v20 = v88;
  v21 = pcsLogObjForScope("guitarfish-reset-protected-data");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"failed";
    if ((v19 & (v20 == 0)) != 0)
    {
      v22 = @"succeeded";
    }

    *buf = 138412546;
    v90 = v22;
    v91 = 2112;
    v92 = v20;
    _os_log_impl(&dword_1B229C000, v21, OS_LOG_TYPE_DEFAULT, "performCKServerUnreadableDataRemoval result: %@, error: %@", buf, 0x16u);
  }

  if (v20)
  {
    v19 = 0;
  }

  else
  {
    v19 = v19;
  }

  if (v19)
  {
    v29 = pcsLogObjForScope("guitarfish-reset-protected-data");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, v29, OS_LOG_TYPE_DEFAULT, "successfully removed unreadable data from CKServer on otclique", buf, 2u);
    }

    [PCSAnalyticsReporterRTC sendMetricWithEvent:v17 success:1 error:0];
  }

  else
  {
    if (v20)
    {
      v54 = v20;
    }

    else
    {
      v54 = PCSErrorCreate(226, @"Failed to remove unreadable CKServer data on otclique", v23, v24, v25, v26, v27, v28, v83);
    }

    v75 = v54;
    if (a3)
    {
      v76 = v54;
      *a3 = v75;
    }

    if (a2)
    {
      *a2 |= 0x200000uLL;
    }

    [PCSAnalyticsReporterRTC sendMetricWithEvent:v17 success:0 error:v75];
  }

LABEL_77:
  v81 = *MEMORY[0x1E69E9840];
  return v19;
}

void _PCSGuitarfishDeleteKeychainItem(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a2;
  v9 = objc_alloc_init(v7);
  [v9 setObject:*MEMORY[0x1E697B018] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
  [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v9 setObject:kPCSDefaultKeychainGroup[0] forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697AC30]];

  [v9 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697AE80]];
  [v9 setObject:kPCSGuitarfishKeychainSecurityDomain forKeyedSubscript:*MEMORY[0x1E697AE70]];
  v10 = off_1ED6F2360(v9);
  if (v10 == -25300 || v10 == 0)
  {
    v6[2](v6, 0);
  }

  else
  {
    v12 = v10;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _PCSGuitarfishDeleteKeychainItem_cold_1();
    }

    v20 = PCSErrorCreate(26, @"Unable to delete item from keychain %d", v14, v15, v16, v17, v18, v19, v12);
    (v6)[2](v6, v20);
  }
}

id PCSGuitarfishUnwrapKeysUsingWrappingKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v7 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v7, OS_LOG_TYPE_DEFAULT, "Unwrapping Inner from Outer with Key", buf, 2u);
  }

  v8 = dispatch_semaphore_create(0);
  v9 = v17[5];
  v17[5] = v8;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PCSGuitarfishUnwrapKeysUsingWrappingKey_block_invoke;
  v14[3] = &unk_1E7B19AD8;
  v14[4] = &v28;
  v14[5] = &v22;
  v14[6] = &v16;
  _PCSBackupGuitarfishGetRecoveredInnerBlobFromOuterBlobWithWrappingKey(v5, v6, v14);
  dispatch_semaphore_wait(v17[5], 0xFFFFFFFFFFFFFFFFLL);
  if (v23[5])
  {
    v10 = pcsLogObjForScope("Guitarfish");
    PCSGuitarfishUnwrapKeysUsingWrappingKey_cold_1(v10);
  }

  if (a3)
  {
    v11 = v29[5];
    if (v11)
    {
      *a3 = v11;
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

void sub_1B22D7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void __PCSGuitarfishUnwrapKeysUsingWrappingKey_block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a2;
  v12 = a6;
  if (v12)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a6);
  }

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

id PCSGuitarfishUnwrapKeys(void *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  if (!v5)
  {
    v7 = +[PCSAccountsModel accountForCurrentPersona];
    v5 = [v7 aa_personID];

    v8 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v5;
      _os_log_impl(&dword_1B229C000, v8, OS_LOG_TYPE_DEFAULT, "DSID not provided to PCSGuitarfishUnwrapKeys, using derived: %@", buf, 0xCu);
    }
  }

  v9 = pcsLogObjForScope("Guitarfish");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "Fetching Wrapping Key from Keychain", buf, 2u);
  }

  v10 = dispatch_semaphore_create(0);
  v11 = v31[5];
  v31[5] = v10;

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __PCSGuitarfishUnwrapKeys_block_invoke;
  v29[3] = &unk_1E7B19B00;
  v29[4] = &v36;
  v29[5] = &v42;
  v29[6] = &v30;
  _PCSGuitarfishGetKeychainItem(@"WrappingKey", v5, v29);
  dispatch_semaphore_wait(v31[5], 0xFFFFFFFFFFFFFFFFLL);
  v17 = v43[5];
  v18 = v37;
  if (!v17 || v37[5])
  {
    v28 = v37[5];
    _PCSNSError(&v28, 213, @"unable to fetch wrappingKey, needs repair", v12, v13, v14, v15, v16, v26);
    v19 = 0;
    v20 = v28;
  }

  else
  {
    v27 = 0;
    v19 = PCSGuitarfishUnwrapKeysUsingWrappingKey(v17, v6, &v27);
    v20 = v27;
  }

  v21 = v20;
  v22 = v18[5];
  v18[5] = v21;

  if (a3)
  {
    v23 = v37[5];
    if (v23)
    {
      *a3 = v23;
    }
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

void sub_1B22D7FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void __PCSGuitarfishUnwrapKeys_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = pcsLogObjForScope("Guitarfish");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1B229C000, v8, OS_LOG_TYPE_DEFAULT, "error retrieving wrapping key from keychain: %@", &v11, 0xCu);
    }

    v9 = 32;
    goto LABEL_7;
  }

  if (v6)
  {
    v9 = 40;
    a3 = a2;
LABEL_7:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
  }

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));

  v10 = *MEMORY[0x1E69E9840];
}