id _MADLog(void *a1)
{
  v1 = a1;
  if (_MADLog_onceToken != -1)
  {
    _MADLog_cold_1();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = [_MADLog_daemonLoggers objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [_MADLog_daemonLoggers objectForKey:@"DEFAULT"];
  }

  v6 = v5;

  return v6;
}

id stringForMAXpcCommand(unsigned int a1)
{
  if (a1 >= 0x30)
  {
    v2 = [NSString stringWithFormat:@"MAXpcCommand%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5940 + a1);
  }

  return v2;
}

id stringWithoutNewlines(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"%@", a1];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  return v2;
}

uint64_t _MAPreferencesIsInternalAllowed()
{
  if (_MAPreferencesIsInternalAllowed_onceToken != -1)
  {
    _MAPreferencesIsInternalAllowed_cold_1();
  }

  return _MAPreferencesIsInternalAllowed__isAppleInternal;
}

BOOL isWellFormedAssetType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 hasPrefix:@"com.apple.MobileAsset."] && (v2 = objc_msgSend(v1, "length"), v2 > objc_msgSend(@"com.apple.MobileAsset.", "length")) && (objc_msgSend(v1, "containsString:", @"..") & 1) == 0)
  {
    v5 = assetTypeDisallowedCharacterSet();
    v3 = [v1 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id assetTypeDisallowedCharacterSet()
{
  if (assetTypeDisallowedCharacterSet_once != -1)
  {
    assetTypeDisallowedCharacterSet_cold_1();
  }

  v1 = assetTypeDisallowedCharacterSet_disallowedSet;

  return v1;
}

void *getAssetTypeFromTaskDescriptor(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = 0;
    v4 = 0;
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = disassembleTaskDescriptor(v1);
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v5 = [v3 objectForKey:@"isXml"];
  if (!v5)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = [v4 objectForKey:@"normalizedAssetType"];
  v7 = assetTypeFromNormalized(v6);

  if (!isWellFormedAssetType(v7))
  {

    goto LABEL_6;
  }

LABEL_10:
  v8 = v7;

  return v7;
}

id disassembleTaskDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 pathExtension];
  v3 = [v1 componentsSeparatedByString:@"."];
  if ([v3 count] < 3)
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:1];

    v5 = [v3 objectAtIndexedSubscript:2];
    v6 = normalizePurpose(v5);

    v2 = v4;
  }

  if ([v3 count] < 4)
  {
    v7 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_24;
  }

  v7 = [v3 objectAtIndexedSubscript:3];
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = objc_opt_new();
  if ([v2 isEqualToString:@"xml"])
  {
    if (v7)
    {
      v9 = 4;
    }

    else
    {
      v9 = 1;
    }
  }

  else if ([v2 isEqualToString:@"pmv"])
  {
    v9 = 3;
  }

  else
  {
    if (v7)
    {
      v9 = 5;
    }

    else
    {
      v9 = 2;
    }

    [v8 setValue:v2 forKey:@"assetIdentifier"];
  }

  v10 = [NSNumber numberWithInt:v9];
  [v8 setValue:v10 forKey:@"isXml"];

  if (v6)
  {
    [v8 setValue:v6 forKey:@"Purpose"];
  }

  if (v7)
  {
    [v8 setValue:v7 forKey:@"AutoAssetJob"];
  }

  v11 = [v1 rangeOfString:@"."];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v1 substringWithRange:{0, v11}];
    [v8 setValue:v12 forKey:@"normalizedAssetType"];
  }

LABEL_24:

  return v8;
}

id assetTypeFromNormalized(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableString string];
  [v2 appendString:v1];

  [v2 replaceOccurrencesOfString:@"_" withString:@"." options:2 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

id isSoftwareUpdateType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = getSoftwareUpdateTypes();
    v3 = [v2 containsObject:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getSoftwareUpdateTypes()
{
  if (getSoftwareUpdateTypes_softwareUpdateTypesOnce != -1)
  {
    getSoftwareUpdateTypes_cold_1();
  }

  v1 = getSoftwareUpdateTypes_softwareUpdateAssetTypes;

  return v1;
}

BOOL _isAssetTypeAllowlisted(void *value)
{
  if (_isAssetTypeAllowlisted_allowListOnce != -1)
  {
    _isAssetTypeAllowlisted_cold_1();
  }

  return CFSetContainsValue(_isAssetTypeAllowlisted_explicitAllowList, value) != 0;
}

uint64_t checkConnectionAccessToAssetType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v49 = 0u;
  v50 = 0u;
  error = 0;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  v6 = v5;
  if (!v5)
  {
    v11 = _MADLog(@"Entitlement");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      pid = xpc_connection_get_pid(v3);
      token.val[0] = 67109120;
      token.val[1] = pid;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Couldn't create secure task for client %d", &token, 8u);
    }

    v10 = 5;
    goto LABEL_49;
  }

  v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.private.assets.bypass-asset-types-check", &error);
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 != CFBooleanGetTypeID())
    {
      v13 = _MADLog(@"Entitlement");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      token.val[0] = 138543362;
      *&token.val[1] = @"com.apple.private.assets.bypass-asset-types-check";
      v14 = "Entitlement '%{public}@' is not an BOOLean value";
LABEL_37:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v14, &token, 0xCu);
      goto LABEL_47;
    }

    if (CFBooleanGetValue(v8))
    {
      v10 = 0;
LABEL_48:
      CFRelease(v8);
      goto LABEL_49;
    }

    CFRelease(v8);
  }

  v15 = SecTaskCopyValueForEntitlement(v6, @"com.apple.private.assets.accessible-asset-types", &error);
  if (!v15)
  {
    v34 = error;
    v35 = _MADLog(@"Entitlement");
    v13 = v35;
    if (v34)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138543362;
        *&token.val[1] = error;
        v36 = "Unable to look up client's entitlement: %{public}@";
        v37 = v13;
        v38 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_0, v37, v38, v36, &token, 0xCu);
      }
    }

    else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      token.val[0] = 138412290;
      *&token.val[1] = @"com.apple.private.assets.accessible-asset-types";
      v36 = "Client process does not have '%@' entitlement";
      v37 = v13;
      v38 = OS_LOG_TYPE_DEBUG;
      goto LABEL_40;
    }

    v8 = 0;
    goto LABEL_47;
  }

  v8 = v15;
  v16 = CFGetTypeID(v15);
  if (v16 != CFArrayGetTypeID())
  {
    v13 = _MADLog(@"Entitlement");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    token.val[0] = 138543362;
    *&token.val[1] = @"com.apple.private.assets.accessible-asset-types";
    v14 = "Entitlement '%{public}@' is not an array";
    goto LABEL_37;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v8;
  v17 = [v13 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (!v17)
  {
    v8 = v13;
LABEL_47:

    v10 = _checkBooleanEntitlement(v6, v4);
    if (!v8)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v41 = v6;
  v42 = v3;
  v18 = *v45;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v20 = @".*";
  v21 = @"com.apple.MobileAsset.";
  v22 = v17;
LABEL_16:
  v23 = 0;
  v43 = v22;
  while (1)
  {
    if (*v45 != v18)
    {
      objc_enumerationMutation(v13);
    }

    v24 = *(*(&v44 + 1) + 8 * v23);
    v25 = objc_autoreleasePoolPush();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v39 = _MADLog(@"Entitlement");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "Client process entitlements are not in the correct format (expected an array of strings)", &token, 2u);
      }

      objc_autoreleasePoolPop(v25);
LABEL_46:
      v8 = v13;
      v6 = v41;
      v3 = v42;
      goto LABEL_47;
    }

    if (([v24 hasSuffix:v20] & 1) == 0)
    {
      if ([v24 isEqualToString:v4])
      {
        goto LABEL_55;
      }

      goto LABEL_29;
    }

    v26 = [v24 substringToIndex:{objc_msgSend(v24, "length") - 1}];
    if ([v26 isEqualToString:v21])
    {
      v27 = v21;
      v28 = v13;
      v29 = v18;
      v30 = v4;
      v31 = v20;
      v32 = p_weak_ivar_lyt;
      v33 = _MADLog(@"Entitlement");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "Use of the wildcard asset type 'com.apple.MobileAsset.*' is not allowed", &token, 2u);
      }

      p_weak_ivar_lyt = v32;
      v20 = v31;
      v4 = v30;
      v18 = v29;
      v13 = v28;
      v21 = v27;
      v22 = v43;
      goto LABEL_28;
    }

    if ([v4 hasPrefix:v26])
    {
      break;
    }

LABEL_28:

LABEL_29:
    objc_autoreleasePoolPop(v25);
    if (v22 == ++v23)
    {
      v22 = [v13 countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v22)
      {
        goto LABEL_16;
      }

      goto LABEL_46;
    }
  }

LABEL_55:
  objc_autoreleasePoolPop(v25);

  v10 = 0;
  v8 = v13;
  v6 = v41;
  v3 = v42;
  if (v13)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

id _preferencesDomainProtectionDispatchQueue()
{
  if (_preferencesDomainProtectionDispatchQueue_preferencesDomainQueueOnce != -1)
  {
    _preferencesDomainProtectionDispatchQueue_cold_1();
  }

  v1 = _preferencesDomainProtectionDispatchQueue_preferencesDomainQueue;

  return v1;
}

id _MAPreferencesCopyValue(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v2 = _preferencesDomainProtectionDispatchQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___MAPreferencesCopyValue_block_invoke;
  block[3] = &unk_4B2EA8;
  v3 = v1;
  v25 = v3;
  v26 = &v27;
  dispatch_sync(v2, block);

  v4 = newPrefsCopyValueForKey(v3);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v5 = _preferencesDomainProtectionDispatchQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = ___MAPreferencesCopyValue_block_invoke_2;
  v15[3] = &unk_4B2AC8;
  v17 = &v18;
  v6 = v3;
  v16 = v6;
  dispatch_sync(v5, v15);

  v7 = v28[5];
  if (v7)
  {
    v8 = @"defaults";
LABEL_9:
    v10 = v7;
    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544130;
      v34 = v8;
      v35 = 2114;
      v36 = v6;
      v37 = 2114;
      v38 = v10;
      v39 = 2114;
      v40 = v13;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    v8 = @"profile";
    v7 = v4;
    goto LABEL_9;
  }

  v7 = v19[5];
  if (v7)
  {
    v8 = @"userdefaults";
    goto LABEL_9;
  }

  v10 = 0;
LABEL_12:
  v9 = v10;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v27, 8);

LABEL_13:

  return v9;
}

void sub_37D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

id newPrefsCopyValueForKey(void *a1)
{
  v1 = a1;
  v2 = [[NSDictionary alloc] initWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.MobileAsset.plist"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:v1];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id downloadManagerDecodeClasses()
{
  if (downloadManagerDecodeClasses_once != -1)
  {
    downloadManagerDecodeClasses_cold_1();
  }

  v1 = downloadManagerDecodeClasses__downloadManagerDecodeClasses;

  return v1;
}

id getObjectFromMessageLogIfDesired(void *a1, const char *a2, const char *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a4;
  length = xpc_dictionary_get_double(v9, a2);
  if (!length)
  {
    goto LABEL_14;
  }

  data = xpc_dictionary_get_data(v9, a3, &length);
  if (data)
  {
    v12 = [NSData dataWithBytes:data length:length];
    if (v12)
    {
      v13 = v12;
      v20 = 0;
      v14 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v12 error:&v20];
      v15 = v20;
      if (v15 || !v14)
      {
        if (a5)
        {
          v18 = _MADLog(@"V2");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v23 = a3;
            v24 = 2114;
            v25 = v15;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "getObjectFromMessage: could not decode object for key: %{public}s error: %{public}@", buf, 0x16u);
          }
        }

        v16 = 0;
      }

      else
      {
        v16 = [v14 decodeObjectOfClasses:v10 forKey:NSKeyedArchiveRootObjectKey];
      }

      [v14 finishDecoding];

      goto LABEL_21;
    }

    if (a5)
    {
      v15 = _MADLog(@"V2");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = a3;
        v17 = "Failed to get key: %{public}s";
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_14:
    v13 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v15 = _MADLog(@"V2");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v23 = a3;
    v17 = "Failed to get key: %{public}s due to not beinng present";
LABEL_12:
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
  }

LABEL_13:
  v13 = 0;
  v16 = 0;
LABEL_21:

LABEL_22:

  return v16;
}

uint64_t _MAPreferencesSync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = _preferencesDomainProtectionDispatchQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___MAPreferencesSync_block_invoke;
  block[3] = &unk_4B2E80;
  v12 = v4;
  v13 = &v14;
  v11 = v3;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, block);

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v8;
}

BOOL syncPreferences(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _preferencesDomainProtectionDispatchQueue();
  dispatch_assert_queue_V2(v5);

  v6 = CFPreferencesAppSynchronize(@"com.apple.MobileAsset");
  if (!v6)
  {
    v7 = _MADLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543874;
      v10 = v3;
      v11 = 2114;
      v12 = v4;
      v13 = 2114;
      v14 = @"com.apple.MobileAsset";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[MA_PREFS] {%{public}@} [%{public}@] Could not synchronize preferences for %{public}@ - this may be a permissions error", &v9, 0x20u);
    }
  }

  return v6 != 0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t backgroundDownloadsPossibleWithInfo(BOOL *a1)
{
  PreferenceLong = getPreferenceLong(@"forceInProcessDownloads");
  if (PreferenceLong == 1)
  {
    v3 = _MADLog(@"Download");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218240;
      v8 = 1;
      v9 = 1024;
      v10 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Using in-process downloads; forceInProcess: %ld backgroundDownloadsPossible: %d", &v7, 0x12u);
    }

    v4 = 0;
LABEL_5:

    goto LABEL_15;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (+[NSURLSession _backgroundServiceAvailable]& 1) == 0)
  {
    v5 = _MADLog(@"Download");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218240;
      v8 = PreferenceLong;
      v9 = 1024;
      v10 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Using in-process downloads; forceInProcess: %ld backgroundDownloadsPossible: %d", &v7, 0x12u);
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  if ((PreferenceLong - 2) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v3 = _MADLog(@"Download");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218240;
      v8 = PreferenceLong;
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Unusual pref value for forceInProcess: %ld backgroundDownloadsPossible: %d", &v7, 0x12u);
    }

    goto LABEL_5;
  }

LABEL_15:
  if (a1)
  {
    *a1 = PreferenceLong == 1;
  }

  return v4;
}

uint64_t getPreferenceLong(void *a1)
{
  v1 = _MAPreferencesCopyValue(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

void sub_4384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

id stringForMAQueryReturnTypes(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [NSString stringWithFormat:@"MAQueryReturnTypes%llu", a1];
  }

  else
  {
    v2 = *(&off_4B58D0 + a1);
  }

  return v2;
}

__CFString *normalizePurposeFromUtf8(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSString stringWithUTF8String:a1];
    if (v1)
    {
      v2 = v1;
      v3 = normalizePurpose(v1);
    }

    else
    {
      v3 = &stru_4BD3F0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id queryDecodeClasses()
{
  if (queryDecodeClasses_once != -1)
  {
    queryDecodeClasses_cold_1();
  }

  v1 = queryDecodeClasses__queryDecodeClasses;

  return v1;
}

__CFString *normalizePurpose(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && !isWellFormedPurpose(v1))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = purposeIgnoredCharacterSet();
      [(__CFString *)v2 rangeOfCharacterFromSet:v3];
      v5 = v4;

      if (v5)
      {
        v6 = purposeIgnoredCharacterSet();
        v7 = [(__CFString *)v2 componentsSeparatedByCharactersInSet:v6];
        v8 = [v7 componentsJoinedByString:&stru_4BD3F0];

        v2 = v8;
      }
    }

    if (!isWellFormedPurpose(v2))
    {

      v2 = &stru_4BD3F0;
    }
  }

  return v2;
}

id purposeDisallowedCharacterSet()
{
  if (purposeDisallowedCharacterSet_once != -1)
  {
    purposeDisallowedCharacterSet_cold_1();
  }

  v1 = purposeDisallowedCharacterSet_disallowedSet;

  return v1;
}

id getDownloadManager()
{
  if (getDownloadManager_downloadManagerOnce != -1)
  {
    getDownloadManager_cold_1();
  }

  v1 = getDownloadManager_downloadManager;

  return v1;
}

BOOL isWellFormedPurpose(void *a1)
{
  v1 = a1;
  v5 = 1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v1 length] || objc_msgSend(v1, "length") > 0x3C || (purposeDisallowedCharacterSet(), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "rangeOfCharacterFromSet:", v2), v4 = v3, v2, v4))
    {
      v5 = 0;
    }
  }

  return v5;
}

id normalizedAssetType(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSMutableString stringWithString:a1];
    [v1 replaceOccurrencesOfString:@"." withString:@"_" options:2 range:{0, objc_msgSend(v1, "length")}];
  }

  else
  {
    v2 = _MADLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Could not create normalized asset type", v4, 2u);
    }

    v1 = 0;
  }

  return v1;
}

uint64_t _isAssetTypeAllowedToGetServerUrl(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

BOOL sendReply(void *a1, void *a2, int64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    xpc_dictionary_set_int64(v6, "Result", a3);
    xpc_connection_send_message(v5, v7);
  }

  else
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Could not send XPC reply with result %lld, because there was no xpc reply dictionary", &v10, 0xCu);
    }
  }

  return v7 != 0;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_51A3C0 == -1)
  {
    if (qword_51A3C8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_51A3C8)
    {
      return _availability_version_check();
    }
  }

  if (qword_51A3B8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_0 < v11;
    if (_MergedGlobals_0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_51A3AC > a3)
      {
        return 1;
      }

      if (dword_51A3AC >= a3)
      {
        return dword_51A3B0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_0 < a2;
  if (_MergedGlobals_0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t isTypeDescriptorOfType(void *a1, int a2)
{
  v3 = disassembleTaskDescriptor(a1);
  v4 = v3;
  if (v3 && ([v3 objectForKey:@"isXml"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 intValue];
    v8 = [v4 objectForKey:@"normalizedAssetType"];
    v9 = assetTypeFromNormalized(v8);

    if (v9)
    {
      v10 = v7 == a2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id getPreInstalledAssets(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = normalizedAssetType(v8);
  v11 = [v7 stringByAppendingPathComponent:v10];
  v12 = getInstalledAssetIds(v11);

  if (v12)
  {
    v13 = dataFillInstalledWithPurpose(v8, v12, 0, v7, 0);
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a4)
  {
LABEL_3:
    v14 = v12;
    *a4 = v12;
  }

LABEL_4:
  v15 = filterResults(v9, v13);

  return v15;
}

id dataFillInstalledWithPurpose(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v42 = a3;
  v48 = a4;
  v11 = a5;
  if (v9 && v10 && v48)
  {
    v45 = objc_opt_new();
    if (v45)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (!v13)
      {
        goto LABEL_50;
      }

      v14 = v13;
      v40 = v10;
      v49 = *v52;
      v15 = v42;
      v46 = v11;
      obj = v12;
      v41 = v9;
      while (1)
      {
        v16 = 0;
        v43 = v14;
        do
        {
          if (*v52 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v51 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          if (v17)
          {
            if (v15)
            {
              v19 = [v15 objectForKey:v17];
            }

            else
            {
              v19 = 0;
            }

            v21 = getPathToAssetWithPurpose(v48, v9, v17, v11);
            v22 = v21;
            if (v19)
            {
              v20 = v19;
LABEL_18:
              if (v11 && v22)
              {
                [v20 setObject:v11 forKey:@"AssetPurpose"];
              }

              if (_MAPreferencesIsVerboseLoggingEnabled())
              {
                v23 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v56 = v22;
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Path to asset dir: %{public}@", buf, 0xCu);
                }

                v11 = v46;
              }

              [v45 setObject:v20 forKey:{v17, v40}];
LABEL_43:

              goto LABEL_44;
            }

            if (v21)
            {
              v24 = [v21 URLByAppendingPathComponent:@"Info.plist"];
              v25 = [v22 URLByAppendingPathComponent:@"AssetData"];
              v44 = v24;
              v26 = [v24 absoluteString];
              v27 = [NSDictionary dictionaryWithContentsOfFile:v26];

              if (!v27 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v28 = objc_claimAutoreleasedReturnValue(), [v25 path], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "fileExistsAtPath:", v29), v29, v28, (v30 & 1) == 0))
              {
                v34 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v56 = v22;
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Got a malformed asset when reading %{public}@, cleaning up", buf, 0xCu);
                }

                v35 = +[NSFileManager defaultManager];
                v36 = [v22 path];
                v50 = 0;
                [v35 removeItemAtPath:v36 error:&v50];
                v37 = v50;

                if (v37)
                {
                  v38 = _MADLog(@"V2Control");
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v56 = v37;
                    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "Could not clean up malformed asset: %{public}@", buf, 0xCu);
                  }
                }

                v20 = 0;
                v9 = v41;
                v15 = v42;
                v11 = v46;
                v14 = v43;
                goto LABEL_43;
              }

              v20 = [v27 objectForKey:@"MobileAssetProperties"];

              v9 = v41;
              v15 = v42;
              v11 = v46;
              v14 = v43;
              if (v20)
              {
                goto LABEL_18;
              }

              v31 = _MADLog(@"V2Control");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v32 = v31;
                v33 = "Got a nil attributes when reading Info.plist, skipping";
                goto LABEL_41;
              }
            }

            else
            {
              v31 = _MADLog(@"V2Control");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v32 = v31;
                v33 = "attempted to create fullpath to asset and it failed";
LABEL_41:
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 2u);
              }
            }

            v20 = 0;
            v11 = v46;
            goto LABEL_43;
          }

          v20 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Got a nil assetId when forming installed asset list, skipping", buf, 2u);
          }

LABEL_44:

          objc_autoreleasePoolPop(v18);
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v12 = obj;
        v14 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (!v14)
        {
          v10 = v40;
          goto LABEL_50;
        }
      }
    }

    v45 = 0;
  }

  else
  {
    v12 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "preqs are nil for dataFilling", buf, 2u);
    }

    v45 = 0;
