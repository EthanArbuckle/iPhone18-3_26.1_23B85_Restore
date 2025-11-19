void sub_5E494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5EE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MobileAssetCreateDirectoryWorldWriteable(void *a1, int a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 path];
  if (a2)
  {
    v27[0] = NSFileOwnerAccountName;
    v27[1] = NSFileGroupOwnerAccountName;
    v28[0] = @"mobile";
    v28[1] = @"mobile";
    v27[2] = NSFilePosixPermissions;
    v27[3] = NSFileProtectionKey;
    v28[2] = &off_4F77A8;
    v28[3] = NSFileProtectionNone;
    v6 = v28;
    v7 = v27;
    v8 = 4;
  }

  else
  {
    v25[0] = NSFileOwnerAccountName;
    v25[1] = NSFileGroupOwnerAccountName;
    v26[0] = @"mobile";
    v26[1] = @"mobile";
    v25[2] = NSFileProtectionKey;
    v26[2] = NSFileProtectionNone;
    v6 = v26;
    v7 = v25;
    v8 = 3;
  }

  v9 = [NSDictionary dictionaryWithObjects:v6 forKeys:v7 count:v8];
  if ([v4 fileExistsAtPath:v5])
  {
    if ([v9 count])
    {
      v10 = _MADLog(@"V2");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Directory at %@ already exists, updating attributes", buf, 0xCu);
      }

      v19 = 0;
      v11 = [v4 setAttributes:v9 ofItemAtPath:v5 error:&v19];
      v12 = v19;
      if ((v11 & 1) == 0)
      {
        v13 = _MADLog(@"V2");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v22 = v5;
          v23 = 2114;
          v24 = v12;
          v14 = "Unable to set attributes for directory '%{public}@': %{public}@";
LABEL_16:
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "Creating directory at %@", buf, 0xCu);
    }

    v20 = 0;
    v16 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:v9 error:&v20];
    v12 = v20;
    if ((v16 & 1) == 0)
    {
      v13 = _MADLog(@"V2");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v22 = v3;
        v23 = 2114;
        v24 = v12;
        v14 = "Unable to create directory '%{public}@': %{public}@";
        goto LABEL_16;
      }

LABEL_17:

      v17 = 4;
      goto LABEL_22;
    }
  }

  if (usingCentralizedCachedelete())
  {
    enableDirStatsForDirectory(v5);
  }

  v17 = 0;
LABEL_22:

  return v17;
}

void sub_99A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_9A418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_9E420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_A7D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_A87B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void ___isAssetTypeAllowlisted_block_invoke(id a1)
{
  _isAssetTypeAllowlisted_explicitAllowList = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.DictionaryServices.dictionaryOSX");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.DictionaryServices.dictionary2");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.DictionaryServices.availableDictionaries");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.Font3");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.Font4");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.Font5");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.Font6");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.Font7");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.Font8");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.TextInput.SpellChecker");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.TextInput.Dictionary");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.WebKitBlocklist");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.MacinTalkVoiceAssets");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.LinguisticData");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.VoiceServices.CustomVoice");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.VoiceServices.CombinedVocalizerVoices");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.VoiceServicesVocalizerVoice");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.VoiceServices.VoiceResources");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.TuriCoreAsset");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.CreateMLAsset");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.Avatar");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.RawCamera.Camera");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.VoiceServices.GryphonVoice");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.TTSAXResourceModelAssets");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.SpotlightResources");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.LinguisticDataAuto");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.VideoEffect");
  CFSetAddValue(_isAssetTypeAllowlisted_explicitAllowList, @"com.apple.MobileAsset.DictionaryServices.dictionary3iOS");
  v1 = _isAssetTypeAllowlisted_explicitAllowList;

  CFSetAddValue(v1, @"com.apple.MobileAsset.DictionaryServices.dictionary3macOS");
}

void sub_AF2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return objc_opt_isKindOfClass();
}

id _MAHashDictionary(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = _hashCFDictionary(v5, v6, a3);
  if (v7)
  {
    v8 = v6;
    if (v8 == @"SHA-1")
    {
      v9 = 20;
    }

    else
    {
      if (v8 != @"SHA-256")
      {
        abort();
      }

      v9 = 32;
    }

    v7 = [NSData dataWithBytesNoCopy:v7 length:v9 freeWhenDone:1];
  }

  return v7;
}

_BYTE *_hashCFArray(const __CFArray *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    if (!CFArrayGetCount(a1))
    {
LABEL_51:
      v21 = 0;
      goto LABEL_52;
    }

    Count = CFArrayGetCount(a1);
    v8 = Count - 1;
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 0;
      v11 = 1;
      while (2)
      {
        v12 = v10;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
          v48.location = 0;
          v48.length = v9;
          CountOfValue = CFArrayGetCountOfValue(a1, v48, ValueAtIndex);
          if (CountOfValue >= 2)
          {
            break;
          }

          if (v9 == ++v12)
          {
            if (v11)
            {
              goto LABEL_17;
            }

            goto LABEL_47;
          }
        }

        v15 = CountOfValue;
        v16 = _MADLog(@"V2");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *&buf[4] = v12;
          v44 = 2048;
          v45 = v15;
          v46 = 2112;
          v47 = ValueAtIndex;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Hash duplicate found at index %i (%li duplicates found) with entry %@", buf, 0x1Cu);
        }

        v11 = 0;
        v10 = v12 + 1;
        if (v8 != v12)
        {
          continue;
        }

        break;
      }

LABEL_47:
      v40 = _MADLog(@"V2");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Failing to hash due to duplicate array entries", buf, 2u);
      }

      goto LABEL_51;
    }

LABEL_17:
    v21 = _hashCFType(@"array", v6, 1);
    if (CFArrayGetCount(a1) >= 1)
    {
      v22 = 0;
      if (v6 == @"SHA-1")
      {
        v23 = 20;
      }

      else
      {
        v23 = 32;
      }

      v24 = v6 == @"SHA-256" || v6 == @"SHA-1";
      while (1)
      {
        v25 = CFArrayGetValueAtIndex(a1, v22);
        v26 = _hashCFType(v25, v6, 1);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v28 = v6;
        if (!v24)
        {
          goto LABEL_53;
        }

        if (v21)
        {
          v29 = v21;
          v30 = v27;
          v31 = v23;
          do
          {
            v32 = *v30++;
            *v29++ ^= v32;
            --v31;
          }

          while (v31);
        }

        free(v27);
        if (CFArrayGetCount(a1) <= ++v22)
        {
          goto LABEL_52;
        }
      }

      free(v21);
      goto LABEL_51;
    }
  }

  else
  {
    if (v5 == @"SHA-1")
    {
      v17 = malloc(0x60uLL);
      CC_SHA1_Init(v17);
      v18 = &CC_SHA1_Final;
      v19 = &CC_SHA1_Update;
      v20 = 20;
    }

    else
    {
      if (v5 != @"SHA-256")
      {
LABEL_53:
        abort();
      }

      v17 = malloc(0x68uLL);
      CC_SHA256_Init(v17);
      v18 = &CC_SHA256_Final;
      v19 = &CC_SHA256_Update;
      v20 = 32;
    }

    v33 = _hashCFType(@"array", v6, 0);
    v19(v17, v33, v20);
    if (v33)
    {
      free(v33);
    }

    *buf = CFArrayGetCount(a1);
    v34 = CFNumberCreate(0, kCFNumberCFIndexType, buf);
    v35 = _hashCFNumber(v34, v6);
    v19(v17, v35, v20);
    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      free(v35);
    }

    valuePtr = 0;
    if (*buf >= 1)
    {
      do
      {
        v36 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
        v37 = _hashCFNumber(v36, v6);
        v19(v17, v37, v20);
        if (v36)
        {
          CFRelease(v36);
        }

        if (v37)
        {
          free(v37);
        }

        v38 = CFArrayGetValueAtIndex(a1, valuePtr);
        v39 = _hashCFType(v38, v6, 0);
        v19(v17, v39, v20);
        if (v39)
        {
          free(v39);
        }

        ++valuePtr;
      }

      while (valuePtr < *buf);
    }

    v21 = calloc(1uLL, v20);
    v18(v21, v17);
    free(v17);
  }

LABEL_52:

  return v21;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_B8B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MobileAssetGetWorkQueue()
{
  if (_MobileAssetGetWorkQueue_workQueueOnce != -1)
  {
    _MobileAssetGetWorkQueue_cold_1();
  }

  v1 = _MobileAssetGetWorkQueue_workQueue;

  return v1;
}

uint64_t _checkBooleanEntitlement(__SecTask *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);
  if (!v4)
  {
    v8 = error;
    v9 = _MADLog(@"Entitlement");
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = error;
        v11 = "Unable to look up client's entitlement: %{public}@";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_0, v12, v13, v11, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v3;
      v11 = "Client process does not have '%{public}@' entitlement";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

    v7 = 22;
    goto LABEL_19;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 != CFBooleanGetTypeID())
  {
    v14 = _MADLog(@"Entitlement");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v3;
      v15 = "Entitlement '%{public}@' is not a BOOLean";
LABEL_16:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }

LABEL_17:

    v7 = 22;
    goto LABEL_18;
  }

  if (!CFBooleanGetValue(v5))
  {
    v14 = _MADLog(@"Entitlement");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v3;
      v15 = "Value for entitlement %{public}@ is false";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v7 = 0;
LABEL_18:
  CFRelease(v5);
LABEL_19:
  if (error)
  {
    CFRelease(error);
  }

  return v7;
}

uint64_t _MobileAssetCheckConnectionEntitlementWithName(uint64_t a1, void *a2)
{
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  xpc_connection_get_audit_token();
  memset(&v8, 0, sizeof(v8));
  v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v8);
  if (v3)
  {
    v4 = v3;
    v5 = _checkBooleanEntitlement(v3, v2);
    CFRelease(v4);
  }

  else
  {
    v6 = _MADLog(@"Entitlement");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8.val[0]) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Couldn't create secure task", &v8, 2u);
    }

    v5 = 5;
  }

  return v5;
}

void _ASSetAssetServerURLForAssetType(void *a1, uint64_t a2, int a3)
{
  v8 = a1;
  v5 = @"MobileAssetServerURL";
  if (a2)
  {
    v6 = "";
    if (a3)
    {
      v6 = "default-";
    }

    v5 = [NSString stringWithFormat:@"%s%@-%@", v6, @"MobileAssetServerURL", a2];
  }

  v7 = [v8 absoluteString];
  _MAPreferencesSetStringValue(v5, v7, @"_ASSetAssetServerURLForAssetType", @"persisting server URL");
}

uint64_t repositoryUsesDownloadsFolder(void *a1)
{
  if ([a1 isEqualToString:@"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2"])
  {
    return 1;
  }

  v2 = _xpc_runtime_get_self_entitlements();
  v3 = v2;
  v1 = v2 && xpc_dictionary_get_BOOL(v2, "com.apple.private.mobileassetd.use-download-dir");

  return v1;
}

id getRepositoryStagingUrl(void *a1, int a2)
{
  if (a1)
  {
    v3 = [a1 stringByAppendingPathComponent:@"staging"];
    v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
    v5 = v4;
    if (v3 && a2 && v4)
    {
      v6 = ensureDirectory(v3);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id getRepositoryDownloadsUrl(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && repositoryUsesDownloadsFolder(v3))
  {
    v5 = [v4 stringByAppendingPathComponent:@"downloadDir"];
    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
    v7 = v6;
    if (v5)
    {
      if (a2)
      {
        if (v6)
        {
          DirectoryWorldWriteable = _MobileAssetCreateDirectoryWorldWriteable(v6, 1);
          if (DirectoryWorldWriteable)
          {
            v9 = DirectoryWorldWriteable;
            v10 = _MADLog(@"DownloadSession");
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v12 = 138543618;
              v13 = v5;
              v14 = 1024;
              v15 = v9;
              _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Could not make temporary directory %{public}@ error %d", &v12, 0x12u);
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id getPathToStagedFile(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = repositoryPath(a1);
  v7 = getRepositoryStagingUrl(v6, a3);

  v8 = 0;
  if (v5 && v7)
  {
    v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:0];
  }

  return v8;
}

id getPathToTempDownloadFile(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = repositoryPath(a1);
  v7 = getRepositoryDownloadsUrl(v6, a3);

  v8 = 0;
  if (v5 && v7)
  {
    v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:0];
  }

  return v8;
}

id getLocalUrlFromTypeAndIdWithPurpose(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = repositoryPath(v9);
  v11 = getLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(v9, v8, a3, v10, v7);

  return v11;
}

id getAutoLocalUrlFromTypeWithPurpose(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = repositoryPath(v6);
  v8 = getAutoLocalUrlFromTypeGivenDefaultRepoWithPurpose(v6, a2, v7, v5);

  return v8;
}

id getAutoLocalUrlFromTypeAndIdWithPurpose(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = repositoryPath(v7);
    if (v11)
    {
      v10 = getAutoLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(v7, v8, a3, v11, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void sub_C575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void _securemobileassetbundle_log(int a1, uint64_t a2)
{
  if (a1 >= 4)
  {
    if ((a1 - 4) >= 3)
    {
      v7 = _MADLog(@"SecureMA");
      v3 = v7;
      if (a1 >= 7)
      {
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_9;
        }

        v8 = 136315138;
        v9 = a2;
        v4 = v3;
        v5 = OS_LOG_TYPE_DEBUG;
        goto LABEL_8;
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      v9 = a2;
    }

    else
    {
      v3 = _MADLog(@"SecureMA");
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      v9 = a2;
    }

    v4 = v3;
    v5 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = a2;
    v4 = v3;
    v5 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_0, v4, v5, "[SMA] %s", &v8, 0xCu);
  }

LABEL_9:
}

void sub_CB6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_CD440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15, unsigned int a16, unsigned int a17)
{
  __os_cleanup_close(&a14);
  __os_cleanup_ioclose(&a16);
  __os_cleanup_iorelease(&a17);
  if (v17)
  {
    CFRelease(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t __os_cleanup_iorelease(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      __os_cleanup_iorelease_cold_1(&v2, v3);
    }
  }

  return result;
}

uint64_t __os_cleanup_ioclose(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      __os_cleanup_ioclose_cold_1(&v2, v3);
    }
  }

  return result;
}

uint64_t __os_cleanup_close(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      __os_cleanup_close_cold_1(&v2, v3);
    }
  }

  return result;
}

void sub_CDD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, int a24, unsigned int a25)
{
  __os_cleanup_iorelease(&a25);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  __os_cleanup_iorelease(&a23);
  _Unwind_Resume(a1);
}

id NSStringFromCFType(void *a1)
{
  if (a1)
  {
    CFRetain(a1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = a1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = a1;
        if ([v3 bytes])
        {
          v2 = [[NSString alloc] initWithBytes:objc_msgSend(v3 length:"bytes") encoding:{objc_msgSend(v3, "length"), 4}];
        }

        else
        {
          v2 = 0;
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL eject(void *a1, NSObject **a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lastPathComponent];
    v6 = IOBSDNameMatching(kIOMainPortDefault, 0, [v5 fileSystemRepresentation]);

    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (!MatchingService)
    {
      v52[0] = NSDebugDescriptionErrorKey;
      v52[1] = @"BSD Name";
      v53[0] = @"eject failed: could not find matching IOService for volume";
      v17 = [v4 lastPathComponent];
      v53[1] = v17;
      v22 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
      v20 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:113 userInfo:v22];

      goto LABEL_30;
    }

    v8 = MatchingService;
    iterator[0] = 0;
    v9 = IORegistryEntryCreateIterator(MatchingService, "IOService", 3u, iterator);
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v11 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    if (v9)
    {
      v12 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v13 = v9;
      v56 = NSDebugDescriptionErrorKey;
      v14 = [NSString stringWithFormat:@"IORegistryEntryCreateIterator() failed: 0x%04x", v9 & 0x3FFF];
      v57 = v14;
      v15 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v16 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v17 = [NSError errorWithDomain:@"IOKitErrorDomain" code:v13 userInfo:v16];

      if (v17)
      {
LABEL_5:
        v18 = v12[237];
        v54[0] = NSDebugDescriptionErrorKey;
        v54[1] = NSUnderlyingErrorKey;
        v55[0] = @"eject failed";
        v55[1] = v17;
        v19 = [v15[224] dictionaryWithObjects:v55 forKeys:v54 count:2];
        v20 = [v18 errorWithDomain:@"SecureMobileAssetErrorDomain" code:113 userInfo:v19];

LABEL_29:
        IOObjectRelease(v8);
LABEL_30:

        if (a2 && v20)
        {
          v46 = v20;
          *a2 = v20;
        }

        v21 = v20 == 0;
        goto LABEL_34;
      }

LABEL_28:
      v20 = 0;
      goto LABEL_29;
    }

    v23 = IOIteratorNext(iterator[0]);
    if (!v23)
    {
      v12 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v15 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      v17 = 0;
LABEL_27:
      IOObjectRelease(iterator[0]);
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_28;
    }

    v24 = v23;
    v48 = v8;
    v49 = a2;
    v50 = v4;
    v25 = 0;
    v17 = 0;
    v26 = kCFAllocatorDefault;
    while (1)
    {
      if (!IOObjectConformsTo(v24, "IOMedia"))
      {
        goto LABEL_17;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v24, @"BSD Name", v26, 0);
      if (!CFProperty)
      {
        goto LABEL_17;
      }

      v28 = CFProperty;
      v29 = [@"/dev/" stringByAppendingPathComponent:CFProperty];

      CFRelease(v28);
      v25 = v29;
      v30 = open([v29 fileSystemRepresentation], 0);
      if ((v30 & 0x80000000) == 0)
      {
        break;
      }

      v34 = *__error();
      v35 = p_weak_ivar_lyt[237];
      v36 = v34;
      v60[0] = NSDebugDescriptionErrorKey;
      v37 = [NSString stringWithUTF8String:strerror(v34)];
      v61[0] = v37;
      v61[1] = @"open";
      v60[1] = @"syscall";
      v60[2] = @"devNodePath";
      v61[2] = v25;
      v38 = [v11[224] dictionaryWithObjects:v61 forKeys:v60 count:3];
      v39 = [v35 errorWithDomain:NSPOSIXErrorDomain code:v36 userInfo:v38];

      v26 = kCFAllocatorDefault;
      v32 = 0;
      v17 = v39;
LABEL_18:
      IOObjectRelease(v24);
      v33 = IOIteratorNext(iterator[0]);
      if (v33)
      {
        v24 = v33;
        if (v32)
        {
          continue;
        }
      }

      v12 = p_weak_ivar_lyt;
      v15 = v11;

      a2 = v49;
      v4 = v50;
      v8 = v48;
      goto LABEL_27;
    }

    v31 = v30;
    if (ioctl(v30, 0x20006415uLL, 0) == -1)
    {
      v40 = *__error();
      v32 = v40 == 25;
      if (v40 != 25)
      {
        v41 = p_weak_ivar_lyt[237];
        v58[0] = NSDebugDescriptionErrorKey;
        v42 = [NSString stringWithUTF8String:strerror(v40)];
        v59[0] = v42;
        v59[1] = @"ioctl";
        v58[1] = @"syscall";
        v58[2] = @"devNodePath";
        v59[2] = v25;
        [v11[224] dictionaryWithObjects:v59 forKeys:v58 count:3];
        v44 = v43 = v11;
        v45 = [v41 errorWithDomain:NSPOSIXErrorDomain code:v40 userInfo:v44];

        v11 = v43;
        p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);

        v17 = v45;
        v26 = kCFAllocatorDefault;
      }

      close(v31);
      goto LABEL_18;
    }

    close(v31);
LABEL_17:
    v32 = 1;
    goto LABEL_18;
  }

  v20 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(iterator[0]) = 0;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "[SMA] Nothing to eject!", iterator, 2u);
  }

  v21 = 1;
LABEL_34:

  return v21;
}

void sub_CFBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14)
{
  __os_cleanup_close(&a14);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_D0818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  __os_cleanup_close(&a18);
  objc_sync_exit(v18);
  _Unwind_Resume(a1);
}

