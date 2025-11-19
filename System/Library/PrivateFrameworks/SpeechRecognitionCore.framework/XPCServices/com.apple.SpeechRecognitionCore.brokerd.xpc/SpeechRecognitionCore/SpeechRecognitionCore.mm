id RXOSLog()
{
  if (qword_100020DE8 != -1)
  {
    sub_100012674();
  }

  v1 = qword_100020DE0;

  return v1;
}

void sub_100001864(id a1)
{
  qword_100020DE0 = os_log_create("com.apple.SpeechRecognitionCore", "SRCLogs");

  _objc_release_x1();
}

CFMutableStringRef RDLanguageAssets::createLanguageFromLocaleID(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"_", @"-", v4, 0);
  return MutableCopy;
}

CFMutableStringRef RDLanguageAssets::createLocaleIDFromLanguage(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"-", @"_", v4, 0);
  return MutableCopy;
}

const __CFDictionary *RDLanguageAssets::CopyInstallationStatus(RDLanguageAssets *this)
{
  v8 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v1 = [qword_100020DF0 copyInstallationStatusForLangaugesWithError:&v8];
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "InstallationStatus resultStatus=%@", buf, 0xCu);
  }

  if (v8)
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "InstallationStatus failed with: %@", buf, 0xCu);
    }
  }

  if (!v1)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v1);
  v5 = RXGetAssetFallbackLocales();
  if (v5)
  {
    RDLanguageAssets::addAliasLocalesToResultStatus(v5, MutableCopy, v6);
  }

  CFRelease(v1);
  return MutableCopy;
}

void RDLanguageAssets::addAliasLocalesToResultStatus(RDLanguageAssets *this, const __CFDictionary *a2, __CFDictionary *a3)
{
  Count = CFDictionaryGetCount(this);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(this, v7, 0);
    for (i = 0; i != v6; ++i)
    {
      LanguageFromLocaleID = RDLanguageAssets::createLanguageFromLocaleID(v7[i], v8);
      Value = CFDictionaryGetValue(this, v7[i]);
      if (Value)
      {
        v13 = RDLanguageAssets::createLanguageFromLocaleID(Value, v12);
        v14 = CFDictionaryGetValue(a2, v13);
        if (v14)
        {
          v15 = v14;
          if (!CFDictionaryGetValue(a2, LanguageFromLocaleID))
          {
            CFDictionaryAddValue(a2, LanguageFromLocaleID, v15);
          }
        }

        CFRelease(v13);
      }

      CFRelease(LanguageFromLocaleID);
    }

    free(v7);
  }
}

CFTypeRef RDLanguageAssets::InstallAndCopyQuasarModelPathForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v4 = RXGetAssetFallbackLocaleIdentifier();
  CFRelease(LocaleIDFromLanguage);
  v10 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = this;
  }

  v6 = [qword_100020DF0 copyInstalledQuasarModelPathForLanguage:v5 error:&v10];
  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = this;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "InstallAndCopyQuasarModelPathForLanguage language=%@ resultPath=%@", buf, 0x16u);
  }

  if (v10)
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "InstallAndCopyQuasarModelPathForLanguage failed with: %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    return CFRetain(v6);
  }

  else
  {
    return 0;
  }
}

CFTypeRef RDLanguageAssets::CopyInstalledAssetPathForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v3 = RXGetAssetFallbackLocaleIdentifier();
  if (v3)
  {
    v5 = CFRetain(v3);
    if (LocaleIDFromLanguage)
    {
      CFRelease(LocaleIDFromLanguage);
    }
  }

  else
  {
    v5 = LocaleIDFromLanguage;
  }

  LanguageFromLocaleID = RDLanguageAssets::createLanguageFromLocaleID(v5, v4);
  v11 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v7 = [qword_100020DF0 copyInstalledAssetPathForLangaugeWithError:LanguageFromLocaleID error:&v11];
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  if (v11)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CopyAssetPath failed with: %@", buf, 0xCu);
    }
  }

  if (LanguageFromLocaleID)
  {
    CFRelease(LanguageFromLocaleID);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

CFTypeRef RDLanguageAssets::CopySupportedLanguagesForVoiceControl(RDLanguageAssets *this)
{
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  result = [qword_100020DF0 supportedLanguagesForVoiceControl];
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef RDLanguageAssets::CopyInstalledAssetSupportedTasksForLanguage(const __CFString *this, const __CFString *a2)
{
  LocaleIDFromLanguage = RDLanguageAssets::createLocaleIDFromLanguage(this, a2);
  v3 = RXGetAssetFallbackLocaleIdentifier();
  if (v3)
  {
    v5 = CFRetain(v3);
    if (LocaleIDFromLanguage)
    {
      CFRelease(LocaleIDFromLanguage);
    }
  }

  else
  {
    v5 = LocaleIDFromLanguage;
  }

  LanguageFromLocaleID = RDLanguageAssets::createLanguageFromLocaleID(v5, v4);
  v11 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v7 = [qword_100020DF0 copyInstalledAssetSupportedTasksForLangaugeWithError:LanguageFromLocaleID error:&v11];
  if (v11)
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CopyAssetSupportedTasks failed with: %@", buf, 0xCu);
    }
  }

  if (LanguageFromLocaleID)
  {
    CFRelease(LanguageFromLocaleID);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v9 = RXOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "RDLanguageAssets: supportedTasks:%@", buf, 0xCu);
  }

  if (v7)
  {
    return CFRetain(v7);
  }

  else
  {
    return 0;
  }
}

void RDLanguageAssets::CancelDownloadForLanguage(RDLanguageAssets *this, const __CFString *a2)
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = this;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CancelDownloadForLanguage language=%@", buf, 0xCu);
  }

  v5 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  [qword_100020DF0 cancelDownloadForLanguage:this error:&v5];
  if (v5)
  {
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "CancelDownloadForLanguage failed with: %@", buf, 0xCu);
    }
  }
}

id RDLanguageAssets::PurgeInstalledQuasarAssets(RDLanguageAssets *this)
{
  v5 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_100012688();
  }

  v1 = [qword_100020DF0 purgeInstalledAssetsWithError:&v5];
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Assets purged %@", buf, 0xCu);
  }

  if (v5)
  {
    v3 = RXOSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "PurgeInstalledQuasarAssets failed with: %@", buf, 0xCu);
    }
  }

  return [v1 intValue];
}

void RDLanguageAssets::SetPurgeabilityForLanguages(RDLanguageAssets *this, const __CFArray *a2)
{
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v8 = this;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SetPurgeabilityForLanguages languages=%@%d", buf, 0x12u);
  }

  v6 = 0;
  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  [qword_100020DF0 setPurgeabilityForLanguages:this withPurgeability:a2 error:&v6];
  if (v6)
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "SetPurgeabilityForLanguages failed with: %@", buf, 0xCu);
    }
  }
}

id RDLanguageAssets::RemovePeerForProgressCallback(_xpc_connection_s *a1)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = xpc_connection_get_pid(a1);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing Peer %d for callback", v4, 8u);
  }

  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  return [qword_100020DF0 removePeerFromCallback:a1];
}

id RDLanguageAssets::AddPeerForProgressCallback(_xpc_connection_s *a1)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = xpc_connection_get_pid(a1);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding Peer %d for callback", v4, 8u);
  }

  if (qword_100020DF8 != -1)
  {
    sub_10001269C();
  }

  return [qword_100020DF0 addPeerForCallback:a1];
}

void sub_100002580(id a1)
{
  v1 = RXOSLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Using RDAssetManager2", v2, 2u);
  }

  qword_100020DF0 = +[RDAssetManager2 sharedInstance];
}

void sub_100002D44(id a1)
{
  qword_100020E00 = objc_alloc_init(RDAssetManager);

  _objc_release_x1();
}

void sub_100002ED8(uint64_t a1)
{
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"with";
    }

    else
    {
      v3 = @"without";
    }

    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Kicking off catalog download %@ urgency", buf, 0xCu);
  }

  if (([*(a1 + 32) catalogDownloadInProgress] & 1) == 0)
  {
    if (*(a1 + 40) == 1)
    {
      v4 = *(a1 + 32);
LABEL_13:
      [v4 setCatalogDownloadInProgress:1];
      v9 = RXOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downloading EmbeddedSpeech catalog", buf, 2u);
      }

      v10 = sub_100003118(*(a1 + 40));
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000317C;
      v11[3] = &unk_10001C9B0;
      v11[4] = *(a1 + 32);
      [MAAsset startCatalogDownload:@"com.apple.MobileAsset.EmbeddedSpeech" options:v10 then:v11];

      return;
    }

    v5 = +[NSDate date];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;

    v4 = *(a1 + 32);
    if (v7 - v4[1] >= 86400.0)
    {
      goto LABEL_13;
    }

    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Too early since last catalog download. Returning.", buf, 2u);
    }
  }
}