LABEL_50:
  }

  return v45;
}

void mergeDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = [v3 objectForKey:v10];

            if (!v11)
            {
              v12 = [v5 objectForKey:v10];
              [v3 setObject:v12 forKey:v10];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

id stringForMAQueryResult(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [NSString stringWithFormat:@"MAQueryResult%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5858 + a1);
  }

  return v2;
}

id stringForQueryArray(void *a1)
{
  v1 = a1;
  v2 = [[NSMutableString alloc] initWithCapacity:0];
  [v2 appendString:@"[ "];
  if (v1)
  {
    v3 = +[NSNull null];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v1;
    obj = v1;
    v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v4 = @"%@:";
      v20 = *v29;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v28 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v7 = [v6 objectForKey:@"queryKey"];
          v8 = [v6 objectForKey:@"queryValue"];
          v22 = v7;
          [v2 appendFormat:v4, v7];
          v9 = [v8 containsObject:v3];
          if (v9)
          {
            [v2 appendString:@"NULL"];
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = v9 ^ 1;
            v14 = *v25;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                if (*(*(&v24 + 1) + 8 * j) != v3)
                {
                  if (v13)
                  {
                    v16 = @"'%@'";
                  }

                  else
                  {
                    v16 = @",'%@'";
                  }

                  [v2 appendFormat:v16, *(*(&v24 + 1) + 8 * j)];
                  v13 = 0;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          objc_autoreleasePoolPop(context);
          v4 = @" and %@:";
        }

        v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    v1 = v18;
  }

  [v2 appendString:@"]"];

  return v2;
}

const __CFString *queryResultString(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return @"MAQueryResult";
  }

  else
  {
    return *(&off_4B5578 + a1);
  }
}

id getPreinstalledAssetIds(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [[NSMutableSet alloc] initWithCapacity:0];
  v7 = getRepositoryPath(@"/System/Library/PreinstalledAssetsV2/RequiredByOs");
  v8 = normalizedAssetType(v5);
  v9 = [v7 stringByAppendingPathComponent:v8];
  v10 = getInstalledAssetIds(v9);

  if (v10)
  {
    [v6 unionSet:v10];
  }

  else
  {
    v10 = [[NSMutableSet alloc] initWithCapacity:0];
  }

  v11 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
  v12 = normalizedAssetType(v5);
  v13 = [v11 stringByAppendingPathComponent:v12];
  v14 = getInstalledAssetIds(v13);

  if (v14)
  {
    [v6 unionSet:v14];
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = [[NSMutableSet alloc] initWithCapacity:0];
  if (a2)
  {
LABEL_6:
    v15 = v10;
    *a2 = v10;
  }

LABEL_7:
  if (a3)
  {
    v16 = v14;
    *a3 = v14;
  }

  [v6 unionSet:v14];

  return v6;
}

id getInstalledAssetIds(void *a1)
{
  v1 = opendir([a1 UTF8String]);
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_new();
    for (i = readdir(v2); i; i = readdir(v2))
    {
      d_name = i->d_name;
      v6 = strlen(i->d_name);
      if ((v6 - 5) >= 1)
      {
        v7 = v6;
        if (!strcmp(&d_name[v6 - 5], "asset"))
        {
          d_name[v7 - 6] = 0;
          v8 = [NSString stringWithUTF8String:d_name];
          [v3 addObject:v8];
        }
      }
    }

    closedir(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id getRepositoryPath(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v3 = _MADLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446210;
      v6 = "getRepositoryPath";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "ERROR: Invalid string passed to %{public}s", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

__CFString *repositoryPath(void *a1)
{
  if (isSoftwareUpdateType(a1) & 1) != 0 || (MGGetBoolAnswer())
  {
    v1 = @"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2";
  }

  else
  {
    v1 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  }

  return v1;
}

id getPathToAssetFileWithPurpose(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = normalizedAssetType(v4);
  v6 = [NSString stringWithFormat:@"%@.%@", v5, @"xml"];
  v7 = repositoryPath(v4);

  v8 = [v7 stringByAppendingPathComponent:v5];
  if (v3)
  {
    v9 = purposeDirectoryName(v3);
    v10 = [v8 stringByAppendingPathComponent:v9];

    v8 = v10;
  }

  v11 = [v8 stringByAppendingPathComponent:v6];

  return v11;
}

id filterResults(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v7 = v4;
    if (v6)
    {
      v8 = v6;
      v9 = *v16;
      v7 = v4;
      do
      {
        v10 = 0;
        v11 = v7;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v15 + 1) + 8 * v10);
          v13 = objc_autoreleasePoolPush();
          v7 = applyFilter(v12, v11);

          objc_autoreleasePoolPop(v13);
          v10 = v10 + 1;
          v11 = v7;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL isForcedResultPreferenceSetForAssetType(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (_MAPreferencesIsInternalAllowed())
  {
    v13 = 0;
    v7 = [NSString stringWithFormat:@"%@-%@", v5, v6];
    AppIntegerValue = _MAPreferencesGetAppIntegerValue(v7, &v13);
    v9 = v13 != 0;
    if (v13)
    {
      v10 = AppIntegerValue;
      v11 = _MADLog(@"Download");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v15 = v7;
        v16 = 2048;
        v17 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Found %{public}@ preference override. Will force result %ld.", buf, 0x16u);
      }

      if (a3)
      {
        *a3 = v10;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id assembleTaskDescriptorWithPurposeAndAutoAssetJobID(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [NSString stringWithFormat:@"%@%@%@", a1, @".", a2];
  if (v7)
  {
    v10 = normalizePurpose(v7);

    v11 = [v9 stringByAppendingFormat:@"%@%@", @".", v10];

    v9 = v11;
  }

  if (v8)
  {
    if ([v8 containsString:@"."])
    {
      v12 = _MADLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v8;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{assembleTaskDescriptorWithPurposeAndAutoAssetJobID} invalid autoAssetJobID(ignored):%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v13 = [v9 stringByAppendingFormat:@"%@%@", @".", v8];

      v9 = v13;
    }
  }

  return v9;
}

uint64_t isXMLAssetType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (isXMLAssetType_once == -1)
  {
    if (!v1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    isXMLAssetType_cold_1();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (([isXMLAssetType_assetTypes containsObject:v2] & 1) == 0)
  {
    if (([v2 hasPrefix:@"com.apple.MobileAsset.UARP"] & 1) != 0 || objc_msgSend(v2, "hasPrefix:", @"com.apple.MobileAsset.MobileAccessoryUpdate"))
    {
      if (([v2 hasPrefix:@"com.apple.MobileAsset.UARP.A2937"] & 1) == 0)
      {
        v3 = [v2 isEqualToString:@"com.apple.MobileAsset.UARP.ACDCU"] ^ 1;
        goto LABEL_10;
      }
    }

    else if (__isPlatformVersionAtLeast(2, 18, 6, 0) && objc_opt_class() && (objc_opt_respondsToSelector() & 1) != 0 && ([MAThirdPartyCompatibility isThirdPartyAssetType:v2]& 1) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v3 = 1;
LABEL_10:

  return v3;
}

__CFString *_MAPreferencesCopyNSStringValue(void *a1)
{
  v1 = a1;
  v2 = _MAPreferencesCopyValue(v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
LABEL_10:
      v3 = v5;
      goto LABEL_11;
    }

    v6 = CFGetTypeID(v3);
    if (v6 == CFNumberGetTypeID())
    {
      v5 = [(__CFString *)v3 stringValue];
      goto LABEL_10;
    }

    v7 = CFGetTypeID(v3);
    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v3);
      v9 = @"YES";
      if (!Value)
      {
        v9 = @"NO";
      }

      v5 = v9;
      goto LABEL_10;
    }

    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v1;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[MA_PREFS] {_MAPreferencesCopyNSStringValue} invalid type for key:%{public}@ | expecting string or number or BOOLean", &v12, 0xCu);
    }

    v3 = 0;
  }

LABEL_11:

  return v3;
}

id getStandardUrl(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = _MADLog(@"Download");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v18 = "Nil asset type when trying to get standard url";
LABEL_17:
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    goto LABEL_18;
  }

  v5 = +[ASAssetMetadataUpdatePolicy policy];
  v6 = [v5 serverURLForAssetType:v3];

  if (!v6)
  {
    v6 = _MADLog(@"Download");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v18 = "Nil url when trying serverURLForAssetType";
    goto LABEL_17;
  }

  if (!isSystemAppType(v3))
  {
    if (v4)
    {
      v20 = [v6 URLByAppendingPathComponent:v4];

      v21 = [NSString stringWithFormat:@"%@%@%@", v4, @".", @"xml"];
      v17 = [v20 URLByAppendingPathComponent:v21];

      goto LABEL_19;
    }

    v22 = _MADLog(@"Download");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Nil normalizedAssetTypeStr when trying to assemble url", buf, 2u);
    }

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v7 = MGCopyAnswer();
  v8 = MGCopyAnswer();
  v24 = 0;
  v9 = isForcedBuildPreferenceSetForAssetType(@"ForceSystemAssetBuildId", v3, &v24);
  v10 = v24;
  if (v9)
  {
    v11 = _MADLog(@"Download");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v10;
    }

    v12 = v10;
    v7 = v12;
  }

  v23 = 0;
  v13 = isForcedBuildPreferenceSetForAssetType(@"ForceSystemAssetSystemImageId", v3, &v23);
  v14 = v23;
  if (v13)
  {
    v15 = _MADLog(@"Download");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v14;
    }

    v16 = v14;
    v8 = v16;
  }

  v17 = augmentPathForSystemApp(v3, v6, v7, v8);

LABEL_19:

  return v17;
}

id _MAPreferencesGetAppIntegerValue(void *a1, _BYTE *a2)
{
  v3 = _MAPreferencesCopyValue(a1);
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = isKindOfClass ^ 1;
    v6 = isKindOfClass & 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v5 = 1;
  if (a2)
  {
LABEL_3:
    *a2 = v6;
  }

LABEL_4:
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 integerValue];
  }

  return v7;
}

id getControlManager()
{
  if (getControlManager_controlManagerOnce != -1)
  {
    getControlManager_cold_1();
  }

  v1 = getControlManager_controlManager;

  return v1;
}

uint64_t isSSONeededForURL(void *a1)
{
  v1 = a1;
  if (isSSONeededForURL_domainsNeedingSSODispatchOnce != -1)
  {
    isSSONeededForURL_cold_1();
  }

  if (!v1)
  {
    v2 = _MADLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446210;
    v24 = "isSSONeededForURL";
    v11 = "Invalid url passed to %{public}s";
    v12 = v2;
    v13 = 12;
LABEL_21:
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_22;
  }

  if (!isSSONeededForURL_domainsNeedingSSO)
  {
    v2 = _MADLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "DomainsNeedingSSO not initialized";
    v12 = v2;
    v13 = 2;
    goto LABEL_21;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = isSSONeededForURL_domainsNeedingSSO;
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v1 scheme];
        if ([v8 isEqualToString:@"https"])
        {
          v9 = [v1 host];
          v10 = [v9 isEqualToString:v7];

          if (v10)
          {
            v15 = _MADLog(@"V2");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v24 = v1;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "URL %{public}@ requires SSO", buf, 0xCu);
            }

            v14 = 1;
            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
  v14 = 0;
LABEL_26:

  return v14;
}

void applyCatalogTransforms(void *a1, void *a2)
{
  v3 = a1;
  v31 = a2;
  if (!v3)
  {
    v3 = +[NSMutableDictionary dictionary];
  }

  [v3 setObject:@"data" forKey:@"_Measurement-SHA256"];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v8 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v27 = *v42;
    v28 = v3;
    do
    {
      v9 = 0;
      v29 = v5;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v35 = v10;
        v12 = [v3 objectForKey:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([@"data" isEqualToString:v12] & 1) == 0)
        {
          v25 = _MADLog(@"Download");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v46 = v12;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Invalid transform, skipping: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v36 = v31;
          v13 = [v36 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (v13)
          {
            v14 = v13;
            v32 = v12;
            v33 = v11;
            v34 = v9;
            v15 = *v38;
            v16 = v35;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v36);
                }

                v18 = *(*(&v37 + 1) + 8 * i);
                v19 = objc_autoreleasePoolPush();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = [v18 objectForKey:v16];
                  if (v20)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v21 = v8;
                      v22 = p_weak_ivar_lyt;
                      v23 = [[NSData alloc] initWithBase64EncodedString:v20 options:0];
                      if (v23)
                      {
                        [v18 setObject:v23 forKey:v35];
                      }

                      else
                      {
                        v24 = _MADLog(@"Download");
                        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v46 = v35;
                          v47 = 2112;
                          v48 = v20;
                          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Skipping transformation (key: %@ value: %@): Value cannot be base64 decoded.", buf, 0x16u);
                        }
                      }

                      p_weak_ivar_lyt = v22;
                      v8 = v21;
                      v16 = v35;
                    }
                  }
                }

                else
                {
                  v20 = _MADLog(@"Download");
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Skipping transformation, as asset isn't a dict", buf, 2u);
                  }
                }

                objc_autoreleasePoolPop(v19);
              }

              v14 = [v36 countByEnumeratingWithState:&v37 objects:v49 count:16];
            }

            while (v14);
            v6 = v27;
            v3 = v28;
            v5 = v29;
            v11 = v33;
            v9 = v34;
            v12 = v32;
          }

          v25 = v36;
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v9 != v5);
      v26 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      v5 = v26;
    }

    while (v26);
  }
}

id getAssetIdFromDict(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v6 = [v4 keyEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      if (isAttributePartOfAssetIdHash(v8))
      {
        v9 = [v4 objectForKey:v8];
        [v5 setObject:v9 forKey:v8];
      }

      v10 = [v6 nextObject];

      v8 = v10;
    }

    while (v10);
  }

  v11 = _MobileAssetHashAssetData(v3, v5, @"SHA-1");

  return v11;
}

id isAttributePartOfAssetIdHash(void *a1)
{
  v1 = a1;
  if (![v1 hasPrefix:@"_"] || (objc_msgSend(v1, "isEqualToString:", @"_ContentVersion") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"_CompatibilityVersion") & 1) != 0)
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"_MasteredVersion"];
  }

  return v2;
}

id getAssetsFromXml(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v23 = objc_opt_new();
  if (!v4)
  {
    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v3;
      v11 = "For asset-type: %{public}@ Could not get assets from xml";
LABEL_24:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
    }

LABEL_25:
    v6 = 0;
LABEL_26:
    v15 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v5 = [v4 objectForKey:@"Assets"];
  if (!v5)
  {
    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v3;
      v11 = "For asset-type: %{public}@ Assets array nil in xml";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v6 = v5;
  if ([v5 count]== &dword_0 + 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 objectForKey:@"__Empty"];
    v9 = [v8 isEqualToString:@"Empty"];

    if (v9)
    {
      v10 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v3;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "For asset-type: %{public}@ query was skipped due to special __Empty keyword", buf, 0xCu);
      }

      goto LABEL_26;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v6;
  v12 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v12)
  {
    v15 = 0;
    v10 = v6;
    goto LABEL_27;
  }

  v13 = v12;
  v22 = v4;
  v14 = 0;
  v15 = 0;
  v16 = *v25;
  do
  {
    v17 = 0;
    v18 = v15;
    do
    {
      if (*v25 != v16)
      {
        objc_enumerationMutation(v6);
      }

      v19 = *(*(&v24 + 1) + 8 * v17);
      v20 = objc_autoreleasePoolPush();
      v15 = getAssetIdFromDict(v3, v19);

      if (v15)
      {
        [v23 setObject:v19 forKey:v15];
      }

      else
      {
        v14 = 1;
      }

      objc_autoreleasePoolPop(v20);
      v17 = v17 + 1;
      v18 = v15;
    }

    while (v13 != v17);
    v13 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v13);

  if (v14)
  {
    v10 = _MADLog(@"V2Control");
    v4 = v22;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v3;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "For asset-type: %{public}@ asset(s) skipped due to nil assetId during query", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v4 = v22;
LABEL_28:

  return v23;
}

id _MobileAssetHashAssetDataOptCompatibility(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = _hashCFType(v7, v9, a4);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = _hashCFType(v8, v9, a4);
  if (!v11)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = v9;
  if (v12 == @"SHA-1")
  {
    v13 = 20;
  }

  else
  {
    if (v12 != @"SHA-256")
    {
      abort();
    }

    v13 = 32;
  }

  for (i = 0; i != v13; ++i)
  {
    v10[i] ^= v11[i];
  }

  v14 = _MABufferToHexString(v10, v13);
LABEL_12:
  free(v10);
  free(v11);

  return v14;
}