BOOL getMappedExclavePath(int a1, void *a2, void *a3)
{
  __count = 0;
  v35 = 0;
  if (fsctl("/", 0xC010411BuLL, &__count, 0))
  {
    v6 = *__error();
    if (v6 != 25)
    {
      v7 = +[NSMutableDictionary dictionary];
      v8 = strerror(v6);
      if (v8)
      {
        v9 = [NSString stringWithUTF8String:v8];
        [v7 setObject:v9 forKeyedSubscript:NSDebugDescriptionErrorKey];
      }

      [v7 setObject:@"fsctl()" forKeyedSubscript:@"syscall"];
      [v7 setObject:@"FSIOC_EXCLAVE_FS_GET_BASE_DIRS" forKeyedSubscript:@"request"];
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:v7];

      v11 = 0;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v12 = __count;
  if (!__count)
  {
LABEL_12:
    v11 = 0;
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v13 = calloc(__count, 0x20uLL);
  v11 = v13;
  if (!v13)
  {
    v19 = 0;
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    v11 = 0;
    if (a2)
    {
      goto LABEL_22;
    }

LABEL_15:
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v35 = v13;
  if (fsctl("/", 0xC010411BuLL, &__count, 0))
  {
    v14 = +[NSMutableDictionary dictionary];
    v15 = *__error();
    v16 = strerror(v15);
    if (v16)
    {
      v17 = [NSString stringWithUTF8String:v16];
      [v14 setObject:v17 forKeyedSubscript:NSDebugDescriptionErrorKey];
    }

    [v14 setObject:@"fsctl()" forKeyedSubscript:@"syscall"];
    [v14 setObject:@"FSIOC_EXCLAVE_FS_GET_BASE_DIRS" forKeyedSubscript:@"request"];
    v18 = [NSNumber numberWithUnsignedInt:v12];
    [v14 setObject:v18 forKeyedSubscript:@"alloc_count"];

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:v14];
  }

  else
  {
    v20 = __count;
    if (__count > v12)
    {
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      goto LABEL_21;
    }

    if (!__count)
    {
      goto LABEL_13;
    }

    v24 = v11 + 2;
    while (*(v24 - 4) != a1)
    {
      v24 += 4;
      if (!--v20)
      {
        goto LABEL_13;
      }
    }

    v25 = *(v24 - 12);
    if ((fsgetpath(v36, 0x400uLL, (v24 - 12), *v24) & 0x8000000000000000) == 0)
    {
      v26 = realpath_DARWIN_EXTSN(v36, 0);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v36;
      }

      v19 = [NSString stringWithUTF8String:v27];
      free(v26);
LABEL_14:
      v10 = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v28 = +[NSMutableDictionary dictionary];
    v29 = *__error();
    v30 = strerror(v29);
    if (v30)
    {
      v31 = [NSString stringWithUTF8String:v30];
      [v28 setObject:v31 forKeyedSubscript:NSDebugDescriptionErrorKey];
    }

    [v28 setObject:@"fsgetpath()" forKeyedSubscript:@"syscall"];
    v32 = [NSString stringWithFormat:@"0x%llx", v25];
    [v28 setObject:v32 forKeyedSubscript:@"fsid"];

    v33 = [NSString stringWithFormat:@"%llu", *v24];
    [v28 setObject:v33 forKeyedSubscript:@"inode"];

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v29 userInfo:v28];
  }

LABEL_21:
  v19 = 0;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_22:
  v21 = v19;
  *a2 = v19;
  if (a3)
  {
LABEL_23:
    v22 = v10;
    *a3 = v10;
  }

LABEL_24:
  free(v11);

  return v10 == 0;
}

uint64_t unregisterMappedExclavePath(const char *a1, void *a2)
{
  v14 = 0;
  v4 = fsctl(a1, 0x8004411AuLL, &v14, 0);
  if (!v4)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = *__error();
  v6 = v5;
  v7 = strerror(v5);
  v8 = +[NSMutableDictionary dictionary];
  if (v7)
  {
    v9 = [NSString stringWithUTF8String:v7];
    [v8 setObject:v9 forKeyedSubscript:NSDebugDescriptionErrorKey];
  }

  [v8 setObject:@"fsctl()" forKeyedSubscript:@"syscall"];
  [v8 setObject:@"FSIOC_EXCLAVE_FS_UNREGISTER" forKeyedSubscript:@"request"];
  v10 = [NSString stringWithUTF8String:a1];
  [v8 setObject:v10 forKeyedSubscript:@"base_dir"];

  v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:v8];

  if (a2)
  {
LABEL_5:
    v12 = v11;
    *a2 = v11;
  }

LABEL_6:

  return v4;
}

void ___cryptex1_product_class_block_invoke(id a1)
{
  if (img4_chip_instantiate())
  {
    _os_assumes_log();
  }

  v1 = [NSString stringWithFormat:@"0x%lX", 0];
  v2 = _cryptex1_product_class_productClass;
  _cryptex1_product_class_productClass = v1;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void sub_D502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_DA428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

uint64_t _MobileAssetVerifyAssetMapSignature(const __CFDictionary *a1)
{
  cf = 0;
  v2 = CFDictionaryGetValue(a1, @"AssetType");
  if (!v2)
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "No asset-type in asset map";
LABEL_36:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    }

LABEL_66:
    v18 = 0;
    v38 = 7;
    goto LABEL_67;
  }

  Value = CFDictionaryGetValue(a1, @"SignatureRSA-SHA256");
  v4 = Value;
  if (!Value)
  {
    v5 = _MADLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v121 = @"SignatureRSA-SHA256";
      v122 = 2112;
      v123 = @"Signature";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "No %@ key in asset map, falling back to legacy key %@", buf, 0x16u);
    }

    v4 = CFDictionaryGetValue(a1, @"Signature");
    if (!v4)
    {
      v8 = _MADLog(@"V2");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "No signature in asset map";
        goto LABEL_36;
      }

      goto LABEL_66;
    }
  }

  v6 = CFGetTypeID(v4);
  if (v6 != CFDataGetTypeID())
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Signature data is not CFData";
      goto LABEL_36;
    }

    goto LABEL_66;
  }

  v7 = CFDictionaryGetValue(a1, @"CertificateChain");
  if (!v7)
  {
    v8 = CFDictionaryGetValue(a1, @"Certificate");
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [NSData dataWithBytesNoCopy:&iPhoneCACert_crt length:1015 freeWhenDone:0];
        v16 = [NSData dataWithBytesNoCopy:&iphoneCACert2 length:1096 freeWhenDone:0];
        v117[0] = v8;
        v117[1] = v15;
        v117[2] = v16;
        v13 = [NSArray arrayWithObjects:v117 count:3];

        goto LABEL_26;
      }

      v22 = _MADLog(@"V2");
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      *buf = 0;
      v23 = "Certificate data is not an NSData";
      goto LABEL_64;
    }

    v22 = _MADLog(@"V2");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 0;
    v23 = "No certificate in asset map";
LABEL_64:
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_65;
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = _MADLog(@"V2");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 0;
    v23 = "CertificateChain is not an NSArray";
    goto LABEL_64;
  }

  if (![v8 count])
  {
    v22 = _MADLog(@"V2");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "The CertificateChain array is empty";
      goto LABEL_64;
    }

LABEL_65:

    goto LABEL_66;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v8 = v8;
  v9 = [v8 countByEnumeratingWithState:&v105 objects:v116 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v106;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v106 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v37 = _MADLog(@"V2");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "A Certificate inside the CertificateChain is not an NSData", buf, 2u);
          }

          goto LABEL_66;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v105 objects:v116 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = v8;
LABEL_26:

  if (__isPlatformVersionAtLeast(2, 18, 6, 0) && objc_opt_class() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v104 = 0;
    v17 = [MAThirdPartyCompatibility permitThirdPartySigningForAssetType:v2 outOrganizations:&v104];
    v18 = v104;
    if (v17)
    {
      v19 = _MobileAssetVerifyThirdPartySigning(v13, v18, &cf);
      if (!v19)
      {
        goto LABEL_130;
      }

      v20 = v19;
      v21 = _MADLog(@"V2");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v121) = v20;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Certificate is not valid for 3rd party asset map signing: %d", buf, 8u);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v8 = v13;
  trust = 0;
  result = kSecTrustResultInvalid;
  v24 = _MADLog(@"V2");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v118 = 0;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Obtaining public key from certificate", v118, 2u);
  }

  cf = 0;
  MobileAsset = SecPolicyCreateMobileAsset();
  if (!MobileAsset)
  {
    v40 = _MADLog(@"V2");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v118 = 0;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "Could not create MobileAsset certificate policy", v118, 2u);
    }

    v38 = 5;
LABEL_91:
    if ((os_variant_has_internal_content() & 1) == 0 && !os_variant_allows_internal_security_policies())
    {
      v63 = _MADLog(@"V2");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v121) = v38;
        v64 = "Could not verify production asset map signing: %d";
LABEL_137:
        _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 8u);
      }

LABEL_138:

      goto LABEL_67;
    }

    v47 = _MADLog(@"V2");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Attempting to verify Development signed metadata", buf, 2u);
    }

    v8 = v8;
    trust = 0;
    cf = 0;
    result = kSecTrustResultInvalid;
    MobileAssetDevelopment = SecPolicyCreateMobileAssetDevelopment();
    if (!MobileAssetDevelopment)
    {
      v62 = _MADLog(@"V2");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *v118 = 0;
        _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "Could not create X509 policy", v118, 2u);
      }

      v38 = 5;
      goto LABEL_135;
    }

    policiesa = MobileAssetDevelopment;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v50 = Mutable;
    if (Mutable)
    {
      v94 = v18;
      v96 = v4;
      v51 = Mutable;
      v100 = v13;
      v113 = 0u;
      v111 = 0u;
      v112 = 0u;
      v110 = 0u;
      theArraya = v8;
      v52 = [(__CFArray *)theArraya countByEnumeratingWithState:&v110 objects:buf count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v111;
        while (2)
        {
          for (j = 0; j != v53; j = j + 1)
          {
            if (*v111 != v54)
            {
              objc_enumerationMutation(theArraya);
            }

            v56 = SecCertificateCreateWithData(kCFAllocatorDefault, *(*(&v110 + 1) + 8 * j));
            if (!v56)
            {
              v65 = _MADLog(@"V2");
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                *v118 = 0;
                _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "Could not create certificate from data", v118, 2u);
              }

              v66 = 0;
              v38 = 5;
              v13 = v100;
              v50 = v51;
              v18 = v94;
              v4 = v96;
              goto LABEL_125;
            }

            v57 = v56;
            CFArrayAppendValue(v51, v56);
            CFRelease(v57);
          }

          v53 = [(__CFArray *)theArraya countByEnumeratingWithState:&v110 objects:buf count:16];
          if (v53)
          {
            continue;
          }

          break;
        }
      }

      v50 = v51;
      v58 = SecTrustCreateWithCertificates(v51, policiesa, &trust);
      if (v58)
      {
        v59 = v58;
        v60 = _MADLog(@"V2");
        v13 = v100;
        v18 = v94;
        v4 = v96;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *v118 = 134217984;
          v119 = v59;
          v61 = "Could not create secure trust object: %ld";
LABEL_122:
          v70 = v60;
          v71 = 12;
LABEL_123:
          _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, v61, v118, v71);
          goto LABEL_124;
        }

        goto LABEL_124;
      }

      v68 = SecTrustEvaluate(trust, &result);
      v13 = v100;
      v18 = v94;
      v4 = v96;
      if (v68)
      {
        v69 = v68;
        v60 = _MADLog(@"V2");
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *v118 = 134217984;
          v119 = v69;
          v61 = "Could not evaluate trust: %ld";
          goto LABEL_122;
        }

LABEL_124:

        v66 = 0;
        v38 = 24;
        goto LABEL_125;
      }

      if (result != kSecTrustResultProceed && result != kSecTrustResultUnspecified)
      {
        v60 = _MADLog(@"V2");
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_124;
        }

        *v118 = 134217984;
        v119 = result;
        v61 = "Certificate trust evaluation failed: %ld";
        goto LABEL_122;
      }

      v88 = SecTrustCopyPublicKey(trust);
      if (!v88)
      {
        v60 = _MADLog(@"V2");
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_124;
        }

        *v118 = 0;
        v61 = "Could not extract public key from trust object";
        v70 = v60;
        v71 = 2;
        goto LABEL_123;
      }

      v38 = 0;
      cf = v88;
      v66 = 1;
    }

    else
    {
      v67 = _MADLog(@"V2");
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *v118 = 0;
        _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "Failed to allocate array", v118, 2u);
      }

      v66 = 0;
      v38 = 5;
    }

LABEL_125:
    CFRelease(policiesa);
    if (trust)
    {
      CFRelease(trust);
      trust = 0;
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v66)
    {
      goto LABEL_130;
    }

LABEL_135:
    v63 = _MADLog(@"V2");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v121) = v38;
      v64 = "Could not verify asset map signing: %d";
      goto LABEL_137;
    }

    goto LABEL_138;
  }

  policies = MobileAsset;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (theArray)
  {
    v93 = Value;
    v95 = v4;
    v99 = v13;
    v113 = 0u;
    v111 = 0u;
    v112 = 0u;
    v110 = 0u;
    v26 = v8;
    v27 = [v26 countByEnumeratingWithState:&v110 objects:buf count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v111;
      while (2)
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v111 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = SecCertificateCreateWithData(kCFAllocatorDefault, *(*(&v110 + 1) + 8 * k));
          if (!v31)
          {
            v41 = _MADLog(@"V2");
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *v118 = 0;
              _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "Could not create certificate from data", v118, 2u);
            }

            v42 = 0;
            v38 = 5;
            v33 = policies;
            v13 = v99;
            goto LABEL_84;
          }

          v32 = v31;
          CFArrayAppendValue(theArray, v31);
          CFRelease(v32);
        }

        v28 = [v26 countByEnumeratingWithState:&v110 objects:buf count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v33 = policies;
    v34 = SecTrustCreateWithCertificates(theArray, policies, &trust);
    if (v34)
    {
      v35 = v34;
      v36 = _MADLog(@"V2");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v118 = 134217984;
        v119 = v35;
        v26 = v36;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "Could not create secure trust object: %ld", v118, 0xCu);
      }

      else
      {
        v26 = v36;
      }

      v42 = 0;
      v38 = 24;
      v13 = v99;
LABEL_84:
      v4 = v95;
      goto LABEL_85;
    }

    v44 = SecTrustEvaluate(trust, &result);
    if (v44)
    {
      v45 = v44;
      v46 = _MADLog(@"V2");
      v4 = v95;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *v118 = 134217984;
        v119 = v45;
        v26 = v46;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "Could not evaluate trust: %ld", v118, 0xCu);
      }

      else
      {
        v26 = v46;
      }

      v42 = 0;
      v38 = 24;
      v13 = v99;
      goto LABEL_85;
    }

    if (result == kSecTrustResultProceed || result == kSecTrustResultUnspecified)
    {
      v87 = SecTrustCopyPublicKey(trust);
      v13 = v99;
      v4 = v95;
      if (v87)
      {
        v42 = v87;
        cf = CFRetain(v87);
        v26 = _MADLog(@"V2");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v118 = 0;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Successfully extracted public key from trust object", v118, 2u);
        }

        v38 = 0;
        goto LABEL_85;
      }

      v89 = _MADLog(@"V2");
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *v118 = 0;
        v90 = "Could not extract public key from trust object";
        v26 = v89;
        v91 = v89;
        v92 = 2;
        goto LABEL_180;
      }
    }

    else
    {
      v89 = _MADLog(@"V2");
      v13 = v99;
      v4 = v95;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *v118 = 134217984;
        v119 = result;
        v90 = "Certificate trust evaluation failed: %ld";
        v26 = v89;
        v91 = v89;
        v92 = 12;
LABEL_180:
        _os_log_impl(&dword_0, v91, OS_LOG_TYPE_ERROR, v90, v118, v92);
LABEL_182:
        v42 = 0;
        v38 = 24;
LABEL_85:

        CFRelease(theArray);
        Value = v93;
        goto LABEL_86;
      }
    }

    v26 = v89;
    goto LABEL_182;
  }

  v43 = _MADLog(@"V2");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *v118 = 0;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "Failed to allocate array", v118, 2u);
  }

  v42 = 0;
  v38 = 5;
  v33 = policies;
LABEL_86:
  CFRelease(v33);
  if (trust)
  {
    CFRelease(trust);
    trust = 0;
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v38)
  {
    goto LABEL_91;
  }

LABEL_130:
  v72 = _MADLog(@"V2");
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "Verifying metadata signature...", buf, 2u);
  }

  v73 = cf;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
  if (!MutableCopy)
  {
    v77 = _MADLog(@"V2");
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "Could not copy asset map dictionary", buf, 2u);
    }

    v38 = 5;
    goto LABEL_157;
  }

  v75 = MutableCopy;
  if (Value)
  {
    v76 = @"SHA-256";
    CFDictionaryRemoveValue(v75, @"SignatureRSA-SHA256");
  }

  else
  {
    v76 = @"SHA-1";
  }

  CFDictionaryRemoveValue(v75, @"Signature");
  CFDictionaryRemoveValue(v75, @"Certificate");
  CFDictionaryRemoveValue(v75, @"SigningKey");
  v78 = _MAHashDictionary(v75, v76, Value == 0);
  if (!v78)
  {
    v84 = _MADLog(@"V2");
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "Could not hash asset map dictionary", buf, 2u);
    }

    v38 = 23;
    goto LABEL_154;
  }

  v101 = v13;
  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v4);
  if (Value)
  {
    v81 = 32772;
  }

  else
  {
    v81 = 32770;
  }

  v82 = SecKeyRawVerify(v73, v81, [v78 bytes], objc_msgSend(v78, "length"), BytePtr, Length);
  if (v82)
  {
    v83 = v82;
    v84 = _MADLog(@"V2");
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v121) = v83;
      _os_log_impl(&dword_0, v84, OS_LOG_TYPE_ERROR, "Could not verify signature using public key: %d", buf, 8u);
    }

    v38 = 24;
    v13 = v101;
LABEL_154:

    goto LABEL_156;
  }

  v38 = 0;
  v13 = v101;