id sub_100003118(int a1)
{
  v2 = objc_alloc_init(MADownloadOptions);
  [v2 setAllowsCellularAccess:0];
  [v2 setDiscretionary:a1 ^ 1u];
  [v2 setRequiresPowerPluggedIn:0];

  return v2;
}

void sub_10000317C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCatalogDownloadInProgress:0];
  v4 = RXOSLog();
  v5 = v4;
  if (!a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sucessfully downloaded the catalog", buf, 2u);
    }

    v12 = +[NSDate date];
    [v12 timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 8) = v13;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [*(a1 + 32) requestedLanguagesForDownload];
    v14 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = *(a1 + 32);
          v20 = *(v19 + 24);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100003400;
          v21[3] = &unk_10001C988;
          v21[4] = v19;
          v21[5] = v18;
          dispatch_async(v20, v21);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v15);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) _errorStringForDownloadResult:a2];
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The MobileAsset catalog download failed: error = %@", buf, 0xCu);
  }

  if ([*(a1 + 32) sendCallback])
  {
    v7 = *(a1 + 32);
    v8 = [v7 _errorStringForDownloadResult:a2];
    LODWORD(v9) = -1.0;
    LODWORD(v10) = -1.0;
    LODWORD(v11) = -1.0;
    [v7 _sendDownloadCallbackDictionaryWithLanguage:0 downloadPhase:@"DownloadFailed" timeRemaining:v8 bytesWritten:v9 bytesTotal:v10 error:v11];
LABEL_15:
  }
}

uint64_t sub_100003550(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003568(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 queryAndCopyInstallationStatusForLangaugesWithError:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *(*(a1[5] + 8) + 40);
  if (!v8 || ![v8 count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

id sub_100003CCC(void *a1)
{
  v1 = [a1 stringByAppendingPathComponent:@"mini.json"];
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v3 = [NSData dataWithContentsOfFile:v1];
    if (!v3)
    {
      v5 = RXOSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "could not read contents from : %@", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = RXOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ : not a valid json", buf, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_18;
      }

      v6 = [v4 objectForKey:@"model-info"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 objectForKey:@"tasks"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v8 containsObject:@"DictationCC"];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_17;
      }
    }

    v7 = 0;
LABEL_17:

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = @"mini.json";
    v13 = 2112;
    v14 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ does not exist at: %@ ", buf, 0x16u);
  }

  v7 = 0;
LABEL_20:

  return v7;
}

void sub_100004454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004474(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLangaugeWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_100004A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100004AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) catalogDownloadInProgress];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 requestedLanguagesForDownload];
    v5 = [v4 containsObject:*(a1 + 40)];

    if (v5)
    {
      return;
    }

    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Catalog download is in progress, caching %@", buf, 0xCu);
    }

    v8 = [*(a1 + 32) requestedLanguagesForDownload];
    [v8 addObject:*(a1 + 40)];

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Catalog download in progress";
    v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
    goto LABEL_8;
  }

  v15 = *(a1 + 40);
  v22 = 0;
  v16 = [v3 _installedAssetForLanguage:v15 error:&v22];
  v11 = v22;
  v17 = [v16 _es_quasarModelPath];
  v18 = [v17 copy];
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v21 = *(*(a1 + 56) + 8);
    v11 = v11;
    v14 = *(v21 + 40);
    *(v21 + 40) = v11;
LABEL_8:
  }
}

void sub_100004D94(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004E44;
  v6[3] = &unk_10001CA78;
  v10 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  dispatch_async(v3, v6);
}

void sub_100004E44(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    v4 = [*(a1 + 32) results];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = 0;
    v7 = [v5 _installedAssetFromFoundAssets:v4 language:v6 error:&v9];
    v2 = v9;
    if (!v7)
    {
      v8 = RXOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote fetch asset fetch got assets but none have been installed yet: %@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _errorStringForQueryResult:*(a1 + 56)];
    *buf = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Async asset query failed for query=%@, error=%@", buf, 0x16u);
LABEL_9:
  }
}

void sub_100006220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isStalled];
  v5 = RXOSLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v23 = 134218240;
      v24 = COERCE_DOUBLE([v3 totalWritten]);
      v25 = 2048;
      v26 = [v3 totalExpected];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset Download Progress stalled at %lld of %lld bytes", &v23, 0x16u);
    }

    if ([*(a1 + 32) sendCallback])
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) _es_language];
      v9 = [v3 totalWritten];
      *&v10 = [v3 totalExpected];
      v11 = @"Stalled";
      LODWORD(v12) = -1.0;
      v13 = v7;
      v14 = v8;
      *&v15 = v9;
LABEL_10:
      [v13 _sendDownloadCallbackDictionaryWithLanguage:v14 downloadPhase:v11 timeRemaining:0 bytesWritten:v12 bytesTotal:v15 error:v10];
    }
  }

  else
  {
    if (v6)
    {
      v16 = [v3 totalWritten];
      v17 = (v16 / [v3 totalExpected]);
      [v3 expectedTimeRemaining];
      v23 = 134218240;
      v24 = v17;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asset Download progress: %.2f percent , ~%.2f seconds remaining", &v23, 0x16u);
    }

    if ([*(a1 + 32) sendCallback])
    {
      v19 = *(a1 + 32);
      v8 = [*(a1 + 40) _es_language];
      [v3 expectedTimeRemaining];
      v21 = v20;
      v22 = [v3 totalWritten];
      *&v10 = [v3 totalExpected];
      v11 = @"Downloading";
      v13 = v19;
      v14 = v8;
      *&v12 = v21;
      *&v15 = v22;
      goto LABEL_10;
    }
  }
}

void sub_100006430(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ([*(a1 + 32) sendCallback])
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) _es_language];
      v6 = [*(a1 + 32) _errorStringForDownloadResult:a2];
      LODWORD(v7) = -1.0;
      LODWORD(v8) = -1.0;
      LODWORD(v9) = -1.0;
      [v4 _sendDownloadCallbackDictionaryWithLanguage:v5 downloadPhase:@"DownloadFailed" timeRemaining:v6 bytesWritten:v7 bytesTotal:v8 error:v9];
    }

    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) _errorStringForDownloadResult:a2];
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Asset download failed: %@", &v17, 0xCu);
    }

    goto LABEL_10;
  }

  v12 = RXOSLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asset download successful", &v17, 2u);
  }

  if ([*(a1 + 32) sendCallback])
  {
    v13 = *(a1 + 32);
    v10 = [*(a1 + 40) _es_language];
    LODWORD(v14) = -1.0;
    LODWORD(v15) = -1.0;
    LODWORD(v16) = -1.0;
    [v13 _sendDownloadCallbackDictionaryWithLanguage:v10 downloadPhase:@"Downloaded" timeRemaining:0 bytesWritten:v14 bytesTotal:v15 error:v16];
LABEL_10:
  }
}

void sub_1000065E8(uint64_t a1, uint64_t a2)
{
  v4 = RXOSLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) _errorStringForPurgeResult:a2];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to purge %@: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Purged %@", &v9, 0xCu);
  }
}

void *sub_100006718(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  v5 = [v4 queryMetaDataSync];
  if (!v5)
  {
    v20 = v4;
    [v4 results];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v24 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v22;
      v14 = ASAttributeUnarchivedSize;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 _es_isInstalled])
          {
            buf[0] = 0;
            v3[2](v3, v16, buf);
            if (buf[0] == 1)
            {
              goto LABEL_18;
            }

            v17 = [v16 attributes];
            v18 = [v17 objectForKey:v14];
            v12 += [v18 longLongValue];
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

LABEL_18:

    a1 = [NSNumber numberWithLongLong:v12];
    v4 = v20;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MobileAsset is sad: %ld", buf, 0xCu);
  }

  if (a1)
  {
    v26 = @"MAQueryResult";
    v8 = [NSNumber numberWithInteger:v6];
    v27 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *a1 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v9];

    a1 = 0;
LABEL_19:
  }

  return a1;
}

void sub_100006AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006AF8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = RXOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Purging asset for CacheDelete: %@", buf, 0xCu);
  }

  v7 = [v5 purgeSync];
  if (v7)
  {
    v8 = [NSNumber numberWithInteger:v7, @"MAPurgeResult"];
    v16 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:102 userInfo:v9];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = RXOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Purging failed: %@", buf, 0xCu);
    }

    *a3 = 1;
  }
}

void sub_1000076E8(id a1)
{
  qword_100020E10 = objc_alloc_init(RDAssetManager2);

  _objc_release_x1();
}