unsigned __int8 *_hashCFType(const __CFString *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = v5;
      v8 = v7;
      if (v7 == @"SHA-1")
      {
        v9 = 20;
      }

      else
      {
        if (v7 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v9 = 32;
      }

      v10 = calloc(1uLL, v9);
      data = CFBooleanGetValue(a1);
      if (v8 != @"SHA-1")
      {
        if (v8 == @"SHA-256")
        {
          p_data = &data;
          v18 = 1;
LABEL_21:
          CC_SHA256(p_data, v18, v10);
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_44;
      }

      p_AbsoluteTime = &data;
      v20 = 1;
      goto LABEL_23;
    }

    if (v6 == CFStringGetTypeID())
    {
      v11 = a1;
      v12 = v5;
      v13 = a3;
LABEL_11:
      v14 = _hashCFString(v11, v12, v13);
LABEL_12:
      v10 = v14;
      goto LABEL_41;
    }

    if (v6 == CFDateGetTypeID())
    {
      v15 = v5;
      v8 = v15;
      if (v15 == @"SHA-1")
      {
        v16 = 20;
      }

      else
      {
        if (v15 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v16 = 32;
      }

      v10 = calloc(1uLL, v16);
      AbsoluteTime = CFDateGetAbsoluteTime(a1);
      if (v8 != @"SHA-1")
      {
        if (v8 == @"SHA-256")
        {
          p_data = &AbsoluteTime;
          v18 = 8;
          goto LABEL_21;
        }

LABEL_44:
        abort();
      }

      p_AbsoluteTime = &AbsoluteTime;
      v20 = 8;
LABEL_23:
      CC_SHA1(p_AbsoluteTime, v20, v10);
      goto LABEL_40;
    }

    if (v6 == CFDataGetTypeID())
    {
      v21 = v5;
      Length = CFDataGetLength(a1);
      v23 = v21;
      if (Length >= 0x80000000)
      {
        _hashCFType_cold_1();
      }

      v24 = v23;
      v8 = v24;
      if (v24 == @"SHA-1")
      {
        v10 = calloc(1uLL, 0x14uLL);
        BytePtr = CFDataGetBytePtr(a1);
        CC_SHA1(BytePtr, Length, v10);
      }

      else
      {
        if (v24 != @"SHA-256")
        {
          goto LABEL_44;
        }

        v10 = calloc(1uLL, 0x20uLL);
        v25 = CFDataGetBytePtr(a1);
        CC_SHA256(v25, Length, v10);
      }

      goto LABEL_40;
    }

    if (v6 == CFArrayGetTypeID())
    {
      v14 = _hashCFArray(a1, v5, a3);
      goto LABEL_12;
    }

    if (v6 == CFDictionaryGetTypeID())
    {
      v14 = _hashCFDictionary(a1, v5, a3);
      goto LABEL_12;
    }

    if (v6 == CFNumberGetTypeID())
    {
      v14 = _hashCFNumber(a1, v5);
      goto LABEL_12;
    }
  }

  else if ((a3 & 1) == 0)
  {
    v11 = @"NULL";
    v12 = v5;
    v13 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_41:

  return v10;
}

unsigned __int8 *_hashCFString(const __CFString *a1, void *a2, char a3)
{
  v5 = a2;
  Length = CFStringGetLength(a1);
  v7 = v5;
  if (Length >= 0x7FFFFFFF)
  {
    _hashCFType_cold_1();
  }

  v8 = v7;
  if ((a3 & 1) == 0)
  {
    Length = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (Length >= 0x7FFFFFFF)
    {
      _hashCFString_cold_1();
    }
  }

  v9 = Length + 1;
  v10 = calloc(1uLL, Length + 1);
  if (!CFStringGetCString(a1, v10, v9, 0x8000100u) && (a3 & 1) == 0)
  {
    _hashCFString_cold_2();
  }

  v11 = v8;
  v12 = v11;
  if (v11 == @"SHA-1")
  {
    v13 = calloc(1uLL, 0x14uLL);
    CC_SHA1(v10, v9, v13);
  }

  else
  {
    if (v11 != @"SHA-256")
    {
      abort();
    }

    v13 = calloc(1uLL, 0x20uLL);
    CC_SHA256(v10, v9, v13);
  }

  free(v10);

  return v13;
}

unsigned __int8 *_hashCFDictionary(const __CFDictionary *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (CFDictionaryGetCount(a1) || (a3 & 1) == 0)
  {
    if (v5 == @"SHA-1")
    {
      v32 = malloc(0x60uLL);
      CC_SHA1_Init(v32);
      v29 = &_CC_SHA1_Init;
      v31 = &CC_SHA1_Update;
      v30 = &CC_SHA1_Final;
      v7 = 20;
    }

    else
    {
      if (v5 != @"SHA-256")
      {
        abort();
      }

      v32 = malloc(0x68uLL);
      CC_SHA256_Init(v32);
      v29 = &_CC_SHA256_Init;
      v31 = &CC_SHA256_Update;
      v30 = &CC_SHA256_Final;
      v7 = 32;
    }

    __size = v7;

    v8 = _hashCFType(@"dictionary", v5, a3);
    Count = CFDictionaryGetCount(a1);
    valuePtr = Count;
    v10 = calloc(Count, 8uLL);
    if (v10)
    {
      v11 = v10;
      v33 = v8;
      CFDictionaryGetKeysAndValues(a1, v10, 0);
      if (Count < 1)
      {
LABEL_20:
        if ((a3 & 1) == 0)
        {
          v25 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
          v26 = _hashCFNumber(v25, v5);
          if (v25)
          {
            CFRelease(v25);
          }

          v29(v32);
          v31(v32, v33, __size);
          v31(v32, v26, __size);
          v30(v33, v32);
          if (v26)
          {
            free(v26);
          }
        }
      }

      else
      {
        v12 = 0;
        v28 = a3;
        while (1)
        {
          v13 = _hashCFType(v11[v12], v5, a3);
          v14 = a1;
          Value = CFDictionaryGetValue(a1, v11[v12]);
          v16 = v5;
          v17 = _hashCFType(Value, v5, a3);
          v18 = calloc(1uLL, __size);
          v19 = v18;
          if (!v18)
          {
            break;
          }

          if (!v13 || v17 == 0)
          {
            break;
          }

          v29(v32);
          v31(v32, v13, __size);
          v31(v32, v17, __size);
          v30(v19, v32);
          v21 = v33;
          if (v33)
          {
            v22 = v19;
            v23 = __size;
            do
            {
              v24 = *v22++;
              *v21++ ^= v24;
              --v23;
            }

            while (v23);
          }

          free(v19);
          free(v13);
          free(v17);
          ++v12;
          v5 = v16;
          a1 = v14;
          a3 = v28;
          if (Count <= v12)
          {
            goto LABEL_20;
          }
        }

        if (v18)
        {
          free(v18);
        }

        if (v13)
        {
          free(v13);
        }

        if (v17)
        {
          free(v17);
        }

        if (v33)
        {
          free(v33);
        }

        v33 = 0;
        v5 = v16;
      }

      free(v11);
    }

    else
    {
      if (v8)
      {
        free(v8);
      }

      v33 = 0;
    }

    free(v32);
    v6 = v33;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unsigned __int8 *_hashCFNumber(const __CFNumber *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == @"SHA-1")
  {
    v5 = 20;
  }

  else
  {
    if (v3 != @"SHA-256")
    {
      goto LABEL_16;
    }

    v5 = 32;
  }

  v6 = calloc(1uLL, v5);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr + 1) >= 0xE)
  {
    v7 = 8;
  }

  else
  {
    v7 = 4;
  }

  if ((valuePtr + 1) < 0xE)
  {
    v8 = kCFNumberSInt32Type;
  }

  else
  {
    v8 = kCFNumberSInt64Type;
  }

  v9 = calloc(1uLL, v7);
  CFNumberGetValue(a1, v8, v9);
  if (v4 == @"SHA-1")
  {
    CC_SHA1(v9, v7, v6);
    goto LABEL_15;
  }

  if (v4 != @"SHA-256")
  {
LABEL_16:
    abort();
  }

  CC_SHA256(v9, v7, v6);
LABEL_15:
  free(v9);

  return v6;
}

id _MABufferToHexString(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v4 = 2 * a2;
  v5 = malloc((2 * a2) | 1);
  v6 = v5;
  if (v2)
  {
    v7 = v5;
    do
    {
      v8 = *a1++;
      snprintf(v7, 3uLL, "%02x", v8);
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = [[NSString alloc] initWithBytesNoCopy:v6 length:v4 encoding:1 freeWhenDone:1];

  return v9;
}

id applyFilter(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v30 = objc_opt_new();
  if (v3)
  {
    v26 = [v3 objectForKey:@"queryKey"];
    v20 = v3;
    v5 = [v3 objectForKey:@"queryValue"];
    v6 = +[NSNull null];
    v24 = v5;
    v21 = [v5 containsObject:v6];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v4 allKeys];
    v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (!v27)
    {
      goto LABEL_30;
    }

    v25 = *v37;
    v23 = v4;
    while (1)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v31 = [v4 objectForKey:v8];
        v10 = [v31 objectForKey:v26];
        if (v10)
        {
          v28 = v9;
          v29 = i;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v11 = v24;
          v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (!v12)
          {
            goto LABEL_25;
          }

          v13 = v12;
          v14 = *v33;
          while (1)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * j);
              if (v16 != v6)
              {
                if (objc_opt_respondsToSelector())
                {
                  if ([v10 isEqualToString:v16])
                  {
                    goto LABEL_22;
                  }
                }

                else if (objc_opt_respondsToSelector())
                {
                  v17 = [v10 stringValue];
                  v18 = [v17 isEqualToString:v16];

                  if (v18)
                  {
                    goto LABEL_22;
                  }
                }

                else if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 containsObject:v16])
                {
LABEL_22:
                  [v30 setObject:v31 forKey:v8];
                  continue;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (!v13)
            {
LABEL_25:

              v4 = v23;
              v9 = v28;
              i = v29;
              goto LABEL_28;
            }
          }
        }

        if (v21)
        {
          [v30 setObject:v31 forKey:v8];
        }

LABEL_28:

        objc_autoreleasePoolPop(v9);
      }

      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (!v27)
      {
LABEL_30:

        v3 = v20;
        break;
      }
    }
  }

  return v30;
}

uint64_t removeItem(void *a1)
{
  v1 = a1;
  if (![v1 checkResourceIsReachableAndReturnError:0])
  {
    v4 = _MADLog(@"V2");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v1;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Location %@ doesn't exist", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v2 = +[NSFileManager defaultManager];
  v10 = 0;
  v3 = [v2 removeItemAtURL:v1 error:&v10];
  v4 = v10;

  v5 = _MADLog(@"V2");
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v1;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "Removed %@", buf, 0xCu);
    }

LABEL_8:
    v7 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = [v4 description];
    *buf = 138543618;
    v12 = v1;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@, error is: %{public}@", buf, 0x16u);
  }

  v7 = 0;
LABEL_12:

  return v7;
}

uint64_t downloadResultForNetworkFailure(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 <= 399)
  {
    v8 = 3;
    v7 = 47;
    if (a1 != 200 && a1 != 206 && a1 != 304)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  if (a1 <= 402)
  {
    if (a1 != 400)
    {
      if (a1 == 401)
      {
        v7 = 41;
        v8 = 41;
        if (!v5)
        {
          goto LABEL_78;
        }

        goto LABEL_28;
      }

LABEL_15:
      v9 = 47;
      v10 = 42;
      if (a1 < 0)
      {
        v10 = 3;
      }

      else
      {
        v9 = 42;
      }

      if (a1 <= 499)
      {
        v7 = v9;
      }

      else
      {
        v7 = 45;
      }

      if (a1 <= 499)
      {
        v8 = v10;
      }

      else
      {
        v8 = 45;
      }

      if (!v5)
      {
        goto LABEL_78;
      }

      goto LABEL_28;
    }

    v7 = 40;
    v8 = 40;
LABEL_27:
    if (!v5)
    {
      goto LABEL_78;
    }

    goto LABEL_28;
  }

  if (a1 == 403)
  {
    v7 = 43;
    v8 = 43;
    if (!v5)
    {
      goto LABEL_78;
    }
  }

  else
  {
    if (a1 != 404)
    {
      goto LABEL_15;
    }

    v7 = 44;
    v8 = 44;
    if (!v5)
    {
      goto LABEL_78;
    }
  }

LABEL_28:
  v11 = [v5 domain];
  v12 = [v11 isEqualToString:NSURLErrorDomain];

  if (v12)
  {
    v13 = [v5 code];
    v14 = 0;
    v15 = 0;
    switch(v13)
    {
      case 0xFFFFFFFFFFFFFC04:
        v14 = 0;
        v15 = 0;
        v7 = 69;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC05:
        v14 = 0;
        v15 = 0;
        v7 = 68;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC06:
        v14 = 0;
        v15 = 0;
        v7 = 67;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC07:
      case 0xFFFFFFFFFFFFFC08:
      case 0xFFFFFFFFFFFFFC09:
      case 0xFFFFFFFFFFFFFC0ALL:
      case 0xFFFFFFFFFFFFFC0BLL:
      case 0xFFFFFFFFFFFFFC0CLL:
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC0DLL:
        v14 = 0;
        v15 = 0;
        v7 = 50;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC0ELL:
        v14 = 0;
        v15 = 0;
        v7 = 66;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC0FLL:
        v14 = 0;
        v15 = 0;
        v7 = 65;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC10:
        v14 = 0;
        v15 = 0;
        v7 = 64;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC11:
        v14 = 0;
        v15 = 0;
        v7 = 63;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC12:
        v14 = 0;
        v15 = 0;
        v7 = 62;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC13:
        v14 = 0;
        v15 = 0;
        v7 = 61;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC14:
        v14 = 0;
        v15 = 0;
        v7 = 60;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC15:
        v14 = 0;
        v15 = 0;
        v7 = 59;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC16:
        v14 = 0;
        v15 = 0;
        v7 = 58;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC17:
        v21 = [v5 userInfo];
        v14 = [v21 objectForKey:@"_kCFStreamErrorCodeKey"];

        v22 = [v5 userInfo];
        v15 = [v22 objectForKey:@"_kCFStreamErrorDomainKey"];

        if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v23 = [v14 integerValue];
          if ([v15 integerValue] == &dword_4)
          {
            v7 = 51;
            if (v23 <= -2105)
            {
              if (v23 == -2106)
              {
                v7 = 56;
              }

              else if (v23 == -2105)
              {
                v7 = 55;
              }
            }

            else
            {
              switch(v23)
              {
                case -2104:
                  v7 = 54;
                  break;
                case -2103:
                  v7 = 53;
                  break;
                case -2102:
                  v7 = 52;
                  break;
              }
            }

            goto LABEL_76;
          }
        }

        else if (v6)
        {
          if ([v6 currentTotalWritten])
          {
            if ([v6 numStalled])
            {
              v24 = [v6 numStalled];
              if (v24 == [v6 numNoLongerStalled])
              {
                v7 = 83;
              }

              else
              {
                v7 = 81;
              }
            }

            else
            {
              v7 = 82;
            }
          }

          else
          {
            v7 = 80;
          }

          goto LABEL_76;
        }

        v7 = 51;
LABEL_76:

        goto LABEL_77;
      case 0xFFFFFFFFFFFFFC18:
        v14 = 0;
        v15 = 0;
        v7 = 49;
        goto LABEL_76;
      case 0xFFFFFFFFFFFFFC19:
        v14 = 0;
        v15 = 0;
        v7 = 48;
        goto LABEL_76;
      default:
        if (v13 == -2000)
        {
          v7 = 57;
        }

        v14 = 0;
        v15 = 0;
        goto LABEL_76;
    }
  }

  v16 = [v5 domain];
  v17 = [v16 isEqualToString:NSPOSIXErrorDomain];

  if (v17)
  {
    v18 = [v5 code] == &dword_1C;
  }

  else
  {
    v19 = [v5 domain];
    v20 = [v19 isEqualToString:@"AAError"];

    if (!v20)
    {
LABEL_77:
      v8 = v7;
      goto LABEL_78;
    }

    v18 = [v5 code] == -1023236068;
  }

  if (v18)
  {
    v8 = 37;
  }

  else
  {
    v8 = v7;
  }

LABEL_78:

  return v8;
}