LABEL_156:
  CFRelease(v75);

  if (!v38)
  {
    v86 = _MADLog(@"V2");
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "Successfully verified metadata signature...", buf, 2u);
    }

    v38 = 0;
    goto LABEL_163;
  }

LABEL_157:
  v85 = _MADLog(@"V2");
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "Could not validate asset map signature", buf, 2u);
  }

LABEL_163:
  v8 = v13;
LABEL_67:

  if (cf)
  {
    CFRelease(cf);
  }

  return v38;
}

uint64_t _MobileAssetVerifyThirdPartySigning(void *a1, void *a2, CFTypeRef *a3)
{
  v5 = a1;
  v6 = a2;
  if (__isPlatformVersionAtLeast(2, 18, 6, 0))
  {
    trust = 0;
    v7 = _MADLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Third Party: Obtaining public key from certificate", buf, 2u);
    }

    if (a3)
    {
      *a3 = 0;
    }

    v8 = [v6 allObjects];
    if (!v8)
    {
      v24 = _MADLog(@"V2");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Third Party: Not organizations were provided for 3P signing verification", buf, 2u);
      }

      v23 = 24;
      goto LABEL_55;
    }

    if (!&_SecPolicyCreate3PMobileAsset)
    {
      v25 = _MADLog(@"V2");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Third Party: Trust evaluation was performed on an OS that does not support SecPolicyCreate3PMobileAsset().", buf, 2u);
      }

      v23 = 10;
      goto LABEL_55;
    }

    v9 = SecPolicyCreate3PMobileAsset();
    if (!v9)
    {
      v26 = _MADLog(@"V2");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Third Party: Could not create MobileAsset 3P certificate policy", buf, 2u);
      }

      v23 = 5;
      goto LABEL_55;
    }

    v10 = v9;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      v29 = _MADLog(@"V2");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Third Party: Failed to allocate array", buf, 2u);
      }

      v28 = 0;
      v23 = 5;
      goto LABEL_51;
    }

    v12 = Mutable;
    policies = v10;
    v34 = v5;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = SecCertificateCreateWithData(kCFAllocatorDefault, *(*(&v36 + 1) + 8 * i));
          if (!v18)
          {
            v27 = _MADLog(@"V2");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Could not create certificate from data", buf, 2u);
            }

            v28 = 0;
            v23 = 5;
            v10 = policies;
            v5 = v34;
            goto LABEL_50;
          }

          v19 = v18;
          CFArrayAppendValue(v12, v18);
          CFRelease(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v10 = policies;
    v20 = SecTrustCreateWithCertificates(v12, policies, &trust);
    if (v20)
    {
      v21 = v20;
      v13 = _MADLog(@"V2");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v42 = v21;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Third Party: Could not create secure trust object: %ld", buf, 0xCu);
      }
    }

    else
    {
      error = 0;
      if (SecTrustEvaluateWithError(trust, &error))
      {
        v30 = SecTrustCopyPublicKey(trust);
        if (v30)
        {
          v28 = v30;
          v5 = v34;
          if (a3)
          {
            *a3 = CFRetain(v30);
          }

          v13 = _MADLog(@"V2");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Third Party: Successfully extracted public key from trust object", buf, 2u);
          }

          v23 = 0;
        }

        else
        {
          v13 = _MADLog(@"V2");
          v5 = v34;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Third Party: Could not extract public key from trust object", buf, 2u);
          }

          v28 = 0;
          v23 = 24;
        }

        goto LABEL_50;
      }

      v13 = error;
      v31 = _MADLog(@"V2");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v13;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Third Party: Could not evaluate trust: %@", buf, 0xCu);
      }
    }

    v28 = 0;
    v23 = 24;
    v5 = v34;
LABEL_50:

    CFRelease(v12);
LABEL_51:
    CFRelease(v10);
    if (trust)
    {
      CFRelease(trust);
      trust = 0;
    }

    if (v28)
    {
      CFRelease(v28);
    }

LABEL_55:

    goto LABEL_56;
  }

  v22 = _MADLog(@"V2");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Third Party: Trust evaluation was performed on an OS that is not supported.", buf, 2u);
  }

  v23 = 10;
LABEL_56:

  return v23;
}

void MABrainLoadFeaturesOverrides()
{
  if (_MAPreferencesIsInternalAllowed())
  {
    v0 = _MAPreferencesCopyValue(@"SupportedFeaturesOverride");
    if (v0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v1 = _MADLog(@"Brain");
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          v5 = 138412290;
          v6 = v0;
          _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "[MAB] Overriding supported features: %@", &v5, 0xCu);
        }

        v2 = [&off_4F8368 mutableCopy];
        [v2 addEntriesFromDictionary:v0];
        v3 = [v2 copy];
        v4 = _brainSupportedFeatures;
        _brainSupportedFeatures = v3;
      }
    }
  }
}

void __downloadManagerDecodeClasses_block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:13];
  v3 = [v1 initWithArray:{v2, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
  v4 = downloadManagerDecodeClasses__downloadManagerDecodeClasses;
  downloadManagerDecodeClasses__downloadManagerDecodeClasses = v3;
}

id pallasStringParams()
{
  +[SUCoreDevice sharedDevice];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __pallasStringParams_block_invoke;
  v0 = block[3] = &unk_4B2AA0;
  v15 = v0;
  if (pallasStringParams_once != -1)
  {
    dispatch_once(&pallasStringParams_once, block);
  }

  v1 = [NSMutableDictionary alloc];
  v2 = [v1 initWithDictionary:pallasStringParams_params];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v0 hasSplat])
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v0 hasSplat])
      {
        v3 = @"true";
      }

      else
      {
        v3 = @"false";
      }

      [v2 setSafeObject:v3 forKey:@"SplatSupported"];
    }

    if (objc_opt_respondsToSelector())
    {
      v4 = [v0 splatCryptex1RestoreVersion];
      [v2 setSafeObject:v4 forKey:@"SplatRestoreVersion"];
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = [v0 splatCryptex1ProductVersion];
      [v2 setSafeObject:v5 forKey:@"SplatProductVersion"];
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [v0 splatCryptex1ProductVersionExtra];
      [v2 setSafeObject:v6 forKey:@"SplatProductVersionExtra"];
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [v0 splatCryptex1BuildVersion];
      [v2 setSafeObject:v7 forKey:@"SplatBuildVersion"];
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v0 splatCryptex1ReleaseType];
      [v2 setSafeObject:v8 forKey:@"SplatReleaseType"];
    }

    if (objc_opt_respondsToSelector())
    {
      if ([v0 hasSplatOnlyUpdateInstalled])
      {
        v9 = @"true";
      }

      else
      {
        v9 = @"false";
      }

      [v2 setSafeObject:v9 forKey:@"SplatHasUpdateInstalled"];
    }

    if (objc_opt_respondsToSelector())
    {
      if ([v0 hasEligibleRollback])
      {
        v10 = @"true";
      }

      else
      {
        v10 = @"false";
      }

      [v2 setSafeObject:v10 forKey:@"SplatHasEligibleRollback"];
    }

    if (objc_opt_respondsToSelector())
    {
      if ([v0 hasSemiSplatActive])
      {
        v11 = @"true";
      }

      else
      {
        v11 = @"false";
      }

      [v2 setSafeObject:v11 forKey:@"SplatHasSemiSplatActive"];
    }
  }

  v12 = [[NSDictionary alloc] initWithDictionary:v2];

  return v12;
}

void __pallasStringParams_block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = pallasStringParams_params;
  pallasStringParams_params = v2;

  v21[0] = @"BuildID";
  v21[1] = @"BuildVersion";
  v21[2] = @"DeviceName";
  v21[3] = @"DeviceVariant";
  v21[4] = @"ProductName";
  v21[5] = @"ProductType";
  v21[6] = @"ProductVersion";
  v21[7] = @"ReleaseType";
  v21[8] = @"SystemImageID";
  v21[9] = @"HardwarePlatform";
  [NSArray arrayWithObjects:v21 count:10];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = pallasStringParams_params;
        v11 = MGGetStringAnswer();
        [v10 setSafeObject:v11 forKey:{v9, v16}];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = pallasStringParams_params;
    v13 = [*(a1 + 32) hwModelString];
    [v12 setSafeObject:v13 forKey:@"HWModelStr"];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = pallasStringParams_params;
    v15 = [*(a1 + 32) restoreVersion];
    [v14 setSafeObject:v15 forKey:@"RestoreVersion"];
  }
}

void __isXMLAssetType_block_invoke(id a1)
{
  isXMLAssetType_assetTypes = [[NSSet alloc] initWithArray:&off_4F6EA8];

  _objc_release_x1();
}

uint64_t isExternalPreReleaseAssetType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (isExternalPreReleaseAssetType_once != -1)
  {
    isExternalPreReleaseAssetType_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  if (!v1)
  {
    goto LABEL_19;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !+[MABAACertManager isSupported])
  {
    goto LABEL_19;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = isExternalPreReleaseAssetType_assetTypes;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v2 isEqual:{v8, v11}] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", v8))
        {
          v9 = 1;
          goto LABEL_17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_17:

LABEL_20:
  return v9;
}

void __isExternalPreReleaseAssetType_block_invoke(id a1)
{
  isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 26, 0, 0);
  v2 = [NSSet alloc];
  if (isPlatformVersionAtLeast)
  {
    v3 = &off_4F6EC0;
  }

  else
  {
    v3 = &off_4F6ED8;
  }

  isExternalPreReleaseAssetType_assetTypes = [v2 initWithArray:v3];

  _objc_release_x1();
}

uint64_t isAppleDynamicOverridesSupportedAssetType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v11 = 0u, v12 = 0u, v9 = 0u, v10 = 0u, (v2 = [&off_4F6EF0 countByEnumeratingWithState:&v9 objects:v13 count:16]) != 0))
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(&off_4F6EF0);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v1 isEqual:v6] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", v6))
        {
          v7 = 1;
          goto LABEL_14;
        }
      }

      v3 = [&off_4F6EF0 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

void __getDownloadManager_block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = getDownloadManager_downloadManager;
  getDownloadManager_downloadManager = v1;

  v3 = getDownloadManager_downloadManager;

  [v3 initializeSessionsAsync];
}

NSString *_currentTimeInMilliseconds()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  return [NSString stringWithFormat:@"%llu", (v2 * 1000.0)];
}

uint64_t isForcedBuildPreferenceSetForAssetType(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!_MAPreferencesIsInternalAllowed())
  {
    v10 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v7 = [NSString stringWithFormat:@"%@-%@", v5, v6];
  v8 = _MAPreferencesCopyNSStringValue(v7);
  if (([v8 isEqualToString:&stru_4BD3F0]& 1) != 0 || isWellFormedSystemBuildId(v8))
  {
    v9 = _MADLog(@"Download");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Found %{public}@ preference override. Will force build '%{public}@'.", buf, 0x16u);
    }

    v10 = 1;
LABEL_7:

    goto LABEL_8;
  }

  if (v8)
  {
    v13 = _MADLog(@"Download");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543874;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Found %{public}@ preference override. Was not well formed, will ignore '%{public}@' (%{public}@).", buf, 0x20u);
    }

    v10 = 0;
    v9 = v8;
    v8 = 0;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
LABEL_15:

  return v10;
}

id getPmvUrl(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = [DownloadManager getPallasUrl:a1 assetType:a2];
  v4 = [v3 absoluteString];
  v5 = [v4 containsString:@"/assets"];

  if (v5)
  {
    v6 = [v3 URLByDeletingLastPathComponent];
    v7 = [v6 URLByAppendingPathComponent:@"pmv"];
  }

  else if (v2)
  {
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = @"https://gdmf.apple.com/v2/pmv";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "The pallas URL doesn't contain /assets, so we cannot substitute /pmv. Falling back to static PMV: %{public}@", &v10, 0xCu);
    }

    v7 = [NSURL URLWithString:@"https://gdmf.apple.com/v2/pmv"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_E7994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_E8110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v16 - 104));
  _Unwind_Resume(a1);
}

void sub_EB180(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 120), 8);
  os_activity_scope_leave((v1 - 80));
  _Unwind_Resume(a1);
}

__CFString *ensureNSStringFromData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

void addAdditionalParams(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = [v4 allKeys];
    v38 = [v6 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (!v38)
    {
      goto LABEL_59;
    }

    v7 = *v56;
    v36 = v3;
    v37 = *v56;
    v34 = v6;
    v35 = v5;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v56 != v7)
        {
          v9 = v8;
          objc_enumerationMutation(v6);
          v8 = v9;
        }

        v40 = v8;
        v10 = *(*(&v55 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v41 = v10;
        v11 = [v5 objectForKey:v10];
        if (!v11)
        {
          v12 = _MADLog(@"Download");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v10;
            v13 = v12;
            v14 = "Pallas request creation, nil value skipping key: %{public}@";
            goto LABEL_14;
          }

LABEL_15:

LABEL_16:
          v7 = v37;
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v3 setObject:v11 forKey:{v10, v34, v35}];
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = objc_alloc_init(NSMutableArray);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v16 = v11;
          v46 = [v16 countByEnumeratingWithState:&v51 objects:v64 count:16];
          if (v46)
          {
            v17 = *v52;
            v44 = v15;
            v45 = v11;
            v42 = *v52;
            v43 = v16;
            do
            {
              v18 = 0;
              do
              {
                if (*v52 != v17)
                {
                  objc_enumerationMutation(v16);
                }

                v19 = *(*(&v51 + 1) + 8 * v18);
                v20 = objc_autoreleasePoolPush();
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  [v15 addObject:{v19, v34, v35}];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v21 = v19;
                    v47 = 0u;
                    v48 = 0u;
                    v49 = 0u;
                    v50 = 0u;
                    v22 = v21;
                    v23 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
                    if (v23)
                    {
                      v24 = v23;
                      v25 = *v48;
                      while (2)
                      {
                        for (i = 0; i != v24; i = i + 1)
                        {
                          if (*v48 != v25)
                          {
                            objc_enumerationMutation(v22);
                          }

                          v27 = *(*(&v47 + 1) + 8 * i);
                          v28 = objc_autoreleasePoolPush();
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v29 = _MADLog(@"Download");
                            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Pallas request creation, array element dictionary entry key is not an NSString | skipped", buf, 2u);
                            }

                            goto LABEL_50;
                          }

                          v29 = [v22 objectForKey:v27];
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              v31 = _MADLog(@"Download");
                              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 138543362;
                                v60 = v27;
                                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Pallas request creation, array element dictionary entry key:%{public}@ holds value that is not an NSString or NSNumber | skipped", buf, 0xCu);
                              }

LABEL_50:
                              v11 = v45;
                              v16 = v43;

                              objc_autoreleasePoolPop(v28);
                              v15 = v44;
                              goto LABEL_51;
                            }
                          }

                          objc_autoreleasePoolPop(v28);
                        }

                        v24 = [v22 countByEnumeratingWithState:&v47 objects:v63 count:16];
                        if (v24)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v15 = v44;
                    [v44 addObject:v22];
                    v11 = v45;
                    v16 = v43;
LABEL_51:

                    v17 = v42;
                  }

                  else
                  {
                    v30 = _MADLog(@"Download");
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v60 = v19;
                      v61 = 2114;
                      v62 = v41;
                      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Pallas request creation, unknown value '%{public}@' skipped for key: %{public}@", buf, 0x16u);
                    }
                  }
                }

                objc_autoreleasePoolPop(v20);
                v18 = v18 + 1;
              }

              while (v18 != v46);
              v32 = [v16 countByEnumeratingWithState:&v51 objects:v64 count:16];
              v46 = v32;
            }

            while (v32);
          }

          v3 = v36;
          [v36 setObject:v15 forKey:v41];

          v6 = v34;
          v5 = v35;
          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = _MADLog(@"Download");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v10;
            v13 = v12;
            v14 = "Pallas request creation, invalid value for key: %{public}@";
LABEL_14:
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
          }

          goto LABEL_15;
        }

        [v3 removeObjectForKey:v10];
LABEL_17:

        objc_autoreleasePoolPop(context);
        v8 = v40 + 1;
      }

      while ((v40 + 1) != v38);
      v33 = [v6 countByEnumeratingWithState:&v55 objects:v65 count:16];
      v38 = v33;
      if (!v33)
      {
LABEL_59:

        break;
      }
    }
  }
}

__CFString *getCurrentOSType()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"user";
  }

  return v0;
}

id isCarrierReleaseType()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"Carrier"];

  return v1;
}

void sub_F146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v69 - 176), 8);
  _Block_object_dispose(&a69, 8);
  os_activity_scope_leave((v69 - 240));
  _Unwind_Resume(a1);
}

void sub_F8254(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 buf, int a30, __int16 a31, __int16 a32, void *a33)
{
  if (a2 == 1)
  {
    v34 = objc_begin_catch(a1);
    v35 = _MADLog(@"Download");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = *(v33 + 40);
      v37 = [v34 name];
      v38 = [v34 reason];
      LODWORD(buf) = 138543874;
      *(&buf + 4) = v36;
      WORD6(buf) = 2114;
      *(&buf + 14) = v37;
      a32 = 2114;
      a33 = v38;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "[BackgroundTaskOverride]: Failed to set backgroundTaskOverride for task:%{public}@ ExceptionName:%{public}@ ExceptionReason:%{public}@", &buf, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0xF8138);
  }

  _Unwind_Resume(a1);
}

void sub_FA260(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  os_activity_scope_leave((v1 - 208));
  _Unwind_Resume(a1);
}

void sub_FB750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v15 - 128));
  _Unwind_Resume(a1);
}

uint64_t SetupAssistantLibraryCore()
{
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SetupAssistantLibraryCore_frameworkLibrary;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t getBYSetupAssistantBundleIdentifierSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getBYSetupAssistantBundleIdentifierSymbolLoc_ptr;
  v6 = getBYSetupAssistantBundleIdentifierSymbolLoc_ptr;
  if (!getBYSetupAssistantBundleIdentifierSymbolLoc_ptr)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke;
    v2[3] = &unk_4B4400;
    v2[4] = &v3;
    __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_FFEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = SetupAssistantLibraryCore();
  if (!v2)
  {
    __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke_cold_1(&v4);
  }

  result = dlsym(v2, "BYSetupAssistantBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantBundleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_110354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_110A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_112D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_158800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_184A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_184F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A1ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL MABrainUtilityWalkDirectory(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = 0;
    while (1)
    {
      v11 = v10;
      v10 = [v8 nextObject];

      if (!v10)
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        [v8 skipDescendants];
      }

      if ((v6[2](v6, v10) & 1) == 0)
      {
        v12 = _MADLog(@"Brain");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "[MAB] Caller canceled enumeration", &v15, 2u);
        }

        break;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = _MADLog(@"Brain");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[MAB] Could not create directory enumerator for %@", &v15, 0xCu);
    }
  }

  return v8 != 0;
}

uint64_t MABrainUtilityAllowUnpersonalizedBrain()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"MABrainAllowUnpersonalized", 0) != 0;
  }

  return result;
}

uint64_t MABrainUtilityAllowCrossBuildGroupBrain()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"MABrainAllowCrossBuildGroup", 0) != 0;
  }

  return result;
}