uint64_t sub_10000806C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008084(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  v3 = [v2 _queryAndCopyInstallationStatusForLanguagesWithError:&v9];
  v4 = v9;
  v5 = v9;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *(*(a1[5] + 8) + 40);
  if (!v8 || ![v8 count])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

void sub_1000082E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100008308(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

intptr_t sub_100008B04(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_100008FCC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  [v2 _cancelDownloadForLanguageWithError:v3 withError:&obj];
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

void sub_1000094F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v10 = 0;
  [SFSpeechAssetManager setAssetsPurgeability:v2 forLanguages:v3 error:&v10];
  v4 = v10;
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    *buf = 138412802;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setPurgeabilityForLanguages, languages=%@  purgeability= %d error=%@", buf, 0x1Cu);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v4;
}

void sub_1000098A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1000098D0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 _installedAssetForLanguage:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = [v4 copy];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_100009E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100009E7C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000A408(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 16);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A4D8;
  v10[3] = &unk_10001CF30;
  v10[4] = v7;
  v9 = v6;
  v14 = *(a1 + 56);
  v11 = v9;
  v13 = a2;
  v12 = *(a1 + 48);
  v15 = *(a1 + 60);
  v16 = a3;
  dispatch_async(v8, v10);
}

void sub_10000A4D8(uint64_t a1)
{
  if ([*(a1 + 32) _isActiveDownloadForLanguage:*(a1 + 40) downloadId:*(a1 + 64)])
  {
    v2 = fmin(*(a1 + 56) / 100.0, 1.0);
    v3 = +[NSDate date];
    [v3 timeIntervalSinceDate:*(a1 + 48)];
    v5 = v4;

    v6 = -1.0;
    if (v2 > 0.0)
    {
      v7 = 0.0;
      if (v5 >= 0.0)
      {
        v7 = v5;
      }

      v8 = v7;
      v6 = (1.0 - v2) * v8 / v2;
    }

    v9 = *(a1 + 68) * v2;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (*(a1 + 72))
    {
      [v10 _stalledDownloadForLanguage:v11];
      v12 = RXOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (v9 / *(a1 + 68));
        v14 = *(a1 + 64);
        v15 = [*(a1 + 32) _downloadStatusDescription];
        v29 = 134218754;
        *v30 = v13;
        *&v30[8] = 2048;
        *&v30[10] = v6;
        v31 = 1024;
        v32 = v14;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asset Download Progress stalled at : %.2f ratio , ~%.2f seconds remaining, downloadId=%d, %@", &v29, 0x26u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        LODWORD(v18) = *(a1 + 68);
        v21 = @"Stalled";
        LODWORD(v16) = -1.0;
LABEL_20:
        *&v17 = v9;
        [v19 _sendDownloadCallbackDictionaryWithLanguage:v20 downloadPhase:v21 timeRemaining:0 bytesWritten:v16 bytesTotal:v17 error:v18];
      }
    }

    else
    {
      if ([v10 _isDownloadingStalledForLanguage:v11])
      {
        [*(a1 + 32) _resumeStalledDownloadForLanguage:*(a1 + 40)];
      }

      v25 = RXOSLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = (v9 / *(a1 + 68));
        v27 = *(a1 + 64);
        v28 = [*(a1 + 32) _downloadStatusDescription];
        v29 = 134218754;
        *v30 = v26;
        *&v30[8] = 2048;
        *&v30[10] = v6;
        v31 = 1024;
        v32 = v27;
        v33 = 2112;
        v34 = v28;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Asset Download progress: %.2f ratio , ~%.2f seconds remaining, downloadId=%d, %@", &v29, 0x26u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        LODWORD(v18) = *(a1 + 68);
        v21 = @"Downloading";
        *&v16 = v6;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v22 = RXOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 64);
      v24 = [*(a1 + 32) _downloadStatusDescription];
      v29 = 67109378;
      *v30 = v23;
      *&v30[4] = 2112;
      *&v30[6] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignoring non-active asset download progress downloadId=%d, %@", &v29, 0x12u);
    }
  }
}

void sub_10000A7F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A8E4;
  block[3] = &unk_10001CF80;
  block[4] = v8;
  v10 = v7;
  v17 = *(a1 + 48);
  v14 = v10;
  v15 = v6;
  v16 = v5;
  v18 = *(a1 + 52);
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, block);
}

void sub_10000A8E4(uint64_t a1)
{
  if ([*(a1 + 32) _isActiveDownloadForLanguage:*(a1 + 40) downloadId:*(a1 + 64)])
  {
    [*(a1 + 32) _endAllDownloadsForLanguage:*(a1 + 40)];
    v2 = *(a1 + 48);
    if ([*(a1 + 56) length])
    {
      v3 = sub_10000B448(*(a1 + 56), 0, @"DictationCC");
    }

    else
    {
      v3 = 0;
    }

    if ([*(a1 + 56) length] && (v3 & 1) == 0)
    {
      v33 = NSLocalizedFailureReasonErrorKey;
      v34 = @"Asset is incompatible";
      v6 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v7 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v6];

      v2 = v7;
    }

    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = [*(a1 + 32) _downloadStatusDescription];
      v25 = 138413314;
      *v26 = v9;
      *&v26[8] = 2112;
      *&v26[10] = v2;
      v27 = 1024;
      v28 = v3;
      v29 = 1024;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asset downloaded, assetPath=%@, error=%@, isCompatibleAsset=%d, downloadId=%d, %@", &v25, 0x2Cu);
    }

    v12 = RXOSLog();
    v13 = v12;
    if (v3)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asset download successful", &v25, 2u);
      }

      v14 = *(a1 + 68);
      if ([*(a1 + 32) _sendCallback])
      {
        LODWORD(v16) = *(a1 + 68);
        LODWORD(v15) = v14;
        [*(a1 + 32) _sendDownloadCallbackDictionaryWithLanguage:*(a1 + 40) downloadPhase:@"Downloading" timeRemaining:0 bytesWritten:0.0 bytesTotal:v15 error:v16];
        LODWORD(v17) = *(a1 + 68);
        LODWORD(v18) = v14;
        [*(a1 + 32) _sendDownloadCallbackDictionaryWithLanguage:*(a1 + 40) downloadPhase:@"Downloaded" timeRemaining:0 bytesWritten:0.0 bytesTotal:v18 error:v17];
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Asset download failed", &v25, 2u);
      }

      if ([*(a1 + 32) _sendCallback])
      {
        v20 = *(a1 + 32);
        v19 = *(a1 + 40);
        v21 = [v2 description];
        LODWORD(v22) = -1.0;
        LODWORD(v23) = -1.0;
        LODWORD(v24) = -1.0;
        [v20 _sendDownloadCallbackDictionaryWithLanguage:v19 downloadPhase:@"DownloadFailed" timeRemaining:v21 bytesWritten:v22 bytesTotal:v23 error:v24];
      }
    }
  }

  else
  {
    v2 = RXOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 64);
      v5 = [*(a1 + 32) _downloadStatusDescription];
      v25 = 67109378;
      *v26 = v4;
      *&v26[4] = 2112;
      *&v26[6] = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring non-active asset download downloadId=%d, %@", &v25, 0x12u);
    }
  }
}

id sub_10000B448(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [v5 stringByAppendingPathComponent:@"mini.json"];
    v8 = +[NSFileManager defaultManager];
    if (([v8 fileExistsAtPath:v7] & 1) == 0)
    {
      v9 = RXOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = @"mini.json";
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ does not exist at: %@ ", buf, 0x16u);
      }

      v13 = 0;
      goto LABEL_26;
    }

    v9 = [NSData dataWithContentsOfFile:v7];
    if (!v9)
    {
      v11 = RXOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "could not read contents from : %@", buf, 0xCu);
      }

      v13 = 0;
      goto LABEL_25;
    }

    v30 = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v30];
    v11 = v30;
    if (v11)
    {
      v12 = RXOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ : not a valid json", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = 0;
        goto LABEL_24;
      }

      v12 = v10;
      v14 = +[_EARSpeechRecognizer minimumSupportedConfigurationVersion];
      [v14 floatValue];
      v16 = v15;

      v17 = +[_EARSpeechRecognizer maximumSupportedConfigurationVersion];
      [v17 floatValue];
      v19 = v18;

      v20 = [v12 objectForKey:@"version-major"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v20 floatValue], v21 >= v16) && (objc_msgSend(v20, "floatValue"), v22 <= v19))
      {
        v29 = [v12 objectForKey:@"model-info"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v29;
          v28 = [v27 objectForKey:@"version"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (a2 && (isKindOfClass & 1) != 0)
          {
            *a2 = v28;
          }

          v25 = [v27 objectForKey:@"tasks"];
          v26 = v25;
          if ([v28 length] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v13 = [v25 containsObject:v6];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

LABEL_24:
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "empty quasarModelPath", buf, 2u);
  }

  v13 = 0;
LABEL_27:

  return v13;
}

void RDMinions::LockReader(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  sub_10000DE44(a1 + 120, &v17);
  v9 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BA10;
  block[3] = &unk_10001CFF8;
  v16 = a1;
  v13 = v17;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void sub_10000BA10(uint64_t a1)
{
  v2 = *(a1 + 56);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  do
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000BBA4;
    v3[3] = &unk_10001CFD0;
    v7 = v2;
    v4 = *(a1 + 32);
    v5 = &v8;
    v6 = v12;
    dispatch_sync(&_dispatch_main_q, v3);
    if ((v9[3] & 1) == 0)
    {
      pthread_mutex_lock(&stru_100020E38);
      pthread_cond_wait(&stru_100020E78, &stru_100020E38);
      pthread_mutex_unlock(&stru_100020E38);
    }
  }

  while ((v9[3] & 1) == 0);
  _Block_object_dispose(&v8, 8);
  xpc_connection_send_message(*(a1 + 40), *(a1 + 48));
  _Block_object_dispose(v12, 8);
}

void sub_10000BB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BBA4(unint64_t *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 128);
  if (!v3)
  {
LABEL_7:
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "daemon died while waiting for read lock", buf, 2u);
    }

    goto LABEL_10;
  }

  v4 = a1[4];
  while (1)
  {
    v5 = v3[4];
    if (v4 >= v5)
    {
      break;
    }

LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_6;
  }

  if (!*(v2 + 168))
  {
    sub_10000E404(v2 + 120, a1 + 4);
    sub_10000DE44(v2 + 144, a1 + 4);
LABEL_10:
    v7 = a1 + 5;
    v8 = 1;
    goto LABEL_11;
  }

  v7 = a1 + 6;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "daemon waiting for read lock", v10, 2u);
    }

    v8 = 0;