id stringForMADownloadResult(unint64_t a1)
{
  if (a1 >= 0x57)
  {
    v2 = [NSString stringWithFormat:@"MADownloadResult%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5B60 + a1);
  }

  return v2;
}

id isSupportedMAAnalyticsEventFieldName(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = getSupportedAnalyticsEventFields();
    v3 = [v2 containsObject:v1];
  }

  else
  {
    v2 = _MADLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446210;
      v6 = "isSupportedMAAnalyticsEventFieldName";
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}s: Field is invalid", &v5, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

id getSupportedAnalyticsEventFields()
{
  if (getSupportedAnalyticsEventFields_supportedAnalyticsEventsFieldsOnce != -1)
  {
    getSupportedAnalyticsEventFields_cold_1();
  }

  v1 = getSupportedAnalyticsEventFields_supportedAnalyticsEventsFields;

  return v1;
}

id getAssetsAtPath(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:&__NSArray0__struct options:0 error:0];

  v4 = [NSPredicate predicateWithFormat:@"pathExtension='asset'"];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

double getExistingClientUsage(void *a1, double *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0.0;
  if (!v3)
  {
    v7 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v6 = [v3 fileSystemRepresentation];
  if (!v6)
  {
    v7 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  if (a2)
  {
    v7 = valueForKey(@"GCOverride", v6);
    if (v7)
    {
      v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
      v9 = v8;
      if (v8)
      {
        *a2 = [v8 longLongValue];
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_11:
  v6 = valueForKey(@"ClientUsage", v6);
  if (v6)
  {
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
    if (v10)
    {
      v11 = v10;
      [v10 doubleValue];
      v5 = v12;
    }
  }

LABEL_14:

  return v5;
}

id valueForKey(void *a1, const char *a2)
{
  v3 = [a1 UTF8String];
  v4 = getxattr(a2, v3, 0, 0, 0, 1);
  if (v4 < 0)
  {
    v8 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [NSMutableData dataWithLength:v4];
    v7 = getxattr(a2, v3, [v6 mutableBytes], v5, 0, 1);
    if (v7 < 0)
    {
      v8 = 0;
    }

    else
    {
      [v6 setLength:v7];
      v8 = v6;
    }
  }

  return v8;
}

int8x16_t *ccaes_arm_decrypt_cbc(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = result[15].u32[0];
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      v6 = *a2;
      v7 = a3 < 16;
      for (i = a3 - 16; !v7; i -= 16)
      {
        v9 = *a4;
        a4 += 16;
        v10 = v9;
        v11 = a4[-13];
        v12 = a4[-12];
        v13 = a4[-11];
        v14 = a4[-10];
        v15 = a4[-9];
        v16 = a4[-8];
        v17 = a4[-7];
        v18 = a4[-6];
        _Q16 = *(result + v5);
        v20 = a4[-5];
        v21 = *result;
        v22 = a4[-4];
        v23 = v5 - 16;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
            AESD            V1.16B, V16.16B
            AESIMC          V1.16B, V1.16B
            AESD            V2.16B, V16.16B
            AESIMC          V2.16B, V2.16B
            AESD            V3.16B, V16.16B
            AESIMC          V3.16B, V3.16B
            AESD            V4.16B, V16.16B
            AESIMC          V4.16B, V4.16B
            AESD            V5.16B, V16.16B
            AESIMC          V5.16B, V5.16B
            AESD            V6.16B, V16.16B
            AESIMC          V6.16B, V6.16B
            AESD            V7.16B, V16.16B
            AESIMC          V7.16B, V7.16B
            AESD            V8.16B, V16.16B
            AESIMC          V8.16B, V8.16B
            AESD            V9.16B, V16.16B
            AESIMC          V9.16B, V9.16B
            AESD            V10.16B, V16.16B
            AESIMC          V10.16B, V10.16B
            AESD            V11.16B, V16.16B
            AESIMC          V11.16B, V11.16B
            AESD            V12.16B, V16.16B
            AESIMC          V12.16B, V12.16B
            AESD            V13.16B, V16.16B
            AESIMC          V13.16B, V13.16B
            AESD            V14.16B, V16.16B
            AESIMC          V14.16B, V14.16B
            AESD            V15.16B, V16.16B
            AESIMC          V15.16B, V15.16B
          }

          _Q16 = *(result + v23);
          v7 = v23 <= 16;
          v23 -= 16;
        }

        while (!v7);
        a5 += 16;
        __asm
        {
          AESD            V0.16B, V16.16B
          AESD            V1.16B, V16.16B
        }

        v62 = veorq_s8(veorq_s8(_Q0, v21), v6);
        v6 = a4[-1];
        __asm { AESD            V2.16B, V16.16B }

        v64 = veorq_s8(veorq_s8(_Q1, v21), v10);
        v65 = a4[-3];
        __asm { AESD            V3.16B, V16.16B }

        v67 = veorq_s8(veorq_s8(_Q2, v21), a4[-15]);
        v68 = a4[-2];
        __asm { AESD            V4.16B, V16.16B }

        v70 = veorq_s8(veorq_s8(_Q3, v21), a4[-14]);
        a5[-16] = v62;
        __asm { AESD            V5.16B, V16.16B }

        a5[-15] = v64;
        __asm { AESD            V6.16B, V16.16B }

        a5[-14] = v67;
        __asm { AESD            V7.16B, V16.16B }

        a5[-13] = v70;
        __asm { AESD            V8.16B, V16.16B }

        a5[-12] = veorq_s8(veorq_s8(_Q4, v21), v11);
        __asm { AESD            V9.16B, V16.16B }

        a5[-11] = veorq_s8(veorq_s8(_Q5, v21), v12);
        __asm { AESD            V10.16B, V16.16B }

        a5[-10] = veorq_s8(veorq_s8(_Q6, v21), v13);
        __asm { AESD            V11.16B, V16.16B }

        a5[-9] = veorq_s8(veorq_s8(_Q7, v21), v14);
        __asm { AESD            V12.16B, V16.16B }

        a5[-8] = veorq_s8(veorq_s8(_Q8, v21), v15);
        __asm { AESD            V13.16B, V16.16B }

        a5[-7] = veorq_s8(veorq_s8(_Q9, v21), v16);
        __asm { AESD            V14.16B, V16.16B }

        a5[-6] = veorq_s8(veorq_s8(_Q10, v21), v17);
        __asm { AESD            V15.16B, V16.16B }

        a5[-5] = veorq_s8(veorq_s8(_Q11, v21), v18);
        a5[-4] = veorq_s8(veorq_s8(_Q12, v21), v20);
        a5[-3] = veorq_s8(veorq_s8(_Q13, v21), v22);
        a5[-2] = veorq_s8(veorq_s8(_Q14, v21), v65);
        a5[-1] = veorq_s8(veorq_s8(_Q15, v21), v68);
        v7 = i < 16;
      }

      v7 = i < -8;
      for (j = i + 8; !v7; j -= 8)
      {
        v83 = *a4;
        a4 += 8;
        v84 = v83;
        v85 = a4[-7];
        v86 = a4[-6];
        v87 = a4[-5];
        v88 = a4[-4];
        _Q16 = *(result + v5);
        v90 = a4[-3];
        v91 = *result;
        v92 = a4[-2];
        v93 = v5 - 16;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
            AESD            V1.16B, V16.16B
            AESIMC          V1.16B, V1.16B
            AESD            V2.16B, V16.16B
            AESIMC          V2.16B, V2.16B
            AESD            V3.16B, V16.16B
            AESIMC          V3.16B, V3.16B
            AESD            V4.16B, V16.16B
            AESIMC          V4.16B, V4.16B
            AESD            V5.16B, V16.16B
            AESIMC          V5.16B, V5.16B
            AESD            V6.16B, V16.16B
            AESIMC          V6.16B, V6.16B
            AESD            V7.16B, V16.16B
            AESIMC          V7.16B, V7.16B
          }

          _Q16 = *(result + v93);
          v7 = v93 <= 16;
          v93 -= 16;
        }

        while (!v7);
        a5 += 8;
        __asm
        {
          AESD            V0.16B, V16.16B
          AESD            V1.16B, V16.16B
        }

        v112 = veorq_s8(veorq_s8(_Q0, v91), v6);
        v6 = a4[-1];
        __asm { AESD            V2.16B, V16.16B }

        a5[-8] = v112;
        __asm { AESD            V3.16B, V16.16B }

        a5[-7] = veorq_s8(veorq_s8(_Q1, v91), v84);
        __asm { AESD            V4.16B, V16.16B }

        a5[-6] = veorq_s8(veorq_s8(_Q2, v91), v85);
        __asm { AESD            V5.16B, V16.16B }

        a5[-5] = veorq_s8(veorq_s8(_Q3, v91), v86);
        __asm { AESD            V6.16B, V16.16B }

        a5[-4] = veorq_s8(veorq_s8(_Q4, v91), v87);
        __asm { AESD            V7.16B, V16.16B }

        a5[-3] = veorq_s8(veorq_s8(_Q5, v91), v88);
        a5[-2] = veorq_s8(veorq_s8(_Q6, v91), v90);
        a5[-1] = veorq_s8(veorq_s8(_Q7, v91), v92);
        v7 = j < 8;
      }

      v7 = j < -4;
      for (k = j + 4; !v7; k -= 4)
      {
        v120 = *a4;
        a4 += 4;
        v121 = v120;
        v122 = a4[-3];
        _Q16 = *(result + v5);
        v124 = a4[-2];
        v125 = *result;
        v126 = v5 - 16;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
            AESD            V1.16B, V16.16B
            AESIMC          V1.16B, V1.16B
            AESD            V2.16B, V16.16B
            AESIMC          V2.16B, V2.16B
            AESD            V3.16B, V16.16B
            AESIMC          V3.16B, V3.16B
          }

          _Q16 = *(result + v126);
          v7 = v126 <= 16;
          v126 -= 16;
        }

        while (!v7);
        a5 += 4;
        __asm
        {
          AESD            V0.16B, V16.16B
          AESD            V1.16B, V16.16B
        }

        v137 = veorq_s8(veorq_s8(_Q0, v125), v6);
        v6 = a4[-1];
        __asm { AESD            V2.16B, V16.16B }

        a5[-4] = v137;
        __asm { AESD            V3.16B, V16.16B }

        a5[-3] = veorq_s8(veorq_s8(_Q1, v125), v121);
        a5[-2] = veorq_s8(veorq_s8(_Q2, v125), v122);
        a5[-1] = veorq_s8(veorq_s8(_Q3, v125), v124);
        v7 = k < 4;
      }

      v7 = k <= -4;
      for (m = k + 4; !v7; --m)
      {
        _Q16 = *(result + v5);
        v142 = v5 - 16;
        ++a4;
        do
        {
          __asm
          {
            AESD            V0.16B, V16.16B
            AESIMC          V0.16B, V0.16B
          }

          _Q16 = *(result + v142);
          v7 = v142 <= 16;
          v142 -= 16;
        }

        while (!v7);
        __asm { AESD            V0.16B, V16.16B }

        v146 = veorq_s8(veorq_s8(_Q0, *result), v6);
        v6 = a4[-1];
        *a5++ = v146;
        v7 = m <= 1;
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t ccaes_arm_encrypt_cbc(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = *(result + 240);
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      do
      {
        v6 = v5 - 16;
        a4 += 16;
        _Q2 = *result;
        v7 = (result + 16);
        do
        {
          __asm
          {
            AESE            V0.16B, V2.16B
            AESMC           V0.16B, V0.16B
          }

          _Q2 = *v7++;
          v15 = v6 <= 16;
          v6 -= 16;
        }

        while (!v15);
        __asm { AESE            V0.16B, V2.16B }

        v17 = veorq_s8(_Q0, *v7);
        result = v7->i64 - v5;
        *a5++ = v17;
        v15 = a3-- <= 1;
      }

      while (!v15);
      result = 0;
      *a2 = v17;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t ccn_n_asm(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = 0;
    do
    {
      v4 = *a2++;
      ++v3;
      if (v4)
      {
        result = v3;
      }
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t AccelerateCrypto_SHA3_keccak(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  v15 = a1[13];
  v16 = a1[14];
  v17 = a1[15];
  v18 = a1[16];
  v19 = a1[17];
  v21 = a1[18];
  v20 = a1[19];
  v22 = a1[20];
  v23 = a1[21];
  v24 = a1[22];
  v25 = a1[23];
  v26 = a1[24];
  v69 = a1;
  v70 = 0;
  v77 = &unk_33CE00;
  do
  {
    v71 = result;
    v72 = v3;
    v74 = v4;
    v75 = v5;
    v76 = v6;
    v27 = result ^ v7 ^ v12 ^ v17 ^ v22;
    v28 = v3 ^ v8 ^ v13 ^ v18 ^ v23;
    v29 = v4 ^ v9 ^ v14 ^ v19 ^ v24;
    v30 = v5 ^ v10 ^ v15 ^ v21 ^ v25;
    v31 = v6 ^ v11 ^ v16 ^ v20 ^ v26;
    v32 = v31 ^ __ROR8__(v28, 63);
    v33 = v27 ^ __ROR8__(v29, 63);
    v34 = v28 ^ __ROR8__(v30, 63);
    v35 = v29 ^ __ROR8__(v31, 63);
    v36 = v30 ^ __ROR8__(v27, 63);
    v73 = __ROR8__(v72 ^ v33, 63);
    v37 = __ROR8__(v8 ^ v33, 20);
    v38 = __ROR8__(v11 ^ v36, 44);
    v39 = __ROR8__(v24 ^ v34, 3);
    v40 = __ROR8__(v16 ^ v36, 25);
    v41 = __ROR8__(v22 ^ v32, 46);
    v42 = __ROR8__(v74 ^ v34, 2);
    v43 = __ROR8__(v14 ^ v34, 21);
    v44 = __ROR8__(v15 ^ v35, 39);
    v45 = __ROR8__(v20 ^ v36, 56);
    v46 = __ROR8__(v25 ^ v35, 8);
    v47 = __ROR8__(v17 ^ v32, 23);
    v48 = __ROR8__(v76 ^ v36, 37);
    v49 = __ROR8__(v26 ^ v36, 50);
    v50 = __ROR8__(v23 ^ v33, 62);
    v51 = __ROR8__(v10 ^ v35, 9);
    v52 = __ROR8__(v18 ^ v33, 19);
    v53 = __ROR8__(v7 ^ v32, 28);
    v54 = __ROR8__(v75 ^ v35, 36);
    v55 = __ROR8__(v21 ^ v35, 43);
    v56 = __ROR8__(v19 ^ v34, 49);
    v57 = __ROR8__(v13 ^ v33, 54);
    v58 = __ROR8__(v9 ^ v34, 58);
    v59 = __ROR8__(v12 ^ v32, 61);
    v60 = v37 & ~(v71 ^ v32);
    v61 = v71 ^ v32 ^ v43 & ~v37;
    v3 = v37 ^ v55 & ~v43;
    v4 = v43 ^ v49 & ~v55;
    v5 = v55 ^ (v71 ^ v32) & ~v49;
    v6 = v49 ^ v60;
    result = v61 ^ *v77++;
    v62 = v54 & ~v39;
    v63 = v38 & ~v54;
    v7 = v54 ^ v59 & ~v38;
    v8 = v38 ^ v52 & ~v59;
    v9 = v59 ^ v39 & ~v52;
    v10 = v52 ^ v62;
    v11 = v39 ^ v63;
    v64 = v58 & ~v73;
    v12 = v73 ^ v44 & ~v58;
    v13 = v58 ^ v45 & ~v44;
    v14 = v44 ^ v41 & ~v45;
    v15 = v45 ^ v73 & ~v41;
    v16 = v41 ^ v64;
    v65 = v48 & ~v46;
    v66 = v53 & ~v48;
    v17 = v48 ^ v57 & ~v53;
    v18 = v53 ^ v56 & ~v57;
    v19 = v57 ^ v46 & ~v56;
    v21 = v56 ^ v65;
    v20 = v46 ^ v66;
    v67 = v42 & ~v50;
    v68 = v51 & ~v42;
    v22 = v42 ^ v40 & ~v51;
    v23 = v51 ^ v47 & ~v40;
    v24 = v40 ^ v50 & ~v47;
    v25 = v47 ^ v67;
    v26 = v50 ^ v68;
    v70 += 8;
  }

  while (v70 != 192);
  *v69 = result;
  v69[1] = v3;
  v69[2] = v4;
  v69[3] = v5;
  v69[4] = v6;
  v69[5] = v7;
  v69[6] = v8;
  v69[7] = v9;
  v69[8] = v10;
  v69[9] = v11;
  v69[10] = v12;
  v69[11] = v13;
  v69[12] = v14;
  v69[13] = v15;
  v69[14] = v16;
  v69[15] = v17;
  v69[16] = v18;
  v69[17] = v19;
  v69[18] = v21;
  v69[19] = v20;
  v69[20] = v22;
  v69[21] = v23;
  v69[22] = v24;
  v69[23] = v25;
  v69[24] = v26;
  return result;
}

int8x16_t ccaes_arm_encrypt_key128(int8x16_t *a1, int8x16_t *a2)
{
  result = *a1;
  a2[15].i32[0] = 160;
  _Q2 = 0uLL;
  v4 = Rcon;
  v5 = 10;
  *a2 = result;
  v6 = a2 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v12 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v13 = veorq_s8(result, v12);
    v12.i8[0] = v4.i8[0];
    v4 = vextq_s8(v4, v4, 1uLL);
    v14 = veorq_s8(v13, v12);
    v15 = veorq_s8(v14, vextq_s8(0, v14, 0xCuLL));
    result = veorq_s8(v15, vextq_s8(0, v15, 8uLL));
    *v6++ = result;
    _CF = v5-- != 0;
  }

  while (v5 != 0 && _CF);
  return result;
}

int8x16_t ccaes_arm_encrypt_key192(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  result = *a1;
  a9.i64[0] = a1[1].i64[0];
  a2[15].i32[0] = 192;
  _Q2 = 0uLL;
  v11 = Rcon;
  *a2 = result;
  v12 = a2 + 1;
  v13 = 46;
  v12->i64[0] = a9.i64[0];
  v14 = &v12->u64[1];
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v20 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v21 = veorq_s8(result, v20);
    v20.i8[0] = v11.i8[0];
    v11 = vextq_s8(v11, v11, 1uLL);
    v22 = veorq_s8(v21, v20);
    v23 = veorq_s8(v22, vextq_s8(0, v22, 0xCuLL));
    result = veorq_s8(v23, vextq_s8(0, v23, 8uLL));
    *a9.i8 = veor_s8(veor_s8(*a9.i8, *&vshlq_n_s64(a9, 0x20uLL)), *&vdupq_laneq_s32(result, 3));
    *v14 = result;
    v24 = v14 + 1;
    v24->i64[0] = a9.i64[0];
    v14 = &v24->u64[1];
    _CF = v13 >= 6;
    v13 -= 6;
  }

  while (v13 != 0 && _CF);
  return result;
}

int8x16_t *ccaes_arm_encrypt_key256(int8x16_t *result, int8x16_t *a2)
{
  v2 = *result;
  v3 = result[1];
  a2[15].i32[0] = 224;
  _Q2 = 0uLL;
  v5 = Rcon;
  *a2 = v2;
  v6 = a2 + 1;
  v7 = 52;
  *v6 = v3;
  v8 = v6 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v14 = vqtbl1q_s8(_Q1, *InvShiftRows_RotWord);
    v15 = veorq_s8(v2, v14);
    v14.i8[0] = v5.i8[0];
    v5 = vextq_s8(v5, v5, 1uLL);
    v16 = veorq_s8(v15, v14);
    v17 = veorq_s8(v16, vextq_s8(0, v16, 0xCuLL));
    v2 = veorq_s8(v17, vextq_s8(0, v17, 8uLL));
    *v8 = v2;
    v18 = v8 + 1;
    v19 = v7 - 4;
    if (!v19)
    {
      break;
    }

    __asm { AESE            V7.16B, V2.16B }

    v21 = veorq_s8(v3, vqtbl1q_s8(_Q7, *InvShiftRows_RotWord));
    v22 = veorq_s8(v21, vextq_s8(0, v21, 0xCuLL));
    v3 = veorq_s8(v22, vextq_s8(0, v22, 8uLL));
    *v18 = v3;
    v8 = v18 + 1;
    _CF = v19 >= 4;
    v7 = v19 - 4;
  }

  while (v7 != 0 && _CF);
  return result;
}

uint64_t ccaes_arm_encrypt_key(double a1, double a2, double a3, double a4, double a5, double a6, int64x2_t a7, uint64_t a8, int8x16_t *a9, uint64_t a10, int8x16_t *a11)
{
  v13 = a9;
  v15 = a10;
  if (a10 > 32)
  {
    v15 = a10 >> 3;
  }

  switch(v15)
  {
    case 0x10uLL:
      ccaes_arm_encrypt_key128(a11, v13);
      break;
    case 0x18uLL:
      ccaes_arm_encrypt_key192(a11, v13, a1, a2, a3, a4, a5, a6, a7);
      break;
    case 0x20uLL:
      ccaes_arm_encrypt_key256(a11, v13);
      break;
    default:
      return -1;
  }

  return 0;
}

__n128 ccaes_arm_decrypt_key(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  v11 = ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  v13 = a3;
  if (v11 != -1)
  {
    if (a3 > 32)
    {
      v13 = a3 >> 3;
    }

    v14 = (v13 >> 2) + 4;
    v15 = &a2[1];
    do
    {
      _Q0 = *v15;
      _Q1 = v15[1];
      __asm
      {
        AESIMC          V0.16B, V0.16B
        AESIMC          V1.16B, V1.16B
      }

      *v15 = _Q0;
      v15[1] = _Q1;
      v15 += 2;
      v24 = v14 <= 2;
      v14 -= 2;
    }

    while (!v24);
    _Q0 = *v15;
    __asm { AESIMC          V0.16B, V0.16B }

    *v15 = result;
  }

  return result;
}

int8x16_t *aes_ctr_crypt(int8x16_t *a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6)
{
  v6 = a5[15].i32[0];
  v8 = __OFSUB__(a3, 128);
  v7 = a3 - 128 < 0;
  v9 = a3 - 128;
  if (v7 != v8)
  {
    return Decrypt_Main_Loop_End(a1, a2, v9, a4, a5, a6, v6);
  }

  else
  {
    return Decrypt_Main_Loop(a1, a2, v9, a4, a5, a6, v6);
  }
}

uint64_t Decrypt_Main_Loop(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int a7)
{
  do
  {
    v8 = vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, v8))));
    _Q20 = *a5;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[9];
    v167 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[11];
      v167 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[13];
        v167 = a5[14];
      }
    }

    v235 = *a1;
    v236 = *(a1 + 1);
    v237 = *(a1 + 2);
    v238 = *(a1 + 3);
    v234 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v243 = veorq_s8(v235, veorq_s8(_Q22, v167));
    v244 = veorq_s8(v236, veorq_s8(_Q23, v167));
    v245 = veorq_s8(v237, veorq_s8(_Q24, v167));
    v246 = veorq_s8(v238, veorq_s8(_Q25, v167));
    v247 = *v234;
    v248 = *(v234 + 1);
    v249 = *(v234 + 2);
    v250 = *(v234 + 3);
    a1 = v234 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v243;
    a2[1] = v244;
    a2[2] = v245;
    a2[3] = v246;
    v255 = a2 + 4;
    *v255 = veorq_s8(v247, veorq_s8(_Q26, v167));
    v255[1] = veorq_s8(v248, veorq_s8(_Q27, v167));
    v255[2] = veorq_s8(v249, veorq_s8(_Q28, v167));
    v255[3] = veorq_s8(v250, veorq_s8(_Q29, v167));
    a2 = v255 + 4;
    _VF = __OFSUB__(a3, 128);
    _NF = a3 - 128 < 0;
    a3 -= 128;
  }

  while (_NF == _VF);
  return Decrypt_Main_Loop_End();
}

int8x16_t *Decrypt_Main_Loop_End(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, int a7)
{
  v10 = a3 < -112;
  for (i = a3 + 112; !v10; i -= 16)
  {
    _Q4 = *a5;
    _Q5 = a5[1];
    _Q6 = a5[2];
    v9 = vaddq_s64(v7, v9);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[3];
    _Q5 = a5[4];
    _Q6 = a5[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[6];
    _Q5 = a5[7];
    _Q6 = a5[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a5[9];
    _Q21 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a5[11];
      _Q21 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a5[13];
        _Q21 = a5[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v54 = *result++;
    *a2++ = veorq_s8(v54, veorq_s8(_Q7, _Q21));
    v10 = i < 16;
  }

  *a4 = vqtbl1q_s8(v9, v8);
  return result;
}

uint64_t ccn_mul(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result *= -8;
    v4 = (a2 - result);
    v5 = a3 - result;
    v6 = a4 - result;
    v7 = result;
    v8 = result;
    v9 = 0;
    v10 = *(v6 + result);
    do
    {
      v11 = *(v5 + v8) * v10 + v9;
      *(v4 + v8) = v11;
      v9 = *(&v11 + 1);
      v8 += 8;
    }

    while (v8);
    while (1)
    {
      *v4 = v9;
      v7 += 8;
      if (!v7)
      {
        break;
      }

      ++v4;
      v12 = result;
      v9 = 0;
      v13 = *(v6 + v7);
      do
      {
        v14 = *(v5 + v12) * v13 + v9 + *(v4 + v12);
        *(v4 + v12) = v14;
        v9 = *(&v14 + 1);
        v12 += 8;
      }

      while (v12);
    }
  }

  return result;
}

BOOL ccn_add_asm(_BOOL8 result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = __CFADD__(v5, v7);
      *a2++ = v5 + v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4 + v8;
      v4 = __CFADD__(v4, v8) | __CFADD__(v10, v13);
      v12 = v10 + v13;
      v14 = v4 + v9;
      v4 = __CFADD__(v4, v9) | __CFADD__(v11, v14);
      *a2 = v12;
      a2[1] = v11 + v14;
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = a4 + 2;
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4 + v18;
        v4 = __CFADD__(v4, v18) | __CFADD__(v21, v30);
        v29 = v21 + v30;
        v32 = v4 + v19;
        v4 = __CFADD__(v4, v19) | __CFADD__(v22, v32);
        v31 = v22 + v32;
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4 + v24;
        v4 = __CFADD__(v4, v24) | __CFADD__(v27, v35);
        v34 = v27 + v35;
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4 + v25;
        v4 = __CFADD__(v4, v25) | __CFADD__(v28, v37);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v28 + v37;
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4 + v18;
      v4 = __CFADD__(v4, v18) | __CFADD__(v21, v40);
      v39 = v21 + v40;
      v42 = v4 + v19;
      v4 = __CFADD__(v4, v19) | __CFADD__(v22, v42);
      v41 = v22 + v42;
      v44 = v4 + v24;
      v4 = __CFADD__(v4, v24) | __CFADD__(v27, v44);
      v43 = v27 + v44;
      v45 = v4 + v25;
      v4 = __CFADD__(v4, v25) | __CFADD__(v28, v45);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v28 + v45;
    }

    return v4;
  }

  return result;
}