uint64_t MABrainUtilityCrashLoopTestMode()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"MABrainCrashLoopTestMode", 0) != 0;
  }

  return result;
}

double MABrainUtilityScanInterval()
{
  if (!os_variant_has_internal_content())
  {
    return 604800.0;
  }

  v0 = _MAPreferencesCopyValue(@"MABrainScanInterval");
  v1 = 43200.0;
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v0 doubleValue];
      if (v2 >= 60.0)
      {
        v1 = v2;
      }

      else
      {
        v1 = 60.0;
      }
    }
  }

  return v1;
}

double MABrainUtilityReleaseTestModeInterval()
{
  v0 = _MAPreferencesCopyValue(@"MABrainReleaseTestModeInterval");
  if (v0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v1 = v0;
    [v1 doubleValue];
    v2 = 60.0;
    if (v3 > 60.0)
    {
      [v1 doubleValue];
      v2 = v4;
    }
  }

  else
  {
    v2 = 60.0;
  }

  return v2;
}

id MABrainUtilityGetImageUUID()
{
  memset(dst, 0, sizeof(dst));
  v0 = 0;
  v1 = &stru_20;
  while (*(&dword_0 + v1) != 27)
  {
    v1 = (v1 + *(&dword_4 + v1));
    if (++v0 == 70)
    {
      uuid_clear(dst);
      goto LABEL_6;
    }
  }

  uuid_copy(dst, &dword_8 + v1);
LABEL_6:
  memset(v5, 0, sizeof(v5));
  uuid_unparse_lower(dst, v5);
  v2 = [NSString stringWithCString:v5 encoding:1];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:&stru_4BD3F0];

  return v3;
}

uint64_t MABrainUtilityIsPasscodeLocked()
{
  v2[0] = kMKBUserSessionIDKey;
  v2[1] = @"ExtendedDeviceLockState";
  v3[0] = &off_4F7FA0;
  v3[1] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
  v0 = MKBGetDeviceLockState();
  return (v0 < 7) & (0x46u >> v0);
}

void MABrainUtilityScheduleDeviceUnlockAction(void *a1, void *a2, int *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (a3)
  {
    *a3 = -1;
  }

  if (MABrainUtilityIsPasscodeLocked())
  {
    out_token = -1;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __MABrainUtilityScheduleDeviceUnlockAction_block_invoke_407;
    handler[3] = &unk_4B4960;
    v10 = v8;
    v15 = v10;
    v16 = v9;
    v11 = v9;
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v7, handler);
    v12 = _MADLog(@"Brain");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v10;
      v23 = 1024;
      v24 = out_token;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[MAB] Device unlock action %@ is scheduled (token=%d)", buf, 0x12u);
    }

    if (a3)
    {
      *a3 = out_token;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __MABrainUtilityScheduleDeviceUnlockAction_block_invoke;
    block[3] = &unk_4B4078;
    v19 = v8;
    v20 = v9;
    v13 = v9;
    dispatch_async(v7, block);
  }
}

uint64_t __MABrainUtilityScheduleDeviceUnlockAction_block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = @"(unnamed)";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MAB] Device is already unlocked.  Starting action %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __MABrainUtilityScheduleDeviceUnlockAction_block_invoke_407(uint64_t a1, int a2)
{
  IsPasscodeLocked = MABrainUtilityIsPasscodeLocked();
  v5 = _MADLog(@"Brain");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (IsPasscodeLocked)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      if (!v7)
      {
        v7 = @"(unnamed)";
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[MAB] Device is still locked.  Deferring action %@ (token=%d)", &v9, 0x12u);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      if (!v8)
      {
        v8 = @"(unnamed)";
      }

      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[MAB] Device is now unlocked.  Starting action %@ (token=%d)", &v9, 0x12u);
    }

    notify_cancel(a2);
    (*(*(a1 + 40) + 16))();
  }
}

void MABrainUtilityCancelDeviceUnlockAction(int a1)
{
  if (a1 != -1)
  {
    v2 = notify_cancel(a1);
    v3 = _MADLog(@"Brain");
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        v12 = 67109634;
        v13 = a1;
        v14 = 1024;
        v15 = v5;
        v16 = 2080;
        v17 = v7;
        v8 = "[MAB] Error canceling device unlock action (token=%d). errno=%d (%s)";
        v9 = v4;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 24;
LABEL_7:
        _os_log_impl(&dword_0, v9, v10, v8, &v12, v11);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      v13 = a1;
      v8 = "[MAB] Canceled device unlock action (token=%d)...";
      v9 = v4;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 8;
      goto LABEL_7;
    }
  }
}

uint64_t MABrainUtilityWriteDictionary(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v17 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:v5 format:100 options:0 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v16 = v8;
    v10 = [v7 writeToFile:v6 options:0 error:&v16];
    v11 = v16;

    if (v10)
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v8;
  }

  v13 = _MADLog(@"Brain");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v19 = v6;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[MAB] Failed to write %@ with contents of dictionary:%@\n%@", buf, 0x20u);
  }

  if (a3)
  {
    v14 = v11;
    v12 = 0;
    *a3 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_10:

  return v12;
}

uint64_t MABrainUtilityForceSecureAssetMount()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return _MAPreferencesGetAppBooleanValue(@"SecureMobileAssetForceMount", 0) != 0;
  }

  return result;
}

uint64_t MABrainUtilityDeviceSupportsExclaves()
{
  if (MABrainUtilityDeviceSupportsExclaves_onceToken != -1)
  {
    MABrainUtilityDeviceSupportsExclaves_cold_1();
  }

  return MABrainUtilityDeviceSupportsExclaves_answer;
}

uint64_t MABrainUtilityConclaveEnabled()
{
  if (MABrainUtilityConclaveEnabled_onceToken != -1)
  {
    MABrainUtilityConclaveEnabled_cold_1();
  }

  return MABrainUtilityConclaveEnabled_answer;
}

id MABrainUtilitySupportsGracefulUngraft()
{
  v0 = +[MABrainUpdater sharedInstance];
  v1 = [v0 info];
  v2 = [v1 objectForKeyedSubscript:@"supports-graceful-ungraft"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

CFNumberRef MABrainUtilityCopyEcid()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"unique-chip-id");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", &v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

CFTypeRef _copy_value_from_IONode(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
  IOObjectRelease(v3);
  if (CFProperty)
  {
    v5 = CFGetTypeID(CFProperty);
    if (v5 != CFDataGetTypeID())
    {
      v6 = _MADLog(@"Brain");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = a1;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[MAB] Got a non-CFData return value from IORegistryEntryCreateCFProperty for property %@", &v8, 0xCu);
      }

      CFRelease(CFProperty);
      return 0;
    }
  }

  return CFProperty;
}

CFNumberRef MABrainUtilityCopyBoardId()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"board-id");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

CFNumberRef MABrainUtilityCopyChipId()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"chip-id");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

CFNumberRef MABrainUtilityCopySecurityDomain()
{
  valuePtr = 0;
  v0 = _copy_value_from_IONode(@"security-domain");
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      valuePtr = *CFDataGetBytePtr(v1);
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
LABEL_7:
      CFRelease(v1);
      v5 = v3;
      goto LABEL_8;
    }
  }

  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v7, 2u);
  }

  v3 = 0;
  v5 = 0;
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

CFBooleanRef MABrainUtilityCopyCertificateSecurityMode()
{
  v0 = kCFBooleanFalse;
  v1 = _copy_value_from_IONode(@"certificate-security-mode");
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v2))
      {
        v0 = kCFBooleanTrue;
      }

LABEL_9:
      CFRelease(v2);
      goto LABEL_10;
    }
  }

  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v6, 2u);
  }

  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v0;
}

CFBooleanRef MABrainUtilityCopySigningFuse()
{
  v0 = kCFBooleanTrue;
  v1 = _copy_value_from_IONode(@"development-cert");
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v2) == 1)
      {
        v0 = kCFBooleanFalse;
      }

LABEL_9:
      CFRelease(v2);
      goto LABEL_10;
    }
  }

  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "[MAB] Got a NULL return from IORegistryEntryCreateCFProperty", v6, 2u);
  }

  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v0;
}

uint64_t _query_nonce_callback(uint64_t a1, uint64_t a2, void *a3)
{
  if (!__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    return 45;
  }

  if (image4_environment_new())
  {
    image4_environment_set_nonce_domain();
    memset(__src, 0, sizeof(__src));
    v4 = image4_environment_copy_nonce_digest();
    image4_environment_destroy();
    if (!v4)
    {
      *a3 = 0;
    }
  }

  else
  {
    v5 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__src[0]) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[SMA] Failed to instantiate environment", __src, 2u);
    }

    return 12;
  }

  return v4;
}

void cleanUpLegacyItems()
{
  v0 = +[NSFileManager defaultManager];
  [v0 removeItemAtPath:@"/private/var/MobileAsset/PreinstalledAssets/com_apple_MobileAsset_CoreSuggestionsQPAssets.cpio" error:0];

  v1 = +[NSFileManager defaultManager];
  [v1 removeItemAtPath:@"/private/var/MobileAsset/PreinstalledAssets/com_apple_MobileAsset_CoreSuggestionsQPAssets.xml" error:0];
}

uint64_t mobileassetd_main(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"built-in"];
  v5 = [v4 BOOLValue];

  v6 = objc_autoreleasePoolPush();
  v7 = [v3 objectForKeyedSubscript:@"MobileAssetProperties"];
  v8 = [v7 objectForKeyedSubscript:@"Build"];

  v9 = [v3 objectForKeyedSubscript:@"mobileassetd-trainname"];
  v10 = _MADLog(@"Brain");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Starting built-in MobileAsset brain built Oct 22 2025 22:26:22", &buf, 2u);
    }

    v10 = v8;
    v8 = @"BuiltIn";
  }

  else if (v11)
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Starting downloaded MobileAsset brain (version: %@) built Oct 22 2025 22:26:22", &buf, 0xCu);
  }

  cleanUpLegacyItems();
  v12 = _set_user_dir_suffix();
  v13 = _MADLog(@"V2");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      LOWORD(buf) = 0;
      v15 = "set temp directory succeeded";
LABEL_12:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v15, &buf, 2u);
    }
  }

  else if (v14)
  {
    LOWORD(buf) = 0;
    v15 = "Unable to set temp directory";
    goto LABEL_12;
  }

  MABrainLoadFeaturesOverrides();
  v46.opaque[0] = 0;
  v46.opaque[1] = 0;
  v16 = _os_activity_create(&dword_0, "MobileAssetServer:MobileAssetServer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &v46);

  v17 = getControlManager();
  v18 = getDownloadManager();
  v19 = getControlManager();
  [v19 registerForCacheDeleteMigration];

  v20 = getDownloadManager();
  [v20 setBrainVersion:v8];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v21 = _MADLog(@"V2");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Setting train name on DownloadManger to %{public}@", &buf, 0xCu);
    }

    v22 = getDownloadManager();
    [v22 setTrainName:v9];
  }

  else
  {
    v22 = _MADLog(@"V2");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Train name not passed in via options", &buf, 2u);
    }
  }

  v23 = getDownloadManager();
  [v23 triggerVPN];

  if (runningInDeviceRecoveryEnvironment())
  {
    v24 = _MADLog(@"V2");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "AutoControlManager disabled in DeviceRecoveryMode", &buf, 2u);
    }
  }

  else
  {
    v25 = +[MADAutoAssetControlManager autoControlManager];
    +[MADAutoAssetControlManager daemonProcessStartupBegun];
  }

  v26 = [v3 objectForKeyedSubscript:@"allow-st-extractor-plugin"];
  v27 = v26 == 0;

  if (!v27)
  {
    v28 = [v3 objectForKeyedSubscript:@"allow-st-extractor-plugin"];
    v29 = [v28 BOOLValue];
    v30 = getControlManager();
    [v30 setAllowSTExtractorPluginLoadFromDownloadedMABrain:v29];
  }

  v31 = [v3 objectForKeyedSubscript:@"allow-st-extraction-service-privileged"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v33 = [v3 objectForKeyedSubscript:@"allow-st-extraction-service-privileged"];
    v34 = [v33 BOOLValue];
    v35 = getControlManager();
    [v35 setAllowPrivilegedSTExtractionService:v34];
  }

  else
  {
    v33 = getControlManager();
    [v33 setAllowPrivilegedSTExtractionService:0];
  }

  if ((usingCentralizedCachedelete() & 1) == 0)
  {
    CacheDeleteRegisterInfoCallbacks();
  }

  v36 = +[MABrainRestartManager sharedInstance];
  [v36 setupSignalHandlers];

  v37 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v38 = dispatch_queue_create("com.apple.MobileAsset.memoryPressureMonitor", v37);

  v39 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 0x37uLL, v38);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v49 = __setupMemoryPressureMonitor_block_invoke;
  v50 = &unk_4B2AA0;
  v40 = v39;
  v51 = v40;
  dispatch_source_set_event_handler(v40, &buf);
  dispatch_resume(v40);
  v41 = _MADLog(@"V2");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *v47 = 0;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "{setupMemoryPressureMonitor} monitoring for memory pressure indications", v47, 2u);
  }

  if (objc_opt_class())
  {
    v47[0] = 0;
    if (_MAPreferencesGetAppBooleanValue(@"DisableAutomaticPushNotificationSubscription", v47) && v47[0])
    {
      v42 = _MADLog(@"V2");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "Automatically subscribing to cloud channels disabled", &buf, 2u);
      }
    }

    else
    {
      v42 = +[MAPushNotificationServiceDaemon sharedInstance];
      [v42 subscribeToChannelForCurrentPlatform];
    }

    v43 = +[MAPushNotificationServiceDaemon sharedInstance];
    [v43 startListeningForConnections];
  }

  v44 = +[MABrainUpdater sharedInstance];
  [v44 start:v3];

  os_activity_scope_leave(&v46);
  objc_autoreleasePoolPop(v6);
  CFRunLoopRun();

  return 0;
}

__CFDictionary *__cdecl __mobileassetd_main_block_invoke(id a1, int a2, __CFDictionary *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v8 = os_transaction_create();
  v9 = dispatch_semaphore_create(0);
  v10 = _MobileAssetGetWorkQueue();
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = __handleCacheDeletePurgeableCallbackForVolume_block_invoke;
  v25 = &unk_4B4AA0;
  v29 = a2;
  v11 = v7;
  v26 = v11;
  v28 = &v30;
  v12 = v9;
  v27 = v12;
  dispatch_async(v10, &v22);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = _MADLog(@"CacheDelete");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = stringForCacheDeleteUrgency(a2);
    v15 = allocStringForBytes(v31[3]);
    v16 = v15;
    *buf = 67109890;
    v17 = @"N";
    v37 = a2;
    if (v11)
    {
      v17 = v11;
    }

    v38 = 2114;
    v39 = v14;
    v40 = 2114;
    v41 = v17;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "{handleCacheDeletePurgeableCallbackForVolume} determining reclaimable space | urgency:%d(%{public}@), volume:%{public}@ | ...respondToCacheDelete | reclaimable:%{public}@", buf, 0x26u);
  }

  v18 = v31[3];
  _Block_object_dispose(&v30, 8);

  v34[0] = @"CACHE_DELETE_VOLUME";
  v34[1] = @"CACHE_DELETE_AMOUNT";
  v35[0] = v11;
  v19 = [NSNumber numberWithLongLong:v18, v22, v23, v24, v25];
  v35[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

  objc_autoreleasePoolPop(v5);
  return v20;
}

void sub_1A6CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFDictionary *__cdecl __mobileassetd_main_block_invoke_2(id a1, int a2, __CFDictionary *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v24 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v8 = [v24 longLongValue];
  v9 = v7;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v10 = os_transaction_create();
  v11 = dispatch_semaphore_create(0);
  v12 = _MobileAssetGetWorkQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __handleCacheDeletePurgeCallbackForVolume_block_invoke;
  block[3] = &unk_4B4AC8;
  v30 = a2;
  v13 = v9;
  v26 = v13;
  v28 = &v31;
  v29 = v8;
  v14 = v11;
  v27 = v14;
  dispatch_async(v12, block);

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = _MADLog(@"CacheDelete");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = stringForCacheDeleteUrgency(a2);
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = @"N";
    }

    v18 = allocStringForBytes(v8);
    v19 = allocStringForBytes(v32[3]);
    *buf = 67110146;
    v38 = a2;
    v39 = 2114;
    v40 = v16;
    v41 = 2114;
    v42 = v17;
    v43 = 2114;
    v44 = v18;
    v45 = 2114;
    v46 = v19;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "{handleCacheDeletePurgeCallbackForVolume} reclaiming space | urgency:%d(%{public}@), volume:%{public}@, targeting:%{public}@ | ...respondToCacheDelete | reclaimed:%{public}@", buf, 0x30u);
  }

  v20 = v32[3];
  _Block_object_dispose(&v31, 8);

  v35[0] = @"CACHE_DELETE_VOLUME";
  v35[1] = @"CACHE_DELETE_AMOUNT";
  v36[0] = v13;
  v21 = [NSNumber numberWithLongLong:v20];
  v36[1] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

  objc_autoreleasePoolPop(v5);
  return v22;
}

void sub_1A7000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __handleCacheDeletePurgeableCallbackForVolume_block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"CacheDelete");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = stringForCacheDeleteUrgency(v3);
    v5 = v4;
    v6 = *(a1 + 32);
    *buf = 67109634;
    if (!v6)
    {
      v6 = @"N";
    }

    v16 = v3;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "{handleCacheDeletePurgeableCallbackForVolume} determining reclaimable space | urgency:%d(%{public}@), volume:%{public}@ | respondToCacheDelete...", buf, 0x1Cu);
  }

  v7 = getControlManager();
  v8 = objc_alloc_init(MADAnalyticsCacheDeleteResults);
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __handleCacheDeletePurgeableCallbackForVolume_block_invoke_1155;
  v13[3] = &unk_4B4A78;
  v12 = *(a1 + 40);
  v11 = v12;
  v14 = v12;
  [v7 respondToCacheDelete:0 targetingPurgeAmount:0 cacheDeleteResults:v8 withUrgency:v9 forVolume:v10 then:v13];
}

void __handleCacheDeletePurgeCallbackForVolume_block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"CacheDelete");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = stringForCacheDeleteUrgency(v3);
    if (*(a1 + 32))
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = @"N";
    }

    v6 = allocStringForBytes(*(a1 + 56));
    *buf = 67109890;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "{handleCacheDeletePurgeCallbackForVolume} reclaiming space | urgency:%d(%{public}@), volume:%{public}@, targeting:%{public}@ | respondToCacheDelete...", buf, 0x26u);
  }

  v7 = getControlManager();
  v8 = *(a1 + 56);
  v9 = objc_alloc_init(MADAnalyticsCacheDeleteResults);
  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __handleCacheDeletePurgeCallbackForVolume_block_invoke_1159;
  v14[3] = &unk_4B4A78;
  v13 = *(a1 + 40);
  v12 = v13;
  v15 = v13;
  [v7 respondToCacheDelete:1 targetingPurgeAmount:v8 cacheDeleteResults:v9 withUrgency:v10 forVolume:v11 then:v14];
}