LABEL_11:
    *(*(*v7 + 8) + 24) = v8;
  }
}

id RDMinions::Summon(RDMinions *this)
{
  val[0] = 0;
  if (*(this + 11))
  {
    val[0] = *(*(this + 9) + 32);
    sub_10000E404(this + 72, val);
    v2 = RXOSLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [val[0] processIdentifier];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "minion(%d) recycled.", &buf, 8u);
    }
  }

  else
  {
    memset(out, 0, sizeof(out));
    uuid_generate(out);
    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.SpeechRecognitionCore.speechrecognitiond"];
    v5 = val[0];
    val[0] = v4;

    if (val[0])
    {
      v6 = [[NSUUID alloc] initWithUUIDBytes:out];
      [val[0] _setUUID:v6];

      v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRDBrokerProtocol];
      [val[0] setRemoteObjectInterface:v7];

      objc_initWeak(&location, val[0]);
      v8 = val[0];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000C14C;
      v19[3] = &unk_10001D020;
      objc_copyWeak(&v20, &location);
      [v8 setInvalidationHandler:v19];
      [val[0] resume];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v24 = 0x3032000000;
      v25 = sub_10000C474;
      v26 = sub_10000C484;
      v27 = 0;
      v9 = [val[0] synchronousRemoteObjectProxyWithErrorHandler:&stru_10001D060];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000C490;
      v18[3] = &unk_10001D088;
      v18[4] = &buf;
      [v9 brokerIntro:@"Hello" reply:v18];
      v10 = os_transaction_create();
      val[2] = val;
      v11 = sub_10000F208(this + 96, val);
      v12 = v11[5];
      v11[5] = v10;

      _Block_object_dispose(&buf, 8);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    else
    {
      v13 = RXOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = out;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to create new minion instance %s", &buf, 0xCu);
      }
    }

    v14 = RXOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [val[0] processIdentifier];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "minion(%d) created.", &buf, 8u);
    }
  }

  v16 = val[0];

  return v16;
}

void sub_10000C14C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10000C1A8(WeakRetained);
}

void sub_10000C1A8(void *a1)
{
  v1 = a1;
  v17 = v1;
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19[0] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing minion %p\n", buf, 0xCu);
  }

  v3 = sMinions;
  if (sMinions != &qword_100020EE0)
  {
    while (1)
    {
      v4 = *(v3 + 80);
      if (v4 != (v3 + 88))
      {
        break;
      }

LABEL_12:
      if (sub_10000E404(v3 + 104, &v17))
      {
        sub_10000DE44(v3 + 128, &v17);
        v11 = RXOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v17 processIdentifier];
          v16 = (v3 + 32);
          if (*(v3 + 55) < 0)
          {
            v16 = *v16;
          }

          *buf = 67109378;
          LODWORD(v19[0]) = v15;
          WORD2(v19[0]) = 2080;
          *(v19 + 6) = v16;
          v14 = "daemon(%d) [%s] is now idle (was batch).";
          goto LABEL_25;
        }

LABEL_26:

        goto LABEL_27;
      }

      v8 = *(v3 + 8);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 16);
          v7 = *v9 == v3;
          v3 = v9;
        }

        while (!v7);
      }

      v3 = v9;
      if (v9 == &qword_100020EE0)
      {
        goto LABEL_27;
      }
    }

    while (v4[8] != v17)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
      if (v6 == (v3 + 88))
      {
        goto LABEL_12;
      }
    }

    v10 = v4[7] - 1;
    v4[7] = v10;
    if (!v10)
    {
      sub_10000F11C((v3 + 80), v4 + 4);
      sub_10000DE44(v3 + 128, &v17);
      v11 = RXOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v17 processIdentifier];
        v13 = (v3 + 32);
        if (*(v3 + 55) < 0)
        {
          v13 = *v13;
        }

        *buf = 67109378;
        LODWORD(v19[0]) = v12;
        WORD2(v19[0]) = 2080;
        *(v19 + 6) = v13;
        v14 = "daemon(%d) [%s] is now idle (was live).";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x12u);
      }

      goto LABEL_26;
    }
  }

LABEL_27:
}

uint64_t sub_10000C474(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void **sub_10000C4CC(void **a1)
{
  v3 = a1;
  sub_10000F338(&v3);
  return a1;
}

void RDRecognizers::RDRecognizers(RDRecognizers *this)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  v1 = 0;
  out_token = 0;
  notify_register_dispatch("com.apple.sessionagent.screenIsLocked", &out_token, &_dispatch_main_q, &stru_10001D0C8);
  notify_register_dispatch("com.apple.sessionagent.screenIsUnlocked", &v1, &_dispatch_main_q, &stru_10001D0E8);
}

void sub_10000C590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10000F338(va);
  _Unwind_Resume(a1);
}

unint64_t RDRecognizers::UpdateRecognizer(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  int64 = xpc_dictionary_get_int64(v7, kRDKeyRecognizerID[0]);
  v16 = xpc_dictionary_get_value(v7, kRDKeyWantFeedback[0]);
  if (v16)
  {
    if ((int64 & 0x8000000000000000) != 0 || (v17 = *a1, int64 >= 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3)))
    {
      v19 = *(a1 + 32);
      if (v19)
      {
        *(a1 + 32) = v19 - 1;
        v17 = *a1;
        v20 = 40 * int64 + 40;
        do
        {
          ++int64;
          v21 = *(v17 + v20);
          v20 += 40;
        }

        while (v21);
      }

      else
      {
        v25 = *(a1 + 8);
        int64 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - *a1) >> 3);
        v26 = *(a1 + 16);
        if (v25 >= v26)
        {
          if (int64 + 1 > 0x666666666666666)
          {
            sub_10000F480();
          }

          v28 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - *a1) >> 3);
          v29 = 2 * v28;
          if (2 * v28 <= int64 + 1)
          {
            v29 = int64 + 1;
          }

          if (v28 >= 0x333333333333333)
          {
            v30 = 0x666666666666666;
          }

          else
          {
            v30 = v29;
          }

          v39[4] = a1;
          if (v30)
          {
            sub_10000F498(a1, v30);
          }

          v31 = 40 * int64;
          v39[0] = 0;
          v39[1] = v31;
          v39[3] = 0;
          *v31 = 0;
          *(v31 + 32) = 0;
          v39[2] = 40 * int64 + 40;
          sub_10000F3B8(a1, v39);
          v27 = *(a1 + 8);
          sub_10000F4F0(v39);
        }

        else
        {
          *v25 = 0;
          v25[4] = 0;
          v27 = v25 + 5;
        }

        *(a1 + 8) = v27;
        v17 = *a1;
      }

      v32 = *(a1 + 24);
      *(a1 + 24) = v32 + 1;
      *(v17 + 40 * int64 + 16) = v32;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v33 = v17 + 40 * int64;
    objc_storeStrong(v33, a2);
    *(v33 + 8) = xpc_dictionary_get_uint64(v7, kRDKeyActivityMode[0]);
    *(v33 + 20) = xpc_BOOL_get_value(v16);
    if (v18)
    {
      *(v33 + 22) = 0;
    }

    v34 = xpc_dictionary_get_int64(v7, kRDKeyClientPID[0]);
    *(v33 + 24) = v34;
    if (!v34)
    {
      *(v33 + 24) = xpc_connection_get_pid(v6);
    }

    v35 = xpc_dictionary_get_value(v7, kRDKeyCommandInfo[0]);
    if (v35)
    {
      v36 = *(v33 + 32);
      if (v36)
      {
        CFRelease(v36);
      }

      if (xpc_get_type(v35) == &_xpc_type_array)
      {
        v37 = _CFXPCCreateCFObjectFromXPCObject();
      }

      else
      {
        v37 = 0;
      }

      *(v33 + 32) = v37;
    }