unint64_t *AccelerateCrypto_SHA3_keccak_hwassist(unint64_t *result, int8x16_t _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, __n128 _Q4, __n128 _Q5, __n128 _Q6, __n128 _Q7)
{
  _Q0.i64[0] = *result;
  _Q1.n128_u64[0] = result[1];
  _Q2.n128_u64[0] = result[2];
  _Q3.n128_u64[0] = result[3];
  _Q4.n128_u64[0] = result[4];
  _Q5.n128_u64[0] = result[5];
  _Q6.n128_u64[0] = result[6];
  _Q7.n128_u64[0] = result[7];
  *&_Q8 = result[8];
  *&_Q9 = result[9];
  *&_Q10 = result[10];
  *&_Q11 = result[11];
  *&_Q12 = result[12];
  *&_Q13 = result[13];
  *&_Q14 = result[14];
  *&_Q15 = result[15];
  *&_Q16 = result[16];
  *&_Q17 = result[17];
  *&_Q18 = result[18];
  *&_Q19 = result[19];
  *&_Q20 = result[20];
  *&_Q21 = result[21];
  *&_Q22 = result[22];
  *&_Q23 = result[23];
  *&_Q24 = result[24];
  v26 = 0;
  v27 = &qword_33D050;
  do
  {
    __asm
    {
      EOR3            V25.16B, V0.16B, V5.16B, V10.16B
      EOR3            V26.16B, V1.16B, V6.16B, V11.16B
      EOR3            V27.16B, V2.16B, V7.16B, V12.16B
      EOR3            V28.16B, V3.16B, V8.16B, V13.16B
      EOR3            V29.16B, V4.16B, V9.16B, V14.16B
      EOR3            V25.16B, V25.16B, V15.16B, V20.16B
      EOR3            V26.16B, V26.16B, V16.16B, V21.16B
      EOR3            V27.16B, V27.16B, V17.16B, V22.16B
      EOR3            V28.16B, V28.16B, V18.16B, V23.16B
      EOR3            V29.16B, V29.16B, V19.16B, V24.16B
      RAX1            V30.2D, V25.2D, V27.2D
      RAX1            V31.2D, V26.2D, V28.2D
      RAX1            V27.2D, V27.2D, V29.2D
      RAX1            V28.2D, V28.2D, V25.2D
      RAX1            V29.2D, V29.2D, V26.2D
      XAR             V25.2D, V1.2D, V30.2D, #0x3F ; '?'
      XAR             V1.2D, V6.2D, V30.2D, #0x14
      XAR             V6.2D, V9.2D, V28.2D, #0x2C ; ','
      XAR             V9.2D, V22.2D, V31.2D, #3
      XAR             V22.2D, V14.2D, V28.2D, #0x19
      XAR             V14.2D, V20.2D, V29.2D, #0x2E ; '.'
      XAR             V20.2D, V2.2D, V31.2D, #2
      XAR             V2.2D, V12.2D, V31.2D, #0x15
      XAR             V12.2D, V13.2D, V27.2D, #0x27 ; '''
      XAR             V13.2D, V19.2D, V28.2D, #0x38 ; '8'
      XAR             V19.2D, V23.2D, V27.2D, #8
      XAR             V23.2D, V15.2D, V29.2D, #0x17
      XAR             V15.2D, V4.2D, V28.2D, #0x25 ; '%'
      XAR             V26.2D, V21.2D, V30.2D, #0x3E ; '>'
      XAR             V8.2D, V8.2D, V27.2D, #9
    }

    _Q0 = veorq_s8(_Q0, _Q29);
    __asm
    {
      BCAX            V21.16B, V8.16B, V23.16B, V22.16B
      XAR             V28.2D, V24.2D, V28.2D, #0x32 ; '2'
      BCAX            V24.16B, V26.16B, V8.16B, V20.16B
      XAR             V18.2D, V18.2D, V27.2D, #0x2B ; '+'
      BCAX            V23.16B, V23.16B, V20.16B, V26.16B
      XAR             V11.2D, V11.2D, V30.2D, #0x36 ; '6'
      BCAX            V20.16B, V20.16B, V22.16B, V8.16B
      XAR             V30.2D, V16.2D, V30.2D, #0x13
      BCAX            V22.16B, V22.16B, V26.16B, V23.16B
      XAR             V16.2D, V5.2D, V29.2D, #0x1C
      XAR             V27.2D, V3.2D, V27.2D, #0x24 ; '$'
      BCAX            V3.16B, V18.16B, V0.16B, V28.16B
      XAR             V29.2D, V10.2D, V29.2D, #0x3D ; '='
      BCAX            V4.16B, V28.16B, V1.16B, V0.16B
      XAR             V10.2D, V17.2D, V31.2D, #0x31 ; '1'
      BCAX            V0.16B, V0.16B, V2.16B, V1.16B
      XAR             V7.2D, V7.2D, V31.2D, #0x3A ; ':'
      BCAX            V1.16B, V1.16B, V18.16B, V2.16B
      BCAX            V2.16B, V2.16B, V28.16B, V18.16B
      BCAX            V17.16B, V11.16B, V19.16B, V10.16B
      BCAX            V18.16B, V10.16B, V15.16B, V19.16B
      BCAX            V19.16B, V19.16B, V16.16B, V15.16B
      BCAX            V15.16B, V15.16B, V11.16B, V16.16B
      BCAX            V16.16B, V16.16B, V10.16B, V11.16B
      BCAX            V10.16B, V25.16B, V12.16B, V7.16B
      BCAX            V11.16B, V7.16B, V13.16B, V12.16B
      BCAX            V12.16B, V12.16B, V14.16B, V13.16B
      BCAX            V13.16B, V13.16B, V25.16B, V14.16B
      BCAX            V14.16B, V14.16B, V7.16B, V25.16B
    }

    *&_Q26 = *v27;
    __asm
    {
      BCAX            V7.16B, V29.16B, V9.16B, V30.16B
      BCAX            V8.16B, V30.16B, V27.16B, V9.16B
      BCAX            V9.16B, V9.16B, V6.16B, V27.16B
      BCAX            V5.16B, V27.16B, V29.16B, V6.16B
    }

    ++v27;
    __asm { BCAX            V6.16B, V6.16B, V30.16B, V29.16B }

    v26 += 8;
    *_Q0.i8 = veor_s8(*_Q0.i8, *&_Q26);
  }

  while (v26 != 192);
  *result = _Q0.i64[0];
  result[1] = _Q1.n128_u64[0];
  result[2] = _Q2.n128_u64[0];
  result[3] = _Q3.n128_u64[0];
  result[4] = _Q4.n128_u64[0];
  result[5] = _Q5.n128_u64[0];
  result[6] = _Q6.n128_u64[0];
  result[7] = _Q7.n128_u64[0];
  result[8] = _Q8;
  result[9] = _Q9;
  result[10] = _Q10;
  result[11] = _Q11;
  result[12] = _Q12;
  result[13] = _Q13;
  result[14] = _Q14;
  result[15] = _Q15;
  result[16] = _Q16;
  result[17] = _Q17;
  result[18] = _Q18;
  result[19] = _Q19;
  result[20] = _Q20;
  result[21] = _Q21;
  result[22] = _Q22;
  result[23] = _Q23;
  result[24] = _Q24;
  return result;
}

BOOL ccn_sub_asm(_BOOL8 result, void *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = 1;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = v5 >= v7;
      *a2++ = v5 - v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4;
      v4 = __CFSUB__(v8, v10, v4);
      v12 = v8 - (v10 + !v13);
      v14 = v4;
      v4 = __CFSUB__(v9, v11, v4);
      *a2 = v12;
      a2[1] = v9 - (v11 + !v14);
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = (a4 + 2);
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4;
        v4 = __CFSUB__(v18, v21, v4);
        v29 = v18 - (v21 + !v30);
        v32 = v4;
        v4 = __CFSUB__(v19, v22, v4);
        v31 = v19 - (v22 + !v32);
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4;
        v4 = __CFSUB__(v24, v27, v4);
        v34 = v24 - (v27 + !v35);
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4;
        v4 = __CFSUB__(v25, v28, v4);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v25 - (v28 + !v37);
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4;
      v4 = __CFSUB__(v18, v21, v4);
      v39 = v18 - (v21 + !v40);
      v42 = v4;
      v4 = __CFSUB__(v19, v22, v4);
      v41 = v19 - (v22 + !v42);
      v44 = v4;
      v4 = __CFSUB__(v24, v27, v4);
      v43 = v24 - (v27 + !v44);
      v45 = v4;
      v4 = __CFSUB__(v25, v28, v4);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v25 - (v28 + !v45);
    }

    return !v4;
  }

  return result;
}

int8x16_t gcm_init(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqtbl1q_s8(*a2, *qword_BA40);
  v9 = veorq_s8(a8, a8);
  v10 = veorq_s8(vandq_s8(vextq_s8(*&qword_BA40[2], *&qword_BA40[2], 8uLL), vshrq_n_s32(vdupq_laneq_s32(v8, 3), 0x1FuLL)), vorrq_s8(vextq_s8(v9, vshrq_n_u64(v8, 0x3FuLL), 8uLL), vshlq_n_s64(v8, 1uLL)));
  *a1 = v10;
  a1[8] = veorq_s8(v10, vextq_s8(v10, v10, 8uLL));
  v11 = vmull_high_p64(v10, v10);
  v12 = vmull_p64(v10.u64[0], v10.u64[0]);
  v13 = veorq_s8(v12, veorq_s8(v11, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0])));
  v14 = veorq_s8(vextq_s8(v9, v13, 8uLL), v12);
  v15 = veorq_s8(vextq_s8(v14, v14, 8uLL), vmull_p64(0xC200000000000000, v14.u64[0]));
  v16 = veorq_s8(veorq_s8(vextq_s8(v13, v9, 8uLL), v11), veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0])));
  a1[1] = v16;
  a1[9] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL));
  v13.i64[0] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0];
  v17 = vmull_high_p64(v16, v10);
  v18 = vmull_p64(v16.u64[0], v10.u64[0]);
  v19 = veorq_s8(v18, veorq_s8(v17, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v13.u64[0])));
  v20 = veorq_s8(vextq_s8(v9, v19, 8uLL), v18);
  v21 = veorq_s8(vextq_s8(v20, v20, 8uLL), vmull_p64(0xC200000000000000, v20.u64[0]));
  v22 = veorq_s8(veorq_s8(vextq_s8(v19, v9, 8uLL), v17), veorq_s8(vextq_s8(v21, v21, 8uLL), vmull_p64(0xC200000000000000, v21.u64[0])));
  a1[2] = v22;
  a1[10] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL));
  v19.i64[0] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL)).u64[0];
  v23 = vmull_high_p64(v22, v10);
  v24 = vmull_p64(v22.u64[0], v10.u64[0]);
  v25 = veorq_s8(v24, veorq_s8(v23, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v19.u64[0])));
  v26 = veorq_s8(vextq_s8(v9, v25, 8uLL), v24);
  v27 = veorq_s8(vextq_s8(v26, v26, 8uLL), vmull_p64(0xC200000000000000, v26.u64[0]));
  v28 = veorq_s8(veorq_s8(vextq_s8(v25, v9, 8uLL), v23), veorq_s8(vextq_s8(v27, v27, 8uLL), vmull_p64(0xC200000000000000, v27.u64[0])));
  a1[3] = v28;
  a1[11] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL));
  v25.i64[0] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0];
  v29 = vmull_high_p64(v28, v10);
  v30 = vmull_p64(v28.u64[0], v10.u64[0]);
  v31 = veorq_s8(v30, veorq_s8(v29, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v25.u64[0])));
  v32 = veorq_s8(vextq_s8(v9, v31, 8uLL), v30);
  v33 = veorq_s8(vextq_s8(v32, v32, 8uLL), vmull_p64(0xC200000000000000, v32.u64[0]));
  v34 = veorq_s8(veorq_s8(vextq_s8(v31, v9, 8uLL), v29), veorq_s8(vextq_s8(v33, v33, 8uLL), vmull_p64(0xC200000000000000, v33.u64[0])));
  a1[4] = v34;
  a1[12] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL));
  v31.i64[0] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL)).u64[0];
  v35 = vmull_high_p64(v34, v10);
  v36 = vmull_p64(v34.u64[0], v10.u64[0]);
  v37 = veorq_s8(v36, veorq_s8(v35, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v31.u64[0])));
  v38 = veorq_s8(vextq_s8(v9, v37, 8uLL), v36);
  v39 = veorq_s8(vextq_s8(v38, v38, 8uLL), vmull_p64(0xC200000000000000, v38.u64[0]));
  v40 = veorq_s8(veorq_s8(vextq_s8(v37, v9, 8uLL), v35), veorq_s8(vextq_s8(v39, v39, 8uLL), vmull_p64(0xC200000000000000, v39.u64[0])));
  a1[5] = v40;
  a1[13] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL));
  v37.i64[0] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL)).u64[0];
  v41 = vmull_high_p64(v40, v10);
  v42 = vmull_p64(v40.u64[0], v10.u64[0]);
  v43 = veorq_s8(v42, veorq_s8(v41, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v37.u64[0])));
  v44 = veorq_s8(vextq_s8(v9, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(0xC200000000000000, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v9, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(0xC200000000000000, v45.u64[0])));
  a1[6] = v46;
  a1[14] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL));
  v43.i64[0] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL)).u64[0];
  v47 = vmull_high_p64(v46, v10);
  v48 = vmull_p64(v46.u64[0], v10.u64[0]);
  v49 = veorq_s8(v48, veorq_s8(v47, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v43.u64[0])));
  v50 = veorq_s8(vextq_s8(v9, v49, 8uLL), v48);
  v51 = veorq_s8(vextq_s8(v50, v50, 8uLL), vmull_p64(0xC200000000000000, v50.u64[0]));
  result = veorq_s8(veorq_s8(vextq_s8(v49, v9, 8uLL), v47), veorq_s8(vextq_s8(v51, v51, 8uLL), vmull_p64(0xC200000000000000, v51.u64[0])));
  a1[7] = result;
  a1[15] = veorq_s8(result, vextq_s8(result, result, 8uLL));
  return result;
}

int8x16_t gcm_gmult(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = vqtbl1q_s8(*a1, *qword_BA40);
  v10 = veorq_s8(a9, a9);
  v11 = veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0];
  v12 = vmull_high_p64(v9, *a2);
  v13 = vmull_p64(v9.u64[0], a2->i64[0]);
  v14 = veorq_s8(v13, veorq_s8(v12, vmull_p64(veorq_s8(*a2, vextq_s8(*a2, *a2, 8uLL)).u64[0], v11)));
  v15 = veorq_s8(vextq_s8(v10, v14, 8uLL), v13);
  v16 = veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0]));
  result = vqtbl1q_s8(veorq_s8(veorq_s8(vextq_s8(v14, v10, 8uLL), v12), veorq_s8(vextq_s8(v16, v16, 8uLL), vmull_p64(0xC200000000000000, v16.u64[0]))), *qword_BA40);
  *a3 = result;
  return result;
}

int8x16_t gcm_ghash(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, uint64_t a4)
{
  v5 = veorq_s8(v4, v4);
  v6 = vqtbl1q_s8(*a1, *qword_BA40);
  v7 = a4 < 128;
  for (i = a4 - 128; !v7; i -= 128)
  {
    v9 = vqtbl1q_s8(a3[7], *qword_BA40);
    v10 = vmull_p64(a2->i64[0], v9.u64[0]);
    v11 = vmull_high_p64(*a2, v9);
    v12 = vmull_p64(a2[8].u64[0], veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0]);
    v13 = vqtbl1q_s8(a3[6], *qword_BA40);
    v14 = a2[1];
    v15 = veorq_s8(v10, vmull_p64(v14.u64[0], v13.u64[0]));
    v16 = veorq_s8(v11, vmull_high_p64(v14, v13));
    v17 = veorq_s8(v12, vmull_p64(a2[9].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0]));
    v18 = vqtbl1q_s8(a3[5], *qword_BA40);
    v19 = a2[2];
    v20 = veorq_s8(v15, vmull_p64(v19.u64[0], v18.u64[0]));
    v21 = veorq_s8(v16, vmull_high_p64(v19, v18));
    v22 = veorq_s8(v17, vmull_p64(a2[10].u64[0], veorq_s8(v18, vextq_s8(v18, v18, 8uLL)).u64[0]));
    v23 = vqtbl1q_s8(a3[4], *qword_BA40);
    v24 = a2[3];
    v25 = veorq_s8(v20, vmull_p64(v24.u64[0], v23.u64[0]));
    v26 = veorq_s8(v21, vmull_high_p64(v24, v23));
    v27 = veorq_s8(v22, vmull_p64(a2[11].u64[0], veorq_s8(v23, vextq_s8(v23, v23, 8uLL)).u64[0]));
    v28 = vqtbl1q_s8(a3[3], *qword_BA40);
    v29 = a2[4];
    v30 = veorq_s8(v25, vmull_p64(v29.u64[0], v28.u64[0]));
    v31 = veorq_s8(v26, vmull_high_p64(v29, v28));
    v32 = veorq_s8(v27, vmull_p64(a2[12].u64[0], veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0]));
    v33 = vqtbl1q_s8(a3[2], *qword_BA40);
    v34 = a2[5];
    v35 = veorq_s8(v30, vmull_p64(v34.u64[0], v33.u64[0]));
    v36 = veorq_s8(v31, vmull_high_p64(v34, v33));
    v37 = veorq_s8(v32, vmull_p64(a2[13].u64[0], veorq_s8(v33, vextq_s8(v33, v33, 8uLL)).u64[0]));
    v38 = vqtbl1q_s8(a3[1], *qword_BA40);
    v39 = a2[6];
    v40 = veorq_s8(v35, vmull_p64(v39.u64[0], v38.u64[0]));
    v41 = veorq_s8(v36, vmull_high_p64(v39, v38));
    v42 = veorq_s8(v37, vmull_p64(a2[14].u64[0], veorq_s8(v38, vextq_s8(v38, v38, 8uLL)).u64[0]));
    v43 = a2[7];
    v44 = veorq_s8(vqtbl1q_s8(*a3, *qword_BA40), v6);
    v45 = veorq_s8(v40, vmull_p64(v43.u64[0], v44.u64[0]));
    v46 = veorq_s8(v41, vmull_high_p64(v43, v44));
    v47 = veorq_s8(v46, veorq_s8(v45, veorq_s8(v42, vmull_p64(a2[15].u64[0], veorq_s8(v44, vextq_s8(v44, v44, 8uLL)).u64[0]))));
    v48 = veorq_s8(v45, vextq_s8(v5, v47, 8uLL));
    v49 = veorq_s8(vmull_p64(0xC200000000000000, v48.u64[0]), vextq_s8(v48, v48, 8uLL));
    v6 = veorq_s8(veorq_s8(v46, vextq_s8(v47, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v49.u64[0]), vextq_s8(v49, v49, 8uLL)));
    a3 += 8;
    v7 = i < 128;
  }

  v7 = i < -112;
  v50 = i + 112;
  if (!v7)
  {
    v52 = *a3;
    v51 = a3 + 1;
    v53 = veorq_s8(v6, vqtbl1q_s8(v52, *qword_BA40));
    v54 = (a2 + v50);
    v55 = *(a2 + v50);
    v56 = vmull_p64(v53.u64[0], v55.u64[0]);
    v57 = vmull_high_p64(v53, v55);
    v58 = vmull_p64(veorq_s8(v53, vextq_s8(v53, v53, 8uLL)).u64[0], *(a2[8].u64 + v50));
    v7 = v50 < 16;
    for (j = v50 - 16; !v7; j -= 16)
    {
      --v54;
      v60 = *v51++;
      v61 = vqtbl1q_s8(v60, *qword_BA40);
      v56 = veorq_s8(v56, vmull_p64(v61.u64[0], v54->i64[0]));
      v57 = veorq_s8(v57, vmull_high_p64(v61, *v54));
      v58 = veorq_s8(v58, vmull_p64(veorq_s8(v61, vextq_s8(v61, v61, 8uLL)).u64[0], v54[8].u64[0]));
      v7 = j < 16;
    }

    v62 = veorq_s8(v57, veorq_s8(v56, v58));
    v63 = veorq_s8(v56, vextq_s8(v5, v62, 8uLL));
    v64 = veorq_s8(vmull_p64(0xC200000000000000, v63.u64[0]), vextq_s8(v63, v63, 8uLL));
    v6 = veorq_s8(veorq_s8(v57, vextq_s8(v62, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v64.u64[0]), vextq_s8(v64, v64, 8uLL)));
  }

  result = vqtbl1q_s8(v6, *qword_BA40);
  *a1 = result;
  return result;
}