void __setupMemoryPressureMonitor_block_invoke(uint64_t a1)
{
  data = dispatch_source_get_data(*(a1 + 32));
  v2 = _MADLog(@"V2");
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (data <= 3)
  {
    if (data == 1)
    {
      if (v3)
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "{setupMemoryPressureMonitor} DISPATCH_MEMORYPRESSURE_NORMAL", v7, 2u);
      }

      v6 = 0;
      goto LABEL_22;
    }

    if (data != 2)
    {
      goto LABEL_24;
    }

    if (v3)
    {
      *v7 = 0;
      v5 = "{setupMemoryPressureMonitor} DISPATCH_MEMORYPRESSURE_WARN";
LABEL_17:
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, v5, v7, 2u);
    }

LABEL_18:

    v6 = 100;
    goto LABEL_22;
  }

  switch(data)
  {
    case 4:
      if (v3)
      {
        *v7 = 0;
        v4 = "{setupMemoryPressureMonitor} DISPATCH_MEMORYPRESSURE_CRITICAL";
        goto LABEL_13;
      }

LABEL_14:

      v6 = 200;
LABEL_22:
      [MADAutoAssetControlManager memoryPressureMonitor:v6, *v7];
      return;
    case 16:
      if (v3)
      {
        *v7 = 0;
        v5 = "{setupMemoryPressureMonitor} DISPATCH_MEMORYPRESSURE_PROC_LIMIT_WARN";
        goto LABEL_17;
      }

      goto LABEL_18;
    case 32:
      if (v3)
      {
        *v7 = 0;
        v4 = "{setupMemoryPressureMonitor} DISPATCH_MEMORYPRESSURE_PROC_LIMIT_CRITICAL";
LABEL_13:
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, v4, v7, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
  }

LABEL_24:
  if (v3)
  {
    *v7 = 134217984;
    *&v7[4] = data;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "{setupMemoryPressureMonitor} unknown memory pressure source:%lu", v7, 0xCu);
  }
}

NSObject *_targetPath(uint64_t a1)
{
  v1 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:a1];
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (!v3)
  {
    v7 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v14 = 0;
  v4 = [NSString stringWithContentsOfFile:v1 encoding:4 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = v5;
    v7 = _MADLog(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v1;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[MAB] Error loading contents of %@: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if ([v4 length])
  {
    v8 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:v4];
    if (v8)
    {
      v7 = v8;
      v9 = +[NSFileManager defaultManager];
      v10 = [v9 fileExistsAtPath:v7];

      if ((v10 & 1) == 0)
      {
        v11 = _MADLog(@"Brain");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "[MAB] %@ does not exist", buf, 0xCu);
        }

        goto LABEL_18;
      }

LABEL_6:
      v6 = 0;
      goto LABEL_20;
    }

    v7 = _MADLog(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v4;
      v12 = "[MAB] Allocating targetPath failed for target %@";
      goto LABEL_17;
    }
  }

  else
  {
    v7 = _MADLog(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v1;
      v12 = "[MAB] Invalid target path at %@";
LABEL_17:
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, v12, buf, 0xCu);
    }
  }

LABEL_18:
  v6 = 0;
LABEL_19:

  v7 = 0;
LABEL_20:

  return v7;
}

void _mabrainbundle_log(int a1, uint64_t a2)
{
  if (a1 >= 4)
  {
    if ((a1 - 4) >= 3)
    {
      v7 = _MADLog(@"Brain");
      v3 = v7;
      if (a1 >= 7)
      {
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_9;
        }

        v8 = 136315138;
        v9 = a2;
        v4 = v3;
        v5 = OS_LOG_TYPE_DEBUG;
        goto LABEL_8;
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      v9 = a2;
    }

    else
    {
      v3 = _MADLog(@"Brain");
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = 136315138;
      v9 = a2;
    }

    v4 = v3;
    v5 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  v3 = _MADLog(@"Brain");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = a2;
    v4 = v3;
    v5 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_0, v4, v5, "[MAB] %s", &v8, 0xCu);
  }

LABEL_9:
}

void ___cryptex1_product_class_block_invoke_0(id a1)
{
  if (img4_chip_instantiate())
  {
    _os_assumes_log();
  }

  v1 = [NSString stringWithFormat:@"0x%lX", 0];
  v2 = _cryptex1_product_class_productClass_0;
  _cryptex1_product_class_productClass_0 = v1;
}

void sub_1D8108(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  os_activity_scope_leave((v1 - 104));
  _Unwind_Resume(a1);
}

uint64_t makeDataVaultAtUrl(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v21 = _MADLog(@"V2");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v22 = "cannot make data vault as asset type is nil";
LABEL_13:
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v22, &v29, 2u);
    }

LABEL_14:
    v23 = 32;
    v9 = v4;
    goto LABEL_32;
  }

  v5 = normalizedAssetType(v3);
  if (!v5)
  {
    v21 = _MADLog(@"V2");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      v22 = "cannot make data vault as normalized asset type is nil";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v6 = v5;
  if (v4)
  {
    v7 = [v4 path];
    v8 = ensureDirectory(v7);

    v9 = [v4 URLByAppendingPathComponent:v6];

    v10 = [v9 path];
    v11 = [v10 UTF8String];
    [v3 UTF8String];
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 fileExistsAtPath:v10 isDirectory:0];

    if (v13)
    {
      if (rootless_check_datavault_flag())
      {
        v14 = rootless_convert_to_datavault();
        v15 = _MADLog(@"V2");
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v17 = *__error();
            v29 = 136446466;
            v30 = v11;
            v31 = 2048;
            v32[0] = v17;
            v18 = "The attempt to make data vault failed, path: %{public}s, errno: %lli";
            v19 = v15;
            v20 = 22;
LABEL_21:
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v18, &v29, v20);
            goto LABEL_22;
          }

          goto LABEL_22;
        }

        if (v16)
        {
          v29 = 136446210;
          v30 = v11;
          v27 = "The attempt to make data vault succeeded, path: %{public}s";
          goto LABEL_29;
        }

LABEL_30:

        v23 = 0;
        goto LABEL_31;
      }

      v15 = _MADLog(@"V2");
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v29 = 136446210;
      v30 = v11;
      v27 = "No need to convertpath: %{public}s is already a datavault";
    }

    else
    {
      v24 = rootless_mkdir_datavault();
      v15 = _MADLog(@"V2");
      v25 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        if (v25)
        {
          v26 = *__error();
          v29 = 136446722;
          v30 = v11;
          v31 = 1024;
          LODWORD(v32[0]) = 493;
          WORD2(v32[0]) = 2048;
          *(v32 + 6) = v26;
          v18 = "The attempt to create data vault failed, path: %{public}s , mode: %o, errno: %lli";
          v19 = v15;
          v20 = 28;
          goto LABEL_21;
        }

LABEL_22:

        v23 = 32;
LABEL_31:
        v21 = v6;
        goto LABEL_32;
      }

      if (!v25)
      {
        goto LABEL_30;
      }

      v29 = 136446210;
      v30 = v11;
      v27 = "The attempt to create data vault succeeded, path: %{public}s";
    }

LABEL_29:
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v27, &v29, 0xCu);
    goto LABEL_30;
  }

  v21 = _MADLog(@"V2");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "cannot make data vault as basePath is nil", &v29, 2u);
  }

  v23 = 32;
  v9 = v6;
LABEL_32:

  return v23;
}

id ensureDirectory(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[NSFileManager defaultManager];
    v11 = 0;
    v6 = [v5 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v11];
    v4 = v11;

    if ((v6 & 1) == 0)
    {
      v9 = _MADLog(@"V2");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v13 = v1;
        v14 = 2114;
        v15 = v4;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Could not create target folder: %{public}@,   %{public}@", buf, 0x16u);
      }

      v7 = 0;
      goto LABEL_9;
    }
  }

  v7 = v1;
  if (v7)
  {
    v8 = [[NSURL alloc] initFileURLWithPath:v7];
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:

  return v8;
}

BOOL setValue(void *a1, void *a2, const char *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = setxattr(a3, [v6 UTF8String], objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), 0, 1);
  if (v7)
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      v13 = 138413314;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      v17 = 2080;
      v18 = a3;
      v19 = 2048;
      v20 = v9;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to set xattr '%@'='%@' on path '%s' with errno %lld (%s)", &v13, 0x34u);
    }
  }

  return v7 == 0;
}

BOOL updateGCOverride(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = 86400 * a2;
    if ((86400 * a2) >= 0x12CC0300)
    {
      v4 = 315360000;
    }

    v5 = [NSNumber numberWithDouble:v4];
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:0 error:0];

    v7 = setValue(v6, @"GCOverride", [v3 fileSystemRepresentation]);
  }

  else
  {
    v6 = _MADLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Cannot update client usage with nil location", v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

id filesystemProtectionQueue()
{
  if (filesystemProtectionQueue_dispatchOnceFilesystemProtectionQueue != -1)
  {
    filesystemProtectionQueue_cold_1();
  }

  v1 = filesystemProtectionQueue___filesystemProtectionQueue;

  return v1;
}

void __filesystemProtectionQueue_block_invoke(id a1)
{
  v1 = [@"com.apple.MobileAsset.filesystem.manager" UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(v1, v4);
  v3 = filesystemProtectionQueue___filesystemProtectionQueue;
  filesystemProtectionQueue___filesystemProtectionQueue = v2;
}

id filesystemMetadataLastRefreshDate()
{
  if (filesystemMetadataLastRefreshDate_dispatchOnceFilesystemMetadataLastRefreshDateQueue != -1)
  {
    filesystemMetadataLastRefreshDate_cold_1();
  }

  v1 = filesystemMetadataLastRefreshDate___filesystemMetadataLastRefreshDate;

  return v1;
}

void __filesystemMetadataLastRefreshDate_block_invoke(id a1)
{
  filesystemMetadataLastRefreshDate___filesystemMetadataLastRefreshDate = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void removeOldestMetadataRefreshData()
{
  v0 = filesystemProtectionQueue();
  dispatch_assert_queue_V2(v0);

  filesystemMetadataLastRefreshDate();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = v17 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v3 = v1;
  if (!v2)
  {
    goto LABEL_13;
  }

  v4 = v2;
  v5 = 0;
  v3 = 0;
  v6 = *v15;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v1);
      }

      v8 = *(*(&v14 + 1) + 8 * i);
      v9 = objc_autoreleasePoolPush();
      v10 = [v1 safeObjectForKey:v8 ofClass:{objc_opt_class(), v14}];
      v11 = [v10 longLongValue];
      v12 = v11;
      if (!v3 || v11 < v5)
      {
        v13 = v8;

        v5 = v12;
        v3 = v13;
      }

      objc_autoreleasePoolPop(v9);
    }

    v4 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v4);

  if (v3)
  {
    [v1 removeObjectForKey:v3];
LABEL_13:
  }
}

uint64_t updateClientUsageDate(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v1)
  {
    v2 = +[NSDate date];
    [v2 timeIntervalSince1970];
    v4 = v3;

    v5 = [NSNumber numberWithDouble:v4];
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:0 error:0];

    v7 = filesystemProtectionQueue();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __updateClientUsageDate_block_invoke;
    v11[3] = &unk_4B4DC0;
    v15 = v4;
    v13 = v6;
    v14 = &v17;
    v12 = v1;
    v8 = v6;
    dispatch_sync(v7, v11);
  }

  else
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Cannot update client usage with nil location", buf, 2u);
    }
  }

  v9 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void sub_1F4A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __updateClientUsageDate_block_invoke(uint64_t a1)
{
  v8 = filesystemMetadataLastRefreshDate();
  v2 = [*(a1 + 32) absoluteString];
  v3 = [[NSNumber alloc] initWithLongLong:*(a1 + 56)];
  v4 = [v8 safeObjectForKey:v2 ofClass:objc_opt_class()];
  if (v4 && (v5 = [v3 longLongValue], v5 <= (objc_msgSend(v4, "longLongValue") + 21600)))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = setValue(*(a1 + 40), @"ClientUsage", [*(a1 + 32) fileSystemRepresentation]);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if ([v8 count] < 0x400)
      {
        v7 = v8;
      }

      else
      {
        removeOldestMetadataRefreshData();
        v6 = filesystemMetadataLastRefreshDate();

        v7 = v6;
      }

      v8 = v7;
      [v7 setSafeObject:v3 forKey:v2];
    }
  }
}

id mountPointForPath(void *a1)
{
  v1 = a1;
  bzero(&v18, 0x878uLL);
  if (!v1)
  {
    v2 = _MADLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v7 = "statfs failed for (null) : not possible";
      v8 = v2;
      v9 = 2;
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_10;
  }

  if (statfs([v1 UTF8String], &v18))
  {
    v2 = _MADLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [v1 UTF8String];
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      v12 = 136446722;
      v13 = v3;
      v14 = 2048;
      v15 = v4;
      v16 = 2082;
      v17 = v6;
      v7 = "statfs failed for %{public}s : %lld (%{public}s)";
      v8 = v2;
      v9 = 32;
LABEL_7:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = [NSString stringWithUTF8String:v18.f_mntonname];
LABEL_10:

  return v10;
}

id isPathOnVolume(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = &dword_0 + 1;
  if (v3 && v4)
  {
    v7 = mountPointForPath(v3);
    v6 = [v7 isEqual:v5];
    v8 = _MADLog(@"V2");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        v12 = 138543618;
        v13 = v3;
        v14 = 2114;
        v15 = v5;
        v10 = "Path %{public}@ is on volume %{public}@";
LABEL_8:
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x16u);
      }
    }

    else if (v9)
    {
      v12 = 138543618;
      v13 = v3;
      v14 = 2114;
      v15 = v5;
      v10 = "Path %{public}@ is not on volume %{public}@";
      goto LABEL_8;
    }
  }

  return v6;
}

id getAssetTypeDirectoriesForVolume(void *a1)
{
  v1 = a1;
  v2 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v3 = isPathOnVolume(v2, v1);

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
    v6 = [NSURL URLWithString:v5];
    v7 = [v4 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:&__NSArray0__struct options:0 error:0];

    v8 = [NSPredicate predicateWithFormat:@"lastPathComponent BEGINSWITH 'com_apple_MobileAsset_'"];
    v9 = [v7 filteredArrayUsingPredicate:v8];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

id getPurposeDirectoriesAtPath(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:&__NSArray0__struct options:0 error:0];

  v4 = [NSPredicate predicateWithFormat:@"lastPathComponent BEGINSWITH 'purpose_'"];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

uint64_t assetExistsAndIsValidWithPurpose(void *a1, void *a2, void *a3, void *a4)
{
  v4 = getPathToAssetWithPurpose(a1, a2, a3, a4);
  if (!v4)
  {
    v9 = _MADLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "getStateOfAsset, attempting to get state failed at getPathToAsset", buf, 2u);
    }

    goto LABEL_10;
  }

  v13 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v13];

  v8 = 0;
  if (v7)
  {
    if (v13)
    {
      v8 = 1;
      goto LABEL_11;
    }

    v10 = _MADLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Asset dir: %{public}@ exists and is not directory, deleting", buf, 0xCu);
    }

    v9 = +[NSFileManager defaultManager];
    v11 = [v4 path];
    [v9 removeItemAtPath:v11 error:0];

LABEL_10:
    v8 = 0;
  }

LABEL_11:

  return v8;
}

id augmentPathForSystemApp(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = 0;
  if (a3 && a4)
  {
    v9 = a4;
    v10 = a1;
    v11 = [v7 URLByAppendingPathComponent:a3];

    v12 = [v11 URLByAppendingPathComponent:v9];

    v13 = [v10 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

    v14 = [v12 URLByAppendingPathComponent:v13];

    v15 = [v13 stringByAppendingString:@".xml"];
    v16 = [v14 URLByAppendingPathComponent:v15];

    v7 = v16;
    v8 = v7;
  }

  return v8;
}

id dictionaryFromJsonFile(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [NSData dataWithContentsOfFile:v1];
    if (v2)
    {
      v3 = [NSJSONSerialization JSONObjectWithData:v2 options:0 error:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  return v3;
}

id getPathToSplunkData(void *a1)
{
  v1 = a1;
  v2 = getRepositoryPath(@"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/SplunkRecords");
  v3 = ensureDirectory(v2);

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id getPathToSplunkRetry(void *a1)
{
  v1 = a1;
  v2 = getRepositoryPath(@"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/SplunkRecords/SplunkRetry");
  v3 = ensureDirectory(v2);

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ensureTargetDirectory(void *a1, uint64_t a2)
{
  v2 = [a1 stringByAppendingPathComponent:a2];
  v3 = ensureDirectory(v2);

  return v3;
}

id assembleXmlPathWithPurpose(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = ensureTargetDirectory(v7, v6);
  if (!v9)
  {
    v16 = 0;
    goto LABEL_7;
  }

  v10 = v9;
  if (!v8)
  {
LABEL_5:
    v15 = [NSString stringWithFormat:@"%@.%@", v6, @"xml"];
    v16 = [v10 URLByAppendingPathComponent:v15];

LABEL_7:
    v10 = v16;
    v17 = v10;
    goto LABEL_8;
  }

  if (isWellFormedPurpose(v8))
  {
    v11 = purposeDirectoryName(v8);
    v12 = [v7 stringByAppendingPathComponent:v6];
    v13 = ensureTargetDirectory(v12, v11);

    v14 = [v10 URLByAppendingPathComponent:v11];

    v10 = v14;
    goto LABEL_5;
  }

  v17 = 0;
LABEL_8:

  return v17;
}

id getFailedSplunkFiles(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = opendir([v1 UTF8String]);
  if (v3)
  {
    v4 = v3;
    for (i = readdir(v3); i; i = readdir(v4))
    {
      v6 = [NSString stringWithUTF8String:i->d_name];
      if (([v6 isEqualToString:@"."] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"..") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"SplunkRetry") & 1) == 0)
      {
        [v2 addObject:v6];
      }
    }

    closedir(v4);
  }

  return v2;
}

uint64_t atomicallyCopyURLToURL(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = +[NSFileManager defaultManager];
  v8 = +[NSProcessInfo processInfo];
  v9 = [v8 globallyUniqueString];

  v10 = [v5 URLByDeletingLastPathComponent];
  v11 = [v10 URLByAppendingPathComponent:v9];

  LODWORD(v10) = [v7 copyItemAtURL:v6 toURL:v11 error:a3];
  if (v10 && ([v7 moveItemAtURL:v11 toURL:v5 error:a3] & 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    removeItem(v11);
    v12 = 0;
  }

  return v12;
}

BOOL atomicallyMoveURLToURLUsingCopy(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = atomicallyCopyURLToURL(v5, a2, a3) && (removeItem(v5) & 1) != 0;

  return v6;
}

uint64_t moveTargetURLToDirectory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v10 = _MADLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v3;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@ (missing current/target path)", buf, 0x16u);
    }

    v9 = 77;
    goto LABEL_8;
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    v12 = +[NSFileManager defaultManager];
    v16 = 0;
    v13 = [v12 moveItemAtURL:v3 toURL:v5 error:&v16];
    v10 = v16;

    v14 = _MADLog(@"V2");
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v18 = v3;
        v19 = 2114;
        v20 = v5;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Moved %{public}@ to %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v18 = v3;
        v19 = 2114;
        v20 = v5;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to move %{public}@ to %{public}@, error is: %{public}@", buf, 0x20u);
      }

      v9 = 7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t copyTargetToDirectory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v10 = _MADLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v3;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@ (missing current/target path)", buf, 0x16u);
    }

    v9 = 77;
    goto LABEL_8;
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    v15 = 0;
    v12 = atomicallyMoveURLToURLUsingCopy(v3, v5, &v15);
    v10 = v15;
    v13 = _MADLog(@"V2");
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v17 = v3;
        v18 = 2114;
        v19 = v5;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Copied %{public}@ to %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v17 = v3;
        v18 = 2114;
        v19 = v5;
        v20 = 2114;
        v21 = v10;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Failed to copy %{public}@ to %{public}@, error is: %{public}@", buf, 0x20u);
      }

      v9 = 76;
    }