LABEL_40:
    goto LABEL_41;
  }

  if ((int64 & 0x8000000000000000) == 0 && int64 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3))
  {
    v22 = *a1 + 40 * int64;
    v23 = *(v22 + 32);
    if (v23)
    {
      CFRelease(v23);
      *(v22 + 32) = 0;
    }

    v24 = *v22;
    *v22 = 0;

    ++*(a1 + 32);
    goto LABEL_40;
  }

  sub_10000C938(0, v9, v10, v11, v12, v13, v14, v15, int64);
  int64 = -1;
LABEL_41:

  return int64;
}

void sub_10000C938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = CFStringCreateWithFormatAndArguments(0, 0, @"Received invalid recognizer ID in UpdateRecognizer %lld", &a9);
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v9, 0x8000100u, 0);
  CFRelease(v9);
  v11 = RXOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 68157954;
    Length = CFDataGetLength(ExternalRepresentation);
    v14 = 2080;
    BytePtr = CFDataGetBytePtr(ExternalRepresentation);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%.*s", buf, 0x12u);
  }

  CFRelease(ExternalRepresentation);
}

void RDRecognizers::RemovePeer(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v8 = v3;
    do
    {
      v6 = *v4;
      if (*v4 == v3)
      {
        v7 = *(v4 + 32);
        if (v7)
        {
          CFRelease(v7);
          *(v4 + 32) = 0;
          v6 = *v4;
        }

        *v4 = 0;

        ++a1[4];
        v3 = v8;
      }

      v4 += 40;
    }

    while (v4 != v5);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  pthread_mutex_init(&stru_100020E38, 0);
  pthread_cond_init(&stru_100020E78, 0);
  xpc_track_activity();
  xpc_main(sub_10000CB58);
}

void sub_10000CB58(void *a1)
{
  v1 = a1;
  v4 = v1;
  v2 = RXOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BrokerConnection: got event handler, adding peer", buf, 2u);
  }

  xpc_connection_set_target_queue(v1, &_dispatch_main_q);
  operator new();
}

void sub_10000CCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v90 = v4;
  xdict = v3;
  type = xpc_get_type(xdict);
  if (type != &_xpc_type_error)
  {
    if (type != &_xpc_type_dictionary)
    {
      __assert_rtn("brokerd_peer_event_handler", "RDBroker.mm", 750, "type == XPC_TYPE_DICTIONARY");
    }

    int64 = xpc_dictionary_get_int64(xdict, kRDKeyMessage[0]);
    v7 = int64;
    reply = 0;
    switch(int64)
    {
      case 0x1F4uLL:
        reply = xpc_dictionary_create_reply(xdict);
        v9 = kRDKeyRecognizerID[0];
        updated = RDRecognizers::UpdateRecognizer(qword_100020EA8, v4, xdict);
        xpc_dictionary_set_int64(reply, v9, updated);
        goto LABEL_64;
      case 0x1F5uLL:
        reply = xpc_dictionary_create_reply(xdict);
        goto LABEL_64;
      case 0x1F6uLL:
        reply = xpc_dictionary_create_reply(xdict);
        v41 = xpc_dictionary_get_value(xdict, kRDKeyLocale[0]);
        v42 = _CFXPCCreateCFObjectFromXPCObject();

        if (v42)
        {
          CFRelease(v42);
        }

        goto LABEL_64;
      case 0x1F7uLL:
        goto LABEL_96;
      case 0x1F8uLL:
        v32 = RDLanguageAssets::CopyInstallationStatus(int64);
        reply = xpc_dictionary_create_reply(xdict);
        if (!v32)
        {
          goto LABEL_64;
        }

        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeyAssetStatus[0], v33);
        CFRelease(v32);
        goto LABEL_63;
      case 0x1F9uLL:
        string = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v44 = CFStringCreateWithCStringNoCopy(0, string, 0x8000100u, kCFAllocatorNull);
        v46 = RDLanguageAssets::InstallAndCopyQuasarModelPathForLanguage(v44, v45);
        if (v46)
        {
          CFRelease(v46);
        }

        goto LABEL_95;
      case 0x1FAuLL:
        v47 = RDLanguageAssets::PurgeInstalledQuasarAssets(int64);
        reply = xpc_dictionary_create_reply(xdict);
        xpc_dictionary_set_int64(reply, kRDKeyPurgeStatus[0], v47);
        goto LABEL_64;
      case 0x1FBuLL:
        if (xpc_dictionary_get_BOOL(xdict, kRDKeyDownloadProgress))
        {
          RDLanguageAssets::AddPeerForProgressCallback(v4);
          reply = 0;
          byte_100020ED0 = 1;
          goto LABEL_96;
        }

        RDLanguageAssets::RemovePeerForProgressCallback(v4);
        goto LABEL_95;
      case 0x1FCuLL:
        v52 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v53 = CFStringCreateWithCStringNoCopy(0, v52, 0x8000100u, kCFAllocatorNull);
        RDLanguageAssets::CancelDownloadForLanguage(v53, v54);
        goto LABEL_95;
      case 0x1FDuLL:
        v35 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v36 = CFStringCreateWithCStringNoCopy(0, v35, 0x8000100u, kCFAllocatorNull);
        v38 = RDLanguageAssets::CopyInstalledAssetPathForLanguage(v36, v37);
        if (!v38)
        {
          goto LABEL_95;
        }

        reply = xpc_dictionary_create_reply(xdict);
        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeyInstalledAssetPath[0], v33);
        CFRelease(v38);
        goto LABEL_63;
      case 0x1FEuLL:
        v48 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        v49 = CFStringCreateWithCStringNoCopy(0, v48, 0x8000100u, kCFAllocatorNull);
        v51 = RDLanguageAssets::CopyInstalledAssetSupportedTasksForLanguage(v49, v50);
        if (!v51)
        {
          goto LABEL_95;
        }

        reply = xpc_dictionary_create_reply(xdict);
        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeyInstalledAssetSupportedTasks[0], v33);
        CFRelease(v51);
        goto LABEL_63;
      case 0x1FFuLL:
        v22 = xpc_dictionary_get_array(xdict, kRDKeyLocales[0]);
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        for (i = 0; ; ++i)
        {
          count = xpc_array_get_count(v22);
          if (i >= count)
          {
            break;
          }

          v26 = xpc_array_get_string(v22, i);
          v27 = CFStringCreateWithCStringNoCopy(0, v26, 0x8000100u, kCFAllocatorNull);
          MutableCopy = CFStringCreateMutableCopy(0, 0, v27);
          v97.length = CFStringGetLength(v27);
          v97.location = 0;
          CFStringFindAndReplace(MutableCopy, @"_", @"-", v97, 0);
          if (RXEngineTypeForLocaleIdentifier() == 1)
          {
            CFArrayAppendValue(Mutable, MutableCopy);
          }

          CFRelease(MutableCopy);
          v29 = CFStringCreateMutableCopy(0, 0, v27);
          v98.length = CFStringGetLength(v27);
          v98.location = 0;
          CFStringFindAndReplace(v29, @"-", @"_", v98, 0);
          CFRelease(v27);
          v30 = RXGetAssetFallbackLocaleIdentifier();
          CFRelease(v29);
          if (v30)
          {
            v31 = CFStringCreateMutableCopy(0, 0, v30);
            v99.length = CFStringGetLength(v30);
            v99.location = 0;
            CFStringFindAndReplace(v31, @"_", @"-", v99, 0);
            if (RXEngineTypeForLocaleIdentifier() == 1)
            {
              CFArrayAppendValue(Mutable, v31);
            }

            CFRelease(v31);
          }
        }

        v55 = RDLanguageAssets::CopyInstallationStatus(count);
        v56 = CFGetTypeID(v55);
        if (v56 == CFDictionaryGetTypeID())
        {
          CFDictionaryGetCount(v55);
          operator new[]();
        }

        RDLanguageAssets::SetPurgeabilityForLanguages(Mutable, 0);
        CFRelease(Mutable);
        CFRelease(v55);

        goto LABEL_95;
      case 0x200uLL:
        v34 = RDLanguageAssets::CopySupportedLanguagesForVoiceControl(int64);
        if (!v34)
        {
          goto LABEL_95;
        }

        reply = xpc_dictionary_create_reply(xdict);
        v33 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(reply, kRDKeySupportedLanguagesForVoiceControl[0], v33);
        CFRelease(v34);
LABEL_63:

        goto LABEL_64;
      case 0x201uLL:
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync listenForExternalChanges];
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync sync];
        reply = 0;
        goto LABEL_96;
      case 0x202uLL:
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync listenForExternalChanges];
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync removeAllVocabularyEntriesFromCloud];
        reply = 0;
        goto LABEL_96;
      default:
        if (int64 != 101)
        {
          if (int64 == 999)
          {
            v80 = RXOSLog();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              pid = xpc_connection_get_pid(v4);
              sub_1000126EC(buf, pid, v80);
            }

            abort();
          }

          v21 = RXOSLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = xpc_connection_get_pid(v4);
            *&buf[8] = 2048;
            *&buf[10] = v7;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "peer(%d) unknown or unimplemented message %lld", buf, 0x12u);
          }