uint64_t ccn_shift_right_asm(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    v4 = a3->i64[0];
    v5 = 64 - a4;
    v6 = vdupq_n_s64(64 - a4);
    v7 = vdupq_n_s64(-a4);
    v8 = result == 4;
    v9 = result < 4;
    result -= 4;
    if (!v9)
    {
      if (v8)
      {
        v13 = a3[1];
        *a2 = veorq_s8(vshlq_u64(*a3, v7), vshlq_u64(vextq_s8(*a3, v13, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v13, v7), vshlq_u64(vextq_s8(v13, v13, 8uLL).u64[0], v6));
        return result;
      }

      do
      {
        v10 = *a3;
        v11 = a3[1];
        a3 += 2;
        v4 = a3->i64[0];
        v12.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
        v12.i64[1] = a3->i64[0];
        *a2 = veorq_s8(vshlq_u64(v10, v7), vshlq_u64(vextq_s8(v10, v11, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v11, v7), vshlq_u64(v12, v6));
        a2 += 2;
        v9 = result <= 4;
        result -= 4;
      }

      while (!v9);
    }

    v14 = result + 4;
    v15 = &a3->u64[1];
    v16 = v14 == 2;
    v9 = v14 < 2;
    result = v14 - 2;
    if (!v9)
    {
      if (v16)
      {
        v19 = *v15 >> a4;
        a2->i64[0] = (v4 >> a4) | (*v15 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = v19;
        return result;
      }

      do
      {
        v17 = *v15;
        v18 = v15[1];
        v15 += 2;
        a2->i64[0] = (v4 >> a4) | (v17 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = (v17 >> a4) | (v18 << v5) & (((64 - a4) >> 6) - 1);
        ++a2;
        v4 = v18;
        v9 = result <= 2;
        result -= 2;
      }

      while (!v9);
    }

    a2->i64[0] = v4 >> a4;
  }

  return result;
}

double ccn_shift_left(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64x2_t a5)
{
  v5 = a2 + 8 * a1;
  v6 = vdupq_n_s64(a4);
  v7 = vdupq_n_s64(a4 - 64);
  v8 = (a3 + 8 * a1 - 8);
  v9 = a1 == 4;
  v10 = a1 < 4;
  v11 = a1 - 4;
  if (!v10)
  {
    if (v9)
    {
      v16.i64[0] = 0;
      v16.i64[1] = *(v8 - 3);
      a5 = veorq_s8(vshlq_u64(v16, v7), vshlq_u64(*(v8 - 3), v6));
      v17 = veorq_s8(vshlq_u64(*(v8 - 1), v7), vshlq_u64(*(v8 - 1), v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = v17;
      return *a5.i64;
    }

    do
    {
      v12 = *(v8 - 3);
      v13 = *(v8 - 1);
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v8 -= 4;
      a5 = veorq_s8(vshlq_u64(v14, v7), vshlq_u64(v12, v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = veorq_s8(vshlq_u64(v15, v7), vshlq_u64(v13, v6));
      v5 -= 32;
      v10 = v11 <= 4;
      v11 -= 4;
    }

    while (!v10);
  }

  v18 = v11 & 3;
  if (!v18)
  {
    return *a5.i64;
  }

  if (v18 == 3)
  {
    v19 = *(v8 - 1);
  }

  else
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_13;
    }

    v19.i64[0] = 0;
    v19.i64[1] = *(v8 - 1);
  }

  a5 = veorq_s8(vshlq_u64(*(v8 - 1), v6), vshlq_u64(v19, v7));
  v8 -= 2;
  *(v5 - 16) = a5;
  v5 -= 16;
LABEL_13:
  if (v18)
  {
    a5.i64[0] = *v8;
    a5.i64[0] = vshlq_u64(a5, v6).u64[0];
    *(v5 - 8) = a5.i64[0];
  }

  return *a5.i64;
}

uint64_t ccn_cmp_asm(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    do
    {
      v5 = *a2++;
      v4 = v5;
      v6 = *a3++;
      v7 = v4 >= v6;
      if (v4 > v6)
      {
        result = 1;
      }

      if (!v7)
      {
        result = -1;
      }
    }

    while (v3-- > 1);
  }

  return result;
}

void gcmEncrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a6 + 240);
  v11 = vqtbl1q_s8(a3[1], *Lbswap_mask_0);
  if (a4 < 128)
  {
    JUMPOUT(0xCA28);
  }

  _Q20 = *a6;
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 16);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 32);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 48);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 64);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 80);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 96);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 112);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 128);
  __asm
  {
    AESE            V22.16B, V20.16B
    AESMC           V22.16B, V22.16B
    AESE            V23.16B, V20.16B
    AESMC           V23.16B, V23.16B
    AESE            V24.16B, V20.16B
    AESMC           V24.16B, V24.16B
    AESE            V25.16B, V20.16B
    AESMC           V25.16B, V25.16B
    AESE            V26.16B, V20.16B
    AESMC           V26.16B, V26.16B
    AESE            V27.16B, V20.16B
    AESMC           V27.16B, V27.16B
    AESE            V28.16B, V20.16B
    AESMC           V28.16B, V28.16B
    AESE            V29.16B, V20.16B
    AESMC           V29.16B, V29.16B
  }

  _Q20 = *(a6 + 144);
  v170 = *(a6 + 160);
  if (v10 > 160)
  {
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = *(a6 + 160);
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = *(a6 + 176);
    v170 = *(a6 + 192);
    if (v10 > 192)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = *(a6 + 192);
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = *(a6 + 208);
      v170 = *(a6 + 224);
    }
  }

  v238 = *a1;
  v239 = a1[1];
  v240 = a1[2];
  v241 = a1[3];
  v237 = a1 + 4;
  __asm
  {
    AESE            V22.16B, V20.16B
    AESE            V23.16B, V20.16B
    AESE            V24.16B, V20.16B
    AESE            V25.16B, V20.16B
  }

  *a2 = veorq_s8(veorq_s8(_Q22, v170), v238);
  a2[1] = veorq_s8(veorq_s8(_Q23, v170), v239);
  a2[2] = veorq_s8(veorq_s8(_Q24, v170), v240);
  a2[3] = veorq_s8(veorq_s8(_Q25, v170), v241);
  v246 = a2 + 4;
  v248 = *v237;
  v249 = v237[1];
  v250 = v237[2];
  v251 = v237[3];
  v247 = v237 + 4;
  __asm
  {
    AESE            V26.16B, V20.16B
    AESE            V27.16B, V20.16B
    AESE            V28.16B, V20.16B
    AESE            V29.16B, V20.16B
  }

  *v246 = veorq_s8(veorq_s8(_Q26, v170), v248);
  v246[1] = veorq_s8(veorq_s8(_Q27, v170), v249);
  v246[2] = veorq_s8(veorq_s8(_Q28, v170), v250);
  v246[3] = veorq_s8(veorq_s8(_Q29, v170), v251);
  v256 = v246 + 4;
  v257 = a4 < 256;
  v258 = a4 - 256;
  if (v257)
  {
    Encrypt_Main_Loop_End(v247, v256, a3, v258, a5, a6, v10, v11);
  }

  else
  {
    Encrypt_Main_Loop(v247, v256, a3, v258, a5, a6, v10, qword_BCC0, v11, a9, a10);
  }
}