LABEL_8:

    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

id isValidSymlink(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v6 = 0;
  v3 = [v2 destinationOfSymbolicLinkAtPath:v1 error:&v6];

  if (v3)
  {
    v4 = [v2 fileExistsAtPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void markPathPurgeable(void *a1)
{
  v1 = a1;
  v4 = 74245;
  if (fsctl([v1 UTF8String], 0xC0084A44uLL, &v4, 0))
  {
    v2 = _MADLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      *buf = 138412546;
      v6 = v1;
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Failed to mark path %@ as purgeable, errno:%d", buf, 0x12u);
    }
  }
}

uint64_t renameWithExtThenRemoveExposeError(void *a1, void *a2, NSObject **a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[NSFileManager defaultManager];
  if ([v7 fileExistsAtPath:v5])
  {
    if (v6)
    {
      v8 = [v5 stringByAppendingString:v6];
      if ([v7 fileExistsAtPath:v8])
      {
        v30 = 0;
        v9 = [v7 removeItemAtPath:v8 error:&v30];
        v10 = v30;
        if ((v9 & 1) == 0)
        {
          v11 = _MADLog(@"V2");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v32 = v8;
            v33 = 2114;
            v34 = v10;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Couldn't remove previous purging asset: %{public}@ due to error: %{public}@", buf, 0x16u);
          }

          markPathPurgeable(v8);
          v12 = [NSString alloc];
          v13 = +[NSUUID UUID];
          v14 = [v13 UUIDString];
          v15 = [v12 initWithFormat:@"-%@", v14];

          v16 = _MADLog(@"V2");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v15;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Appending additional extention: %@", buf, 0xCu);
          }

          v17 = [v5 stringByAppendingString:v15];

          v8 = v17;
        }
      }

      else
      {
        v10 = 0;
      }

      v29 = v10;
      v21 = [v7 moveItemAtPath:v5 toPath:v8 error:&v29];
      v18 = v29;

      if ((v21 & 1) == 0)
      {
        v27 = _MADLog(@"V2");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v32 = v5;
          v33 = 2114;
          v34 = v8;
          v35 = 2114;
          v36 = v18;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Couldn't purge asset: %{public}@ when first moving to: %{public}@ due to error: %{public}@", buf, 0x20u);
        }

        v19 = 4;
        v20 = v5;
        if (!a3)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v20 = v8;
    }

    else
    {
      v20 = v5;
      v18 = 0;
    }

    v22 = v18;
    v28 = v18;
    v23 = [v7 removeItemAtPath:v20 error:&v28];
    v18 = v28;

    if (v23)
    {

      v18 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v5;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Successfully purged asset from: %{public}@", buf, 0xCu);
      }

      v19 = 0;
      goto LABEL_26;
    }

    v24 = _MADLog(@"V2");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v32 = v20;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Couldn't purge asset: %{public}@ when removing due to error: %{public}@", buf, 0x16u);
    }

    v19 = 12;
    v8 = v20;
    if (!a3)
    {
LABEL_25:
      markPathPurgeable(v20);

      goto LABEL_26;
    }

LABEL_24:
    v25 = v18;
    *a3 = v18;
    goto LABEL_25;
  }

  v18 = _MADLog(@"V2");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v32 = v5;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Couldn't purge asset: %{public}@ does not exist", buf, 0xCu);
  }

  v19 = 3;
LABEL_26:

  return v19;
}

void sub_1F8C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  objc_sync_exit(v39);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void __copySsoToken_block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = "silent";
    }

    else
    {
      v3 = "default";
    }

    *buf = 136315138;
    v22 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MAB] Attempting to read AppleConnect SSO token with %s interactivity level", buf, 0xCu);
  }

  v19 = @"stealthMode";
  v4 = [NSNumber numberWithBool:*(a1 + 48)];
  v20 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v18 = 0;
  v6 = copyPersonalizationSSOToken(v5, &v18);
  v7 = v18;
  v8 = [v6 objectForKeyedSubscript:@"ssodata"];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 40) + 8) + 40);
  v12 = _MADLog(@"Brain");
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "[MAB] AppleConnect SSO token successfully read";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 2;
LABEL_11:
      _os_log_impl(&dword_0, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v7;
    v14 = "[MAB] Failed to read AppleConnect SSO token: %@";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 12;
    goto LABEL_11;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1FC910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1FCF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

id ASHTTPDateStringForDate(void *a1)
{
  v1 = a1;
  v2 = ASDateFormatterWithFormat(@"EEE',' dd MMM yyyy HH':'mm':'ss 'GMT'");
  v3 = [v2 stringFromDate:v1];

  return v3;
}

id ASDateFormatterWithFormat(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:v1];

  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v4];

  return v2;
}

id ASDateForHTTPDateString(void *a1)
{
  v1 = a1;
  v2 = ASDateFormatterWithFormat(@"EEE',' dd MMM yyyy HH':'mm':'ss z");
  v3 = [v2 dateFromString:v1];
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = ASDateFormatterWithFormat(@"EEEE',' dd'-'MMM'-'yy HH':'mm':'ss z");

  v6 = [v5 dateFromString:v1];
  if (v6)
  {
    v4 = v6;
    v2 = v5;
  }

  else
  {
    v2 = ASDateFormatterWithFormat(@"EEE MMM dd HH':'mm':'ss yyyy");

    v3 = [v2 dateFromString:v1];
    if (v3)
    {
LABEL_2:
      v4 = v3;
      goto LABEL_5;
    }

    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v1;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Could not convert date string %{public}@", &v9, 0xCu);
    }

    v4 = 0;
  }

LABEL_5:

  return v4;
}

id extractorDecodeClasses()
{
  if (extractorDecodeClasses_once != -1)
  {
    extractorDecodeClasses_cold_1();
  }

  v1 = extractorDecodeClasses__extractorDecodeClasses;

  return v1;
}

void __extractorDecodeClasses_block_invoke(id a1)
{
  v3 = objc_alloc_init(NSMutableArray);
  if (objc_opt_class())
  {
    [v3 addObject:objc_opt_class()];
  }

  if (objc_opt_class())
  {
    [v3 addObject:objc_opt_class()];
  }

  [v3 addObject:objc_opt_class()];
  [v3 addObject:objc_opt_class()];
  [v3 addObject:objc_opt_class()];
  [v3 addObject:objc_opt_class()];
  v1 = [[NSSet alloc] initWithArray:v3];
  v2 = extractorDecodeClasses__extractorDecodeClasses;
  extractorDecodeClasses__extractorDecodeClasses = v1;
}

id preservedIdsDecodeClasses()
{
  if (preservedIdsDecodeClasses_once != -1)
  {
    preservedIdsDecodeClasses_cold_1();
  }

  v1 = preservedIdsDecodeClasses__preservedIdsDecodeClasses;

  return v1;
}

void __preservedIdsDecodeClasses_block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:3];
  v3 = [v1 initWithArray:{v2, v5, v6}];
  v4 = preservedIdsDecodeClasses__preservedIdsDecodeClasses;
  preservedIdsDecodeClasses__preservedIdsDecodeClasses = v3;
}

void __queryDecodeClasses_block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v5 count:11];
  v3 = [v1 initWithArray:{v2, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14}];
  v4 = queryDecodeClasses__queryDecodeClasses;
  queryDecodeClasses__queryDecodeClasses = v3;
}

id loadDecodeClasses()
{
  if (loadDecodeClasses_once != -1)
  {
    loadDecodeClasses_cold_1();
  }

  v1 = loadDecodeClasses__loadDecodeClasses;

  return v1;
}

void __loadDecodeClasses_block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v5[10] = objc_opt_class();
  v5[11] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v5 count:12];
  v3 = [v1 initWithArray:v2];
  v4 = loadDecodeClasses__loadDecodeClasses;
  loadDecodeClasses__loadDecodeClasses = v3;
}

id _getDaemonAsyncConnectionQueue()
{
  if (_getDaemonAsyncConnectionQueue_once != -1)
  {
    _getDaemonAsyncConnectionQueue_cold_1();
  }

  v1 = _getDaemonAsyncConnectionQueue_queue;

  return v1;
}

void ___getDaemonAsyncConnectionQueue_block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MobileAsset.daemon.connection.asynchandler", v3);
  v2 = _getDaemonAsyncConnectionQueue_queue;
  _getDaemonAsyncConnectionQueue_queue = v1;
}

id _getDaemonAsyncHandlerQueue()
{
  if (_getDaemonAsyncHandlerQueue_once != -1)
  {
    _getDaemonAsyncHandlerQueue_cold_1();
  }

  v1 = _getDaemonAsyncHandlerQueue_queue;

  return v1;
}

void ___getDaemonAsyncHandlerQueue_block_invoke(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.MobileAsset.daemon.asynchandler", v3);
  v2 = _getDaemonAsyncHandlerQueue_queue;
  _getDaemonAsyncHandlerQueue_queue = v1;
}

void __getControlManager_block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = getControlManager_controlManager;
  getControlManager_controlManager = v1;

  v3 = _getDaemonAsyncHandlerQueue();
  mach_service = xpc_connection_create_mach_service("com.apple.mobileassetd.v2", v3, 1uLL);
  v5 = getControlManager_connection;
  getControlManager_connection = mach_service;

  v6 = getControlManager_controlManager;
  v7 = getControlManager_connection;
  v8 = _getDaemonAsyncConnectionQueue();
  [v6 setServerConnectionHandler:v7 with:@"server" and:v8];

  v9 = getControlManager_connection;

  xpc_connection_activate(v9);
}

uint64_t getSandboxExtension(void *a1, void *a2, uint64_t *a3)
{
  v6 = a1;
  v7 = a2;
  [a1 fileSystemRepresentation];
  xpc_connection_get_audit_token();

  result = sandbox_extension_issue_file_to_process();
  *a3 = result;
  return result;
}

void createExtension(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v16 = 0;
  v7 = a3;
  v8 = repositoryPath(v7);
  v9 = normalizedAssetType(v7);

  v10 = [v8 stringByAppendingPathComponent:v9];

  getSandboxExtension(v10, v5, &v16);
  v11 = v16;
  reply = _MADLog(@"V2Control");
  v13 = os_log_type_enabled(reply, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_0, reply, OS_LOG_TYPE_DEFAULT, "extension set", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(v6);
    if (reply)
    {
      xpc_dictionary_set_string(reply, [@"sandboxExtensionKey" UTF8String], v11);
      free(v11);
      xpc_dictionary_set_int64(reply, "Result", 0);
      xpc_connection_send_message(v5, reply);
    }
  }

  else if (v13)
  {
    *v14 = 0;
    _os_log_impl(&dword_0, reply, OS_LOG_TYPE_DEFAULT, "Cannot create extension", v14, 2u);
  }
}

id getAssetFromXml(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = getAssetsFromXml(a1, a3);
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v6 objectForKeyedSubscript:v5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v7 objectForKeyedSubscript:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void handleGetInstalledAssetIds(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  reply = xpc_dictionary_create_reply(a4);
  if (reply)
  {
    v11 = normalizedAssetType(v7);
    v12 = repositoryPath(v7);
    v13 = [v12 stringByAppendingPathComponent:v11];

    v14 = getInstalledAssetIds(v13);
    v15 = objc_opt_new();
    v16 = v15;
    if (v14)
    {
      [v15 setObject:v14 forKey:@"QueryAssetIds"];
      v30 = 0;
      v17 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v30];
      v18 = v30;
      v19 = v18;
      v20 = 3;
      if (v17 && !v18)
      {
        v29 = v13;
        v21 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v14 count];
          *buf = 134218242;
          v32 = v22;
          v33 = 2114;
          v34 = v8;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "getInstalledAssetIds result is %ld for:%{public}@", buf, 0x16u);
        }

        v23 = [@"QueryAssetIdsResponse" UTF8String];
        v24 = v8;
        v25 = [v17 bytes];
        v26 = [v17 length];
        v27 = v25;
        v8 = v24;
        xpc_dictionary_set_data(reply, v23, v27, v26);
        v19 = 0;
        v20 = 0;
        v13 = v29;
      }
    }

    else
    {
      v28 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v7;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Got nil assets for getInstalledAssetIds: %{public}@", buf, 0xCu);
      }

      v17 = 0;
      v19 = 0;
      v20 = 3;
    }

    xpc_dictionary_set_int64(reply, "Result", v20);
    xpc_connection_send_message(v9, reply);
  }

  else
  {
    v11 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v7;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Could not create reply for getInstalledAssetIds: %{public}@", buf, 0xCu);
    }
  }
}

void checkSpaceForDownload(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 2;
  v22 = 0;
  if (determineUnarchiveSizeFromMessage(v4, &v22))
  {
    v5 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = v22;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Doing check for %lld", buf, 0xCu);
    }

    if (&_CPFreeSpaceRequestBytesAtPathWithCompletionBlock)
    {
      v33 = kCPFreeSpaceEffortLevelKey;
      v34 = &off_4F8060;
      [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v17[1] = _NSConcreteStackBlock;
      v17[2] = 3221225472;
      v17[3] = __checkSpaceForDownload_block_invoke;
      v17[4] = &unk_4B51F8;
      v20 = &v23;
      v21 = v22;
      v18 = v3;
      v19 = v4;
      CPFreeSpaceRequestBytesAtPathWithCompletionBlock();

      v6 = v18;
LABEL_16:

      goto LABEL_17;
    }

    v8 = +[NSFileManager defaultManager];
    v17[0] = 0;
    v9 = [v8 attributesOfFileSystemForPath:@"/" error:v17];
    v6 = v17[0];
    v10 = [v9 objectForKey:NSFileSystemFreeSize];
    v11 = [v10 unsignedLongLongValue];

    if (v11 <= v22)
    {
      v12 = _MADLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v28 = v22;
        v29 = 2048;
        v30 = v11;
        v31 = 2114;
        v32 = v6;
        v13 = "Space check result: Not enough space to download and unarchive asset: need %llu and %llu available. error: %{public}@";
        v14 = v12;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 32;
        goto LABEL_14;
      }
    }

    else
    {
      v24[3] = 0;
      v12 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v28 = v22;
        v29 = 2048;
        v30 = v11;
        v13 = "Space check result: Space check successful: need %llu and %llu available";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 22;
LABEL_14:
        _os_log_impl(&dword_0, v14, v15, v13, buf, v16);
      }
    }

    sendClientResponse(v3, v4, v24[3]);
    goto LABEL_16;
  }

  v7 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Space check fails, unable to determine required size", buf, 2u);
  }

  sendClientResponse(v3, v4, v24[3]);
LABEL_17:
  _Block_object_dispose(&v23, 8);
}

void sub_20794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __checkSpaceForDownload_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109376;
    *v11 = a2;
    *&v11[4] = 2048;
    *&v11[6] = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Space check result: %d space available: %llu", &v10, 0x12u);
  }

  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v7 = _MADLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 56);
      v10 = 134218240;
      *v11 = v8;
      *&v11[8] = 2048;
      *&v11[10] = a3;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Space check result: Not enough space to download and unarchive asset: need %llu and %llu available", &v10, 0x16u);
    }
  }

  return sendClientResponse(*(a1 + 32), *(a1 + 40), *(*(*(a1 + 48) + 8) + 24));
}

void cleanV1Assets(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = +[NSFileManager defaultManager];
  v9 = normalizedAssetType(v5);

  v10 = getRepositoryPath(@"/private/var/MobileAsset/Assets");
  v11 = [NSString stringWithFormat:@"%@/%@", v10, v9];

  if (![v8 fileExistsAtPath:v11])
  {
    v14 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "No need to clean, %{public}@ does not exist", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v12 = [v8 removeItemAtPath:v11 error:&v17];
  v13 = v17;
  v14 = _MADLog(@"V2Control");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v15)
    {
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ assets folder successfully deleted", buf, 0xCu);
    }

LABEL_8:
    v16 = 0;
    goto LABEL_12;
  }

  if (v15)
  {
    *buf = 138543618;
    v19 = v11;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Deletion of %{public}@ failed due to: %{public}@", buf, 0x16u);
  }

  v16 = 2;
LABEL_12:

  sendClientResponse(v7, v6, v16);
}

void finishPartiallyPurgedAssets(void *a1, unsigned int a2, char a3)
{
  LOBYTE(v3) = a3;
  v5 = a1;
  v6 = v5;
  v23 = a2;
  if ((a2 & 0x80000000) == 0)
  {
    if ([v5 hasSuffix:@".purged"])
    {
      v7 = +[NSFileManager defaultManager];
      v29 = 0;
      v8 = [v7 removeItemAtPath:v6 error:&v29];
      v9 = v29;

      if (v8)
      {
        v10 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v32 = v6;
          v33 = 1024;
          v34 = a2;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "{finishPartiallyPurgedAssets} successful purged cleanup | path:%{public}@ | depth:%d", buf, 0x12u);
        }
      }

      else
      {
        v10 = _MADLog(@"V2");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v21 = [v9 checkedSummary];
          *buf = 138544130;
          v32 = v6;
          v33 = 1024;
          v34 = a2;
          v35 = 2114;
          v36 = v21;
          v37 = 2114;
          v38 = v9;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{finishPartiallyPurgedAssets} unable to finish purged cleanup | path:%{public}@ | depth:%d | error:%{public}@\n%{public}@", buf, 0x26u);
        }
      }

LABEL_23:

      goto LABEL_24;
    }

    if (a2)
    {
      v11 = +[NSFileManager defaultManager];
      v28 = 0;
      v10 = [v11 contentsOfDirectoryAtPath:v6 error:&v28];
      v9 = v28;

      if (v10)
      {
        v22 = v9;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v10;
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v24 + 1) + 8 * i);
              v17 = objc_autoreleasePoolPush();
              if (v3)
              {
                v18 = [v16 hasPrefix:@"purpose_"];
                v3 = v18 ^ 1;
                if (v18)
                {
                  v19 = v23;
                }

                else
                {
                  v19 = v23 - 1;
                }
              }

              else
              {
                v3 = 0;
                v19 = v23 - 1;
              }

              v20 = [v6 stringByAppendingPathComponent:{v16, v22}];
              finishPartiallyPurgedAssets(v20, v19, v3);

              objc_autoreleasePoolPop(v17);
            }

            v13 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
          }

          while (v13);
        }

        v9 = v22;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
}