LABEL_95:
          reply = 0;
LABEL_96:

          goto LABEL_97;
        }

        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync listenForExternalChanges];
        +[_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync sync];
        reply = xpc_dictionary_create_reply(xdict);
        v39 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
        sub_10000E1A4(&v89, v39);
        if ((xpc_dictionary_get_uint64(xdict, kRDKeyOptions[0]) & 0x400000) != 0)
        {
          v40 = ".q";
        }

        else
        {
          if ((xpc_dictionary_get_uint64(xdict, kRDKeyOptions[0]) & 0x800000) == 0)
          {
            goto LABEL_72;
          }

          v40 = ".n";
        }

        std::string::append(&v89, v40);
LABEL_72:
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v89;
        }

        else
        {
          v57 = v89.__r_.__value_.__r.__words[0];
        }

        sub_10000E1A4(buf, v57);
        __p[0] = buf;
        v58 = sub_10000E9A8(&sMinions, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v59 = (v58 + 56);
        v88 = 0;
        v60 = *(v58 + 79);
        if (v60 < 0)
        {
          v60 = *(v58 + 64);
        }

        if (!v60)
        {
          v61 = xpc_dictionary_get_string(xdict, kRDKeyLocale[0]);
          std::string::assign((v58 + 56), v61);
        }

        if (!xpc_dictionary_get_BOOL(xdict, kRDKeyLiveAudio[0]))
        {
          v88 = RDMinions::Summon((v58 + 56));
          if (!v88)
          {
            goto LABEL_107;
          }

          sub_10000DE44(v58 + 104, &v88);
          v72 = RXOSLog();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            *&buf[4] = v88;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "BrokerConnection: Summoning new batch minion %p", buf, 0xCu);
          }

          v73 = v88;
LABEL_105:
          if (v73)
          {
            __p[0] = 0;
            __p[1] = __p;
            v84 = 0x3032000000;
            v85 = sub_10000C474;
            v86 = sub_10000C484;
            v87 = 0;
            v78 = [v73 remoteObjectProxy];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_10000E25C;
            *&buf[24] = &unk_10001D138;
            v95 = __p;
            v79 = reply;
            v92 = v79;
            v93 = v88;
            v94 = v4;
            v96 = v59;
            [v78 brokerIntro:@"Hello" reply:buf];

            _Block_object_dispose(__p, 8);
            reply = 0;
          }

LABEL_107:
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

LABEL_64:
          if (reply)
          {
            xpc_connection_send_message(v4, reply);
          }

          goto LABEL_96;
        }

        v62 = xpc_dictionary_get_string(xdict, kRDKeyAudioDevice[0]);
        if (v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = "?";
        }

        sub_10000E1A4(__p, v63);
        *buf = __p;
        v64 = sub_10000EDF4(v58 + 80, __p);
        if (*(v64 + 64))
        {
          v65 = RXOSLog();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_103;
          }

          v66 = *(v64 + 64);
          v67 = [v66 processIdentifier];
          v68 = __p;
          if (v84 < 0)
          {
            v68 = __p[0];
          }

          *buf = 134218498;
          *&buf[4] = v66;
          *&buf[12] = 1024;
          *&buf[14] = v67;
          *&buf[18] = 2080;
          *&buf[20] = v68;
          v69 = "BrokerConnection: Using existing live minion %p[%d] for audio device %s";
          v70 = v65;
          v71 = 28;
        }

        else
        {
          v74 = RDMinions::Summon(v59);
          v75 = *(v64 + 64);
          *(v64 + 64) = v74;

          v65 = RXOSLog();
          if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_103;
          }

          v76 = *(v64 + 64);
          v77 = __p;
          if (v84 < 0)
          {
            v77 = __p[0];
          }

          *buf = 134218242;
          *&buf[4] = v76;
          *&buf[12] = 2080;
          *&buf[14] = v77;
          v69 = "BrokerConnection: Summoning new live minion %p for audio device %s";
          v70 = v65;
          v71 = 22;
        }

        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, v69, buf, v71);
LABEL_103:

        v73 = *(v64 + 64);
        v88 = v73;
        ++*(v64 + 56);
        if (SHIBYTE(v84) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_105;
    }
  }

  v11 = xdict == &_xpc_error_connection_invalid || xdict == &_xpc_error_connection_interrupted;
  if (v11)
  {
    v12 = RXOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = xpc_connection_get_pid(v4);
      v14 = "INTERRUPTED";
      if (xdict == &_xpc_error_connection_invalid)
      {
        v14 = "INVALID";
      }

      *buf = 67109378;
      *&buf[4] = v13;
      *&buf[8] = 2080;
      *&buf[10] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "peer(%d) XPC_ERROR_CONNECTION_%s", buf, 0x12u);
    }

    context = xpc_connection_get_context(v4);
    v16 = *context;
    if (*context != context + 1)
    {
      do
      {
        v17 = v16[4];
        sub_10000C1A8(v17);

        v18 = v16[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v16[2];
            v11 = *v19 == v16;
            v16 = v19;
          }

          while (!v11);
        }

        v16 = v19;
      }

      while (v19 != context + 1);
    }

    RDRecognizers::RemovePeer(qword_100020EA8, v4);
    if (byte_100020ED0 == 1)
    {
      RDLanguageAssets::RemovePeerForProgressCallback(v4);
    }

    sub_10000E404(&qword_100020E20, &v90);
    sub_10000E8A4(context, context[1]);
    operator delete();
  }

  if (xdict == &_xpc_error_termination_imminent)
  {
    v20 = RXOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(v4);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "peer(%d) XPC_ERROR_TERMINATION_IMMINENT", buf, 8u);
    }
  }

LABEL_97:
}