uint64_t Encrypt_Main_Loop(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6, uint64_t a7, uint64_t a8, int8x16_t a9, uint64_t a10, uint64_t a11)
{
  do
  {
    v307 = veorq_s8(v14, a9);
    v306 = v15;
    v305 = v16;
    v304 = v17;
    v303 = v18;
    v302 = v19;
    v301 = v20;
    v22 = vaddq_s32(v11, vaddq_s32(v11, vaddq_s32(v11, vaddq_s32(v11, v22))));
    _Q20 = *a6;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v35 = veorq_s8(vmull_p64(a5[8].u64[0], veorq_s8(vextq_s8(v21, v21, 8uLL), v21).u64[0]), vmull_p64(a5[9].u64[0], veorq_s8(v301, vextq_s8(v301, v301, 8uLL)).u64[0]));
    v36 = a5[1];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v41 = veorq_s8(vmull_high_p64(*a5, v21), vmull_high_p64(v36, v20));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v46 = veorq_s8(vmull_p64(a5->i64[0], v21.u64[0]), vmull_p64(v36.u64[0], v301.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v56 = a5[2];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v61 = veorq_s8(v41, vmull_high_p64(v56, v302));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v66 = veorq_s8(v46, vmull_p64(v56.u64[0], v302.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v76 = a5[3];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v81 = veorq_s8(v61, vmull_high_p64(v76, v303));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v86 = veorq_s8(v66, vmull_p64(v76.u64[0], v303.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v96 = a5[4];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v101 = veorq_s8(v81, vmull_high_p64(v96, v304));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v106 = veorq_s8(v86, vmull_p64(v96.u64[0], v304.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v116 = a5[5];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v121 = veorq_s8(v101, vmull_high_p64(v116, v305));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v126 = veorq_s8(v106, vmull_p64(v116.u64[0], v305.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v136 = a5[6];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v141 = veorq_s8(v121, vmull_high_p64(v136, v306));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v146 = veorq_s8(v126, vmull_p64(v136.u64[0], v306.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v156 = a5[7];
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v161 = veorq_s8(v141, vmull_high_p64(v156, v307));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v166 = veorq_s8(v146, vmull_p64(v156.u64[0], v307.u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v172 = veorq_s8(v166, veorq_s8(v161, veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(v35, vmull_p64(a5[10].u64[0], veorq_s8(v302, vextq_s8(v302, v302, 8uLL)).u64[0])), vmull_p64(a5[11].u64[0], veorq_s8(v303, vextq_s8(v303, v303, 8uLL)).u64[0])), vmull_p64(a5[12].u64[0], veorq_s8(v304, vextq_s8(v304, v304, 8uLL)).u64[0])), vmull_p64(a5[13].u64[0], veorq_s8(v305, vextq_s8(v305, v305, 8uLL)).u64[0])), vmull_p64(a5[14].u64[0], veorq_s8(v306, vextq_s8(v306, v306, 8uLL)).u64[0])), vmull_p64(a5[15].u64[0], veorq_s8(v307, vextq_s8(v307, v307, 8uLL)).u64[0]))));
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v179 = veorq_s8(vextq_s8(v23, v172, 8uLL), v166);
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v182 = veorq_s8(vextq_s8(v179, v179, 8uLL), vmull_p64(v13, v179.u64[0]));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a6[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    a9 = veorq_s8(veorq_s8(vextq_s8(v172, v23, 8uLL), v161), veorq_s8(vextq_s8(v182, v182, 8uLL), vmull_p64(v13, v182.u64[0])));
    _Q20 = a6[9];
    v207 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a6[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a6[11];
      v207 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a6[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a6[13];
        v207 = a6[14];
      }
    }

    v275 = *a1;
    v276 = *(a1 + 1);
    v277 = *(a1 + 2);
    v278 = *(a1 + 3);
    v274 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v283 = veorq_s8(veorq_s8(_Q22, v207), v275);
    v284 = veorq_s8(veorq_s8(_Q23, v207), v276);
    v285 = veorq_s8(veorq_s8(_Q24, v207), v277);
    v286 = veorq_s8(veorq_s8(_Q25, v207), v278);
    *a2 = v283;
    a2[1] = v284;
    a2[2] = v285;
    a2[3] = v286;
    v287 = a2 + 4;
    v14 = vqtbl1q_s8(v283, v12);
    v15 = vqtbl1q_s8(v284, v12);
    v16 = vqtbl1q_s8(v285, v12);
    v17 = vqtbl1q_s8(v286, v12);
    v288 = *v274;
    v289 = *(v274 + 1);
    v290 = *(v274 + 2);
    v291 = *(v274 + 3);
    a1 = v274 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    v296 = veorq_s8(veorq_s8(_Q26, v207), v288);
    v297 = veorq_s8(veorq_s8(_Q27, v207), v289);
    v298 = veorq_s8(veorq_s8(_Q28, v207), v290);
    v299 = veorq_s8(veorq_s8(_Q29, v207), v291);
    *v287 = v296;
    v287[1] = v297;
    v287[2] = v298;
    v287[3] = v299;
    a2 = v287 + 4;
    v18 = vqtbl1q_s8(v296, v12);
    v19 = vqtbl1q_s8(v297, v12);
    v20 = vqtbl1q_s8(v298, v12);
    v21 = vqtbl1q_s8(v299, v12);
    _VF = __OFSUB__(a4, 128);
    _NF = a4 - 128 < 0;
    a4 -= 128;
  }

  while (_NF == _VF);
  return Encrypt_Main_Loop_End(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, v301.i64[0], v301.i64[1], v302.i64[0], v302.i64[1], v303.i64[0], v303.i64[1]);
}

int8x16_t Encrypt_Main_Loop_End(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6, int a7, int8x16_t a8)
{
  v21 = a4 + 128;
  v147 = veorq_s8(a8, v11);
  v22 = a5[1];
  v23 = veorq_s8(vmull_high_p64(*a5, v18), vmull_high_p64(v22, v17));
  v24 = veorq_s8(vmull_p64(a5->i64[0], v18.u64[0]), vmull_p64(v22.u64[0], v17.u64[0]));
  v25 = a5[2];
  v26 = veorq_s8(v23, vmull_high_p64(v25, v16));
  v27 = veorq_s8(v24, vmull_p64(v25.u64[0], v16.u64[0]));
  v28 = a5[3];
  v29 = veorq_s8(v26, vmull_high_p64(v28, v15));
  v30 = veorq_s8(v27, vmull_p64(v28.u64[0], v15.u64[0]));
  v31 = a5[4];
  v32 = veorq_s8(v29, vmull_high_p64(v31, v14));
  v33 = veorq_s8(v30, vmull_p64(v31.u64[0], v14.u64[0]));
  v34 = a5[5];
  v35 = veorq_s8(v32, vmull_high_p64(v34, v13));
  v36 = veorq_s8(v33, vmull_p64(v34.u64[0], v13.u64[0]));
  v37 = a5[6];
  v38 = veorq_s8(v35, vmull_high_p64(v37, v12));
  v39 = veorq_s8(v36, vmull_p64(v37.u64[0], v12.u64[0]));
  v40 = a5[7];
  v41 = veorq_s8(v38, vmull_high_p64(v40, v147));
  v42 = veorq_s8(v39, vmull_p64(v40.u64[0], v147.u64[0]));
  v43 = veorq_s8(v42, veorq_s8(v41, veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(veorq_s8(vmull_p64(a5[8].u64[0], veorq_s8(vextq_s8(v18, v18, 8uLL), v18).u64[0]), vmull_p64(a5[9].u64[0], veorq_s8(v17, vextq_s8(v17, v17, 8uLL)).u64[0])), vmull_p64(a5[10].u64[0], veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0])), vmull_p64(a5[11].u64[0], veorq_s8(v15, vextq_s8(v15, v15, 8uLL)).u64[0])), vmull_p64(a5[12].u64[0], veorq_s8(v14, vextq_s8(v14, v14, 8uLL)).u64[0])), vmull_p64(a5[13].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0])), vmull_p64(a5[14].u64[0], veorq_s8(v12, vextq_s8(v12, v12, 8uLL)).u64[0])), vmull_p64(a5[15].u64[0], veorq_s8(v147, vextq_s8(v147, v147, 8uLL)).u64[0]))));
  v44 = veorq_s8(vextq_s8(v20, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(v10, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v20, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(v10, v45.u64[0])));
  v47 = v21 < 16;
  v48 = v21 - 16;
  if (!v47)
  {
    _Q4 = *a6;
    _Q5 = a6[1];
    _Q6 = a6[2];
    v19 = vaddq_s32(v8, v19);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[3];
    _Q5 = a6[4];
    _Q6 = a6[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[6];
    _Q5 = a6[7];
    _Q6 = a6[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a6[9];
    _Q21 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[11];
      _Q21 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[13];
        _Q21 = a6[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v92 = *a1;
    v91 = a1 + 1;
    v93 = veorq_s8(v92, veorq_s8(_Q7, _Q21));
    *a2 = v93;
    v94 = a2 + 1;
    v95 = veorq_s8(v46, vqtbl1q_s8(v93, v9));
    v96 = *(a5 + v48);
    v97 = vmull_high_p64(v96, v95);
    v98 = vmull_p64(v96.u64[0], v95.u64[0]);
    v99 = vmull_p64(*(a5[8].u64 + v48), veorq_s8(vextq_s8(v95, v95, 8uLL), v95).u64[0]);
    v47 = v48 < 16;
    for (i = v48 - 16; !v47; i -= 16)
    {
      _Q4 = *a6;
      _Q5 = a6[1];
      _Q6 = a6[2];
      v19 = vaddq_s32(v8, v19);
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[3];
      _Q5 = a6[4];
      _Q6 = a6[5];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[6];
      _Q5 = a6[7];
      _Q6 = a6[8];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[9];
      _Q21 = a6[10];
      if (a7 > 160)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[11];
        _Q21 = a6[12];
        if (a7 > 192)
        {
          __asm
          {
            AESE            V7.16B, V20.16B
            AESMC           V7.16B, V7.16B
            AESE            V7.16B, V21.16B
            AESMC           V7.16B, V7.16B
          }

          _Q20 = a6[13];
          _Q21 = a6[14];
        }
      }

      __asm { AESE            V7.16B, V20.16B }

      v139 = *v91++;
      v140 = veorq_s8(v139, veorq_s8(_Q7, _Q21));
      *v94++ = v140;
      v141 = vqtbl1q_s8(v140, v9);
      v142 = *(a5 + i);
      v97 = veorq_s8(v97, vmull_high_p64(v142, v141));
      v98 = veorq_s8(v98, vmull_p64(v142.u64[0], v141.u64[0]));
      v99 = veorq_s8(v99, vmull_p64(*(a5[8].u64 + i), veorq_s8(vextq_s8(v141, v141, 8uLL), v141).u64[0]));
      v47 = i < 16;
    }

    v143 = veorq_s8(v98, veorq_s8(v97, v99));
    v144 = veorq_s8(vextq_s8(v20, v143, 8uLL), v98);
    v145 = veorq_s8(vextq_s8(v144, v144, 8uLL), vmull_p64(v10, v144.u64[0]));
    v46 = veorq_s8(veorq_s8(vextq_s8(v143, v20, 8uLL), v97), veorq_s8(vextq_s8(v145, v145, 8uLL), vmull_p64(v10, v145.u64[0])));
  }

  result = vqtbl1q_s8(v46, v9);
  a3[1] = result;
  a3[2] = vqtbl1q_s8(v19, v9);
  return result;
}

void gcmDecrypt(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64x2_t *a5, int8x16_t *a6)
{
  v6 = a6[15].i32[0];
  v7 = vqtbl1q_s8(a3[1], *Lbswap_mask_0);
  v8 = a4 < 128;
  v9 = a4 - 128;
  if (v8)
  {
    Decrypt_Main_Loop_End_0(a1, a2, a3, v9, a5, a6, v6, v7);
  }

  else
  {
    Decrypt_Main_Loop_0(a1, a2, v7, a3, v9, a5, a6, v6);
  }
}

uint64_t Decrypt_Main_Loop_0(int8x16_t *a1, int8x16_t *a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64x2_t *a6, int8x16_t *a7, int a8)
{
  do
  {
    v13 = vqtbl1q_s8(a1[7], v9);
    v14 = vmull_high_p64(*a6, v13);
    v15 = vmull_p64(a6->i64[0], v13.u64[0]);
    v11 = vaddq_s32(v8, vaddq_s32(v8, vaddq_s32(v8, vaddq_s32(v8, v11))));
    v16 = vmull_p64(a6[8].u64[0], veorq_s8(vextq_s8(v13, v13, 8uLL), v13).u64[0]);
    _Q20 = *a7;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v24 = a6[1];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v27 = vqtbl1q_s8(a1[6], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v30 = veorq_s8(v14, vmull_high_p64(v24, v27));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v33 = veorq_s8(v15, vmull_p64(v24.u64[0], v27.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v40 = veorq_s8(v16, vmull_p64(a6[9].u64[0], veorq_s8(v27, vextq_s8(v27, v27, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v46 = a6[2];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v49 = vqtbl1q_s8(a1[5], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v52 = veorq_s8(v30, vmull_high_p64(v46, v49));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v55 = veorq_s8(v33, vmull_p64(v46.u64[0], v49.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v62 = veorq_s8(v40, vmull_p64(a6[10].u64[0], veorq_s8(v49, vextq_s8(v49, v49, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v68 = a6[3];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v71 = vqtbl1q_s8(a1[4], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v74 = veorq_s8(v52, vmull_high_p64(v68, v71));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v77 = veorq_s8(v55, vmull_p64(v68.u64[0], v71.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v84 = veorq_s8(v62, vmull_p64(a6[11].u64[0], veorq_s8(v71, vextq_s8(v71, v71, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v90 = a6[4];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v93 = vqtbl1q_s8(a1[3], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v96 = veorq_s8(v74, vmull_high_p64(v90, v93));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v99 = veorq_s8(v77, vmull_p64(v90.u64[0], v93.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v106 = veorq_s8(v84, vmull_p64(a6[12].u64[0], veorq_s8(v93, vextq_s8(v93, v93, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v112 = a6[5];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v115 = vqtbl1q_s8(a1[2], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v118 = veorq_s8(v96, vmull_high_p64(v112, v115));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v121 = veorq_s8(v99, vmull_p64(v112.u64[0], v115.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v128 = veorq_s8(v106, vmull_p64(a6[13].u64[0], veorq_s8(v115, vextq_s8(v115, v115, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v134 = a6[6];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v137 = vqtbl1q_s8(a1[1], v9);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v140 = veorq_s8(v118, vmull_high_p64(v134, v137));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v143 = veorq_s8(v121, vmull_p64(v134.u64[0], v137.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
    }

    v150 = veorq_s8(v128, vmull_p64(a6[14].u64[0], veorq_s8(v137, vextq_s8(v137, v137, 8uLL)).u64[0]));
    __asm
    {
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v156 = a6[7];
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
    }

    v159 = veorq_s8(vqtbl1q_s8(*a1, v9), a3);
    __asm
    {
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
    }

    v162 = veorq_s8(v140, vmull_high_p64(v156, v159));
    __asm
    {
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v165 = veorq_s8(v143, vmull_p64(v156.u64[0], v159.u64[0]));
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
    }

    v177 = veorq_s8(v165, veorq_s8(v162, veorq_s8(v150, vmull_p64(a6[15].u64[0], veorq_s8(v159, vextq_s8(v159, v159, 8uLL)).u64[0]))));
    __asm
    {
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
    }

    v184 = veorq_s8(vextq_s8(v12, v177, 8uLL), v165);
    __asm
    {
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
    }

    v187 = veorq_s8(vextq_s8(v184, v184, 8uLL), vmull_p64(v10, v184.u64[0]));
    __asm
    {
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a7[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    a3 = veorq_s8(veorq_s8(vextq_s8(v177, v12, 8uLL), v162), veorq_s8(vextq_s8(v187, v187, 8uLL), vmull_p64(v10, v187.u64[0])));
    _Q20 = a7[9];
    v212 = a7[10];
    if (a8 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a7[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a7[11];
      v212 = a7[12];
      if (a8 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a7[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a7[13];
        v212 = a7[14];
      }
    }

    v280 = *a1;
    v281 = a1[1];
    v282 = a1[2];
    v283 = a1[3];
    v279 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v288 = veorq_s8(v280, veorq_s8(_Q22, v212));
    v289 = veorq_s8(v281, veorq_s8(_Q23, v212));
    v290 = veorq_s8(v282, veorq_s8(_Q24, v212));
    v291 = veorq_s8(v283, veorq_s8(_Q25, v212));
    v292 = *v279;
    v293 = v279[1];
    v294 = v279[2];
    v295 = v279[3];
    a1 = v279 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v288;
    a2[1] = v289;
    a2[2] = v290;
    a2[3] = v291;
    v300 = a2 + 4;
    *v300 = veorq_s8(v292, veorq_s8(_Q26, v212));
    v300[1] = veorq_s8(v293, veorq_s8(_Q27, v212));
    v300[2] = veorq_s8(v294, veorq_s8(_Q28, v212));
    v300[3] = veorq_s8(v295, veorq_s8(_Q29, v212));
    a2 = v300 + 4;
    _VF = __OFSUB__(a5, 128);
    _NF = a5 - 128 < 0;
    a5 -= 128;
  }

  while (_NF == _VF);
  return Decrypt_Main_Loop_End_0();
}

int8x16_t Decrypt_Main_Loop_End_0(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, uint64_t a4, uint64_t a5, int8x16_t *a6, int a7, int8x16_t a8)
{
  v13 = a4 < -112;
  v14 = a4 + 112;
  if (!v13)
  {
    v15 = *(a5 + v14);
    v16 = veorq_s8(a8, vqtbl1q_s8(*a1, v9));
    v17 = vmull_high_p64(v15, v16);
    v18 = vmull_p64(v15.u64[0], v16.u64[0]);
    v19 = vmull_p64(*(a5 + v14 + 128), veorq_s8(vextq_s8(v16, v16, 8uLL), v16).u64[0]);
    _Q4 = *a6;
    _Q5 = a6[1];
    _Q6 = a6[2];
    v11 = vaddq_s32(v8, v11);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[3];
    _Q5 = a6[4];
    _Q6 = a6[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a6[6];
    _Q5 = a6[7];
    _Q6 = a6[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a6[9];
    _Q21 = a6[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[11];
      _Q21 = a6[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[13];
        _Q21 = a6[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v63 = *a1;
    v62 = a1 + 1;
    *a2 = veorq_s8(v63, veorq_s8(_Q7, _Q21));
    v64 = a2 + 1;
    v13 = v14 < 16;
    for (i = v14 - 16; !v13; i -= 16)
    {
      v66 = vqtbl1q_s8(*v62, v9);
      v67 = *(a5 + i);
      v17 = veorq_s8(v17, vmull_high_p64(v67, v66));
      v18 = veorq_s8(v18, vmull_p64(v67.u64[0], v66.u64[0]));
      v19 = veorq_s8(v19, vmull_p64(*(a5 + i + 128), veorq_s8(vextq_s8(v66, v66, 8uLL), v66).u64[0]));
      _Q4 = *a6;
      _Q5 = a6[1];
      _Q6 = a6[2];
      v11 = vaddq_s32(v8, v11);
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[3];
      _Q5 = a6[4];
      _Q6 = a6[5];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q4 = a6[6];
      _Q5 = a6[7];
      _Q6 = a6[8];
      __asm
      {
        AESE            V7.16B, V4.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V5.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V6.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a6[9];
      _Q21 = a6[10];
      if (a7 > 160)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a6[11];
        _Q21 = a6[12];
        if (a7 > 192)
        {
          __asm
          {
            AESE            V7.16B, V20.16B
            AESMC           V7.16B, V7.16B
            AESE            V7.16B, V21.16B
            AESMC           V7.16B, V7.16B
          }

          _Q20 = a6[13];
          _Q21 = a6[14];
        }
      }

      __asm { AESE            V7.16B, V20.16B }

      v106 = *v62++;
      *v64++ = veorq_s8(v106, veorq_s8(_Q7, _Q21));
      v13 = i < 16;
    }

    v107 = veorq_s8(v18, veorq_s8(v17, v19));
    v108 = veorq_s8(vextq_s8(v12, v107, 8uLL), v18);
    v109 = veorq_s8(vextq_s8(v108, v108, 8uLL), vmull_p64(v10, v108.u64[0]));
    a8 = veorq_s8(veorq_s8(vextq_s8(v107, v12, 8uLL), v17), veorq_s8(vextq_s8(v109, v109, 8uLL), vmull_p64(v10, v109.u64[0])));
  }

  result = vqtbl1q_s8(a8, v9);
  a3[1] = result;
  a3[2] = vqtbl1q_s8(v11, v9);
  return result;
}

int64x2_t *AccelerateCrypto_SHA512_compress_hwassist(int64x2_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    do
    {
      _Q24 = v3;
      _Q25 = v4;
      _Q0 = vrev64q_s8(*a3);
      _Q1 = vrev64q_s8(a3[1]);
      _Q2 = vrev64q_s8(a3[2]);
      _Q3 = vrev64q_s8(a3[3]);
      _Q4 = vrev64q_s8(a3[4]);
      _Q5 = vrev64q_s8(a3[5]);
      _Q6 = vrev64q_s8(a3[6]);
      _Q7 = vrev64q_s8(a3[7]);
      a3 += 8;
      _Q29 = vextq_s8(v5, v6, 8uLL);
      _Q28 = vextq_s8(v4, v5, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v26 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v29 = vaddq_s64(v4, v26);
      _Q29 = vextq_s8(v29, v5, 8uLL);
      _Q28 = vextq_s8(v3, v29, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v35 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v38 = vaddq_s64(v3, v35);
      _Q29 = vextq_s8(v38, v29, 8uLL);
      _Q28 = vextq_s8(_Q27, v38, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v44 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v47 = vaddq_s64(_Q27, v44);
      _Q29 = vextq_s8(v47, v38, 8uLL);
      _Q28 = vextq_s8(_Q26, v47, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v53 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v56 = vaddq_s64(_Q26, v53);
      _Q29 = vextq_s8(v56, v47, 8uLL);
      _Q28 = vextq_s8(_Q25, v56, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v62 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v65 = vaddq_s64(_Q25, v62);
      _Q29 = vextq_s8(v65, v56, 8uLL);
      _Q28 = vextq_s8(_Q24, v65, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v71 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v74 = vaddq_s64(_Q24, v71);
      _Q29 = vextq_s8(v74, v65, 8uLL);
      _Q28 = vextq_s8(_Q27, v74, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v80 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v83 = vaddq_s64(_Q27, v80);
      _Q29 = vextq_s8(v83, v74, 8uLL);
      _Q28 = vextq_s8(_Q26, v83, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v89 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v92 = vaddq_s64(_Q26, v89);
      _Q29 = vextq_s8(v92, v83, 8uLL);
      _Q28 = vextq_s8(_Q25, v92, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v98 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v101 = vaddq_s64(_Q25, v98);
      _Q29 = vextq_s8(v101, v92, 8uLL);
      _Q28 = vextq_s8(_Q24, v101, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v107 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v110 = vaddq_s64(_Q24, v107);
      _Q29 = vextq_s8(v110, v101, 8uLL);
      _Q28 = vextq_s8(_Q27, v110, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v116 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v119 = vaddq_s64(_Q27, v116);
      _Q29 = vextq_s8(v119, v110, 8uLL);
      _Q28 = vextq_s8(_Q26, v119, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v125 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v128 = vaddq_s64(_Q26, v125);
      _Q29 = vextq_s8(v128, v119, 8uLL);
      _Q28 = vextq_s8(_Q25, v128, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v134 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v137 = vaddq_s64(_Q25, v134);
      _Q29 = vextq_s8(v137, v128, 8uLL);
      _Q28 = vextq_s8(_Q24, v137, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v143 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v146 = vaddq_s64(_Q24, v143);
      _Q29 = vextq_s8(v146, v137, 8uLL);
      _Q28 = vextq_s8(_Q27, v146, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v152 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v155 = vaddq_s64(_Q27, v152);
      _Q29 = vextq_s8(v155, v146, 8uLL);
      _Q28 = vextq_s8(_Q26, v155, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v161 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v164 = vaddq_s64(_Q26, v161);
      _Q29 = vextq_s8(v164, v155, 8uLL);
      _Q28 = vextq_s8(_Q25, v164, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v170 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v173 = vaddq_s64(_Q25, v170);
      _Q29 = vextq_s8(v173, v164, 8uLL);
      _Q28 = vextq_s8(_Q24, v173, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v179 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v182 = vaddq_s64(_Q24, v179);
      _Q29 = vextq_s8(v182, v173, 8uLL);
      _Q28 = vextq_s8(_Q27, v182, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v188 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v191 = vaddq_s64(_Q27, v188);
      _Q29 = vextq_s8(v191, v182, 8uLL);
      _Q28 = vextq_s8(_Q26, v191, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v197 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v200 = vaddq_s64(_Q26, v197);
      _Q29 = vextq_s8(v200, v191, 8uLL);
      _Q28 = vextq_s8(_Q25, v200, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v206 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v209 = vaddq_s64(_Q25, v206);
      _Q29 = vextq_s8(v209, v200, 8uLL);
      _Q28 = vextq_s8(_Q24, v209, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v215 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v218 = vaddq_s64(_Q24, v215);
      _Q29 = vextq_s8(v218, v209, 8uLL);
      _Q28 = vextq_s8(_Q27, v218, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v224 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v227 = vaddq_s64(_Q27, v224);
      _Q29 = vextq_s8(v227, v218, 8uLL);
      _Q28 = vextq_s8(_Q26, v227, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v233 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v236 = vaddq_s64(_Q26, v233);
      _Q29 = vextq_s8(v236, v227, 8uLL);
      _Q28 = vextq_s8(_Q25, v236, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v242 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v245 = vaddq_s64(_Q25, v242);
      _Q29 = vextq_s8(v245, v236, 8uLL);
      _Q28 = vextq_s8(_Q24, v245, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v251 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v254 = vaddq_s64(_Q24, v251);
      _Q29 = vextq_s8(v254, v245, 8uLL);
      _Q28 = vextq_s8(_Q27, v254, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v260 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v263 = vaddq_s64(_Q27, v260);
      _Q29 = vextq_s8(v263, v254, 8uLL);
      _Q28 = vextq_s8(_Q26, v263, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v269 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v272 = vaddq_s64(_Q26, v269);
      _Q29 = vextq_s8(v272, v263, 8uLL);
      _Q28 = vextq_s8(_Q25, v272, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v278 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v281 = vaddq_s64(_Q25, v278);
      _Q29 = vextq_s8(v281, v272, 8uLL);
      _Q28 = vextq_s8(_Q24, v281, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v287 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v290 = vaddq_s64(_Q24, v287);
      _Q29 = vextq_s8(v290, v281, 8uLL);
      _Q28 = vextq_s8(_Q27, v290, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v296 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v299 = vaddq_s64(_Q27, v296);
      _Q29 = vextq_s8(v299, v290, 8uLL);
      _Q28 = vextq_s8(_Q26, v299, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v305 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v308 = vaddq_s64(_Q26, v305);
      _Q29 = vextq_s8(v308, v299, 8uLL);
      _Q28 = vextq_s8(_Q25, v308, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v313 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v313, v308, 8uLL);
      _Q28 = vextq_s8(_Q24, v313, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v318 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v318, v313, 8uLL);
      _Q28 = vextq_s8(_Q27, v318, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v323 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v323, v318, 8uLL);
      _Q28 = vextq_s8(_Q26, v323, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v328 = vaddq_s64(_Q26, _Q30);
      _Q29 = vextq_s8(v328, v323, 8uLL);
      _Q28 = vextq_s8(_Q25, v328, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v333 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v333, v328, 8uLL);
      _Q28 = vextq_s8(_Q24, v333, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v338 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v338, v333, 8uLL);
      _Q28 = vextq_s8(_Q27, v338, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v343 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v343, v338, 8uLL);
      _Q28 = vextq_s8(_Q26, v343, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v3 = vaddq_s64(v3, _Q24);
      v4 = vaddq_s64(v4, _Q25);
      v5 = vaddq_s64(v5, vaddq_s64(_Q26, _Q30));
      v6 = vaddq_s64(v6, v343);
    }

    while (a2-- > 1);
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
  }

  return result;
}

int64x2_t AccelerateCrypto_SHA3_keccak_2x_hwassist(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a1[6];
  v13 = a1[7];
  v14 = a2[6];
  v15 = a2[7];
  v16 = a1[8];
  v17 = a1[9];
  v18 = a2[8];
  v19 = a2[9];
  v20 = a1[10];
  v21 = a1[11];
  v22 = a2[10];
  v23 = a2[11];
  *&_Q24 = a1[12].i64[0];
  *(&_Q24 + 1) = a2[12].i64[0];
  _Q0 = vzip1q_s64(*a1, *a2);
  _Q1 = vzip2q_s64(*a1, *a2);
  _Q2 = vzip1q_s64(v2, v3);
  _Q3 = vzip2q_s64(v2, v3);
  _Q4 = vzip1q_s64(v4, v6);
  _Q5 = vzip2q_s64(v4, v6);
  _Q6 = vzip1q_s64(v5, v7);
  _Q7 = vzip2q_s64(v5, v7);
  _Q8 = vzip1q_s64(v8, v10);
  _Q9 = vzip2q_s64(v8, v10);
  _Q10 = vzip1q_s64(v9, v11);
  _Q11 = vzip2q_s64(v9, v11);
  _Q12 = vzip1q_s64(v12, v14);
  _Q13 = vzip2q_s64(v12, v14);
  _Q14 = vzip1q_s64(v13, v15);
  _Q15 = vzip2q_s64(v13, v15);
  _Q16 = vzip1q_s64(v16, v18);
  _Q17 = vzip2q_s64(v16, v18);
  _Q18 = vzip1q_s64(v17, v19);
  _Q19 = vzip2q_s64(v17, v19);
  _Q20 = vzip1q_s64(v20, v22);
  _Q21 = vzip2q_s64(v20, v22);
  _Q22 = vzip1q_s64(v21, v23);
  _Q23 = vzip2q_s64(v21, v23);
  v49 = 0;
  v50 = &unk_33D710;
  do
  {
    __asm
    {
      EOR3            V25.16B, V0.16B, V5.16B, V10.16B
      EOR3            V26.16B, V1.16B, V6.16B, V11.16B
      EOR3            V27.16B, V2.16B, V7.16B, V12.16B
      EOR3            V28.16B, V3.16B, V8.16B, V13.16B
      EOR3            V29.16B, V4.16B, V9.16B, V14.16B
      EOR3            V25.16B, V25.16B, V15.16B, V20.16B
      EOR3            V26.16B, V26.16B, V16.16B, V21.16B
      EOR3            V27.16B, V27.16B, V17.16B, V22.16B
      EOR3            V28.16B, V28.16B, V18.16B, V23.16B
      EOR3            V29.16B, V29.16B, V19.16B, V24.16B
      RAX1            V30.2D, V25.2D, V27.2D
      RAX1            V31.2D, V26.2D, V28.2D
      RAX1            V27.2D, V27.2D, V29.2D
      RAX1            V28.2D, V28.2D, V25.2D
      RAX1            V29.2D, V29.2D, V26.2D
      XAR             V25.2D, V1.2D, V30.2D, #0x3F ; '?'
      XAR             V1.2D, V6.2D, V30.2D, #0x14
      XAR             V6.2D, V9.2D, V28.2D, #0x2C ; ','
      XAR             V9.2D, V22.2D, V31.2D, #3
      XAR             V22.2D, V14.2D, V28.2D, #0x19
      XAR             V14.2D, V20.2D, V29.2D, #0x2E ; '.'
      XAR             V20.2D, V2.2D, V31.2D, #2
      XAR             V2.2D, V12.2D, V31.2D, #0x15
      XAR             V12.2D, V13.2D, V27.2D, #0x27 ; '''
      XAR             V13.2D, V19.2D, V28.2D, #0x38 ; '8'
      XAR             V19.2D, V23.2D, V27.2D, #8
      XAR             V23.2D, V15.2D, V29.2D, #0x17
      XAR             V15.2D, V4.2D, V28.2D, #0x25 ; '%'
      XAR             V26.2D, V21.2D, V30.2D, #0x3E ; '>'
      XAR             V8.2D, V8.2D, V27.2D, #9
    }

    _Q0 = veorq_s8(_Q0, _Q29);
    __asm
    {
      BCAX            V21.16B, V8.16B, V23.16B, V22.16B
      XAR             V28.2D, V24.2D, V28.2D, #0x32 ; '2'
      BCAX            V24.16B, V26.16B, V8.16B, V20.16B
      XAR             V18.2D, V18.2D, V27.2D, #0x2B ; '+'
      BCAX            V23.16B, V23.16B, V20.16B, V26.16B
      XAR             V11.2D, V11.2D, V30.2D, #0x36 ; '6'
      BCAX            V20.16B, V20.16B, V22.16B, V8.16B
      XAR             V30.2D, V16.2D, V30.2D, #0x13
      BCAX            V22.16B, V22.16B, V26.16B, V23.16B
      XAR             V16.2D, V5.2D, V29.2D, #0x1C
      XAR             V27.2D, V3.2D, V27.2D, #0x24 ; '$'
      BCAX            V3.16B, V18.16B, V0.16B, V28.16B
      XAR             V29.2D, V10.2D, V29.2D, #0x3D ; '='
      BCAX            V4.16B, V28.16B, V1.16B, V0.16B
      XAR             V10.2D, V17.2D, V31.2D, #0x31 ; '1'
      BCAX            V0.16B, V0.16B, V2.16B, V1.16B
      XAR             V7.2D, V7.2D, V31.2D, #0x3A ; ':'
      BCAX            V1.16B, V1.16B, V18.16B, V2.16B
      BCAX            V2.16B, V2.16B, V28.16B, V18.16B
      BCAX            V17.16B, V11.16B, V19.16B, V10.16B
      BCAX            V18.16B, V10.16B, V15.16B, V19.16B
      BCAX            V19.16B, V19.16B, V16.16B, V15.16B
      BCAX            V15.16B, V15.16B, V11.16B, V16.16B
      BCAX            V16.16B, V16.16B, V10.16B, V11.16B
      BCAX            V10.16B, V25.16B, V12.16B, V7.16B
      BCAX            V11.16B, V7.16B, V13.16B, V12.16B
      BCAX            V12.16B, V12.16B, V14.16B, V13.16B
      BCAX            V13.16B, V13.16B, V25.16B, V14.16B
      BCAX            V14.16B, V14.16B, V7.16B, V25.16B
    }

    v96 = vld1q_dup_f64(v50);
    __asm
    {
      BCAX            V7.16B, V29.16B, V9.16B, V30.16B
      BCAX            V8.16B, V30.16B, V27.16B, V9.16B
      BCAX            V9.16B, V9.16B, V6.16B, V27.16B
      BCAX            V5.16B, V27.16B, V29.16B, V6.16B
    }

    ++v50;
    __asm { BCAX            V6.16B, V6.16B, V30.16B, V29.16B }

    v49 += 8;
    _Q0 = veorq_s8(_Q0, v96);
  }

  while (v49 != 192);
  v97 = vzip1q_s64(_Q0, _Q1);
  v98 = vzip2q_s64(_Q0, _Q1);
  result = vzip1q_s64(_Q2, _Q3);
  *a1 = v97;
  a1[1] = result;
  *a2 = v98;
  a2[1] = vzip2q_s64(_Q2, _Q3);
  a1[2] = vzip1q_s64(_Q4, _Q5);
  a1[3] = vzip1q_s64(_Q6, _Q7);
  a2[2] = vzip2q_s64(_Q4, _Q5);
  a2[3] = vzip2q_s64(_Q6, _Q7);
  a1[4] = vzip1q_s64(_Q8, _Q9);
  a1[5] = vzip1q_s64(_Q10, _Q11);
  a2[4] = vzip2q_s64(_Q8, _Q9);
  a2[5] = vzip2q_s64(_Q10, _Q11);
  a1[6] = vzip1q_s64(_Q12, _Q13);
  a1[7] = vzip1q_s64(_Q14, _Q15);
  a2[6] = vzip2q_s64(_Q12, _Q13);
  a2[7] = vzip2q_s64(_Q14, _Q15);
  a1[8] = vzip1q_s64(_Q16, _Q17);
  a1[9] = vzip1q_s64(_Q18, _Q19);
  a2[8] = vzip2q_s64(_Q16, _Q17);
  a2[9] = vzip2q_s64(_Q18, _Q19);
  a1[10] = vzip1q_s64(_Q20, _Q21);
  a1[11] = vzip1q_s64(_Q22, _Q23);
  a2[10] = vzip2q_s64(_Q20, _Q21);
  a2[11] = vzip2q_s64(_Q22, _Q23);
  a1[12].i64[0] = _Q24;
  a2[12].i64[0] = *(&_Q24 + 1);
  return result;
}

uint64_t getEnumTagSinglePayload for SymmetricKeySize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymmetricKeySize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t _s11KeyScheduleVwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _s16CryptoKit_Static12SHA256DigestVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16CryptoKit_Static12SHA256DigestVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t *_s16CryptoKit_Static10ChaChaPolyO9SealedBoxVwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_2582E4(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

void *sub_E1A4(uint64_t a1, unint64_t a2)
{

  return sub_286FB4(a1, a2);
}

void *sub_E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_286ADC(a1, a2, a3, a4);
}

void *sub_E254(_OWORD *a1)
{

  return sub_286C74(a1);
}

void *sub_E2AC(_OWORD *a1)
{

  return sub_286E14(a1);
}

void *_s4CMACVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_E368(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  return sub_29668C(a1, a2, a3, a4, a5);
}

uint64_t sub_E3C0(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_2962A4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_E418(void *a1, _BYTE *a2, uint64_t a3)
{

  return sub_296404(a1, a2, a3);
}

uint64_t sub_E470(void *a1, _BYTE *a2, uint64_t a3)
{

  return sub_296548(a1, a2, a3);
}

uint64_t sub_E4D8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

Swift::Int sub_E600()
{

  return sub_2A2F58();
}

void *sub_E658@<X0>(void *a1@<X8>)
{

  return sub_2A2FF0(a1);
}

BOOL sub_E6B0(_OWORD *a1, _OWORD *a2)
{

  return sub_2A3060(a1, a2);
}

Swift::Int sub_E708()
{

  return sub_2A35B0();
}

void *sub_E760@<X0>(void *a1@<X8>)
{

  return sub_2A3658(a1);
}

BOOL sub_E7B8(_OWORD *a1, _OWORD *a2)
{

  return sub_2A36D0(a1, a2);
}

Swift::Int sub_E810()
{

  return sub_2A3BE4();
}

void *sub_E868@<X0>(void *a1@<X8>)
{

  return sub_2A3C84(a1);
}

BOOL sub_E8C0(_OWORD *a1, _OWORD *a2)
{

  return sub_2A3CFC(a1, a2);
}

uint64_t _s16CryptoKit_Static12SHA384DigestVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16CryptoKit_Static12SHA384DigestVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t _s16CryptoKit_Static12SHA512DigestVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16CryptoKit_Static12SHA512DigestVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void *_s7SigningO9PublicKeyVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *_s7SigningO9PublicKeyVwca_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *_s7SigningO9PublicKeyVwta_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t storeEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_EB18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_258780(a1, a2);
  }

  return a1;
}

uint64_t *assignWithTake for ChaChaPoly.SealedBox(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  sub_258780(v3, v4);
  return a1;
}

uint64_t sub_EC34()
{

  return sub_2A2E68();
}

Swift::Int sub_EC8C()
{

  return sub_2A2ED8();
}

uint64_t sub_ECE4()
{

  return sub_2A34A8();
}

Swift::Int sub_ED3C()
{

  return sub_2A3520();
}

Swift::Int sub_ED94()
{

  return sub_2A3B5C();
}

BOOL MSUSSOIsAvailable(void *a1)
{
  v11[0] = @"applicationIdentifier";
  v11[1] = @"environmentIdentifier";
  v12[0] = a1;
  v12[1] = @"APPLECONNECT.APPLE.COM";
  v11[2] = @"interactivity";
  v12[2] = @"0";
  v1 = a1;
  v2 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  v3 = [SoftwareUpdateSSO alloc];

  v4 = [(SoftwareUpdateSSO *)v3 initWithOptions:v2];
  v5 = [(SoftwareUpdateSSO *)v4 ssoIsSupported];
  [(SoftwareUpdateSSO *)v4 invalidate];
  v6 = _MADLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MSUSSOIsAvailable: %@", &v9, 0xCu);
  }

  return v5;
}

id copyPersonalizationSSOToken(void *a1, void *a2)
{
  v3 = a1;
  if (MSUSSOIsAvailable(@"1205"))
  {
    if (v3)
    {
      v4 = [v3 valueForKey:@"stealthMode"] == kCFBooleanTrue;
    }

    else
    {
      v4 = 0;
    }

    v7 = _MADLog(@"SSO");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v19) = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Calling copyDawTokenAndUsername with interactivity level %d", buf, 8u);
    }

    v15 = 0;
    v8 = copyDawTokenAndUsername(@"1205", v4, &v15);
    v9 = v15;
    v5 = v9;
    if (v8 && v9)
    {
      v10 = objc_alloc_init(NSMutableData);
      v11 = objc_alloc_init(NSMutableData);
      v12 = [NSString stringWithFormat:@"%@/%@", v5, @"1205"];
      [v10 setLength:{objc_msgSend(v12, "length") + 1}];
      [v12 getCString:objc_msgSend(v10 maxLength:"mutableBytes") encoding:{objc_msgSend(v10, "length"), 4}];
      [v11 setLength:{objc_msgSend(v8, "length") + 1}];
      [v8 getCString:objc_msgSend(v11 maxLength:"mutableBytes") encoding:{objc_msgSend(v11, "length"), 4}];
      [v10 appendBytes:objc_msgSend(v11 length:{"mutableBytes"), objc_msgSend(v11, "length") - 1}];
      v16 = @"ssodata";
      v17 = v10;
      v6 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v13 = _MADLog(@"SSO");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "copyDawTokenAndUsername failed to return with a token (%@) or a username (%@)", buf, 0x16u);
      }

      if (a2)
      {
        [NSError errorWithDomain:@"SoftwareUpdateSSOError" code:1 userInfo:0];
        *a2 = v6 = 0;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v5 = _MADLog(@"SSO");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "copyPersonalizationSSOToken";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%s: Not supported in this environment", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

NSObject *copyDawTokenAndUsername(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = @"177666";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = MSUSSOIsAvailable(v8);
  v10 = _MADLog(@"SSO");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Attempting to get token", buf, 2u);
    }

    if (!v6)
    {
      v22 = 0;
      goto LABEL_30;
    }

    v12 = @"0";
    if (a2 == 1)
    {
      v12 = @"1";
    }

    if (a2 == 2)
    {
      v13 = @"2";
    }

    else
    {
      v13 = v12;
    }

    v14 = _MADLog(@"SSO");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Setting interactivity level to %@", buf, 0xCu);
    }

    v25[0] = @"applicationIdentifier";
    v25[1] = @"environmentIdentifier";
    v26[0] = v6;
    v26[1] = @"APPLECONNECT.APPLE.COM";
    v25[2] = @"interactivity";
    v26[2] = v13;
    v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    v16 = [[SoftwareUpdateSSO alloc] initWithOptions:v15];
    v17 = [(SoftwareUpdateSSO *)v16 ssoIsSupported];
    v18 = _MADLog(@"SSO");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO supported. Attempting to read token", buf, 2u);
      }

      v20 = [(SoftwareUpdateSSO *)v16 getDawToken];
      v21 = [(SoftwareUpdateSSO *)v16 userName];
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO not supported in this environment", buf, 2u);
      }

      v21 = 0;
      v20 = 0;
    }

    [(SoftwareUpdateSSO *)v16 invalidate];
    if (a3 && v21)
    {
      v23 = v21;
      *a3 = v21;
    }

    v10 = v20;

    v22 = v10;
  }

  else
  {
    if (v11)
    {
      *buf = 136315138;
      v28 = "copyDawTokenAndUsername";
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%s: Not supported in this environment", buf, 0xCu);
    }

    v22 = 0;
  }

LABEL_30:

  return v22;
}

void ___preferencesDomainProtectionDispatchQueue_block_invoke(id a1)
{
  _preferencesDomainProtectionDispatchQueue_preferencesDomainQueue = dispatch_queue_create("com.apple.MobileAsset.preferencesDomain", 0);

  _objc_release_x1();
}

id _MAPreferencesCopyNSDictionaryValue(void *a1)
{
  v1 = a1;
  v2 = _MAPreferencesCopyValue(v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v3 = v3;
    }

    else
    {
      v5 = _MADLog(@"V2");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[MA_PREFS] {_MAPreferencesCopyNSDictionaryValue} invalid type for key:%{public}@ | expecting dictionary", &v7, 0xCu);
      }

      v3 = 0;
    }
  }

  return v3;
}

id _MAPreferencesCopyNSDataValue(void *a1)
{
  v1 = a1;
  v2 = _MAPreferencesCopyValue(v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      v3 = v3;
    }

    else
    {
      v5 = _MADLog(@"V2");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[MA_PREFS] {_MAPreferencesCopyNSDataValue} invalid type for key:%{public}@ | expecting data", &v7, 0xCu);
      }

      v3 = 0;
    }
  }

  return v3;
}

id _MAPreferencesCopyArrayOfNumbers(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v7 || (v9 = [v7 count], v9 < 1))
  {
    v10 = 0;
    goto LABEL_19;
  }

  v10 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSNumberFormatter);
  [v11 setNumberStyle:1];
  v12 = 0;
  v13 = v9 & 0x7FFFFFFF;
  while (1)
  {
    v14 = [v8 objectAtIndex:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = _MADLog(@"V2");
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 138543874;
      v21 = v5;
      v22 = 2114;
      v23 = v6;
      v24 = 1024;
      v25 = v12;
      v18 = "[MA_PREFS] {_MAPreferencesCopyArrayOfNumbers} invalid entry for key:%{public}@ | value:%{public}@ | index:%d | not a number";
      goto LABEL_16;
    }

    [v10 addObject:v14];
LABEL_9:

    if (v13 == ++v12)
    {
      goto LABEL_18;
    }
  }

  v15 = [v11 numberFromString:v14];
  if (v15)
  {
    v16 = v15;
    [v10 addObject:v15];

    goto LABEL_9;
  }

  v17 = _MADLog(@"V2");
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_17;
  }

  *buf = 138543874;
  v21 = v5;
  v22 = 2114;
  v23 = v6;
  v24 = 1024;
  v25 = v12;
  v18 = "[MA_PREFS] {_MAPreferencesCopyArrayOfNumbers} invalid entry for key:%{public}@ | value:%{public}@ | index:%d | not a number (from string)";
LABEL_16:
  _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x1Cu);
LABEL_17:

  v10 = 0;
LABEL_18:

LABEL_19:

  return v10;
}

id _MAPreferencesCopyNSArrayOfNumbersValue(void *a1)
{
  v1 = a1;
  v2 = _MAPreferencesCopyValue(v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
      v6 = [v5 componentsSeparatedByString:{@", "}];
      v3 = _MAPreferencesCopyArrayOfNumbers(v1, v5, v6);
    }

    else
    {
      v7 = CFGetTypeID(v3);
      if (v7 == CFArrayGetTypeID())
      {
        v3 = _MAPreferencesCopyArrayOfNumbers(v1, @"CFArray", v3);
      }

      else
      {
        v8 = _MADLog(@"V2");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 138543362;
          v11 = v1;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[MA_PREFS] {_MAPreferencesCopyNSArrayOfNumbersValue} invalid type for key:%{public}@ | expecting array of numbers", &v10, 0xCu);
        }

        v3 = 0;
      }
    }
  }

  return v3;
}

id _MAPreferencesCopyArrayOfStrings(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
    if (v9 >= 1)
    {
      v10 = objc_alloc_init(NSMutableArray);
      v11 = 0;
      v12 = v9 & 0x7FFFFFFF;
      while (1)
      {
        v13 = [v8 objectAtIndex:v11];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        [v10 addObject:v13];

        if (v12 == ++v11)
        {
          goto LABEL_11;
        }
      }

      v14 = _MADLog(@"V2");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543874;
        v17 = v5;
        v18 = 2114;
        v19 = v6;
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[MA_PREFS] {_MAPreferencesCopyArrayOfStrings} invalid entry for key:%{public}@ | value:%{public}@ | index:%d | not a string", &v16, 0x1Cu);
      }
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id _MAPreferencesCopyNSArrayOfStringsValue(void *a1)
{
  v1 = a1;
  v2 = _MAPreferencesCopyValue(v1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFArrayGetTypeID())
    {
      v3 = _MAPreferencesCopyArrayOfStrings(v1, @"CFArray", v3);
    }

    else
    {
      v5 = _MADLog(@"V2");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[MA_PREFS] {_MAPreferencesCopyNSArrayOfStringsValue} invalid type for key:%{public}@ | expecting array of strings", &v7, 0xCu);
      }

      v3 = 0;
    }
  }

  return v3;
}

id _MAPreferencesGetAppBooleanValue(void *a1, _BYTE *a2)
{
  v3 = _MAPreferencesCopyValue(a1);
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = isKindOfClass ^ 1;
    v6 = isKindOfClass & 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v5 = 1;
  if (a2)
  {
LABEL_3:
    *a2 = v6;
  }

LABEL_4:
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 BOOLValue];
  }

  return v7;
}

uint64_t _MAPreferencesSetDataValue(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (v7)
  {
    v11 = _preferencesDomainProtectionDispatchQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___MAPreferencesSetDataValue_block_invoke;
    block[3] = &unk_4B2ED0;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = &v21;
    dispatch_sync(v11, block);

    v12 = v16;
  }

  else
  {
    v12 = _MADLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[MA_PREFS] {%{public}@} [%{public}@] nil preference key provided", buf, 0x16u);
    }
  }

  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v13 & 1;
}

void sub_30D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL isValidTypeForPreferences(void *a1)
{
  v1 = a1;
  v2 = v1;
  v6 = 0;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID() || (v4 = CFGetTypeID(v2), v4 == CFNumberGetTypeID()) || (v5 = CFGetTypeID(v2), v5 == CFBooleanGetTypeID()))
    {
      v6 = 1;
    }
  }

  return v6;
}

void _MAPreferencesSetKeyForValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _preferencesDomainProtectionDispatchQueue();
  dispatch_assert_queue_V2(v5);

  if (v4 && !isValidTypeForPreferences(v4))
  {
    v6 = _MADLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = CFGetTypeID(v4);
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "value of unsupported type %lu provided to set default was invalid", &v7, 0xCu);
    }
  }

  else
  {
    CFPreferencesSetAppValue(v3, v4, @"com.apple.MobileAsset");
  }
}

uint64_t _MAPreferencesSetValues(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = [NSString stringWithFormat:@"[MA_PREFS] {%@} [%@] (%@) |", @"com.apple.MobileAsset", v6, v7];
  if (v5)
  {
    v9 = _preferencesDomainProtectionDispatchQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___MAPreferencesSetValues_block_invoke;
    block[3] = &unk_4B2ED0;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v18 = &v19;
    dispatch_sync(v9, block);

    v10 = *(v20 + 24);
  }

  else
  {
    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}@ nil preference key provided", buf, 0xCu);
    }

    v10 = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);
  return v10 & 1;
}

void sub_31378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MAPreferencesSetStringValue(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = [NSString stringWithFormat:@"[MA_PREFS] {%@} [%@] (%@) |", @"com.apple.MobileAsset", v9, v10];
  if (v7)
  {
    v12 = _preferencesDomainProtectionDispatchQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___MAPreferencesSetStringValue_block_invoke;
    block[3] = &unk_4B2F38;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = &v23;
    dispatch_sync(v12, block);

    v13 = *(v24 + 24);
  }

  else
  {
    v14 = _MADLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}@ nil preference key provided", buf, 0xCu);
    }

    v13 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  return v13 & 1;
}

void sub_31768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MAPreferencesIsVerboseLoggingEnabled()
{
  if (_MAPreferencesIsVerboseLoggingEnabled_onceToken != -1)
  {
    _MAPreferencesIsVerboseLoggingEnabled_cold_1();
  }

  return _MAPreferencesIsVerboseLoggingEnabled__verboseLoggingEnabled;
}

uint64_t _MAPreferencesIsCentralizedCacheDeleteEnabled()
{
  if (_MAPreferencesIsCentralizedCacheDeleteEnabled_onceToken != -1)
  {
    _MAPreferencesIsCentralizedCacheDeleteEnabled_cold_1();
  }

  return _MAPreferencesIsCentralizedCacheDeleteEnabled__centralizedCacheDeleteEnabled;
}

void sub_37CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a17, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_3959C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_40E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_46E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4AF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5D610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5DAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}