void finishAllPartiallyPurgedAssets(void *a1)
{
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = allRepositoryPathsForPurging(1);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = _MADLog(@"CacheDelete");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v14 = v1;
          v15 = 2114;
          v16 = v7;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{finishAllPartiallyPurgedAssets} %{public}@ | checking for purged assets at path:%{public}@", buf, 0x16u);
        }

        finishPartiallyPurgedAssets(v7, 2u, 1);
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v17 count:16];
    }

    while (v4);
  }
}

id allRepositoryPathsForPurging(int a1)
{
  v2 = [NSMutableSet alloc];
  v3 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v4 = [v2 initWithObjects:{v3, 0}];

  if (a1)
  {
    v5 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
    [v4 addObject:v5];
  }

  [v4 addObject:@"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2"];
  v6 = [v4 allObjects];

  return v6;
}

void sub_20A59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ensureAssetDirectory(void *a1, int a2)
{
  v3 = a1;
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  DirectoryWorldWriteable = _MobileAssetCreateDirectoryWorldWriteable(v4, a2);
  if (DirectoryWorldWriteable)
  {
    v6 = DirectoryWorldWriteable;
    v7 = _MADLog(@"V2");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = &stru_4BD3F0;
      v9 = 138543874;
      v10 = v3;
      if (a2)
      {
        v8 = @"writeable";
      }

      v11 = 2114;
      v12 = v8;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Could not ensure directory %{public}@ %{public}@error %d", &v9, 0x1Cu);
    }
  }
}

id ensureRepositoryPath(void *a1)
{
  v1 = repositoryPath(a1);
  ensureAssetDirectory(v1, 0);

  return v1;
}

BOOL isRecentlyDownloaded(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = (v5 || (v8 = v6) != 0) && [v8 compare:v7] != -1;

  return v9;
}

id isInFlight(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v3 lastPathComponent];
          LOBYTE(v10) = [v11 isEqual:v10];

          if (v10)
          {
            v7 = &dword_0 + 1;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t removeDownloadsNotRecentlyInFlight(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v47 = a2;
  v45 = a3;
  v6 = _MADLog(@"CacheDelete");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v47)
    {
      v7 = v47;
    }

    else
    {
      v7 = @"N";
    }

    *buf = 138543874;
    v61 = v5;
    v62 = 2114;
    v63 = v7;
    v64 = 2050;
    v65 = [v45 count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "{removeDownloadsNotRecentlyInFlight} dir:%{public}@ | referenceDateForRecent:%{public}@ | tasksInFlight:%{public}ld", buf, 0x20u);
  }

  v8 = +[NSFileManager defaultManager];
  v59[0] = NSFileCreationDate;
  v59[1] = NSFileModificationDate;
  v59[2] = NSURLContentModificationDateKey;
  v9 = [NSArray arrayWithObjects:v59 count:3];
  v57 = 0;
  v10 = [v8 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v9 options:0 error:&v57];
  v11 = v57;

  if (v10)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v12)
    {
      v13 = v12;
      v40 = v10;
      v41 = v11;
      v42 = v8;
      v43 = v5;
      v44 = 0;
      v48 = *v54;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v54 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v53 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v51 = 0;
          v52 = 0;
          [v15 getResourceValue:&v52 forKey:NSURLContentModificationDateKey error:&v51];
          v17 = v52;
          v18 = v51;
          v49 = 0;
          v50 = 0;
          [v15 getResourceValue:&v50 forKey:NSFileCreationDate error:&v49];
          v19 = v50;
          v20 = v49;
          if (v18)
          {
            v21 = _MADLog(@"CacheDelete");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v18 checkedSummary];
              *buf = 138543874;
              v61 = v15;
              v62 = 2114;
              v63 = v22;
              v64 = 2114;
              v65 = v18;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "{removeDownloadsNotRecentlyInFlight} could not determine content modification date, continuing anyway | URL:%{public}@ | error:%{public}@\n%{public}@", buf, 0x20u);
            }
          }

          if (v20)
          {
            v23 = _MADLog(@"CacheDelete");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v20 checkedSummary];
              *buf = 138543874;
              v61 = v15;
              v62 = 2114;
              v63 = v24;
              v64 = 2114;
              v65 = v20;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "{removeDownloadsNotRecentlyInFlight} could not determine creation date, continuing anyway | URL:%{public}@ | error:%{public}@\n%{public}@", buf, 0x20u);
            }

            if (v18)
            {
              goto LABEL_21;
            }
          }

          if (isRecentlyDownloaded(v17, v19, v47))
          {
LABEL_21:
            v25 = _MADLog(@"CacheDelete");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = [v15 baseURL];
              [(__CFString *)v47 timeIntervalSinceReferenceDate];
              v28 = epochToDate(v27);
              *buf = 138543618;
              v61 = v26;
              v62 = 2114;
              v63 = v28;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{removeDownloadsNotRecentlyInFlight} skipping %{public}@ since it was modified before %{public}@", buf, 0x16u);
            }

LABEL_23:

            goto LABEL_24;
          }

          if (v45)
          {
            if ((isInFlight(v15, v45) & 1) == 0)
            {
              v29 = [v15 path];
              v30 = renameWithExtThenRemove(v29, @".purged");

              if (v30 != 3)
              {
                if (v30)
                {
                  v25 = _MADLog(@"CacheDelete");
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v31 = stringForMAPurgeResult(v30);
                    *buf = 138543618;
                    v61 = v15;
                    v62 = 2114;
                    v63 = v31;
                    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{removeDownloadsNotRecentlyInFlight} could not remove old in-flight download tracking file (not in-flight) | URL:%{public}@ | result:%{public}@", buf, 0x16u);
                  }
                }

                else
                {
                  v25 = _MADLog(@"CacheDelete");
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v61 = v15;
                    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "{removeDownloadsNotRecentlyInFlight} removed old in-flight download tracking file (not in-flight) | URL:%{public}@", buf, 0xCu);
                  }
                }

                goto LABEL_23;
              }
            }
          }

          else
          {
            v44 = 1;
          }

LABEL_24:

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v13 != v14);
        v32 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        v13 = v32;
        if (!v32)
        {
          v8 = v42;
          v5 = v43;
          v10 = v40;
          v11 = v41;
          v33 = obj;
          v34 = v44;
          goto LABEL_47;
        }
      }
    }

    v34 = 0;
    v33 = obj;
    goto LABEL_47;
  }

  v35 = [v11 domain];
  v36 = [v35 isEqual:NSCocoaErrorDomain];

  if (!v36)
  {
    v33 = _MADLog(@"CacheDelete");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v37 = [v11 checkedSummary];
      *buf = 138543874;
      v61 = v5;
      v62 = 2114;
      v63 = v37;
      v64 = 2114;
      v65 = v11;
      v38 = "{removeDownloadsNotRecentlyInFlight} error determining contents of directory:%{public}@ | error:%{public}@\n%{public}@";
LABEL_45:
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, v38, buf, 0x20u);
    }

LABEL_46:
    v34 = 0;
LABEL_47:

    goto LABEL_48;
  }

  if ([v11 code] != &stru_B8.reserved3)
  {
    v33 = _MADLog(@"CacheDelete");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v37 = [v11 checkedSummary];
      *buf = 138543874;
      v61 = v5;
      v62 = 2114;
      v63 = v37;
      v64 = 2114;
      v65 = v11;
      v38 = "{removeDownloadsNotRecentlyInFlight} failed to determine contents of directory:%{public}@ | error:%{public}@\n%{public}@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v34 = 0;
LABEL_48:

  return v34 & 1;
}

id epochToDate(double a1)
{
  if (epochToDate_onceToken != -1)
  {
    epochToDate_cold_1();
  }

  v2 = dateFormatter;
  v3 = [NSDate dateWithTimeIntervalSince1970:a1];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

void sub_2122EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_222BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 240), 8);
  _Unwind_Resume(a1);
}

void __epochToDate_block_invoke(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = dateFormatter;
  dateFormatter = v1;

  v3 = dateFormatter;

  [v3 setDateFormat:@"EEEE, MMM d, yyyy hh:mm:ss a"];
}

id _MAClientLog(void *a1)
{
  v1 = a1;
  if (_MAClientLog_onceToken != -1)
  {
    _MAClientLog_cold_1();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = [_MAClientLog_clientLoggers objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [_MAClientLog_clientLoggers objectForKey:@"DEFAULT"];
  }

  v6 = v5;

  return v6;
}

id assetIdDisallowedCharacterSet()
{
  if (assetIdDisallowedCharacterSet_once != -1)
  {
    assetIdDisallowedCharacterSet_cold_1();
  }

  v1 = assetIdDisallowedCharacterSet_disallowedSet;

  return v1;
}

void __assetIdDisallowedCharacterSet_block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
  v3 = [v2 invertedSet];
  v4 = assetIdDisallowedCharacterSet_disallowedSet;
  assetIdDisallowedCharacterSet_disallowedSet = v3;

  objc_autoreleasePoolPop(v1);
}

void __assetTypeDisallowedCharacterSet_block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-"];
  v3 = [v2 invertedSet];
  v4 = assetTypeDisallowedCharacterSet_disallowedSet;
  assetTypeDisallowedCharacterSet_disallowedSet = v3;

  objc_autoreleasePoolPop(v1);
}

id tokenFileDisallowedCharacterSet()
{
  if (tokenFileDisallowedCharacterSet_once != -1)
  {
    tokenFileDisallowedCharacterSet_cold_1();
  }

  v1 = tokenFileDisallowedCharacterSet_disallowedSet;

  return v1;
}

void __tokenFileDisallowedCharacterSet_block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-/"];
  v3 = [v2 invertedSet];
  v4 = tokenFileDisallowedCharacterSet_disallowedSet;
  tokenFileDisallowedCharacterSet_disallowedSet = v3;

  objc_autoreleasePoolPop(v1);
}

void __purposeDisallowedCharacterSet_block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v3 = [v2 invertedSet];
  v4 = purposeDisallowedCharacterSet_disallowedSet;
  purposeDisallowedCharacterSet_disallowedSet = v3;

  objc_autoreleasePoolPop(v1);
}

id purposeIgnoredCharacterSet()
{
  if (purposeIgnoredCharacterSet_once != -1)
  {
    purposeIgnoredCharacterSet_cold_1();
  }

  v1 = purposeIgnoredCharacterSet_ignoredSet;

  return v1;
}

void __purposeIgnoredCharacterSet_block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"'\\/@?%*|<>.{}"];;
  v3 = purposeIgnoredCharacterSet_ignoredSet;
  purposeIgnoredCharacterSet_ignoredSet = v2;

  objc_autoreleasePoolPop(v1);
}

id supportedAssetFormatsArray()
{
  if (supportedAssetFormatsArray_orderedOnceToken != -1)
  {
    supportedAssetFormatsArray_cold_1();
  }

  v1 = supportedAssetFormatsArray___orderedCompressionTypes;

  return v1;
}

void __supportedAssetFormatsArray_block_invoke(id a1)
{
  v1 = _MAPreferencesCopyValue(@"SupportedAssetFormats");
  v2 = &off_51A000;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_alloc_init(NSMutableArray);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v15 = v1;
      v4 = v1;
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v17;
        do
        {
          v8 = 0;
          do
          {
            if (*v17 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v16 + 1) + 8 * v8);
            if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v3 addObject:v9];
            }

            else
            {
              v10 = _MADLog(@"V2");
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "SupportedAssetFormats: Found unexpected non-string item in SupportedAssetFormats preferences, dropping entry", buf, 2u);
              }
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
        }

        while (v6);
      }

      if (v3)
      {
        v2 = &off_51A000;
        if ([v3 count])
        {
          objc_storeStrong(&supportedAssetFormatsArray___orderedCompressionTypes, v3);
          v11 = _MADLog(@"V2");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [supportedAssetFormatsArray___orderedCompressionTypes componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v21 = v12;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "SupportedAssetFormats: Using preferences override supported asset format types: [%@]", buf, 0xCu);
          }
        }

        v1 = v15;
      }

      else
      {
        v1 = v15;
        v2 = &off_51A000;
      }
    }

    else
    {
      v3 = _MADLog(@"V2");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "SupportedAssetFormats: Found unexpected non-array type in SupportedAssetFormats preferences, dropping preference", buf, 2u);
      }
    }
  }

  if (!v2[59])
  {
    v2[59] = &off_4F6FC8;

    v13 = _MADLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v2[59] componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "SupportedAssetFormats: Using default supported asset format types: [%@]", buf, 0xCu);
    }
  }
}

id getObjectFromMessageWithFailureReason(void *a1, const char *a2, const char *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  length = xpc_dictionary_get_double(v9, a2);
  if (!length)
  {
    if (a5)
    {
      v18 = [[NSString alloc] initWithFormat:@"Failed to get key:%s (length:%lld bytes too small)", a3, 0];
LABEL_13:
      v16 = 0;
      *a5 = v18;
      goto LABEL_24;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_24;
  }

  data = xpc_dictionary_get_data(v9, a3, &length);
  if (!data)
  {
    if (a5)
    {
      v18 = [[NSString alloc] initWithFormat:@"Failed to get object from message since key:%s is not present", a3, v21];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = [NSData dataWithBytes:data length:length];
  if (!v12)
  {
    if (a5)
    {
      v19 = [NSString alloc];
      v16 = 0;
      *a5 = [v19 initWithFormat:@"Failed to get NSData object from message for key:%s length:%lld bytes", a3, length];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_23;
  }

  v22 = 0;
  v13 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v12 error:&v22];
  v14 = v22;
  if (v14 || !v13)
  {
    if (!a5)
    {
      v16 = 0;
      goto LABEL_22;
    }

    v17 = [[NSString alloc] initWithFormat:@"Could not decode object for key:%s error:%@", a3, v14];
  }

  else
  {
    v15 = [v13 decodeObjectOfClasses:v10 forKey:NSKeyedArchiveRootObjectKey];
    v16 = v15;
    if (!a5 || v15)
    {
      goto LABEL_22;
    }

    v17 = [[NSString alloc] initWithFormat:@"Failed to decode object for key:%s", a3, v21];
  }

  v16 = 0;
  *a5 = v17;
LABEL_22:
  [v13 finishDecoding];

LABEL_23:
LABEL_24:

  return v16;
}

uint64_t calculateTimeout(uint64_t a1)
{
  v2 = ((a1 >> 10) * 0x2492492492492493uLL) >> 64;
  if (a1 > 0x102661BFFLL)
  {
    v2 = 604800;
  }

  if (a1 >= 6451200)
  {
    v3 = v2;
  }

  else
  {
    v3 = 900;
  }

  v4 = _MADLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v3 * 0x444444444444445uLL) >> 64;
    v7 = 134219008;
    v8 = (v3 * 0x123456789ABCE0uLL) >> 64;
    v9 = 2048;
    v10 = v5 - 60 * ((v5 * 0x444444444444445uLL) >> 64);
    v11 = 2048;
    v12 = v3 - 60 * v5;
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Calculated the download timeout to be %ld hrs %ld mins %ld secs (%ld) for size %lld", &v7, 0x34u);
  }

  return v3;
}

uint64_t deepMergeDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v18 = v4;
      v8 = *v21;
      v19 = 1;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v3 objectForKey:{v10, v18}];
          v12 = [v5 objectForKey:v10];
          if (v12)
          {
            if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v13 = objc_autoreleasePoolPush();
              v14 = [v11 mutableCopy];
              if (deepMergeDictionaries(v14, v12))
              {
                [v3 setObject:v14 forKey:v10];
              }

              else
              {
                v19 = 0;
              }

              objc_autoreleasePoolPop(v13);
            }

            else
            {
              [v3 setObject:v12 forKey:v10];
            }
          }

          else
          {
            v15 = _MADLog(@"V2");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v25 = v10;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "[DeepMergeDictionaries]: No object exists in source dict for key %{public}@", buf, 0xCu);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v7);
      v4 = v18;
      v16 = v19;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v5 = _MADLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[DeepMergeDictionaries]: Invalid source/target dictionaries passed", buf, 2u);
    }

    v16 = 0;
  }

  return v16 & 1;
}

BOOL determineUnarchiveSizeFromMessage(void *a1, uint64_t *a2)
{
  v3 = a1;
  string = xpc_dictionary_get_string(v3, [@"_UnarchivedSize" UTF8String]);

  if (string)
  {
    *a2 = strtoll(string, 0, 10);
  }

  return string != 0;
}

BOOL sendClientResponse(void *a1, void *a2, int64_t a3)
{
  v5 = a1;
  reply = xpc_dictionary_create_reply(a2);
  v7 = sendReply(v5, reply, a3);

  return v7;
}

void ensureAndIncrementNumberAtKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 || !v6)
  {
    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "in ensureAndIncrementNumberAtKey nil dict or key value, skipped", v12, 2u);
    }

    goto LABEL_12;
  }

  v8 = [v5 objectForKey:v6];
  v9 = v8;
  if (v7)
  {
    v10 = [v7 longValue];
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = (&dword_0 + 1);
    if (v8)
    {
LABEL_5:
      v11 = [[NSNumber alloc] initWithLong:{&v10[objc_msgSend(v9, "longValue")]}];

      if (!v11)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v11 = [[NSNumber alloc] initWithLong:v10];
  if (v11)
  {
LABEL_11:
    [v5 setObject:v11 forKey:v6];
LABEL_12:
  }

LABEL_13:
}

id dateAfterTimeTravel(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(NSDateFormatter);
  v9 = v8;
  if (v5)
  {
    [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    v10 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [v9 setLocale:v10];

    v11 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    [v9 setTimeZone:v11];

    v12 = [v9 dateFromString:v5];
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;
  v14 = [v7 integerValue];
  v15 = objc_alloc_init(NSDateComponents);
  [v15 setDay:v14];
  v16 = +[NSCalendar currentCalendar];
  v17 = [v16 dateByAddingComponents:v15 toDate:v13 options:0];

  [v9 setDateFormat:@"yyyy-MM-dd"];
  v18 = [v9 stringFromDate:v17];

  return v18;
}

id downloadTypeForTaskDescriptor(void *a1)
{
  v1 = disassembleTaskDescriptor(a1);
  v2 = v1;
  if (v1 && ([v1 objectForKey:@"isXml"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id simplifySetIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"com.apple.MobileAsset."];
  v4 = v1;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v1 substringFromIndex:&v2[v3]];
  }

  return v4;
}

void *getPurposeFromTaskDescriptor(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = 0;
    v4 = 0;
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = disassembleTaskDescriptor(v1);
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v5 = [v3 objectForKey:@"isXml"];
  if (v5)
  {
    v6 = [v4 objectForKey:@"Purpose"];
    v7 = normalizePurpose(v6);
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  v8 = v7;

  return v7;
}

id getAutoAssetJobIDFromTaskDescriptor(void *a1)
{
  if (a1)
  {
    v1 = disassembleTaskDescriptor(a1);
    v2 = v1;
    if (v1)
    {
      v3 = [v1 objectForKey:@"AutoAssetJob"];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

const __CFString *convertGarbageCollectionOperationToString(uint64_t a1)
{
  v1 = @"<reason>";
  if (a1 == 1)
  {
    v1 = @"ReclaimSpace";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"DetermineReclaimable";
  }
}

id getPathToPmvFile(uint64_t a1)
{
  if (a1)
  {
    v1 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
    v2 = [NSURL URLWithString:v1];
    v3 = [v2 URLByAppendingPathComponent:@"AppleSoftwareLookup.json" isDirectory:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *getPathToAssetWithPurpose(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (!v7 || !v8)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  v13 = 0;
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = normalizedAssetType(v8);
      if (v12)
      {
        v11 = [v7 stringByAppendingPathComponent:v12];
        if (v10)
        {
          v14 = purposeDirectoryName(v10);
          v15 = [v11 stringByAppendingPathComponent:v14];

          v11 = v15;
        }

        v16 = [NSURL URLWithString:v11];
        v17 = [NSString stringWithFormat:@"%@.%@", v9, @"asset"];
        v13 = [v16 URLByAppendingPathComponent:v17];

        if (_MAPreferencesIsVerboseLoggingEnabled())
        {
          v18 = _MADLog(@"V2");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v22 = v13;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "URL to asset: %@", buf, 0xCu);
          }
        }

        goto LABEL_16;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = 0;
  }

LABEL_16:
  v19 = v13;

  return v13;
}

id purposeDirectoryName(void *a1)
{
  if (a1)
  {
    v1 = normalizePurpose(a1);
    v2 = [NSString stringWithFormat:@"purpose_%@", v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isReboot()
{
  v0 = BootSessionUUID();
  v1 = +[NSFileManager defaultManager];
  v2 = [v1 fileExistsAtPath:@"/.nofollow/private/var/run/bootSessionMA.txt"];

  if (v2)
  {
    v17 = 0;
    v3 = [NSString stringWithContentsOfFile:@"/.nofollow/private/var/run/bootSessionMA.txt" encoding:4 error:&v17];
    v4 = v17;
    if (v4)
    {
      v5 = _MADLog(@"V2");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v4 localizedDescription];
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Error reading boot UUID: %@", buf, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v10 = [v3 stringByTrimmingCharactersInSet:v9];

      v7 = [SUCore stringIsEqual:v10 to:v0]^ 1;
      v3 = v10;
    }
  }

  else
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = @"/.nofollow/private/var/run/bootSessionMA.txt";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Boot session file does not exist at path: %@", buf, 0xCu);
    }

    v7 = 0;
    v4 = 0;
    v3 = 0;
  }

  v16 = v4;
  v11 = [v0 writeToFile:@"/.nofollow/private/var/run/bootSessionMA.txt" atomically:1 encoding:4 error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    v13 = _MADLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v12 checkedDescription];
      *buf = 138412546;
      v19 = @"/.nofollow/private/var/run/bootSessionMA.txt";
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Error writing boot session UUID to path:%@ | err:%@", buf, 0x16u);
    }
  }

  return v7;
}

id BootSessionUUID()
{
  if (BootSessionUUID_onceSessionBootUUID != -1)
  {
    BootSessionUUID_cold_1();
  }

  v1 = BootSessionUUID_stringValue;

  return v1;
}

BOOL isWellFormedAssetId(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] >= 0x14 && objc_msgSend(v1, "length") <= 0x3C)
  {
    v4 = assetIdDisallowedCharacterSet();
    v2 = [v1 rangeOfCharacterFromSet:v4] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL isWellFormedSystemBuildId(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] >= 0x14 && objc_msgSend(v1, "length") <= 0x64)
  {
    v4 = assetTypeDisallowedCharacterSet();
    v2 = [v1 rangeOfCharacterFromSet:v4] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL isWellFormedNormalizedAssetType(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_"];
  v3 = [v2 invertedSet];

  v5 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 hasPrefix:@"com_apple_MobileAsset_"] && (v4 = objc_msgSend(v1, "length"), v4 > objc_msgSend(@"com_apple_MobileAsset_", "length")) && objc_msgSend(v1, "rangeOfCharacterFromSet:", v3) == 0x7FFFFFFFFFFFFFFFLL;
  return v5;
}

uint64_t isWellFormedTokenFileName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v1 length] >= 5 && objc_msgSend(v1, "length") < 0x81)
      {
        v7 = tokenFileDisallowedCharacterSet();
        v8 = [v1 rangeOfCharacterFromSet:v7];

        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v2 = _MADLog(@"V2");
          if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v10 = 0;
          v3 = "TokenFileName passed in contains invalid characters in string";
          v4 = &v10;
          goto LABEL_11;
        }

        if ([v1 hasSuffix:@".tok"])
        {
          v5 = 1;
          goto LABEL_13;
        }

        v2 = _MADLog(@"V2");
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          v9 = 0;
          v3 = "TokenFileName passed in has an invalid file suffix";
          v4 = &v9;
          goto LABEL_11;
        }
      }

      else
      {
        v2 = _MADLog(@"V2");
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          v11 = 0;
          v3 = "TokenFileName passed in has an invalid length";
          v4 = &v11;
LABEL_11:
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, v3, v4, 2u);
        }
      }
    }

    else
    {
      v2 = _MADLog(@"V2");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v3 = "TokenFileName passed in is not a string";
        v4 = buf;
        goto LABEL_11;
      }
    }
  }

  else
  {
    v2 = _MADLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v3 = "TokenFileName passed in was null";
      v4 = &v13;
      goto LABEL_11;
    }
  }

LABEL_12:

  v5 = 0;
LABEL_13:

  return v5;
}

id assetTypeFromAssetDirectory(void *a1)
{
  if (a1)
  {
    v1 = [a1 pathComponents];
    v2 = [v1 count];
    v3 = v2 - 2;
    if (v2 >= 2)
    {
      v4 = v2;
      v5 = [v1 objectAtIndexedSubscript:v3];
      v6 = [v5 hasPrefix:@"purpose_"];

      if (v6)
      {
        if (v4 == &dword_0 + 2)
        {
          goto LABEL_8;
        }

        v3 = v4 - 3;
      }

      v7 = [v1 objectAtIndexedSubscript:v3];
      if (v7)
      {
        v8 = v7;
        v9 = assetTypeFromNormalized(v7);

LABEL_9:
        goto LABEL_11;
      }
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void __getSupportedAnalyticsEventFields_block_invoke(id a1)
{
  getSupportedAnalyticsEventFields_supportedAnalyticsEventsFields = [[NSSet alloc] initWithArray:&off_4F6FE0];

  _objc_release_x1();
}

uint64_t usingCentralizedCachedelete()
{
  if (usingCentralizedCachedelete_onceToken != -1)
  {
    usingCentralizedCachedelete_cold_1();
  }

  return usingCentralizedCachedelete_eapfsEnabled;
}

void __usingCentralizedCachedelete_block_invoke(id a1)
{
  if (_MAPreferencesIsCentralizedCacheDeleteEnabled())
  {
    v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
    if (v1)
    {
      v2 = v1;
      CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        CFRelease(CFProperty);
        usingCentralizedCachedelete_eapfsEnabled = 1;
      }

      IOObjectRelease(v2);
    }
  }

  else
  {
    usingCentralizedCachedelete_eapfsEnabled = 0;
  }
}

BOOL isDirStatsEnabledForDirectory(void *a1)
{
  v1 = a1;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v2 = fsctl([v1 UTF8String], 0xC1104A71uLL, v18, 0);
  if (v2)
  {
    v3 = _MADLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v10 = 138543618;
      v11 = v1;
      v12 = 1024;
      LODWORD(v13) = v4;
      v5 = "Unable to check dirstats for directory %{public}@, error %i";
      v6 = v3;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 18;
LABEL_7:
      _os_log_impl(&dword_0, v6, v7, v5, &v10, v8);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (_MAPreferencesIsVerboseLoggingEnabled())
  {
    v3 = _MADLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138413058;
      v11 = v1;
      v12 = 2048;
      v13 = *(&v19 + 1);
      v14 = 2048;
      v15 = v20;
      v16 = 2048;
      v17 = v19;
      v5 = "%@:\ndescendants: %llu\nphysical size: %llu\ngen-count: %llu\n";
      v6 = v3;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 42;
      goto LABEL_7;
    }

LABEL_8:
  }

  return v2 == 0;
}

BOOL enableDirStatsForDirectory(void *a1)
{
  v1 = a1;
  memset(v10, 0, sizeof(v10));
  DWORD1(v10[0]) = 1;
  v2 = fsctl([v1 UTF8String], 0xC1104A71uLL, v10, 0);
  if (v2)
  {
    v3 = _MADLog(@"V2");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v6 = 138543618;
      v7 = v1;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Unable to enable dirstats for directory %{public}@, error %i", &v6, 0x12u);
    }
  }

  return v2 == 0;
}

BOOL markItemPurgeableWithFlagsAndStartTime(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = +[NSFileManager defaultManager];
  if (![v6 fileExistsAtPath:@"/private/var/MobileSoftwareUpdate/.MAAMigrated.plist"])
  {

    goto LABEL_8;
  }

  v7 = isDirStatsEnabledForDirectory(v5);

  if (!v7)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  if (fsctl([v5 UTF8String], 0xC0084A44uLL, &v15, 0))
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to clear purgability, errno:%d", buf, 8u);
    }

    goto LABEL_8;
  }

  *buf = a2;
  v19 = xmmword_33C230;
  v20 = 0;
  v21 = a3;
  v22 = 0;
  v12 = fsctl([v5 UTF8String], 0xC0304A6FuLL, buf, 0);
  v10 = v12 == 0;
  if (v12)
  {
    v13 = _MADLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *v16 = 67109120;
      v17 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Failed to mark purgeable with label, errno:%d", v16, 8u);
    }
  }

LABEL_9:

  return v10;
}

BOOL markItemPurgeableWithUrgencyAndGarbageCollectionPolicy(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  if (![v6 isEqualToString:@"NeverCollected"])
  {
    if ([v7 isEqualToString:@"Precious"])
    {
      v10 = 2678400000000000;
LABEL_9:
      v11 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      started = markItemPurgeableWithFlagsAndStartTime(v5, a2 | 0x10000, v11 + v10);
      goto LABEL_10;
    }

LABEL_8:
    v10 = 1296000000000000;
    goto LABEL_9;
  }

  v8 = _MADLog(@"V2");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "API MISUSE: markItemPurgeableWithUrgencyAndGarbageCollectionPolicy called with NeverCollected policy", v13, 2u);
  }

  started = 0;
LABEL_10:

  return started;
}

uint64_t cacheDeleteLevelForPolicyValue(unint64_t a1)
{
  if (a1 < 0x320)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 0x258)
  {
    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 >= 0x190)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a1 < 200)
  {
    v3 = 0;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

id getSoftwareUpdateBrainTypes()
{
  if (getSoftwareUpdateBrainTypes_softwareUpdateBrainTypesOnce != -1)
  {
    getSoftwareUpdateBrainTypes_cold_1();
  }

  v1 = getSoftwareUpdateBrainTypes_softwareUpdateBrainAssetTypes;

  return v1;
}

void __getSoftwareUpdateBrainTypes_block_invoke(id a1)
{
  getSoftwareUpdateBrainTypes_softwareUpdateBrainAssetTypes = [[NSSet alloc] initWithArray:&off_4F6FF8];

  _objc_release_x1();
}

void __getSoftwareUpdateTypes_block_invoke(id a1)
{
  v4 = [[NSSet alloc] initWithArray:&off_4F7010];
  v1 = getSoftwareUpdateBrainTypes();
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = getSoftwareUpdateTypes_softwareUpdateAssetTypes;
  getSoftwareUpdateTypes_softwareUpdateAssetTypes = v2;
}

id isSoftwareUpdateBrainType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = getSoftwareUpdateBrainTypes();
    v3 = [v2 containsObject:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id isSystemAppType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [&off_4F7028 containsObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isBuildAlignedType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [&__NSArray0__struct containsObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isUserInteractionAllowedType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (isSoftwareUpdateType(v1))
    {
      updated = &dword_0 + 1;
    }

    else
    {
      updated = isSoftwareUpdateBrainType(v1);
    }
  }

  else
  {
    updated = 0;
  }

  return updated;
}

id getPreallocatedSpaceAllowedTypes()
{
  if (getPreallocatedSpaceAllowedTypes_allowedTypesOnce != -1)
  {
    getPreallocatedSpaceAllowedTypes_cold_1();
  }

  v1 = getPreallocatedSpaceAllowedTypes_allowedAssetTypes;

  return v1;
}

void __getPreallocatedSpaceAllowedTypes_block_invoke(id a1)
{
  v4 = [[NSSet alloc] initWithArray:&__NSArray0__struct];
  v1 = getSoftwareUpdateTypes();
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = getPreallocatedSpaceAllowedTypes_allowedAssetTypes;
  getPreallocatedSpaceAllowedTypes_allowedAssetTypes = v2;
}

id isPreallocateSpaceAllowedType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = getPreallocatedSpaceAllowedTypes();
    v3 = [v2 containsObject:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id isDisallowedFromContentCaching(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [NSSet setWithArray:&__NSArray0__struct];
    v3 = [v2 containsObject:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t getIsKnoxSupportedFromPallasURL(void *a1)
{
  v1 = [a1 host];
  v2 = [v1 lowercaseString];

  LODWORD(v1) = [v2 isEqualToString:@"gdmf.apple.com"];
  return v1 ^ 1;
}

uint64_t urlSupportsAuthenticatedPallas(void *a1)
{
  v1 = a1;
  if (urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallasDispatchOnce != -1)
  {
    urlSupportsAuthenticatedPallas_cold_1();
  }

  if (!v1)
  {
    v2 = _MADLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446210;
    v24 = "urlSupportsAuthenticatedPallas";
    v11 = "[AuthenticatedPallas]: Invalid url passed to %{public}s";
    v12 = v2;
    v13 = 12;
LABEL_21:
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_22;
  }

  if (!urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas)
  {
    v2 = _MADLog(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v11 = "[AuthenticatedPallas]: domainsSupportingAuthenticatedPallas not initialized";
    v12 = v2;
    v13 = 2;
    goto LABEL_21;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas;
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
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[AuthenticatedPallas]: URL %{public}@ supports authenticated pallas", buf, 0xCu);
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

void __urlSupportsAuthenticatedPallas_block_invoke(id a1)
{
  v1 = [[NSMutableSet alloc] initWithArray:&off_4F7040];
  v2 = urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas;
  urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas = v1;

  if (os_variant_has_internal_content())
  {
    v3 = _MAPreferencesCopyNSStringValue(@"AdditionalAuthenticatedPallasServer");
    if (v3)
    {
      v4 = _MADLog(@"V2");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138543362;
        v6 = v3;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[AuthenticatedPallas]: {urlSupportsAuthenticatedPallas} Adding %{public}@ to set of domains supporting authenticated pallas", &v5, 0xCu);
      }

      [urlSupportsAuthenticatedPallas_domainsSupportingAuthenticatedPallas addObject:v3];
    }
  }
}

void __isSSONeededForURL_block_invoke(id a1)
{
  v1 = [[NSMutableSet alloc] initWithArray:&off_4F7058];
  v2 = isSSONeededForURL_domainsNeedingSSO;
  isSSONeededForURL_domainsNeedingSSO = v1;

  if (os_variant_has_internal_content())
  {
    v3 = _MAPreferencesCopyNSStringValue(@"AdditionalSSOServer");
    if (v3)
    {
      v4 = _MADLog(@"V2");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138543362;
        v6 = v3;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "{isSSONeededForURL} Adding %{public}@ to set of domains needing SSO", &v5, 0xCu);
      }

      [isSSONeededForURL_domainsNeedingSSO addObject:v3];
    }
  }
}

void *getLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (!v9)
  {
    v16 = _MADLog(@"V2");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v35 = 0;
    v17 = "Attempting to get local url with nil asset type";
    v18 = &v35;
LABEL_13:
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    goto LABEL_14;
  }

  if (!v10)
  {
    v16 = _MADLog(@"V2");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v34 = 0;
    v17 = "Attempting to get local url with nil asset id";
    v18 = &v34;
    goto LABEL_13;
  }

  v13 = normalizedAssetType(v9);
  if (!v13)
  {
    v16 = _MADLog(@"V2");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Attempting to get local URL with asset-type that could not be normalized";
      v18 = buf;
      goto LABEL_13;
    }

LABEL_14:

    v19 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = v13;
  if (a3 == 5)
  {
    v15 = @"/System/Library/PreinstalledAssetsV2/RequiredByOs";
    goto LABEL_18;
  }

  if (a3 != 6)
  {
    if (v11)
    {
      v24 = [NSURL URLWithString:v11];
      goto LABEL_21;
    }

    v31 = _MADLog(@"V2");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Attempting to get local url with nil default repo for a non preinstalled asset", v32, 2u);
    }

    v19 = 0;
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v15 = @"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs";
LABEL_18:
  v23 = getRepositoryPath(v15);
  v24 = [NSURL URLWithString:v23];

LABEL_21:
  v25 = [v24 URLByAppendingPathComponent:v14];

  if (v12)
  {
    v26 = purposeDirectoryName(v12);
    v27 = [v25 URLByAppendingPathComponent:v26];

    v25 = v27;
  }

  v28 = [NSString stringWithFormat:@"%@.%@", v10, @"asset"];
  v19 = [v28 stringByAppendingPathComponent:@"AssetData"];

  v20 = [v25 URLByAppendingPathComponent:v19];

  if (v12)
  {
    v29 = purposeDirectoryName(v12);
    v30 = [v20 URLByAppendingPathComponent:v29];

    v20 = v30;
  }

LABEL_16:
  v21 = v20;

  return v20;
}

id getAutoLocalUrlFromTypeGivenDefaultRepoWithPurpose(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v13 = _MADLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 0;
      v14 = "Attempting to get local URL with nil asset-type";
      v15 = &v25;
LABEL_10:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
    }

LABEL_11:

    v11 = 0;
LABEL_12:
    v16 = 0;
    goto LABEL_19;
  }

  v10 = normalizedAssetType(v7);
  if (!v10)
  {
    v13 = _MADLog(@"V2");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Attempting to get local URL with asset-type that could not be normalized";
      v15 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v11 = v10;
  if (a2 == 5)
  {
    v12 = @"/System/Library/PreinstalledAssetsV2/RequiredByOs";
    goto LABEL_14;
  }

  if (a2 == 6)
  {
    v12 = @"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs";
LABEL_14:
    v17 = getRepositoryPath(v12);
    v18 = [NSURL fileURLWithPath:v17];

    goto LABEL_17;
  }

  if (!v8)
  {
    v22 = _MADLog(@"V2");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Attempting to get local url with nil default repo for a non preinstalled asset", v23, 2u);
    }

    goto LABEL_12;
  }

  v18 = [NSURL fileURLWithPath:v8];
LABEL_17:
  v16 = [v18 URLByAppendingPathComponent:v11];

  if (v9)
  {
    v19 = purposeDirectoryName(v9);
    v20 = [v16 URLByAppendingPathComponent:v19];

    v16 = v20;
  }

LABEL_19:

  return v16;
}