void *sub_10000DE44(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_10000DF30(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_10000E008(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_10000DF88(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10000DFD4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t *sub_10000E008(uint64_t *result, uint64_t *a2)
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

_BYTE *sub_10000E1A4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000E900();
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

void sub_10000E25C(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v5 = [*(*(*(a1 + 56) + 8) + 40) _endpoint];
  v6 = RXOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BrokerConnection: endpoint %@", buf, 0xCu);
  }

  xpc_dictionary_set_int64(*(a1 + 32), kRDKeyMessage[0], 201);
  xpc_dictionary_set_value(*(a1 + 32), kRDKeyConnection[0], v5);
  xpc_dictionary_set_uint64(*(a1 + 32), kRDKeyObjectID[0], *(a1 + 40));
  context = xpc_connection_get_context(*(a1 + 48));
  *buf = a1 + 40;
  v8 = sub_10000F02C(context, (a1 + 40));
  ++v8[5];
  RDMinions::LockReader(*(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 32));
}

uint64_t sub_10000E404(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10000E474(a1, v4);
  return 1;
}

uint64_t *sub_10000E474(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10000E4B0(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *sub_10000E4B0(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_10000E524(v6, a2);
  return v3;
}

uint64_t *sub_10000E524(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void sub_10000E8A4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000E8A4(a1, *a2);
    sub_10000E8A4(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10000E918(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10000E974(exception, a1);
}

std::logic_error *sub_10000E974(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10000E9A8(uint64_t a1, const void **a2)
{
  v2 = *sub_10000EABC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10000EABC(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_10000EBA4(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10000EBA4(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_10000EB58(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10000EC10(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_10000EBA4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_10000EC10(uint64_t a1)
{
  sub_10000EC60(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10000EC60(uint64_t a1)
{
  sub_10000E8A4(a1 + 144, *(a1 + 152));
  sub_10000E8A4(a1 + 120, *(a1 + 128));
  sub_10000ECE4(a1 + 96, *(a1 + 104));
  sub_10000E8A4(a1 + 72, *(a1 + 80));
  sub_10000E8A4(a1 + 48, *(a1 + 56));
  sub_10000ED48(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000ECE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000ECE4(a1, *a2);
    sub_10000ECE4(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10000ED48(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000ED48(a1, *a2);
    sub_10000ED48(a1, a2[1]);
    sub_10000EDA4((a2 + 4));

    operator delete(a2);
  }
}

void sub_10000EDA4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10000EDF4(uint64_t a1, const void **a2)
{
  v2 = *sub_10000EABC(a1, &v4, a2);
  if (!v2)
  {
    sub_10000EE9C();
  }

  return v2;
}

uint64_t sub_10000EF3C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10000EDA4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10000EF88(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_10000E900();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void *sub_10000F02C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000F11C(uint64_t **a1, const void **a2)
{
  v3 = sub_10000F178(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10000E4B0(a1, v3);
  sub_10000EDA4((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_10000F178(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_10000EBA4(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_10000EBA4(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void *sub_10000F208(uint64_t a1, unint64_t *a2)
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

void sub_10000F2DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000F2DC(a1, *a2);
    sub_10000F2DC(a1, a2[1]);
    sub_10000EC10((a2 + 4));

    operator delete(a2);
  }
}

void sub_10000F338(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10000F3B8(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = *(v7 + 1);
      *(v8 + 24) = *(v7 + 3);
      *(v8 + 8) = v10;
      v7 += 5;
      v8 += 40;
    }

    while (v7 != v4);
    do
    {
      v11 = *v5;
      v5 += 5;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  *(a1 + 8) = v12;
  a2[1] = v12;
  v13 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v13;
  v14 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void sub_10000F498(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_10000DFD4();
}

uint64_t sub_10000F4F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000F544()
{
  v0 = objc_autoreleasePoolPush();
  qword_100020E30 = 0;
  qword_100020E28 = 0;
  qword_100020E20 = &qword_100020E28;
  __cxa_atexit(sub_10000B8B4, &qword_100020E20, &_mh_execute_header);
  qword_100020EE8 = 0;
  qword_100020EE0 = 0;
  sMinions = &qword_100020EE0;
  __cxa_atexit(sub_10000C4A0, &sMinions, &_mh_execute_header);
  RDRecognizers::RDRecognizers(qword_100020EA8);
  __cxa_atexit(sub_10000C4CC, qword_100020EA8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t static VCVocabularySync.listenForExternalChanges()()
{
  v1 = sub_1000128A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000128C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((byte_100020EF0 & 1) == 0)
  {
    v19 = v6;
    v12 = [objc_opt_self() defaultCenter];
    v20 = v0;
    sub_10000F908(&qword_100020D60, &unk_100014F00);
    v13 = sub_100012984();
    v14 = [objc_opt_self() defaultStore];
    [v12 addObserver:v13 selector:"ubiquitousKeyValueStoreDidChange:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v14];

    swift_unknownObjectRelease();
    (*(v2 + 104))(v5, enum case for VCLogging.Category.vocabulary(_:), v1);
    sub_100012894();
    (*(v2 + 8))(v5, v1);
    v15 = sub_1000128B4();
    v16 = sub_100012924();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "VCVocabularySync.listenForExternalChanges() New observer added.", v17, 2u);
    }

    result = (*(v7 + 8))(v10, v19);
    byte_100020EF0 = 1;
  }

  return result;
}

uint64_t sub_10000F908(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id VCVocabularySync.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VCVocabularySync.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCVocabularySync();
  return objc_msgSendSuper2(&v2, "init");
}

id VCVocabularySync.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCVocabularySync();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000FB3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FC08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100012564(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001244C(v11);
  return v7;
}

unint64_t sub_10000FC08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000FD14(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100012974();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000FD14(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000FD60(a1, a2);
  sub_10000FE90(&off_10001D158);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000FD60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000FF7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100012974();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000128F4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FF7C(v10, 0);
        result = sub_100012964();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000FE90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000FFF0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000FF7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000F908(&qword_100020DD8, qword_100014F78);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FFF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F908(&qword_100020DD8, qword_100014F78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1000100E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100012934(*(v2 + 40));

  return sub_100010128(a1, v4);
}

unint64_t sub_100010128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012618(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100012944();
      sub_1000125C4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t _s39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySyncC4syncyyFZ_0()
{
  v0 = sub_100012814();
  v191 = *(v0 - 8);
  v192 = v0;
  v1 = *(v191 + 64);
  (__chkstk_darwin)();
  v190 = v177 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(sub_10000F908(&qword_100020DB0, &qword_100014F68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v193 = (v177 - v4);
  v5 = sub_10000F908(&qword_100020DB8, &qword_100014F70);
  v6 = *(v5 - 8);
  v203 = v5;
  v204 = v6;
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v187 = (v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v186 = (v177 - v11);
  v12 = __chkstk_darwin(v10);
  v185 = v177 - v13;
  v14 = __chkstk_darwin(v12);
  v202 = v177 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v177 - v17;
  __chkstk_darwin(v16);
  v189 = v177 - v19;
  v20 = sub_1000128A4();
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v24 = v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1000128C4();
  v25 = *(v205 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v205);
  v182 = v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v184 = v177 - v30;
  v31 = __chkstk_darwin(v29);
  v181 = v177 - v32;
  v33 = __chkstk_darwin(v31);
  v183 = v177 - v34;
  v35 = __chkstk_darwin(v33);
  v188 = v177 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = v177 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = v177 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = v177 - v44;
  __chkstk_darwin(v43);
  v47 = v177 - v46;
  v48 = v21[13];
  v194 = enum case for VCLogging.Category.vocabulary(_:);
  v195 = v48;
  v196 = v21 + 13;
  v48(v24);
  sub_100012894();
  v49 = v21[1];
  v198 = v21 + 1;
  v199 = v20;
  v197 = v49;
  v49(v24, v20);
  v50 = sub_1000128B4();
  v51 = sub_100012924();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "VCVocabularySync.sync() ###", v52, 2u);
  }

  v200 = *(v25 + 8);
  v201 = v25 + 8;
  v200(v47, v205);
  sub_100012864();
  v53 = sub_100012854();
  v54 = sub_100012834();
  v55 = sub_100012854();
  v56 = sub_100012824();

  if (v56)
  {
    v189 = v53;
    v57 = objc_opt_self();
    v58 = [v57 defaultStore];
    [v58 synchronize];

    v178 = v57;
    v59 = [v57 defaultStore];
    v177[1] = "atus";
    v60 = sub_1000128D4();
    v61 = [v59 dataForKey:v60];

    v62 = v204;
    v180 = v54;
    if (v61)
    {
      v63 = sub_1000127E4();
      v65 = v64;

      isa = sub_1000127D4().super.isa;
      v206 = 0;
      v67 = [(objc_class *)isa decompressedDataUsingAlgorithm:0 error:&v206];

      v68 = v206;
      v69 = v188;
      if (v67)
      {
        v70 = sub_1000127E4();
        v72 = v71;

        v73 = sub_100012754();
        v74 = *(v73 + 48);
        v75 = *(v73 + 52);
        swift_allocObject();
        sub_100012744();
        sub_10000F908(&qword_100020D90, "lA");
        sub_100012498(&qword_100020DC8, &qword_100020DD0);
        sub_100012734();
        v179 = 0;
        sub_100012350(v63, v65);

        sub_100012350(v70, v72);
      }

      else
      {
        v107 = v68;
        sub_1000127C4();

        swift_willThrow();
        v108 = v199;
        v195(v24, v194, v199);
        sub_100012894();
        v197(v24, v108);
        swift_errorRetain();
        v109 = sub_1000128B4();
        v110 = sub_100012914();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = 138543362;
          swift_errorRetain();
          v113 = _swift_stdlib_bridgeErrorToNSError();
          *(v111 + 4) = v113;
          *v112 = v113;
          _os_log_impl(&_mh_execute_header, v109, v110, "VCVocabularySync.sync(): Failed to decompress or decode cloudData. %{public}@", v111, 0xCu);
          sub_1000123EC(v112, &qword_100020DA8, "nA");

          v69 = v188;

          sub_100012350(v63, v65);
        }

        else
        {
          sub_100012350(v63, v65);
        }

        v62 = v204;
        v179 = 0;
        v200(v184, v205);
      }

      v104 = v185;
    }

    else
    {
      v100 = v199;
      v195(v24, v194, v199);
      sub_100012894();
      v197(v24, v100);
      v101 = sub_1000128B4();
      v102 = sub_100012924();
      v103 = os_log_type_enabled(v101, v102);
      v104 = v185;
      v69 = v188;
      if (v103)
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v101, v102, "VCVocabularySync.sync(): cloudData is nil", v105, 2u);
      }

      v200(v39, v205);
      v179 = 0;
    }

    v114 = v190;
    sub_100012804();
    v115 = v193;
    sub_1000127F4();
    v116 = v191;
    v117 = v114;
    v118 = v192;
    (*(v191 + 8))(v117, v192);
    (*(v116 + 56))(v115, 0, 1, v118);
    sub_100012874();
    sub_100012520(&qword_100020DC0);
    v119 = v202;
    sub_100012904();

    sub_1000123EC(v115, &qword_100020DB0, &qword_100014F68);
    v120 = v199;
    v195(v24, v194, v199);
    sub_100012894();
    v197(v24, v120);
    v121 = v62[2];
    v122 = v119;
    v123 = v203;
    v121(v104, v122, v203);
    v124 = sub_1000128B4();
    v125 = sub_100012924();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v206 = v127;
      *v126 = 136315138;
      v128 = sub_100012884();
      v130 = v129;
      v131 = v104;
      v132 = *(v204 + 8);
      v132(v131, v203);
      v133 = sub_10000FB3C(v128, v130, &v206);
      v62 = v204;

      *(v126 + 4) = v133;
      _os_log_impl(&_mh_execute_header, v124, v125, "VCVocabularySync.sync() mergeResult: %s", v126, 0xCu);
      sub_10001244C(v127);

      v123 = v203;

      v134 = v188;
    }

    else
    {

      v135 = v104;
      v132 = v62[1];
      v132(v135, v123);
      v134 = v69;
    }

    v200(v134, v205);
    v136 = v186;
    v121(v186, v202, v123);
    v137 = v62[11];
    v138 = v137(v136, v123);
    v139 = enum case for VCArrayMergeResult.bothNeedUpdates<A>(_:);
    if (v138 == enum case for VCArrayMergeResult.onlySelfNeedsUpdates<A>(_:) || v138 == enum case for VCArrayMergeResult.bothNeedUpdates<A>(_:))
    {
      v193 = v132;
      (*(v204 + 96))(v136, v123);
      v141._rawValue = *v136;
      sub_100012844(v141);

      v142 = v199;
      v195(v24, v194, v199);
      v143 = v183;
      sub_100012894();
      v197(v24, v142);
      v144 = sub_1000128B4();
      v145 = sub_100012924();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        _os_log_impl(&_mh_execute_header, v144, v145, "VCVocabularySync.sync(): Local data set", v146, 2u);
        v123 = v203;
      }

      v200(v143, v205);
      v140 = v187;
      v132 = v193;
    }

    else
    {
      v132(v136, v123);
      v140 = v187;
    }

    v121(v140, v202, v123);
    v147 = v137(v140, v123);
    if (v147 != enum case for VCArrayMergeResult.onlyOtherNeedsUpdates<A>(_:) && v147 != v139)
    {
      v132(v202, v123);

      return (v132)(v140, v123);
    }

    (*(v204 + 96))(v140, v123);
    v148 = *v140;
    v149 = sub_100012784();
    v150 = *(v149 + 48);
    v151 = *(v149 + 52);
    swift_allocObject();
    sub_100012774();
    v206 = v148;
    sub_10000F908(&qword_100020D90, "lA");
    sub_100012498(&qword_100020D98, &qword_100020DA0);
    v152 = v179;
    v153 = sub_100012764();
    if (v152)
    {

LABEL_37:
      v155 = v199;
      v195(v24, v194, v199);
      v156 = v182;
      sub_100012894();
      v197(v24, v155);
      swift_errorRetain();
      v157 = sub_1000128B4();
      v158 = sub_100012914();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *v159 = 138412290;
        swift_errorRetain();
        v161 = _swift_stdlib_bridgeErrorToNSError();
        *(v159 + 4) = v161;
        *v160 = v161;
        _os_log_impl(&_mh_execute_header, v157, v158, "VCVocabularySync.sync(): Failed to update cloud %@", v159, 0xCu);
        sub_1000123EC(v160, &qword_100020DA8, "nA");
      }

      v200(v156, v205);
      return (v132)(v202, v203);
    }

    v162 = v153;
    v163 = v154;

    v164 = sub_1000127D4().super.isa;
    v206 = 0;
    v165 = [(objc_class *)v164 compressedDataUsingAlgorithm:0 error:&v206];

    if (!v165)
    {
      v176 = v206;
      sub_1000127C4();

      swift_willThrow();
      sub_100012350(v162, v163);
      goto LABEL_37;
    }

    v166 = v132;
    v167 = v206;
    v168 = [v178 defaultStore];
    v169 = v165;
    v170 = sub_1000128D4();
    [v168 setObject:v169 forKey:v170];

    v171 = v199;
    v195(v24, v194, v199);
    v172 = v181;
    sub_100012894();
    v197(v24, v171);
    v173 = sub_1000128B4();
    v174 = sub_100012924();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&_mh_execute_header, v173, v174, "VCVocabularySync.sync(): Cloud data set", v175, 2u);
    }

    sub_100012350(v162, v163);
    v200(v172, v205);
    return v166(v202, v203);
  }

  else
  {
    v76 = v190;
    sub_100012804();
    v77 = v193;
    sub_1000127F4();
    v78 = v54;
    v79 = v191;
    v80 = v76;
    v81 = v192;
    (*(v191 + 8))(v80, v192);
    (*(v79 + 56))(v77, 0, 1, v81);
    v82 = v78;
    sub_100012874();
    sub_100012520(&qword_100020DC0);
    v83 = v189;
    sub_100012904();
    sub_1000123EC(v77, &qword_100020DB0, &qword_100014F68);
    v84 = v204;
    v85 = v83;
    v86 = v203;
    (*(v204 + 16))(v18, v85, v203);
    if ((*(v84 + 88))(v18, v86) == enum case for VCArrayMergeResult.bothNeedUpdates<A>(_:))
    {
      (*(v84 + 96))(v18, v86);
      v87 = *v18;
      v88 = v199;
      v195(v24, v194, v199);
      sub_100012894();
      v197(v24, v88);

      v89 = sub_1000128B4();
      v90 = v82;
      v91 = sub_100012924();
      if (os_log_type_enabled(v89, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 134349312;
        v93 = *(v90 + 16);

        *(v92 + 4) = v93;

        *(v92 + 12) = 2050;
        *(v92 + 14) = v87[2];

        _os_log_impl(&_mh_execute_header, v89, v91, "VCVocabularySync.sync(): syncVocabularyEntries is false. mergeResult == .bothNeedUpdates. oldEntriesCount: %{public}ld, newEntriesCount: %{public}ld", v92, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v200(v45, v205);
      v106._rawValue = v87;
      sub_100012844(v106);

      return (*(v84 + 8))(v189, v203);
    }

    else
    {

      v94 = *(v84 + 8);
      v94(v18, v86);
      v95 = v199;
      v195(v24, v194, v199);
      sub_100012894();
      v197(v24, v95);
      v96 = sub_1000128B4();
      v97 = sub_100012924();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "VCVocabularySync.sync(): syncVocabularyEntries is false. No change.", v98, 2u);
      }

      v200(v42, v205);
      return v94(v189, v86);
    }
  }
}

uint64_t sub_1000118F4()
{
  v0 = sub_1000128A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000128C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = sub_1000127A4();
  if (v19)
  {
    v20 = v19;
    v40 = sub_1000128E4();
    v41 = v21;
    sub_100012954();
    if (*(v20 + 16) && (v22 = sub_1000100E4(v42), (v23 & 1) != 0))
    {
      sub_100012564(*(v20 + 56) + 32 * v22, v43);
      sub_1000125C4(v42);

      if (swift_dynamicCast())
      {
        v24 = v40;
        (*(v1 + 104))(v4, enum case for VCLogging.Category.vocabulary(_:), v0);
        v25 = (v1 + 8);
        if (v24 == 2)
        {
          sub_100012894();
          (*v25)(v4, v0);
          v26 = sub_1000128B4();
          v27 = sub_100012914();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "VCVocabularySync.ubiquitousKeyValueStoreDidChange quota violation.", v28, 2u);
          }

          return (*(v6 + 8))(v18, v5);
        }

        else
        {
          sub_100012894();
          (*v25)(v4, v0);
          v36 = sub_1000128B4();
          v37 = sub_100012924();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "VCVocabularySync.ubiquitousKeyValueStoreDidChange", v38, 2u);
          }

          (*(v6 + 8))(v16, v5);
          return _s39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySyncC4syncyyFZ_0();
        }
      }
    }

    else
    {

      sub_1000125C4(v42);
    }

    (*(v1 + 104))(v4, enum case for VCLogging.Category.vocabulary(_:), v0);
    sub_100012894();
    (*(v1 + 8))(v4, v0);
    v30 = sub_1000128B4();
    v31 = sub_100012914();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "VCVocabularySync.ubiquitousKeyValueStoreDidChange reasonForChange is nil.", v32, 2u);
    }

    return (*(v6 + 8))(v13, v5);
  }

  else
  {
    (*(v1 + 104))(v4, enum case for VCLogging.Category.vocabulary(_:), v0);
    sub_100012894();
    (*(v1 + 8))(v4, v0);
    v33 = sub_1000128B4();
    v34 = sub_100012914();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "VCVocabularySync.ubiquitousKeyValueStoreDidChange userInfo is nil.", v35, 2u);
    }

    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t _s39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySyncC35removeAllVocabularyEntriesFromCloudyyFZ_0()
{
  v0 = sub_1000128A4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1000128C4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = sub_100012784();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_100012774();
  sub_10000F908(&qword_100020D90, "lA");
  sub_100012498(&qword_100020D98, &qword_100020DA0);
  v7 = sub_100012764();
  v9 = v8;

  v10 = [objc_opt_self() defaultStore];
  isa = sub_1000127D4().super.isa;
  v12 = sub_1000128D4();
  [v10 setData:isa forKey:v12];

  return sub_100012350(v7, v9);
}

uint64_t sub_100012350(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000123A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000123EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000F908(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001244C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100012498(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000123A4(&qword_100020D90, "lA");
    sub_100012520(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012520(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100012874();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000126EC(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "peer(%d) killed me (the bastard!)", buf, 8u);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}