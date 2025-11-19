id getLPLinkMetadataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLPLinkMetadataClass_softClass_1;
  v7 = getLPLinkMetadataClass_softClass_1;
  if (!getLPLinkMetadataClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLPLinkMetadataClass_block_invoke_1;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getLPLinkMetadataClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B35A880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSFUILoadedMetadataCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFUILoadedMetadataCollectionClass_softClass;
  v7 = getSFUILoadedMetadataCollectionClass_softClass;
  if (!getSFUILoadedMetadataCollectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSFUILoadedMetadataCollectionClass_block_invoke;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getSFUILoadedMetadataCollectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B35A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ShareSheetSupportsSharePlayStartFromApp()
{
  if (_ShareSheetSupportsSharePlayStartFromApp_onceToken != -1)
  {
    _ShareSheetSupportsSharePlayStartFromApp_cold_1();
  }

  return _ShareSheetSupportsSharePlayStartFromApp_hostEntitledForSharePlay;
}

id share_sheet_log()
{
  if (share_sheet_log_onceToken != -1)
  {
    share_sheet_log_cold_1();
  }

  v1 = share_sheet_log___logger;

  return v1;
}

void sub_18B35AD84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_18B35AEB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

uint64_t WebPrivacyLibraryCore()
{
  if (!WebPrivacyLibraryCore_frameworkLibrary)
  {
    WebPrivacyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return WebPrivacyLibraryCore_frameworkLibrary;
}

void sub_18B35BCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkPresentationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71F9320;
    v6 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LinkPresentationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
  }

  getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLPLinkMetadataClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkPresentationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71F9490;
    v6 = 0;
    LinkPresentationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (LinkPresentationLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
  }

  getLPLinkMetadataClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getLPLinkMetadataClass_block_invoke_1(uint64_t a1)
{
  LinkPresentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LPLinkMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPLinkMetadataClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
    LinkPresentationLibrary();
  }
}

void LinkPresentationLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __LinkPresentationLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71FAEC0;
    v3 = 0;
    LinkPresentationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!LinkPresentationLibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

void sub_18B35C4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _ShareSheetPlatformPrefersPopover()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    return (v1 & 0xFFFFFFFFFFFFFFFBLL) != 0;
  }

  if (_os_feature_enabled_impl())
  {
    return v1 != 4;
  }

  return (v1 & 0xFFFFFFFFFFFFFFFBLL) != 0;
}

uint64_t _ShareSheetSolariumEnabled()
{
  result = _UISolariumEnabled();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t _ShareSheetHostCanRenderInProcess()
{
  if (_ShareSheetHostCanUseCustomViewController_onceToken != -1)
  {
    _ShareSheetHostCanRenderInProcess_cold_1();
  }

  return _ShareSheetHostCanUseCustomViewController_hostHasEntitlement;
}

void sub_18B35E018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIActivityGetBuiltinActivities()
{
  v17[15] = *MEMORY[0x1E69E9840];
  v16 = objc_alloc_init(UIAirDropActivity);
  v17[0] = v16;
  v15 = objc_alloc_init(UISharePlayActivity);
  v17[1] = v15;
  v14 = objc_alloc_init(UICollaborationInviteWithLinkActivity);
  v17[2] = v14;
  v13 = objc_alloc_init(UICollaborationCopyLinkActivity);
  v17[3] = v13;
  v12 = objc_alloc_init(SUIShareActivity);
  v17[4] = v12;
  v11 = objc_alloc_init(UIAddToReadingListActivity);
  v17[5] = v11;
  v0 = objc_alloc_init(UISaveToCameraRollActivity);
  v17[6] = v0;
  v1 = objc_alloc_init(UICopyToPasteboardActivity);
  v17[7] = v1;
  v2 = objc_alloc_init(UIAssignToContactActivity);
  v17[8] = v2;
  v3 = objc_alloc_init(UIPrintActivity);
  v17[9] = v3;
  v4 = objc_alloc_init(_UICloudSharingActivity);
  v17[10] = v4;
  v5 = objc_alloc_init(UIMessageActivity);
  v17[11] = v5;
  v6 = objc_alloc_init(UIMailActivity);
  v17[12] = v6;
  v7 = objc_alloc_init(SHQuickNoteActivity);
  v17[13] = v7;
  v8 = objc_alloc_init(UIAddToHomeScreenActivity);
  v17[14] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:15];

  return v9;
}

void sh_dispatch_on_main_queue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v1 = block;
  }
}

void sub_18B35E68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FA9F8;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IsImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (IsImageFile(v3) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && IsImageData(v3, v4) || (_UIActivityItemIsLivePhoto(v3))
  {
    v5 = 1;
  }

  else
  {
    v5 = IsConformingToTypeFromItemProvider(*MEMORY[0x1E69637F8], v3);
  }

  return v5;
}

uint64_t IsImageFile(uint64_t a1)
{
  v1 = [_UIActivityPlaceholderItemProxy unproxiedItemForItem:a1];
  if ([v1 isFileURL])
  {
    v2 = _UIActivityUTIForURL(v1);
    v3 = v2;
    if (v2 && UTTypeConformsTo(v2, *MEMORY[0x1E69637F8]) && (v4 = CGImageSourceCreateWithURL(v1, 0)) != 0)
    {
      CFRelease(v4);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _UIActivityItemIsLivePhoto(void *a1)
{
  v1 = a1;
  if (NSClassFromString(&cfstr_Phlivephoto.isa))
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t IsConformingToTypeFromItemProvider(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (IsItemProvider(v4))
  {
    v5 = [v4 hasItemConformingToTypeIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t IsItemProvider(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

Class __getSFUILoadedMetadataCollectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_8)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_8;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FB308;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_8 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_8)
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
  result = objc_getClass("SFUILoadedMetadataCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUILoadedMetadataCollectionClass_block_invoke_cold_1();
  }

  getSFUILoadedMetadataCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initIMSharedMessageSendingUtilities()
{
  if (IMSharedUtilitiesLibrary_sOnce != -1)
  {
    initIMSharedMessageSendingUtilities_cold_1();
  }

  result = objc_getClass("IMSharedMessageSendingUtilities");
  classIMSharedMessageSendingUtilities = result;
  getIMSharedMessageSendingUtilitiesClass = IMSharedMessageSendingUtilitiesFunction;
  return result;
}

void *__IMSharedUtilitiesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IMSharedUtilities.framework/IMSharedUtilities", 2);
  IMSharedUtilitiesLibrary_sLib = result;
  return result;
}

Class initMCProfileConnection()
{
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    initMCProfileConnection_cold_1();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass = MCProfileConnectionFunction;
  return result;
}

Class initMCProfileConnection_0()
{
  if (ManagedConfigurationLibrary_sOnce_0 != -1)
  {
    initMCProfileConnection_cold_1_0();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection_0 = result;
  getMCProfileConnectionClass_0 = MCProfileConnectionFunction_0;
  return result;
}

Class initMCProfileConnection_1()
{
  if (ManagedConfigurationLibrary_sOnce_1 != -1)
  {
    initMCProfileConnection_cold_1_1();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection_1 = result;
  getMCProfileConnectionClass_1 = MCProfileConnectionFunction_1;
  return result;
}

Class initMCProfileConnection_2()
{
  if (ManagedConfigurationLibrary_sOnce_2 != -1)
  {
    initMCProfileConnection_cold_1_2();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection_2 = result;
  getMCProfileConnectionClass_2 = MCProfileConnectionFunction_2;
  return result;
}

Class initMCProfileConnection_3()
{
  if (ManagedConfigurationLibrary_sOnce_3 != -1)
  {
    initMCProfileConnection_cold_1_3();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection_3 = result;
  getMCProfileConnectionClass_3 = MCProfileConnectionFunction_3;
  return result;
}

void *__ManagedConfigurationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib = result;
  return result;
}

void *__ManagedConfigurationLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib_0 = result;
  return result;
}

void *__ManagedConfigurationLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib_1 = result;
  return result;
}

void *__ManagedConfigurationLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib_2 = result;
  return result;
}

void *__ManagedConfigurationLibrary_block_invoke_3()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib_3 = result;
  return result;
}

uint64_t NumberOfItems(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_31;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v18;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v11 activityType:0, v17];
      }

      else
      {
        v12 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v11 allValues];
        v8 += NumberOfItems(v13, a2, a3);

        v14 = v8;
        if (v8 > a2)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (a3 > 63)
        {
          if (a3 == 64)
          {
            if ((IsVideo(v11, v12) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else if (a3 != 4096 || !IsAudio(v11, v12))
          {
            goto LABEL_26;
          }
        }

        else if (a3 == 2)
        {
          if ((IsImage(v11, v12) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else if (a3 != 4 || (IsURL(v11) & 1) == 0)
        {
          goto LABEL_26;
        }

        v14 = v8 + 1;
        if (v8++ >= a2)
        {
LABEL_29:

          v8 = v14;
          goto LABEL_31;
        }
      }

LABEL_26:
    }

    v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_31:

  return v8;
}

uint64_t IsVideo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (IsFileURL(v3))
  {
    v5 = _UIActivityUTIForURL(v3);
    v6 = UTTypeConformsTo(v5, *MEMORY[0x1E6963850]) != 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *MEMORY[0x1E6963850];
    if (v4 && (isKindOfClass & 1) != 0 && UTTypeConformsTo(v4, *MEMORY[0x1E6963850]))
    {
      v6 = 1;
    }

    else
    {
      v6 = IsConformingToTypeFromItemProvider(v8, v3);
    }
  }

  return v6;
}

uint64_t IsFileURL(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 isFileURL];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t IsAudio(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (IsFileURL(v3))
  {
    v5 = _UIActivityUTIForURL(v3);
    v6 = UTTypeConformsTo(v5, *MEMORY[0x1E6963748]) != 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *MEMORY[0x1E6963748];
    if (v4 && (isKindOfClass & 1) != 0 && UTTypeConformsTo(v4, *MEMORY[0x1E6963748]))
    {
      v6 = 1;
    }

    else
    {
      v6 = IsConformingToTypeFromItemProvider(v8, v3);
    }
  }

  return v6;
}

void _setIsContentManagedIfResctrictableActivity(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 conformsToProtocol:&unk_1EFED62D0])
  {
    [v3 setIsContentManaged:a2];
  }
}

uint64_t _canPerformActivityWithItems(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ([v11 conformsToProtocol:&unk_1EFED62D0])
  {
    [v11 setSourceApplicationBundleID:v13];
  }

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [v11 canPerformWithCollaborationItem:v14 activityItems:v12];
LABEL_13:
    v19 = v17;
    goto LABEL_20;
  }

  if (v15 && v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = v11;
    v19 = [v18 canPerformWithCollaborationType:objc_msgSend(v15 isPostShare:{"integerValue"), objc_msgSend(v16, "BOOLValue")}];
LABEL_19:

    goto LABEL_20;
  }

  if (!v14 || [objc_opt_class() activityCategory])
  {
    v17 = [v11 canPerformWithActivityItems:v12];
    goto LABEL_13;
  }

  v18 = [v14 sendCopyItemPlaceholderValues];
  _UIActivityItemTypesSet(v18);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v12;
  }

  v19 = [v11 canPerformWithActivityItems:v20];
  if (v18)
  {
    _UIActivityItemTypesSet(v12);
    goto LABEL_19;
  }

LABEL_20:

  return v19;
}

uint64_t _UIActivityCanDisplayActivityForApplicationWithBundleID(uint64_t a1)
{
  v1 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a1];
  CanDisplayActivityForApplicationProxy = _UIActivityCanDisplayActivityForApplicationProxy(v1);

  return CanDisplayActivityForApplicationProxy;
}

uint64_t _UIActivityCanDisplayActivityForApplicationProxy(void *a1)
{
  v1 = [a1 appState];
  v2 = v1;
  if (v1 && [v1 isInstalled])
  {
    v3 = [v2 isRestricted] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _ShareSheetBundleIDFromAuditToken()
{
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v0 = 0;
  }

  else
  {
    v0 = CPCopyBundleIdentifierFromAuditToken();
  }

  if (!v0)
  {
    NSLog(&cfstr_CannotGetBundl.isa);
  }

  return v0;
}

uint64_t IsCopyable(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t IsPrintable(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

void ExtensionKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ExtensionKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ExtensionKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71FAA10;
    v3 = 0;
    ExtensionKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!ExtensionKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t IsPDF(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (IsFileURL(v3))
  {
    v5 = _UIActivityUTIForURL(v3);
    v6 = UTTypeConformsTo(v5, *MEMORY[0x1E6963858]) != 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v4)
      {
        v6 = UTTypeConformsTo(v4, *MEMORY[0x1E6963858]) != 0;
      }

      else
      {
        v8 = CGImageSourceCreateWithData(v3, 0);
        if (v8)
        {
          v9 = v8;
          Type = CGImageSourceGetType(v8);
          if (Type)
          {
            v6 = UTTypeConformsTo(Type, *MEMORY[0x1E6963858]) != 0;
          }

          else
          {
            v6 = 0;
          }

          CFRelease(v9);
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = IsConformingToTypeFromItemProvider(*MEMORY[0x1E6963858], v3);
    }
  }

  return v6;
}

uint64_t IsDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t IsPassbook(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 isFileURL])
  {
    v2 = _UIActivityUTIForURL(v1);
    v3 = [v2 isEqualToString:*MEMORY[0x1E69636D8]];
  }

  else
  {
    v3 = IsConformingToTypeFromItemProvider(*MEMORY[0x1E69636D8], v1);
  }

  return v3;
}

uint64_t IsContact(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 isFileURL])
  {
    v2 = _UIActivityUTIForURL(v1);
    v3 = [v2 isEqualToString:*MEMORY[0x1E69638D8]];
  }

  else
  {
    v3 = IsConformingToTypeFromItemProvider(*MEMORY[0x1E69638D8], v1);
  }

  return v3;
}

uint64_t IsData(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    v2 = IsConformingToTypeFromItemProvider(*MEMORY[0x1E6963798], v1);
  }

  return v2;
}

uint64_t _SharingUIAuditTokenForCurrentProcess@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  task_info_outCnt = 8;
  return task_info(*MEMORY[0x1E69E9A60], 0xFu, a1, &task_info_outCnt);
}

void ItemTypesSet(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        if (~__activityItemTypes & 0x10C2) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v7 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v6 activityType:0];
        }

        else
        {
          v7 = 0;
        }

        v8 = __activityItemTypes;
        if ((__activityItemTypes & 1) == 0)
        {
          v9 = IsString(v6);
          v8 = __activityItemTypes;
          if (v9)
          {
            v8 = __activityItemTypes | 1;
            __activityItemTypes |= 1uLL;
          }
        }

        if ((v8 & 2) == 0)
        {
          v10 = IsImage(v6, v7);
          v8 = __activityItemTypes;
          if (v10)
          {
            v8 = __activityItemTypes | 2;
            __activityItemTypes |= 2uLL;
          }
        }

        if ((v8 & 4) == 0)
        {
          v11 = IsURL(v6);
          v8 = __activityItemTypes;
          if (v11)
          {
            v8 = __activityItemTypes | 4;
            __activityItemTypes |= 4uLL;
          }
        }

        if ((v8 & 8) == 0)
        {
          v12 = IsFileURL(v6);
          v8 = __activityItemTypes;
          if (v12)
          {
            v8 = __activityItemTypes | 8;
            __activityItemTypes |= 8uLL;
          }
        }

        if ((v8 & 0x10) == 0)
        {
          v13 = IsCopyable(v6);
          v8 = __activityItemTypes;
          if (v13)
          {
            v8 = __activityItemTypes | 0x10;
            __activityItemTypes |= 0x10uLL;
          }
        }

        if ((v8 & 0x20) == 0)
        {
          v14 = IsPrintable(v6);
          v8 = __activityItemTypes;
          if (v14)
          {
            v8 = __activityItemTypes | 0x20;
            __activityItemTypes |= 0x20uLL;
          }
        }

        if ((v8 & 0x40) == 0)
        {
          v15 = IsVideo(v6, v7);
          v8 = __activityItemTypes;
          if (v15)
          {
            v8 = __activityItemTypes | 0x40;
            __activityItemTypes |= 0x40uLL;
          }
        }

        if ((v8 & 0x80) == 0)
        {
          v16 = IsPDF(v6, v7);
          v8 = __activityItemTypes;
          if (v16)
          {
            v8 = __activityItemTypes | 0x80;
            __activityItemTypes |= 0x80uLL;
          }
        }

        if ((v8 & 0x100) == 0)
        {
          v17 = IsDictionary(v6);
          v8 = __activityItemTypes;
          if (v17)
          {
            v8 = __activityItemTypes | 0x100;
            __activityItemTypes |= 0x100uLL;
          }
        }

        if ((v8 & 0x200) == 0)
        {
          v18 = IsPassbook(v6);
          v8 = __activityItemTypes;
          if (v18)
          {
            v8 = __activityItemTypes | 0x200;
            __activityItemTypes |= 0x200uLL;
          }
        }

        if ((v8 & 0x400) == 0)
        {
          v19 = IsContact(v6);
          v8 = __activityItemTypes;
          if (v19)
          {
            v8 = __activityItemTypes | 0x400;
            __activityItemTypes |= 0x400uLL;
          }
        }

        if ((v8 & 0x800) == 0)
        {
          v20 = IsData(v6);
          v8 = __activityItemTypes;
          if (v20)
          {
            v8 = __activityItemTypes | 0x800;
            __activityItemTypes |= 0x800uLL;
          }
        }

        if ((v8 & 0x1000) == 0)
        {
          v21 = IsAudio(v6, v7);
          v8 = __activityItemTypes;
          if (v21)
          {
            v8 = __activityItemTypes | 0x1000;
            __activityItemTypes |= 0x1000uLL;
          }
        }

        if ((v8 & 0x4000) == 0 && IsItemProvider(v6))
        {
          __activityItemTypes |= 0x4000uLL;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v6 allValues];
          ItemTypesSet();
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v3);
  }
}

uint64_t IsString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t IsURL(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
LABEL_10:
      v5 = IsConformingToTypeFromItemProvider(*MEMORY[0x1E69638B8], v1);
      goto LABEL_11;
    }

    v2 = [v1 URL];
  }

  v3 = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  if ([v2 isFileURL])
  {
    goto LABEL_10;
  }

  v4 = [v3 scheme];
  v5 = 1;
  v6 = [v4 compare:@"assets-library" options:1];

  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

id _UIActivityGetOrderedBuiltinActivitiesFromActivities(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = +[_UIActivityUserDefaults builtinActivityOrder];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___UIActivityGetOrderedBuiltinActivitiesFromActivities_block_invoke;
    v6[3] = &unk_1E71FACB8;
    v7 = v2;
    v3 = v2;
    v4 = [v1 sortedArrayWithOptions:16 usingComparator:v6];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

uint64_t initPLLogRegisteredEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (PowerLogLibrary_sOnce != -1)
  {
    initPLLogRegisteredEvent_cold_1();
  }

  v8 = dlsym(PowerLogLibrary_sLib, "PLLogRegisteredEvent");
  softLinkPLLogRegisteredEvent = v8;

  return (v8)(a1, a2, a3, a4);
}

void *__PowerLogLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog", 2);
  PowerLogLibrary_sLib = result;
  return result;
}

id getSFUIShareSheetRemoteSettingsHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFUIShareSheetRemoteSettingsHelperClass_softClass;
  v7 = getSFUIShareSheetRemoteSettingsHelperClass_softClass;
  if (!getSFUIShareSheetRemoteSettingsHelperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B361D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71F9560;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("SFUIShareSheetRemoteSettingsHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke_cold_1();
  }

  getSFUIShareSheetRemoteSettingsHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_6)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_6;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FA4A0;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_6)
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
  result = objc_getClass("SFUIShareSheetRemoteSettingsHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUIShareSheetRemoteSettingsHelperClass_block_invoke_cold_1();
  }

  getSFUIShareSheetRemoteSettingsHelperClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SHSheetPresentationControllerPresentationStyle(void *a1)
{
  v1 = [a1 _existingPresentationControllerImmediate:0 effective:1];
  if (v1 || !_ShareSheetPlatformPrefersPopover())
  {
    v2 = [v1 presentationStyle];
  }

  else
  {
    v2 = 7;
  }

  return v2;
}

BOOL SHSheetIsPresentedInPopover(void *a1)
{
  v1 = a1;
  v2 = 1;
  v3 = [v1 _existingPresentationControllerImmediate:0 effective:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [v1 popoverPresentationController];
    if (!v4)
    {
      v5 = [v1 _popoverController];
      v2 = v5 != 0;
    }
  }

  return v2;
}

void sub_18B364044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SharingUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71F9210;
    v7 = 0;
    SharingUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SharingUILibraryCore_frameworkLibrary;
    if (SharingUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SharingUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SFUILinkMetadataSerializationForLocalUseOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SHSheetIsCollaborationItemEligibleForActivity(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4 || [objc_opt_class() activityCategory] == 1 || (objc_opt_respondsToSelector()) && !objc_msgSend(v3, "type"))
  {
    v6 = v3;
    if ([v6 isiCloudDrive])
    {
      v5 = 1;
    }

    else if ([v6 isCollaborativeURL])
    {
      v7 = [v4 activityType];
      v5 = [v7 isEqualToString:@"com.apple.UIKit.activity.Message"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id SHSheetCollaborativeItemNotSupportedAlertController(void *a1)
{
  v1 = a1;
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Move to iCloud Title" value:@"Move to iCloud" table:@"Localizable"];

  v4 = _ShareSheetBundle();
  v5 = [v4 localizedStringForKey:@"Move to iCloud Body" value:@"This item isn't stored in iCloud. You'll need to move it to iCloud or another supported cloud source before you can collaborate." table:@"Localizable"];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v1];

  v7 = _ShareSheetBundle();
  v8 = [v7 localizedStringForKey:@"Move to iCloud OK" value:@"OK" table:@"Localizable"];

  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v6 preferredStyle:1];
  v10 = [MEMORY[0x1E69DC648] actionWithTitle:v8 style:1 handler:&__block_literal_global];
  [v9 addAction:v10];

  return v9;
}

id SHSheetModeRestrictionAlertController(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E69DC650];
  v9 = [v5 alertTitle];
  v10 = [v5 alertMessage];
  v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = MEMORY[0x1E69DC648];
  v13 = [v5 alertDismissButtonTitle];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __SHSheetModeRestrictionAlertController_block_invoke;
  v28[3] = &unk_1E71F9270;
  v14 = v7;
  v29 = v14;
  v15 = [v12 actionWithTitle:v13 style:1 handler:v28];
  [v11 addAction:v15];

  v16 = [v5 alertRecoverySuggestionButtonTitle];

  if (v16)
  {
    v17 = MEMORY[0x1E69DC648];
    v18 = [v5 alertRecoverySuggestionButtonTitle];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __SHSheetModeRestrictionAlertController_block_invoke_2;
    v24 = &unk_1E71F9298;
    v25 = v5;
    v26 = v6;
    v27 = v14;
    v19 = [v17 actionWithTitle:v18 style:0 handler:&v21];
    [v11 addAction:{v19, v21, v22, v23, v24}];
  }

  return v11;
}

uint64_t __SHSheetModeRestrictionAlertController_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __SHSheetModeRestrictionAlertController_block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) alertRecoverySuggestionButtonLaunchURL];

  if (v3)
  {
    v4 = [*v2 alertRecoverySuggestionButtonLaunchURL];
    v5 = [v4 scheme];
    v6 = [v5 lowercaseString];
    v7 = [v6 isEqualToString:@"prefs"];

    v8 = [MEMORY[0x1E6963608] defaultWorkspace];
    v9 = [*v2 alertRecoverySuggestionButtonLaunchURL];
    if (v7)
    {
      v16 = 0;
      LOBYTE(v10) = [v8 openSensitiveURL:v9 withOptions:0 error:&v16];
      v11 = v16;
    }

    else
    {
      v15 = 0;
      v10 = [v8 openURL:v9 withOptions:0 error:&v15];
      v11 = v15;
    }

    v12 = v11;

    if ((v10 & 1) == 0)
    {
      v13 = share_sheet_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __SHSheetModeRestrictionAlertController_block_invoke_2_cold_1(v2, v12, v13);
      }
    }
  }

  if (([*v2 allowContinueToMode] & 1) == 0)
  {
    [*(a1 + 40) _cancel];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void _UIDICArchiveEnumerateFilePaths(void *a1, void *a2, char a3)
{
  v5 = MEMORY[0x1E69DD360];
  v6 = a2;
  v7 = a1;
  v8 = [v5 alloc];
  v9 = [v7 path];

  v10 = [v8 initWithArchivePath:v9];
  [v10 setExcludeDotFilesFromResults:a3 & 1];
  v11 = [MEMORY[0x1E695DF70] array];
  v14 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___UIDICArchiveEnumerateFilePaths_block_invoke;
  v15[3] = &unk_1E71F92C0;
  v16 = v11;
  v12 = v11;
  [v10 enumerateLogicalItemsWithBlock:v15 error:&v14];
  v13 = v14;
  v6[2](v6, v12, v13);
}

void _UIDICArchiveExtractArchiveSubpathToRoot(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    v12 = [v10 path];
    v13 = 0;
  }

  else
  {
    v14 = NSTemporaryDirectory();
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];
    v17 = [v14 stringByAppendingPathComponent:v16];

    v13 = v17;
    v12 = v13;
  }

  v18 = objc_alloc(MEMORY[0x1E69DD358]);
  v19 = [v8 path];
  v20 = [v18 initWithSourceArchivePath:v19 destinationExtractionRootPath:v12];

  [v20 setSourceArchiveExtractionRootPath:v9];
  v48 = 0;
  v21 = [v20 extractArchiveContent:&v48];
  v22 = v48;
  v47 = v8;
  if (!v21)
  {
    goto LABEL_7;
  }

  if (!v9)
  {
    v42 = v10;
    v43 = v20;
    v30 = [v8 lastPathComponent];
    v31 = [v30 stringByDeletingPathExtension];
    v32 = [v31 pathExtension];
    v33 = [v32 lowercaseString];

    v34 = v33;
    if ([v33 length])
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___payloadItemURLByExtensionMatchingHeuristicInExtractionController_block_invoke;
      v50 = &unk_1E71F92E8;
      v52 = a5;
      v51 = v33;
      v35 = [v43 extractedContentAbsolutePathsMatchingPredicate:buf];
      v36 = [v35 firstObject];

      if (v36)
      {
        v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v36];
      }

      else
      {
        v25 = 0;
      }

      v8 = v47;

      v34 = v33;
    }

    else
    {
      v25 = 0;
      v8 = v47;
    }

    v10 = v42;
    if (v25)
    {
      goto LABEL_25;
    }

    v44 = objc_opt_new();
    v37 = [v44 contentsOfDirectoryAtPath:v12 error:0];
    if ([v37 count] == 1 && (objc_msgSend(v37, "firstObject"), v38 = objc_claimAutoreleasedReturnValue(), shouldExcludePath = _shouldExcludePath(v38, a5), v38, v8 = v47, !shouldExcludePath))
    {
      v40 = MEMORY[0x1E695DFF8];
      v46 = [v37 firstObject];
      v41 = [v12 stringByAppendingPathComponent:v46];
      v25 = [v40 fileURLWithPath:v41];

      v8 = v47;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
    if (!v25)
    {
      goto LABEL_7;
    }

LABEL_25:
    if (v13)
    {
      v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_28;
  }

  v23 = MEMORY[0x1E695DFF8];
  v24 = [v12 stringByAppendingPathComponent:v9];
  v25 = [v23 fileURLWithPath:v24];

  v8 = v47;
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_7:
  v26 = share_sheet_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v8 path];
    *buf = 138412546;
    *&buf[4] = v27;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "ERROR: Unable to load archive: %@ (extraction subpath = %@)", buf, 0x16u);

    v8 = v47;
  }

  if (v13)
  {
    v28 = [MEMORY[0x1E696AC08] defaultManager];
    [v28 removeItemAtPath:v13 error:0];

    v8 = v47;
    v29 = 0;
    v25 = 0;
    v13 = 0;
  }

  else
  {
    v29 = 0;
    v25 = 0;
  }

LABEL_28:
  v11[2](v11, v25, v29, v22);
}

uint64_t _shouldExcludePath(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v3 = [a1 lastPathComponent];
  v4 = [v3 hasPrefix:@"."];

  return v4;
}

uint64_t ___payloadItemURLByExtensionMatchingHeuristicInExtractionController_block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  if (_shouldExcludePath(v5, *(a1 + 40)))
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 pathExtension];
    v8 = [v7 lowercaseString];
    *a3 = [v8 isEqualToString:*(a1 + 32)];

    v6 = *a3;
  }

  return v6 & 1;
}

void sub_18B368CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B368F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLCollaborationFooterViewModelClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SocialLayerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71F9308;
    v6 = 0;
    SocialLayerLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SocialLayerLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SLCollaborationFooterViewModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLCollaborationFooterViewModelClass_block_invoke_cold_1();
  }

  getSLCollaborationFooterViewModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SocialLayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SocialLayerLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

id SHSheetContentSectionTypeDescription(char a1)
{
  if (a1)
  {
    v2 = _SHSheetAddContentSectionTypeToDescription(@"SHSheetContentSectionTypeCustomView", 0);
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((a1 & 2) != 0)
  {
LABEL_5:
    v3 = _SHSheetAddContentSectionTypeToDescription(@"SHSheetContentSectionTypePeople", v2);

    v2 = v3;
  }

LABEL_6:
  if ((a1 & 4) != 0)
  {
    v6 = _SHSheetAddContentSectionTypeToDescription(@"SHSheetContentSectionTypeApps", v2);

    v2 = v6;
    if ((a1 & 8) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = _SHSheetAddContentSectionTypeToDescription(@"SHSheetContentSectionTypeActions", v2);

  v2 = v7;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  v8 = _SHSheetAddContentSectionTypeToDescription(@"SHSheetContentSectionTypeActionsHero", v2);

  v2 = v8;
  if ((a1 & 0x20) != 0)
  {
LABEL_10:
    v4 = _SHSheetAddContentSectionTypeToDescription(@"SHSheetContentSectionTypeTopActions", v2);

    v2 = v4;
  }

LABEL_11:

  return v2;
}

id _SHSheetAddContentSectionTypeToDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v5 = [v4 stringByAppendingFormat:@"|"];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if (v4)
  {
    v5 = [v4 copy];
    goto LABEL_5;
  }

  v6 = &stru_1EFE999E0;
LABEL_6:
  v7 = [(__CFString *)v6 stringByAppendingString:v3];

  return v7;
}

void sub_18B36BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_18B36EC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B36FDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _convertToSingleLine(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 newlineCharacterSet];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:@" "];

  return v5;
}

Class __getSFUIActivityImageProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71F9478;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("SFUIActivityImageProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUIActivityImageProviderClass_block_invoke_cold_1();
  }

  getSFUIActivityImageProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_18B3737E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LinkPresentationLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_18B374260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SharedWithYouCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SharedWithYouCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B374E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initWKWebView()
{
  if (WebKitLibrary_sOnce != -1)
  {
    initWKWebView_cold_1();
  }

  result = objc_getClass("WKWebView");
  classWKWebView = result;
  getWKWebViewClass = WKWebViewFunction;
  return result;
}

void *__WebKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/WebKit.framework/WebKit", 2);
  WebKitLibrary_sLib = result;
  return result;
}

Class initSFAddToHomeScreenViewController()
{
  if (SafariServicesLibrary_sOnce != -1)
  {
    initSFAddToHomeScreenViewController_cold_1();
  }

  result = objc_getClass("SFAddToHomeScreenViewController");
  classSFAddToHomeScreenViewController = result;
  getSFAddToHomeScreenViewControllerClass = SFAddToHomeScreenViewControllerFunction;
  return result;
}

void *__SafariServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/SafariServices.framework/SafariServices", 2);
  SafariServicesLibrary_sLib = result;
  return result;
}

void sub_18B375AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __SharingUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

id getSFUIShareSheetActivityCellSpecClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFUIShareSheetActivityCellSpecClass_softClass;
  v7 = getSFUIShareSheetActivityCellSpecClass_softClass;
  if (!getSFUIShareSheetActivityCellSpecClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSFUIShareSheetActivityCellSpecClass_block_invoke;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getSFUIShareSheetActivityCellSpecClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B37C140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B37E3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B37E538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B37E6E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getSFUIShareSheetActivityCellSpecClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71F95F0;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_2)
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
  result = objc_getClass("SFUIShareSheetActivityCellSpec");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUIShareSheetActivityCellSpecClass_block_invoke_cold_1();
  }

  getSFUIShareSheetActivityCellSpecClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_18B38296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _cacheKeyWithMatchingAttributes(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"NSExtensionActivationRule"];
  v3 = [v1 objectForKeyedSubscript:@"NSExtensionPointName"];
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = v5;
  if (v2)
  {
    v21 = v3;
    v22 = v5;
    v23 = v2;
    v24 = v1;
    [v2 objectForKeyedSubscript:@"extensionItems"];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v30 + 1) + 8 * i) objectForKeyedSubscript:@"attachments"];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v26 + 1) + 8 * j) objectForKeyedSubscript:@"registeredTypeIdentifiers"];
                [v4 addObjectsFromArray:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    v2 = v23;
    v1 = v24;
    v3 = v21;
    v6 = v22;
  }

  [v4 sortUsingSelector:sel_caseInsensitiveCompare_];
  v17 = [v4 componentsJoinedByString:@"|"];
  [v6 appendString:v17];

  [v6 appendString:@"/"];
  if (v3)
  {
    v18 = [v3 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v19 = [v18 componentsJoinedByString:@"|"];
    [v6 appendString:v19];
  }

  return v6;
}

void sub_18B38305C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_UIMatchingExtensionsResult *_syncGetExtensionsResultWithMatchingAttributes(void *a1, int a2, const void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = objc_alloc_init(_UIMatchingExtensionsResult);
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Started extension discovery", buf, 2u);
  }

  v8 = share_sheet_log();
  v9 = share_sheet_log();
  v10 = os_signpost_id_make_with_pointer(v9, a3);

  if (a2)
  {
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      v11 = "PreheatInitialExtensionDiscovery";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_18B359000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, v11, " enableTelemetry=YES ", buf, 2u);
    }
  }

  else if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    v11 = "InitialExtensionDiscovery";
    goto LABEL_10;
  }

  v22 = 0;
  v12 = [MEMORY[0x1E696ABD0] extensionsWithMatchingAttributes:v5 error:&v22];

  v13 = v22;
  [(_UIMatchingExtensionsResult *)v6 setExtensions:v12];

  v14 = share_sheet_log();
  v15 = share_sheet_log();
  v16 = os_signpost_id_make_with_pointer(v15, a3);

  if (a2)
  {
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      v17 = "PreheatInitialExtensionDiscovery";
LABEL_18:
      _os_signpost_emit_with_name_impl(&dword_18B359000, v14, OS_SIGNPOST_INTERVAL_END, v16, v17, " enableTelemetry=YES ", buf, 2u);
    }
  }

  else if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    v17 = "InitialExtensionDiscovery";
    goto LABEL_18;
  }

  v18 = share_sheet_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(_UIMatchingExtensionsResult *)v6 extensions];
    v20 = [v19 count];
    *buf = 134349056;
    v24 = v20;
    _os_log_impl(&dword_18B359000, v18, OS_LOG_TYPE_DEFAULT, "Finished extension discovery (matched %{public}ld extensions)", buf, 0xCu);
  }

  [(_UIMatchingExtensionsResult *)v6 setError:v13];

  return v6;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getDMPerformMigrationIfNeededSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __DataMigrationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71F96A8;
    v7 = 0;
    DataMigrationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = DataMigrationLibraryCore_frameworkLibrary;
    if (DataMigrationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = DataMigrationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "DMPerformMigrationIfNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMPerformMigrationIfNeededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataMigrationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataMigrationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B3845D4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, uint64_t a15, __int128 a16)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v16 = objc_begin_catch(a1);
      v17 = share_sheet_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v16 name];
        v19 = [v16 reason];
        v20 = [v16 userInfo];
        LODWORD(buf) = 136447234;
        *(&buf + 4) = "[UIMailActivity _saveDraft:]";
        WORD6(buf) = 2114;
        *(&buf + 14) = v18;
        a14 = 2114;
        LOWORD(a16) = 2114;
        *(&a16 + 2) = v19;
        WORD5(a16) = 2114;
        *(&a16 + 12) = v20;
        _os_log_error_impl(&dword_18B359000, v17, OS_LOG_TYPE_ERROR, "%{public}s: Warning: Exception %{public}@ trying to archive mail draft identifier %{public}@: %{public}@.\nUser info = %{public}@", &buf, 0x34u);
      }

      objc_end_catch();
      JUMPOUT(0x18B38457CLL);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x18B384580);
  }

  _Unwind_Resume(a1);
}

Class initMFMailComposeViewController()
{
  if (MessageUILibrary_sOnce != -1)
  {
    initMFMailComposeViewController_cold_1();
  }

  result = objc_getClass("MFMailComposeViewController");
  classMFMailComposeViewController = result;
  getMFMailComposeViewControllerClass = MFMailComposeViewControllerFunction;
  return result;
}

void *__MessageUILibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MessageUI.framework/MessageUI", 2);
  MessageUILibrary_sLib = result;
  return result;
}

uint64_t initQLTypeCopyUTIForURLAndMimeType(void *a1, void *a2)
{
  v3 = QuickLookLibrary_sOnce;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    initQLTypeCopyUTIForURLAndMimeType_cold_1();
  }

  softLinkQLTypeCopyUTIForURLAndMimeType = dlsym(QuickLookLibrary_sLib, "QLTypeCopyUTIForURLAndMimeType");
  v6 = (softLinkQLTypeCopyUTIForURLAndMimeType)(v5, v4);

  return v6;
}

void *__QuickLookLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  QuickLookLibrary_sLib = result;
  return result;
}

uint64_t initQLTypeCopyBestMimeTypeForURLAndMimeType(void *a1, void *a2)
{
  v3 = QuickLookLibrary_sOnce;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    initQLTypeCopyUTIForURLAndMimeType_cold_1();
  }

  softLinkQLTypeCopyBestMimeTypeForURLAndMimeType = dlsym(QuickLookLibrary_sLib, "QLTypeCopyBestMimeTypeForURLAndMimeType");
  v6 = (softLinkQLTypeCopyBestMimeTypeForURLAndMimeType)(v5, v4);

  return v6;
}

uint64_t initQLTypeCopyBestMimeTypeForFileNameAndMimeType(void *a1, void *a2)
{
  v3 = QuickLookLibrary_sOnce;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    initQLTypeCopyUTIForURLAndMimeType_cold_1();
  }

  softLinkQLTypeCopyBestMimeTypeForFileNameAndMimeType = dlsym(QuickLookLibrary_sLib, "QLTypeCopyBestMimeTypeForFileNameAndMimeType");
  v6 = (softLinkQLTypeCopyBestMimeTypeForFileNameAndMimeType)(v5, v4);

  return v6;
}

void *__MessageLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Message.framework/Message", 2);
  MessageLibrary_sLib = result;
  return result;
}

id initValMCFeatureAccountModificationAllowed()
{
  if (softLinkOnceMCFeatureAccountModificationAllowed != -1)
  {
    initValMCFeatureAccountModificationAllowed_cold_1();
  }

  v1 = constantValMCFeatureAccountModificationAllowed;

  return v1;
}

void __initValMCFeatureAccountModificationAllowed_block_invoke()
{
  if (ManagedConfigurationLibrary_sOnce_0 != -1)
  {
    initMCProfileConnection_cold_1_0();
  }

  v0 = dlsym(ManagedConfigurationLibrary_sLib_0, "MCFeatureAccountModificationAllowed");
  if (v0)
  {
    objc_storeStrong(&constantValMCFeatureAccountModificationAllowed, *v0);
  }

  getMCFeatureAccountModificationAllowed = MCFeatureAccountModificationAllowedFunction;
}

uint64_t _UIActivityOpenInApplicationTypeForActivityType(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple.UIKit.activity.RemoteOpenInApplication-InPlace"])
  {
    v2 = 2;
  }

  else if ([v1 hasPrefix:@"com.apple.UIKit.activity.RemoteOpenInApplication-ByCopy"])
  {
    v2 = 3;
  }

  else
  {
    v2 = [v1 hasPrefix:@"com.apple.UIKit.activity.RemoteOpenInApplication"];
  }

  return v2;
}

id imageLoadingQueue()
{
  v0 = imageLoadingQueue_imageLoadingQueue;
  if (!imageLoadingQueue_imageLoadingQueue)
  {
    v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v2 = dispatch_queue_create("com.apple.SharingUI.ShareSheet.ActivityImageLoading", v1);
    v3 = imageLoadingQueue_imageLoadingQueue;
    imageLoadingQueue_imageLoadingQueue = v2;

    v0 = imageLoadingQueue_imageLoadingQueue;
  }

  return v0;
}

void _loadItemProvidersFromActivityItemsStartingAtIndex(void *a1, unint64_t a2, void *a3, int a4, void *a5, void *a6, void *a7)
{
  v142 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = _itemLoaderQueue();
  dispatch_assert_queue_V2(v18);

  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke;
  v121[3] = &unk_1E71F9AC0;
  v19 = v13;
  v122 = v19;
  v126 = a2;
  v127 = a4;
  v20 = v15;
  v123 = v20;
  v21 = v16;
  v124 = v21;
  v22 = v17;
  v125 = v22;
  v79 = MEMORY[0x18CFF58E0](v121);
  v23 = [v19 count];
  v24 = share_sheet_log();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (v23 > a2)
  {
    if (v25)
    {
      *buf = 67240192;
      v139 = a2;
      _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_INFO, "Examining item at index %{public}d", buf, 8u);
    }

    v26 = [v19 objectAtIndexedSubscript:a2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = share_sheet_log();
      v30 = v79;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v139 = a2;
        _os_log_impl(&dword_18B359000, v31, OS_LOG_TYPE_INFO, "Adding item at index %{public}d as-is.", buf, 8u);
      }

      (*(v21 + 2))(v21, v26, v26);
      v32 = _itemLoaderQueue();
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_521;
      v83[3] = &unk_1E71F9C28;
      v85 = v79;
      v84 = v14;
      dispatch_async(v32, v83);

      v33 = v85;
      goto LABEL_70;
    }

    v27 = v26;
    v77 = v20;
    if ([v20 isEqualToString:@"com.apple.UIKit.activity.Message"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"com.apple.UIKit.activity.Mail"))
    {
      v28 = 0;
    }

    else
    {
      v28 = [v20 isEqualToString:@"com.apple.UIKit.activity.SaveToCameraRoll"] ^ 1;
    }

    v78 = v27;
    v34 = [v27 registeredTypeIdentifiers];
    v35 = [v34 containsObject:@"com.apple.group-activities.activity"];

    if (v35 && v28)
    {
      v36 = _itemLoaderQueue();
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_503;
      v116[3] = &unk_1E71F9AE8;
      v119 = v21;
      v37 = v78;
      v117 = v78;
      v30 = v79;
      v120 = v79;
      v118 = v14;
      dispatch_async(v36, v116);

      v38 = v119;
LABEL_18:
      v20 = v77;
LABEL_69:

      v33 = v37;
LABEL_70:

      goto LABEL_71;
    }

    if (a4 && [MEMORY[0x1E69CDE78] hasiWorkSendCopyRepresentationForItemProvider:v78])
    {
      v39 = share_sheet_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        v139 = a2;
        _os_log_impl(&dword_18B359000, v39, OS_LOG_TYPE_INFO, "Attempting to load item at index %{public}d as URL for copy type identifier", buf, 8u);
      }

      v40 = MEMORY[0x1E69CDE78];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_505;
      v110[3] = &unk_1E71F9B38;
      v115 = a2;
      v113 = v21;
      v37 = v78;
      v111 = v78;
      v114 = v79;
      v112 = v14;
      v30 = v79;
      [v40 loadiWorkCopyRepresentationURLForItemProvider:v111 completionHandler:v110];

      v38 = v113;
      goto LABEL_18;
    }

    v41 = v78;
    v75 = v22;
    v76 = v14;
    if (([v41 canLoadObjectOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v41, "canLoadObjectOfClass:", objc_opt_class()) & 1) == 0 && ((objc_msgSend(v41, "canLoadObjectOfClass:", objc_opt_class()) & 1) != 0 || !objc_msgSend(v41, "canLoadObjectOfClass:", objc_opt_class())))
    {
      v42 = [v41 preferredPresentationStyle];

      if (v42 != 1)
      {
LABEL_29:
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v73 = v41;
        v38 = [v41 registeredContentTypes];
        v44 = [v38 countByEnumeratingWithState:&v106 objects:v132 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v107;
          v47 = *MEMORY[0x1E6982D60];
          while (2)
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v107 != v46)
              {
                objc_enumerationMutation(v38);
              }

              v49 = *(*(&v106 + 1) + 8 * i);
              if ([v49 conformsToType:v47])
              {
                if ([v49 conformsToType:*MEMORY[0x1E6983030]] && (objc_msgSend(v49, "conformsToType:", *MEMORY[0x1E6982DB8]) & 1) == 0 && objc_msgSend(v73, "canLoadObjectOfClass:", objc_opt_class()))
                {
                  v60 = share_sheet_log();
                  v20 = v77;
                  v22 = v75;
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67240192;
                    v139 = a2;
                    _os_log_impl(&dword_18B359000, v60, OS_LOG_TYPE_INFO, "Attempting to load item at index %{public}d as a URL", buf, 8u);
                  }

                  v61 = objc_opt_class();
                  v100[0] = MEMORY[0x1E69E9820];
                  v100[1] = 3221225472;
                  v100[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_508;
                  v100[3] = &unk_1E71F9B38;
                  v105 = a2;
                  v62 = &v103;
                  v103 = v21;
                  v101 = v73;
                  v104 = v79;
                  v102 = v76;
                  v30 = v79;
                  v63 = [v101 loadObjectOfClass:v61 completionHandler:v100];

                  v64 = v101;
                }

                else
                {
                  v65 = share_sheet_log();
                  v20 = v77;
                  v22 = v75;
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67240450;
                    v139 = a2;
                    v140 = 2114;
                    v141 = v49;
                    _os_log_impl(&dword_18B359000, v65, OS_LOG_TYPE_INFO, "Attempting to load item at index %{public}d as a file of type %{public}@", buf, 0x12u);
                  }

                  v94[0] = MEMORY[0x1E69E9820];
                  v94[1] = 3221225472;
                  v94[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_510;
                  v94[3] = &unk_1E71F9BD8;
                  v62 = v95;
                  v66 = v76;
                  v99 = a2;
                  v95[0] = v66;
                  v95[1] = v49;
                  v30 = v79;
                  v97 = v79;
                  v98 = v21;
                  v96 = v73;
                  v67 = [v96 loadFileRepresentationForContentType:v49 openInPlace:1 completionHandler:v94];

                  v64 = v97;
                }

                v14 = v76;
                goto LABEL_68;
              }
            }

            v45 = [v38 countByEnumeratingWithState:&v106 objects:v132 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

        v22 = v75;
        v14 = v76;
        v41 = v73;
      }
    }

    else
    {
      v43 = [v41 preferredPresentationStyle];

      if (v43 == 2)
      {
        goto LABEL_29;
      }
    }

    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_3;
    v89[3] = &unk_1E71F9C00;
    v92 = v21;
    v90 = v41;
    v30 = v79;
    v71 = v79;
    v93 = v71;
    v70 = v14;
    v91 = v70;
    v33 = v90;
    v74 = v89;
    if (_loadItemProviderInline_onceToken != -1)
    {
      _loadItemProvidersFromActivityItemsStartingAtIndex_cold_1();
    }

    v20 = v77;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v50 = _loadItemProviderInline_loadableClasses;
    v51 = [v50 countByEnumeratingWithState:&v128 objects:buf count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v129;
      while (2)
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v129 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v128 + 1) + 8 * j);
          if ([v33 canLoadObjectOfClass:{v55, v70, v71}])
          {
            v56 = share_sheet_log();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = NSStringFromClass(v55);
              *v133 = 67240450;
              *&v133[4] = MEMORY[0x1E69E98A8];
              LOWORD(v134) = 2114;
              *(&v134 + 2) = v57;
              _os_log_impl(&dword_18B359000, v56, OS_LOG_TYPE_INFO, "Attempting to load item at index %{public}d as class %{public}@", v133, 0x12u);
            }

            *v133 = MEMORY[0x1E69E9820];
            *&v134 = 3221225472;
            *(&v134 + 1) = ___loadItemProviderInline_block_invoke_531;
            v135 = &unk_1E71F9C50;
            v137 = v55;
            v58 = v74;
            v136 = v74;
            v59 = [v33 loadObjectOfClass:v55 completionHandler:v133];

            v72 = 1;
            v20 = v77;
            v22 = v75;
            v30 = v79;
            goto LABEL_64;
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v128 objects:buf count:16];
        if (v52)
        {
          continue;
        }

        break;
      }

      v72 = 0;
      v20 = v77;
      v22 = v75;
      v30 = v79;
    }

    else
    {
      v72 = 0;
    }

    v58 = v74;
LABEL_64:

    v14 = v76;
    if (v72)
    {
      goto LABEL_70;
    }

    v68 = share_sheet_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      _loadItemProvidersFromActivityItemsStartingAtIndex_cold_2(a2, v68);
    }

    v69 = _itemLoaderQueue();
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_520;
    v86[3] = &unk_1E71F9C28;
    v88 = v71;
    v87 = v70;
    dispatch_async(v69, v86);

    v38 = v88;
LABEL_68:
    v37 = v78;
    goto LABEL_69;
  }

  if (v25)
  {
    *buf = 67240192;
    v139 = a2;
    _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_INFO, "Finished examining all %{public}d items.", buf, 8u);
  }

  v29 = _itemLoaderQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_522;
  block[3] = &unk_1E71F9C28;
  v82 = v22;
  v81 = v14;
  dispatch_async(v29, block);

  v26 = v82;
  v30 = v79;
LABEL_71:
}

void _updateActivityItemMappingWithResolvedActivityItem(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [_UIActivityItemMapping _originalActivityItemForActivityItem:v6];
  if (v4)
  {
    v5 = [_UIActivityItemMapping _activityViewControllerForActivityItem:v6];
    [_UIActivityItemMapping _addActivityItem:v3 activityViewController:v5 originalActivityItem:v4];
  }
}

void sub_18B38B7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B38B934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIActivityImageForBundleIdentifier(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
    v7 = [v6 applicationState];
    v8 = [v7 isInstalled];

    if ((v8 & 1) != 0 || (v9 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v5 requireValid:1 platform:dyld_get_active_platform() error:0], v9, v9))
    {
      v10 = MEMORY[0x1E69A8A78];
      if (a2 != 10)
      {
        v10 = MEMORY[0x1E69A8AA0];
      }

      v11 = *v10;
      v12 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v5];
      v13 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v11];
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v14 = getSFUIActivityImageProviderClass_softClass_0;
      v26 = getSFUIActivityImageProviderClass_softClass_0;
      if (!getSFUIActivityImageProviderClass_softClass_0)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __getSFUIActivityImageProviderClass_block_invoke_0;
        v22[3] = &unk_1E71F91F0;
        v22[4] = &v23;
        __getSFUIActivityImageProviderClass_block_invoke_0(v22);
        v14 = v24[3];
      }

      v15 = v14;
      _Block_object_dispose(&v23, 8);
      v16 = [v14 tintImageDescriptor:v13 withUserInterfaceStyle:a3 forGraphicIcon:0];

      v17 = [v12 imageForImageDescriptor:v16];
      v18 = MEMORY[0x1E69DCAB8];
      v19 = [v17 CGImage];
      [v17 scale];
      v20 = [v18 imageWithCGImage:v19 scale:0 orientation:?];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void sub_18B38C108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B38CA0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _UIActivityItemsWithTypes(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_76;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v29;
  v26 = a4;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 allValues];
        v14 = _UIActivityItemsWithTypes(v13, a2, a3, a4);

        if (!v9)
        {
          v9 = [MEMORY[0x1E695DF70] array];
        }

        [v9 addObjectsFromArray:v14];

        continue;
      }

      if (!IsItemProvider(v12))
      {
        if (a2 & 0x10C2) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v15 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v12 activityType:0];
          if (a2)
          {
            goto LABEL_19;
          }

LABEL_22:
          v16 = 0;
          if ((a2 & 2) != 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v15 = 0;
          if ((a2 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_19:
          v16 = IsString(v12);
          if ((a2 & 2) != 0)
          {
LABEL_23:
            if ((v16 & 1) == 0)
            {
              v16 = IsImage(v12, v15);
            }
          }
        }

        if ((a2 & 4) != 0 && (v16 & 1) == 0)
        {
          v16 = IsURL(v12);
        }

        if ((a2 & 8) != 0 && (v16 & 1) == 0)
        {
          v16 = IsFileURL(v12);
        }

        if ((a2 & 0x10) != 0 && (v16 & 1) == 0)
        {
          v16 = IsCopyable(v12);
        }

        if ((a2 & 0x20) != 0 && (v16 & 1) == 0)
        {
          v16 = IsPrintable(v12);
        }

        if ((a2 & 0x40) != 0 && (v16 & 1) == 0)
        {
          v16 = IsVideo(v12, v15);
        }

        if ((a2 & 0x80) != 0 && (v16 & 1) == 0)
        {
          v16 = IsPDF(v12, v15);
        }

        if ((a2 & 0x100) != 0 && (v16 & 1) == 0)
        {
          v16 = IsDictionary(v12);
        }

        if ((a2 & 0x200) != 0 && (v16 & 1) == 0)
        {
          v16 = IsPassbook(v12);
        }

        if ((a2 & 0x400) != 0 && (v16 & 1) == 0)
        {
          v16 = IsContact(v12);
        }

        if ((a2 & 0x800) != 0 && (v16 & 1) == 0)
        {
          v16 = IsData(v12);
        }

        if ((a2 & 0x1000) != 0 && (v16 & 1) == 0)
        {
          v16 = IsAudio(v12, v15);
        }

        v17 = v6;
        if (a2 & 0x2000) == 0 || (v16)
        {
          if (!v16)
          {
LABEL_71:

            v6 = v17;
            continue;
          }
        }

        else
        {
          v18 = v12;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          a4 = v26;
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        v20 = v12;
        if (!v9)
        {
          v9 = [MEMORY[0x1E695DF70] array];
        }

        if ((a3 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 string];

            v20 = v21;
          }
        }

        v22 = ImageForItem(v20, a4);
        v23 = v22;
        if (v22)
        {
          v24 = v22;

          v20 = v24;
          a4 = v26;
        }

        [v9 addObject:v20];

        goto LABEL_71;
      }

      if ((a2 & 0x4000) != 0 && IsItemProvider(v12))
      {
        if (!v9)
        {
          v9 = [MEMORY[0x1E695DF70] array];
        }

        [v9 addObject:v12];
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v8);
LABEL_76:

  return v9;
}

id ImageForItem(void *a1, int a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if (_UIActivityItemIsLivePhoto(v3))
  {
    v4 = [v3 image];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithCIImage:v3];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2 && [v3 isFileURL] && IsImageFile(v3))
    {
      v7 = MEMORY[0x1E69DCAB8];
      v8 = [v3 path];
      v5 = [v7 imageWithContentsOfFile:v8];

      goto LABEL_8;
    }

    goto LABEL_20;
  }

  objc_opt_class();
  v5 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && a2)
  {
    if (IsImageData(v3, 0))
    {
      v4 = [MEMORY[0x1E69DCAB8] imageWithData:v3];
      goto LABEL_7;
    }

LABEL_20:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

id _UIActivityItemsGetStrings(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_26;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    v8 = 0;
    do
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 allValues];
        v11 = _UIActivityItemsGetStringsAndURLs(v10, a2);

        if ([v11 count])
        {
          if (!v6)
          {
            v6 = [MEMORY[0x1E695DF70] array];
          }

          [v6 addObjectsFromArray:v11];
        }

        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a2)
        {
LABEL_12:
          v12 = v9;
        }

        else
        {
          v12 = [v9 string];
        }

        v11 = v12;
        if (!v12)
        {
          goto LABEL_18;
        }

        if (!v6)
        {
          v6 = [MEMORY[0x1E695DF70] array];
        }

        [v6 addObject:v11];
LABEL_17:
      }

LABEL_18:
      ++v8;
    }

    while (v5 != v8);
    v13 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v5 = v13;
  }

  while (v13);
LABEL_26:

  return v6;
}

id _UIActivityItemsGetStringsAndURLs(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_33;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v19;
  v8 = 0x1E695D000uLL;
  do
  {
    v9 = 0;
    do
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 allValues];
        v12 = _UIActivityItemsGetStringsAndURLs(v11, a2);

        if ([v12 count])
        {
          if (!v6)
          {
            v6 = [*(v8 + 3952) array];
          }

          [v6 addObjectsFromArray:v12];
        }

        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a2)
        {
LABEL_12:
          v13 = v10;
        }

        else
        {
          v13 = [v10 string];
        }

        v12 = v13;
        if (!v13)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!v6)
        {
          v6 = [*(v8 + 3952) array];
        }

        if (([v6 containsObject:v12] & 1) == 0)
        {
          [v6 addObject:v12];
        }

        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 || ([v10 isFileURL])
      {
        v12 = 0;
        goto LABEL_24;
      }

      v14 = [v10 scheme];
      v15 = [v14 compare:@"assets-library" options:1];

      if (!v15)
      {
        v12 = 0;
        v8 = 0x1E695D000;
        goto LABEL_24;
      }

      v12 = [v10 absoluteString];
      v8 = 0x1E695D000;
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_24:

      ++v9;
    }

    while (v5 != v9);
    v16 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    v5 = v16;
  }

  while (v16);
LABEL_33:

  return v6;
}

id _UIActivityItemsGetWebURLs(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 allValues];
          v12 = _UIActivityItemsGetWebURLs(v11, a2);

          if ([v12 count])
          {
            [v4 addObjectsFromArray:v12];
          }

LABEL_9:

          continue;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 isFileURL] & 1) == 0)
        {
          v13 = [v10 scheme];
          v14 = [v13 compare:@"assets-library" options:1];

          if (v14)
          {
            v15 = v10;
            v12 = v15;
            if (a2)
            {
              v16 = [v15 absoluteString];

              v12 = v16;
            }

            [v4 addObject:v12];
            goto LABEL_9;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v4;
}

id _UIActivityItemsGetImages(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 allValues];
          v13 = _UIActivityItemsGetImages(v12, a2, a3);

          if ([v13 count])
          {
            if (!v8)
            {
              v8 = [MEMORY[0x1E695DF70] array];
            }

            [v8 addObjectsFromArray:v13];
          }
        }

        else
        {
          v13 = ImageForItem(v11, a3);
          if (v13)
          {
            if (!v8)
            {
              v8 = [MEMORY[0x1E695DF70] array];
            }

            [v8 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id _UIActivityItemsGetImagesAndVideos(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_41;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v19;
  v6 = 0x1E695D000uLL;
  do
  {
    v7 = 0;
    do
    {
      if (*v19 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v8 = *(*(&v18 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 allValues];
        v10 = _UIActivityItemsGetImagesAndVideos();

        if ([v10 count])
        {
          if (!v4)
          {
            v4 = [*(v6 + 3952) array];
          }

          [v4 addObjectsFromArray:v10];
        }

        goto LABEL_20;
      }

      if (!_UIActivityItemIsLivePhoto(v8))
      {
        v10 = ImageForItem(v8, 0);
        if (v10)
        {
          if (!v4)
          {
            v4 = [*(v6 + 3952) array];
          }

          v11 = v4;
          v12 = v10;
LABEL_19:
          [v11 addObject:v12];
LABEL_20:

          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && IsImageData(v8, 0))
        {
          if (!v4)
          {
            goto LABEL_26;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || !IsFileURL(v8))
          {
            goto LABEL_20;
          }

          v13 = [v8 path];
          IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(v13);

          if (IsCompatibleWithSavedPhotosAlbum)
          {
            v6 = 0x1E695D000uLL;
            if (!v4)
            {
              v4 = [MEMORY[0x1E695DF70] array];
            }

            v15 = [v8 path];
            [v4 addObject:v15];

            goto LABEL_20;
          }

          v6 = 0x1E695D000;
          if (!IsImageFile(v8))
          {
            goto LABEL_20;
          }

          if (!v4)
          {
LABEL_26:
            v4 = [*(v6 + 3952) array];
          }
        }

        v11 = v4;
        v12 = v8;
        goto LABEL_19;
      }

      if (!v4)
      {
        v4 = [*(v6 + 3952) array];
      }

      [v4 addObject:v8];
LABEL_21:
      ++v7;
    }

    while (v3 != v7);
    v16 = [v1 countByEnumeratingWithState:&v18 objects:v22 count:16];
    v3 = v16;
  }

  while (v16);
LABEL_41:

  return v4;
}

BOOL IsImageData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [_UIActivityPlaceholderItemProxy unproxiedItemForItem:v3];
  if (v4)
  {
    goto LABEL_4;
  }

  v6 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v3 activityType:0];
  if (v6)
  {
    v4 = v6;
LABEL_4:
    v7 = UTTypeConformsTo(v4, *MEMORY[0x1E69637F8]) != 0;

    goto LABEL_5;
  }

  v9 = CGImageSourceCreateWithData(v5, 0);
  if (v9)
  {
    v10 = v9;
    Type = CGImageSourceGetType(v9);
    if (Type)
    {
      v7 = UTTypeConformsTo(Type, *MEMORY[0x1E69637F8]) != 0;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v7 = 0;
  }

LABEL_5:

  return v7;
}

id _UIActivityItemsGetAttachments(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_28;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v13;
  do
  {
    v6 = 0;
    do
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 allValues];
        v9 = _UIActivityItemsGetAttachments();

        if ([v9 count])
        {
          if (!v4)
          {
            v4 = [MEMORY[0x1E695DF70] array];
          }

          [v4 addObjectsFromArray:v9];
        }

LABEL_11:

        goto LABEL_19;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (((objc_opt_isKindOfClass() & 1) == 0 || !IsFileURL(v7)) && !IsItemProvider(v7))
        {
          v9 = ImageForItem(v7, 0);
          if (v9)
          {
            if (!v4)
            {
              v4 = [MEMORY[0x1E695DF70] array];
            }

            [v4 addObject:v9];
          }

          goto LABEL_11;
        }
      }

      if (!v4)
      {
        v4 = [MEMORY[0x1E695DF70] array];
      }

      [v4 addObject:v7];
LABEL_19:
      ++v6;
    }

    while (v3 != v6);
    v10 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    v3 = v10;
  }

  while (v10);
LABEL_28:

  return v4;
}

id _UIActivityItemsGetUTIs(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v19 = a2;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v18 = *MEMORY[0x1E69638B8];
    v9 = *MEMORY[0x1E6963870];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = ___UIActivityItemsGetUTIs_block_invoke;
          v20[3] = &unk_1E71F9A98;
          v21 = v4;
          [v11 enumerateKeysAndObjectsUsingBlock:v20];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:v9];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = v9;
              v13 = v11;
              if ([v13 isFileURL])
              {
                v14 = _UIActivityUTIForURL(v13);
              }

              else
              {
                v14 = v18;
              }

              v16 = v14;
              if (v14)
              {
                [v4 addObject:v14];
              }

              v9 = v12;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v11 activityType:v19];
                if (v15)
                {
                  [v4 addObject:v15];
                }
              }
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  return v4;
}

__CFString *_UIActivityUTIForURL(void *a1)
{
  v1 = a1;
  v2 = [v1 pathExtension];
  v3 = [v2 lowercaseString];

  if ([(__CFString *)v3 isEqualToString:@"log"])
  {
    v4 = *MEMORY[0x1E6963870];
  }

  else
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v3, 0);
    v6 = PreferredIdentifierForTag;
    if (PreferredIdentifierForTag && UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x1E6963740]))
    {
      v7 = v1;
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v8 = getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr;
      v15 = getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr;
      if (!getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_block_invoke;
        v11[3] = &unk_1E71F91F0;
        v11[4] = &v12;
        __getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_block_invoke(v11);
        v8 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v8)
      {
        v10 = [SHSheetRemoteSceneViewController reloadMetadata:];
        _Block_object_dispose(&v12, 8);
        _Unwind_Resume(v10);
      }

      v4 = v8(v7, 0);
    }

    else
    {
      v4 = v6;
    }
  }

  return v4;
}

id _itemLoaderQueue()
{
  if (_itemLoaderQueue_onceToken != -1)
  {
    _itemLoaderQueue_cold_1();
  }

  v1 = _itemLoaderQueue_queue;

  return v1;
}

void ___itemLoaderQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.ShareSheet.itemLoaderQueue", v2);
  v1 = _itemLoaderQueue_queue;
  _itemLoaderQueue_queue = v0;
}

uint64_t ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_503(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_505(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = share_sheet_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_505_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 64);
    *buf = 67240192;
    v23 = v9;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_INFO, "Successfully loaded item at index %{public}d as URL for copy type identifier", buf, 8u);
  }

  v10 = _itemLoaderQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_506;
  block[3] = &unk_1E71F9B10;
  v19 = v5;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  *&v15 = v12;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v13;
  v20 = v15;
  v21 = v16;
  v17 = v5;
  dispatch_async(v10, block);
}

uint64_t ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_506(void *a1)
{
  if (a1[4])
  {
    (*(a1[7] + 16))();
  }

  v2 = *(a1[8] + 16);

  return v2();
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_508(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = share_sheet_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_508_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 64);
    *buf = 67240192;
    v23 = v9;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_INFO, "Successfully loaded item at index %{public}d as a URL", buf, 8u);
  }

  v10 = _itemLoaderQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_509;
  block[3] = &unk_1E71F9B10;
  v19 = v5;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v14 = *(a1 + 40);
  *&v15 = v12;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v13;
  v20 = v15;
  v21 = v16;
  v17 = v5;
  dispatch_async(v10, block);
}

uint64_t ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_509(void *a1)
{
  if (a1[4])
  {
    (*(a1[7] + 16))();
  }

  v2 = *(a1[8] + 16);

  return v2();
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_510(uint64_t a1, void *a2, char a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__1;
  v40[4] = __Block_byref_object_dispose__1;
  v41 = *(a1 + 32);
  if (v8)
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_510_cold_1();
    }

    v10 = _itemLoaderQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_511;
    block[3] = &unk_1E71F9B60;
    v38 = *(a1 + 56);
    v39 = v40;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 40);
      *buf = 67240450;
      *&buf[4] = v12;
      LOWORD(v43) = 2114;
      *(&v43 + 2) = v13;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_INFO, "Successfully loaded item at index %{public}d as a file of type %{public}@", buf, 0x12u);
    }

    if (v7)
    {
      *buf = 0;
      *&v43 = buf;
      *(&v43 + 1) = 0x3032000000;
      v44 = __Block_byref_object_copy__1;
      v45 = __Block_byref_object_dispose__1;
      v46 = 0;
      v14 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
      v15 = v43;
      obj = *(v43 + 40);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_513;
      v28[3] = &unk_1E71F9BB0;
      v35 = a3;
      v29 = v7;
      v32 = v40;
      v17 = *(a1 + 64);
      v16 = *(a1 + 72);
      v33 = buf;
      v34 = v16;
      v24 = *(a1 + 40);
      v18 = v17;
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      *&v21 = v18;
      *(&v21 + 1) = v20;
      *&v22 = v24;
      *(&v22 + 1) = v19;
      v30 = v22;
      v31 = v21;
      [v14 coordinateReadingItemAtURL:v29 options:1 error:&obj byAccessor:v28];
      objc_storeStrong((v15 + 40), obj);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v23 = _itemLoaderQueue();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_2;
      v25[3] = &unk_1E71F9B60;
      v26 = *(a1 + 56);
      v27 = v40;
      dispatch_async(v23, v25);
    }
  }

  _Block_object_dispose(v40, 8);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_513(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v6 = [v5 lastPathComponent];
    v7 = *(*(*(a1 + 72) + 8) + 40);
    if (!v7)
    {
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v9 = [v8 temporaryDirectory];

      v10 = _newTempDir(v9, @"com.apple.ShareSheet.Activity");
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v7 = *(*(*(a1 + 72) + 8) + 40);
    }

    v13 = _newTempDir(v7, @"com.apple.ShareSheet.representation");
    v14 = [v13 URLByAppendingPathComponent:v6 isDirectory:0];
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = *(*(a1 + 80) + 8);
    obj = *(v16 + 40);
    v17 = [v15 moveItemAtURL:v5 toURL:v14 error:&obj];
    objc_storeStrong((v16 + 40), obj);

    if (v17)
    {
      v18 = v5;
      v5 = v14;
    }

    else
    {
      v18 = share_sheet_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_513_cold_1();
      }
    }
  }

LABEL_12:
  v19 = _itemLoaderQueue();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_517;
  v25[3] = &unk_1E71F9B88;
  v26 = v5;
  v20 = *(a1 + 56);
  v21 = *(a1 + 48);
  *&v22 = *(a1 + 64);
  *(&v22 + 1) = *(a1 + 72);
  *&v23 = v21;
  *(&v23 + 1) = v20;
  v27 = v23;
  v28 = v22;
  v24 = v5;
  dispatch_async(v19, v25);
}

uint64_t _newTempDir(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 path];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@.XXXXXX", v3];

  v6 = [v4 stringByAppendingPathComponent:v5];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v8 = [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v14];
  v9 = v14;
  v10 = 0;
  if (v8)
  {
    bzero(v15, 0x401uLL);
    [v6 getFileSystemRepresentation:v15 maxLength:1024];
    if (mkdtemp(v15))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:1];
    }

    else
    {
      v11 = share_sheet_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _newTempDir_cold_1(v11);
      }

      v10 = 0;
    }
  }

  if (v9)
  {
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _newTempDir_cold_2(v9, v12);
    }
  }

  return v10;
}

uint64_t ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_517(void *a1)
{
  if (a1[4])
  {
    (*(a1[6] + 16))();
  }

  v2 = *(a1[7] + 16);

  return v2();
}

void ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = _itemLoaderQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_4;
  block[3] = &unk_1E71F9B10;
  v13 = v3;
  v5 = a1[6];
  v6 = a1[4];
  v7 = a1[7];
  v8 = a1[5];
  *&v9 = v6;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v7;
  v14 = v9;
  v15 = v10;
  v11 = v3;
  dispatch_async(v4, block);
}

uint64_t ___loadItemProvidersFromActivityItemsStartingAtIndex_block_invoke_4(void *a1)
{
  if (a1[4])
  {
    (*(a1[7] + 16))();
  }

  v2 = *(a1[8] + 16);

  return v2();
}

void ___loadItemProviderInline_block_invoke()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  v1 = _loadItemProviderInline_loadableClasses;
  _loadItemProviderInline_loadableClasses = v0;
}

void ___loadItemProviderInline_block_invoke_531(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = share_sheet_log();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___loadItemProviderInline_block_invoke_531_cold_1(a1, v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromClass(*(a1 + 40));
    v10[0] = 67240450;
    v10[1] = MEMORY[0x1E69E98A8];
    v11 = 2114;
    v12 = v9;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_INFO, "Successfully loaded item at index %{public}d as class %{public}@", v10, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

Class __getSFUIActivityImageProviderClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71F9C70;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_3)
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
  result = objc_getClass("SFUIActivityImageProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUIActivityImageProviderClass_block_invoke_cold_1();
  }

  getSFUIActivityImageProviderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_3 = result;
  return result;
}

void *__getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __QuickLookLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71F9C88;
    v7 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = QuickLookLibraryCore_frameworkLibrary;
    if (QuickLookLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = QuickLookLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "QLTypeCopyUTIForURLAndMimeType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getQLTypeCopyUTIForURLAndMimeTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B391244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B391744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIActivityIsAirdrop(void *a1)
{
  v1 = [a1 activityType];
  v2 = [v1 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

  return v2;
}

Class initLPLinkMetadata()
{
  if (LinkPresentationLibrary_sOnce != -1)
  {
    initLPLinkMetadata_cold_1();
  }

  result = objc_getClass("LPLinkMetadata");
  classLPLinkMetadata = result;
  getLPLinkMetadataClass_0 = LPLinkMetadataFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib = result;
  return result;
}

Class initSFUIActivityImageProvider()
{
  if (SharingUILibrary_sOnce != -1)
  {
    initSFUIActivityImageProvider_cold_1();
  }

  result = objc_getClass("SFUIActivityImageProvider");
  classSFUIActivityImageProvider = result;
  getSFUIActivityImageProviderClass = SFUIActivityImageProviderFunction;
  return result;
}

void *__SharingUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SharingUI.framework/SharingUI", 2);
  SharingUILibrary_sLib = result;
  return result;
}

Class initMFMessageComposeViewController()
{
  if (MessageUILibrary_sOnce_0 != -1)
  {
    initMFMessageComposeViewController_cold_1();
  }

  result = objc_getClass("MFMessageComposeViewController");
  classMFMessageComposeViewController = result;
  getMFMessageComposeViewControllerClass = MFMessageComposeViewControllerFunction;
  return result;
}

void *__MessageUILibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/MessageUI.framework/MessageUI", 2);
  MessageUILibrary_sLib_0 = result;
  return result;
}

Class initLPSharingMetadataWrapper()
{
  if (LinkPresentationLibrary_sOnce_0 != -1)
  {
    initLPSharingMetadataWrapper_cold_1();
  }

  result = objc_getClass("LPSharingMetadataWrapper");
  classLPSharingMetadataWrapper = result;
  getLPSharingMetadataWrapperClass = LPSharingMetadataWrapperFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib_0 = result;
  return result;
}

void sub_18B395A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B395C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFBSceneWorkspaceClass_block_invoke(uint64_t a1)
{
  FrontBoardLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSceneWorkspace");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSceneWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFBSceneWorkspaceClass_block_invoke_cold_1();
    FrontBoardLibrary();
  }
}

void FrontBoardLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FrontBoardLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71F9E70;
    v3 = 0;
    FrontBoardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __FrontBoardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardLibraryCore_frameworkLibrary = result;
  return result;
}

UIActivityContentViewController *__getFBDisplayManagerClass_block_invoke(uint64_t a1)
{
  FrontBoardLibrary();
  result = objc_getClass("FBDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBDisplayManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFBDisplayManagerClass_block_invoke_cold_1();
    return [(UIActivityContentViewController *)v3 init];
  }

  return result;
}

void sub_18B398710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id allocSHLPLinkViewInstance()
{
  if (allocSHLPLinkViewInstance_onceToken != -1)
  {
    allocSHLPLinkViewInstance_cold_1();
  }

  v0 = [allocSHLPLinkViewInstance_theClass alloc];

  return v0;
}

void sub_18B39B7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3A3044(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_18B3A3C6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_18B3A43A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initSFUIActivityImageProvider_0()
{
  if (SharingUILibrary_sOnce_0 != -1)
  {
    initSFUIActivityImageProvider_cold_1_0();
  }

  result = objc_getClass("SFUIActivityImageProvider");
  classSFUIActivityImageProvider_0 = result;
  getSFUIActivityImageProviderClass_0 = SFUIActivityImageProviderFunction_0;
  return result;
}

void *__SharingUILibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/SharingUI.framework/SharingUI", 2);
  SharingUILibrary_sLib_0 = result;
  return result;
}

Class initSFUIPeopleSuggestionImageProvider()
{
  if (SharingUILibrary_sOnce_0 != -1)
  {
    initSFUIActivityImageProvider_cold_1_0();
  }

  result = objc_getClass("SFUIPeopleSuggestionImageProvider");
  classSFUIPeopleSuggestionImageProvider = result;
  getSFUIPeopleSuggestionImageProviderClass = SFUIPeopleSuggestionImageProviderFunction;
  return result;
}

void __allocSHLPLinkViewInstance_block_invoke()
{
  LPLinkViewClass = getLPLinkViewClass();
  allocSHLPLinkViewInstance_theClass = objc_allocateClassPair(LPLinkViewClass, "SHLPLinkView", 0);
  class_addMethod(allocSHLPLinkViewInstance_theClass, sel_intrinsicContentSize, SHLPLinkView_intrinsicContentSize, "{CGSize=ff}@:");
  v1 = allocSHLPLinkViewInstance_theClass;

  objc_registerClassPair(v1);
}

Class initLPLinkView()
{
  if (LinkPresentationLibrary_sOnce_1 != -1)
  {
    initLPLinkView_cold_1();
  }

  result = objc_getClass("LPLinkView");
  classLPLinkView = result;
  getLPLinkViewClass = LPLinkViewFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib_1 = result;
  return result;
}

Class initPUCarouselSharingViewController()
{
  if (PhotosUIPrivateLibrary_sOnce != -1)
  {
    initPUCarouselSharingViewController_cold_1();
  }

  result = objc_getClass("PUCarouselSharingViewController");
  classPUCarouselSharingViewController = result;
  getPUCarouselSharingViewControllerClass = PUCarouselSharingViewControllerFunction;
  return result;
}

void *__PhotosUIPrivateLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PhotosUIPrivate.framework/PhotosUIPrivate", 2);
  PhotosUIPrivateLibrary_sLib = result;
  return result;
}

Class initSFUITTRReporter()
{
  if (SharingUILibrary_sOnce_0 != -1)
  {
    initSFUIActivityImageProvider_cold_1_0();
  }

  result = objc_getClass("SFUITTRReporter");
  classSFUITTRReporter = result;
  getSFUITTRReporterClass = SFUITTRReporterFunction;
  return result;
}

Class initLPLinkRendererSizeClassParameters()
{
  if (LinkPresentationLibrary_sOnce_1 != -1)
  {
    initLPLinkView_cold_1();
  }

  result = objc_getClass("LPLinkRendererSizeClassParameters");
  classLPLinkRendererSizeClassParameters = result;
  getLPLinkRendererSizeClassParametersClass = LPLinkRendererSizeClassParametersFunction;
  return result;
}

Class initRPTTestRunner()
{
  if (RecapPerformanceTestingLibrary_sOnce != -1)
  {
    initRPTTestRunner_cold_1();
  }

  result = objc_getClass("RPTTestRunner");
  classRPTTestRunner = result;
  getRPTTestRunnerClass = RPTTestRunnerFunction;
  return result;
}

void *__RecapPerformanceTestingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/RecapPerformanceTesting.framework/RecapPerformanceTesting", 2);
  RecapPerformanceTestingLibrary_sLib = result;
  return result;
}

Class initRPTScrollViewTestParameters()
{
  if (RecapPerformanceTestingLibrary_sOnce != -1)
  {
    initRPTTestRunner_cold_1();
  }

  result = objc_getClass("RPTScrollViewTestParameters");
  classRPTScrollViewTestParameters = result;
  getRPTScrollViewTestParametersClass = RPTScrollViewTestParametersFunction;
  return result;
}

Class initLPLinkMetadata_0()
{
  if (LinkPresentationLibrary_sOnce_2 != -1)
  {
    initLPLinkMetadata_cold_1_0();
  }

  result = objc_getClass("LPLinkMetadata");
  classLPLinkMetadata_0 = result;
  getLPLinkMetadataClass_1 = LPLinkMetadataFunction_0;
  return result;
}

void *__LinkPresentationLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib_2 = result;
  return result;
}

Class initSFUIShareSheetPopoverBackgroundView()
{
  if (SharingUILibrary_sOnce_1 != -1)
  {
    initSFUIShareSheetPopoverBackgroundView_cold_1();
  }

  result = objc_getClass("SFUIShareSheetPopoverBackgroundView");
  classSFUIShareSheetPopoverBackgroundView = result;
  getSFUIShareSheetPopoverBackgroundViewClass = SFUIShareSheetPopoverBackgroundViewFunction;
  return result;
}

void *__SharingUILibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/SharingUI.framework/SharingUI", 2);
  SharingUILibrary_sLib_1 = result;
  return result;
}

void sub_18B3AB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFUIShareSheetActivityCellSpecClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FA160;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_4)
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
  result = objc_getClass("SFUIShareSheetActivityCellSpec");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFUIShareSheetActivityCellSpecClass_block_invoke_cold_1();
  }

  getSFUIShareSheetActivityCellSpecClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_4 = result;
  return result;
}

id _ShareSheetBundle()
{
  v0 = _ShareSheetBundle_sharingUIBundle;
  if (!_ShareSheetBundle_sharingUIBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = _ShareSheetBundle_sharingUIBundle;
    _ShareSheetBundle_sharingUIBundle = v1;

    v0 = _ShareSheetBundle_sharingUIBundle;
  }

  return v0;
}

uint64_t _ShareSheetCurrentDeviceClassFromPresentationStyle(int a1)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _referenceBounds];
  v4 = v3;
  v6 = v5;

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [MEMORY[0x1E69DC938] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = _ShareSheetPlatformPrefersPopover();
  v13 = v10 == 1 || v8 == 6;
  if (!v11 || !v13)
  {
    if (v6 == 568.0 && v4 == 320.0)
    {
      return 0;
    }

    v16 = v6 == 693.0 && v4 == 320.0;
    if (!v16 && (v6 != 667.0 || v4 != 375.0))
    {
      if (v6 == 736.0 && v4 == 414.0)
      {
        return 2;
      }

      if (v6 == 812.0 && v4 == 375.0)
      {
        return 3;
      }

      if (v6 == 844.0 && v4 == 390.0 || v6 == 852.0 && v4 == 393.0)
      {
        return 4;
      }

      if (v6 == 896.0 && v4 == 414.0)
      {
        return 5;
      }

      if (v6 == 926.0 && v4 == 428.0 || v6 == 932.0 && v4 == 430.0)
      {
        return 6;
      }

      v17 = share_sheet_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        _ShareSheetCurrentDeviceClassFromPresentationStyle_cold_1(v17, v4, v6);
      }
    }

    return 1;
  }

  if (v8 == 6)
  {
    if (a1)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }

  else if (v4 == 768.0)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

id magic_head_log()
{
  if (magic_head_log_onceToken != -1)
  {
    magic_head_log_cold_1();
  }

  v1 = magic_head_log___logger;

  return v1;
}

void __magic_head_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "MagicHead");
  v1 = magic_head_log___logger;
  magic_head_log___logger = v0;
}

void __share_sheet_log_block_invoke()
{
  v0 = os_log_create("com.apple.ShareSheet", "ShareSheet");
  v1 = share_sheet_log___logger;
  share_sheet_log___logger = v0;
}

id _UIKitUserDefaults()
{
  if (_UIKitUserDefaults_onceToken != -1)
  {
    _UIKitUserDefaults_cold_1();
  }

  v1 = _UIKitUserDefaults_result;

  return v1;
}

uint64_t _ShareSheetIsAppleApp()
{
  if (_ShareSheetIsAppleApp_onceToken != -1)
  {
    _ShareSheetIsAppleApp_cold_1();
  }

  return _ShareSheetIsAppleApp_isAppleApp;
}

id getCNContactStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactStoreClass_softClass;
  v7 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNContactStoreClass_block_invoke;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getCNContactStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B3AEF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _ShareSheetDeviceScreenScale()
{
  if (_ShareSheetDeviceScreenScale_didCheck != -1)
  {
    _ShareSheetDeviceScreenScale_cold_1();
  }

  return *&_ShareSheetDeviceScreenScale_scale;
}

uint64_t _ShareSheetIsCamera()
{
  if (_ShareSheetIsCamera_didCheck != -1)
  {
    _ShareSheetIsCamera_cold_1();
  }

  return _ShareSheetIsCamera_isCamera;
}

uint64_t _ShareSheetIsSafari()
{
  if (_ShareSheetIsSafari_didCheck != -1)
  {
    _ShareSheetIsSafari_cold_1();
  }

  return _ShareSheetIsSafari_isSafari;
}

uint64_t _ShareSheetIsBrowser()
{
  if (_ShareSheetIsBrowser_onceToken != -1)
  {
    _ShareSheetIsBrowser_cold_1();
  }

  return _ShareSheetIsBrowser_hostHasEntitlement;
}

uint64_t _ShareSheetIsRealityLauncher()
{
  if (_ShareSheetIsRealityLauncher_onceToken != -1)
  {
    _ShareSheetIsRealityLauncher_cold_1();
  }

  return _ShareSheetIsRealityLauncher_isRealityLauncher;
}

uint64_t _ShareSheetIsPhotos()
{
  if (_ShareSheetIsPhotos_didCheck != -1)
  {
    _ShareSheetIsPhotos_cold_1();
  }

  return _ShareSheetIsPhotos_isPhotos;
}

uint64_t _ShareSheetImageAnalysisAllowed()
{
  if (_ShareSheetIsMessagesApp_didCheck != -1)
  {
    _ShareSheetImageAnalysisAllowed_cold_1();
  }

  return _ShareSheetIsMessagesApp_isMessages;
}

uint64_t _ShareSheetCanUseCustomViewController()
{
  if (_ShareSheetIsPhotos_didCheck != -1)
  {
    _ShareSheetIsPhotos_cold_1();
  }

  if (_ShareSheetIsPhotos_isPhotos)
  {
    goto LABEL_25;
  }

  if (_ShareSheetIsPhotosMessagesApp_didCheck != -1)
  {
    _ShareSheetCanUseCustomViewController_cold_2();
  }

  if (_ShareSheetIsPhotosMessagesApp_isPhotos)
  {
    goto LABEL_25;
  }

  if (_ShareSheetIsCamera_didCheck != -1)
  {
    _ShareSheetCanUseCustomViewController_cold_3();
  }

  if (_ShareSheetIsCamera_isCamera)
  {
    goto LABEL_25;
  }

  if (_ShareSheetIsClips_didCheck != -1)
  {
    _ShareSheetCanUseCustomViewController_cold_4();
  }

  if (_ShareSheetIsClips_IsClips)
  {
    goto LABEL_25;
  }

  if (_ShareSheetIsMusic_didCheck != -1)
  {
    _ShareSheetCanUseCustomViewController_cold_5();
  }

  if (_ShareSheetIsMusic_IsMusic)
  {
    goto LABEL_25;
  }

  if (_ShareSheetIsTV_didCheck != -1)
  {
    _ShareSheetCanUseCustomViewController_cold_6();
  }

  if (_ShareSheetIsTV_IsTV)
  {
    goto LABEL_25;
  }

  if (_ShareSheetIsFaceTime_didCheck != -1)
  {
    _ShareSheetCanUseCustomViewController_cold_7();
  }

  if (_ShareSheetIsFaceTime_IsFaceTime)
  {
    goto LABEL_25;
  }

  if (_ShareSheetIsInCallService_didCheck != -1)
  {
    _ShareSheetCanUseCustomViewController_cold_8();
  }

  if (_ShareSheetIsInCallService_IsInCallService)
  {
LABEL_25:
    v0 = 1;
  }

  else
  {
    if (_ShareSheetHostCanUseCustomViewController_onceToken != -1)
    {
      _ShareSheetHostCanRenderInProcess_cold_1();
    }

    v0 = _ShareSheetHostCanUseCustomViewController_hostHasEntitlement;
  }

  return v0 & 1;
}

uint64_t _ShareSheetIsSupportedPrintActivity(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v3 = objc_opt_isKindOfClass();

  return v3 & ~isKindOfClass & 1;
}

double _ShareSheetFormSheetSize()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];

  return 540.0;
}

uint64_t _ShareSheetCanAccessPeopleSuggestions(_BYTE *a1)
{
  if (_ShareSheetCanAccessPeopleSuggestions_onceToken != -1)
  {
    _ShareSheetCanAccessPeopleSuggestions_cold_1();
  }

  if ((_ShareSheetCanAccessPeopleSuggestions_hostHasEntitlement & 1) == 0)
  {
    v3 = 0;
    if (a1)
    {
      *a1 = 1;
    }

    return v3 & 1;
  }

  v2 = [getCNContactStoreClass() authorizationStatusForEntityType:0];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v3 = v2 == 3;
  v40 = v2 == 3;
  if (v2)
  {
LABEL_27:
    if (a1)
    {
      if ((v3 & 1) == 0)
      {
        *a1 = 0;
      }
    }

    _Block_object_dispose(&v37, 8);
    return v3 & 1;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v4 = getkTCCServiceAddressBookSymbolLoc_ptr;
  v49 = getkTCCServiceAddressBookSymbolLoc_ptr;
  if (!getkTCCServiceAddressBookSymbolLoc_ptr)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __getkTCCServiceAddressBookSymbolLoc_block_invoke;
    v44 = &unk_1E71F91F0;
    v45 = &v46;
    v5 = TCCLibrary();
    v6 = dlsym(v5, "kTCCServiceAddressBook");
    *(v45[1] + 24) = v6;
    getkTCCServiceAddressBookSymbolLoc_ptr = *(v45[1] + 24);
    v4 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v4)
  {
    goto LABEL_36;
  }

  v7 = *v4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v8 = gettcc_service_singleton_for_CF_nameSymbolLoc_ptr;
  v49 = gettcc_service_singleton_for_CF_nameSymbolLoc_ptr;
  if (!gettcc_service_singleton_for_CF_nameSymbolLoc_ptr)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __gettcc_service_singleton_for_CF_nameSymbolLoc_block_invoke;
    v44 = &unk_1E71F91F0;
    v45 = &v46;
    v9 = TCCLibrary();
    v10 = dlsym(v9, "tcc_service_singleton_for_CF_name");
    *(v45[1] + 24) = v10;
    gettcc_service_singleton_for_CF_nameSymbolLoc_ptr = *(v45[1] + 24);
    v8 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v8)
  {
    goto LABEL_36;
  }

  v11 = v8(v7);
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v12 = gettcc_message_options_createSymbolLoc_ptr;
  v49 = gettcc_message_options_createSymbolLoc_ptr;
  if (!gettcc_message_options_createSymbolLoc_ptr)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __gettcc_message_options_createSymbolLoc_block_invoke;
    v44 = &unk_1E71F91F0;
    v45 = &v46;
    v13 = TCCLibrary();
    v14 = dlsym(v13, "tcc_message_options_create");
    *(v45[1] + 24) = v14;
    gettcc_message_options_createSymbolLoc_ptr = *(v45[1] + 24);
    v12 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v12)
  {
    goto LABEL_36;
  }

  v15 = v12();
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v16 = gettcc_message_options_set_reply_handler_policySymbolLoc_ptr;
  v49 = gettcc_message_options_set_reply_handler_policySymbolLoc_ptr;
  if (!gettcc_message_options_set_reply_handler_policySymbolLoc_ptr)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __gettcc_message_options_set_reply_handler_policySymbolLoc_block_invoke;
    v44 = &unk_1E71F91F0;
    v45 = &v46;
    v17 = TCCLibrary();
    v18 = dlsym(v17, "tcc_message_options_set_reply_handler_policy");
    *(v45[1] + 24) = v18;
    gettcc_message_options_set_reply_handler_policySymbolLoc_ptr = *(v45[1] + 24);
    v16 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v16)
  {
    goto LABEL_36;
  }

  v16(v15, 1);

  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v19 = gettcc_credential_singleton_for_selfSymbolLoc_ptr;
  v49 = gettcc_credential_singleton_for_selfSymbolLoc_ptr;
  if (!gettcc_credential_singleton_for_selfSymbolLoc_ptr)
  {
    v41 = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = __gettcc_credential_singleton_for_selfSymbolLoc_block_invoke;
    v44 = &unk_1E71F91F0;
    v45 = &v46;
    v20 = TCCLibrary();
    v21 = dlsym(v20, "tcc_credential_singleton_for_self");
    *(v45[1] + 24) = v21;
    gettcc_credential_singleton_for_selfSymbolLoc_ptr = *(v45[1] + 24);
    v19 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (v19)
  {
    v22 = v19();
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v23 = gettcc_server_singleton_defaultSymbolLoc_ptr;
    v49 = gettcc_server_singleton_defaultSymbolLoc_ptr;
    if (!gettcc_server_singleton_defaultSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __gettcc_server_singleton_defaultSymbolLoc_block_invoke;
      v44 = &unk_1E71F91F0;
      v45 = &v46;
      v24 = TCCLibrary();
      v25 = dlsym(v24, "tcc_server_singleton_default");
      *(v45[1] + 24) = v25;
      gettcc_server_singleton_defaultSymbolLoc_ptr = *(v45[1] + 24);
      v23 = v47[3];
    }

    _Block_object_dispose(&v46, 8);
    if (v23)
    {
      v26 = v23();
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = ___ShareSheetCanAccessPeopleSuggestions_block_invoke_2;
      v36[3] = &unk_1E71FA180;
      v36[4] = &v37;
      v36[5] = v7;
      v27 = v26;
      v28 = v15;
      v29 = v22;
      v30 = v11;
      v31 = v36;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v32 = gettcc_server_message_request_authorizationSymbolLoc_ptr;
      v49 = gettcc_server_message_request_authorizationSymbolLoc_ptr;
      if (!gettcc_server_message_request_authorizationSymbolLoc_ptr)
      {
        v41 = MEMORY[0x1E69E9820];
        v42 = 3221225472;
        v43 = __gettcc_server_message_request_authorizationSymbolLoc_block_invoke;
        v44 = &unk_1E71F91F0;
        v45 = &v46;
        v33 = TCCLibrary();
        v34 = dlsym(v33, "tcc_server_message_request_authorization");
        *(v45[1] + 24) = v34;
        gettcc_server_message_request_authorizationSymbolLoc_ptr = *(v45[1] + 24);
        v32 = v47[3];
      }

      _Block_object_dispose(&v46, 8);
      if (v32)
      {
        (v32)(v27, v28, v29, v30, 0, v31);

        v3 = *(v38 + 24);
        goto LABEL_27;
      }
    }

    dlerror();
    result = abort_report_np();
  }

  else
  {
LABEL_36:
    dlerror();
    result = abort_report_np();
  }

  __break(1u);
  return result;
}

void sub_18B3AFD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _ShareSheetLogCallStack()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v1 = share_sheet_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v1, OS_LOG_TYPE_DEFAULT, "Call Stack:", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = share_sheet_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

uint64_t _ShareSheetHostCanPerformActivitySkippingShareSheet()
{
  if (_ShareSheetHostCanPerformActivitySkippingShareSheet_onceToken != -1)
  {
    _ShareSheetHostCanPerformActivitySkippingShareSheet_cold_1();
  }

  return _ShareSheetHostCanPerformActivitySkippingShareSheet_hostEntitledForPerformActivity;
}

id _ShareSheetRegisteredTypeIdentifiers(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v19 = *v27;
    v20 = v3;
    do
    {
      v7 = 0;
      v21 = v5;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:@"attachments"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v10 = v9;
            v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v23;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v23 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v22 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 = [v15 objectForKey:@"registeredTypeIdentifiers"];
                    if (v16)
                    {
                      [v2 addObjectsFromArray:v16];
                    }
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v12);
            }

            v6 = v19;
            v3 = v20;
            v5 = v21;
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = [v2 copy];

  return v17;
}

id _ShareSheetOpenInSupportedTypeIdentifiers(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  _ShareSheetRegisteredTypeIdentifiers(a1);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (!SFIsImage())
        {

          v6 = 0;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = v1;
LABEL_11:

  return v6;
}

id _ShareSheetApplicationKeyWindow()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  if (!v0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v1 = [MEMORY[0x1E69DC668] sharedApplication];
    v2 = [v1 windows];

    v0 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v0)
    {
      v3 = *v9;
      while (2)
      {
        for (i = 0; i != v0; i = i + 1)
        {
          if (*v9 != v3)
          {
            objc_enumerationMutation(v2);
          }

          v5 = *(*(&v8 + 1) + 8 * i);
          if ([v5 isKeyWindow])
          {
            v0 = v5;
            goto LABEL_12;
          }
        }

        v0 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v0)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v6 = v0;

  return v6;
}

uint64_t _ShareSheetCachedActiveInterfaceOrientation()
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    result = __cachedActiveInterfaceOrientation;
    if (!__cachedActiveInterfaceOrientation)
    {
      v1 = MEMORY[0x1E69DDA98];
      __cachedActiveInterfaceOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
      [*v1 _performBlockAfterCATransactionCommits:&__block_literal_global_89];
      return __cachedActiveInterfaceOrientation;
    }
  }

  else
  {
    v2 = *MEMORY[0x1E69DDA98];

    return [v2 activeInterfaceOrientation];
  }

  return result;
}

Class __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FA1A0;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ContactsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactStoreClass_block_invoke_cold_1();
  }

  getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkTCCServiceAddressBookSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "kTCCServiceAddressBook");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkTCCServiceAddressBookSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t TCCLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TCCLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71FA1B8;
    v5 = 0;
    TCCLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = TCCLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __TCCLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary = result;
  return result;
}

void *__gettcc_message_options_createSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_message_options_create");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_message_options_createSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__gettcc_message_options_set_reply_handler_policySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_message_options_set_reply_handler_policy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_message_options_set_reply_handler_policySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__gettcc_credential_singleton_for_selfSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_credential_singleton_for_self");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_credential_singleton_for_selfSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__gettcc_server_singleton_defaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_server_singleton_default");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_server_singleton_defaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__gettcc_server_message_request_authorizationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_server_message_request_authorization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_server_message_request_authorizationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__gettcc_authorization_record_get_authorization_rightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "tcc_authorization_record_get_authorization_right");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_authorization_record_get_authorization_rightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id __ItemsFromUIActivityItems(void *a1)
{
  v55[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v51 = [MEMORY[0x1E695DF70] arrayWithArray:v1];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__2;
  v44 = __Block_byref_object_dispose__2;
  v45 = [MEMORY[0x1E695DF70] array];
  v2 = [v47[5] copy];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = ____ItemsFromUIActivityItems_block_invoke;
  v39[3] = &unk_1E71FA1E0;
  v39[4] = &v40;
  v39[5] = &v46;
  [v2 enumerateObjectsWithOptions:2 usingBlock:v39];

  v34.i64[0] = MEMORY[0x1E69E9820];
  v34.i64[1] = 3221225472;
  v35 = ____ItemsFromUIActivityItems_block_invoke_2;
  v36 = &unk_1E71FA208;
  v37 = &v46;
  v38 = &v40;
  ____ItemsFromUIActivityItems_block_invoke_2(&v34, 1024);
  (v35)(&v34, 512, *MEMORY[0x1E69636D8]);
  (v35)(&v34, 128, *MEMORY[0x1E6963858]);
  v3 = *MEMORY[0x1E69637F8];
  (v35)(&v34, 2, *MEMORY[0x1E69637F8]);
  (v35)(&v34, 64, *MEMORY[0x1E6963850]);
  (v35)(&v34, 4096, *MEMORY[0x1E6963748]);
  v4 = _UIActivityItemsWithTypes(v47[5], 1, 1u, 0);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = ____ItemsFromUIActivityItems_block_invoke_4;
  v33[3] = &unk_1E71FA1E0;
  v33[4] = &v40;
  v33[5] = &v46;
  [v4 enumerateObjectsUsingBlock:v33];
  (v35)(&v34, 8, *MEMORY[0x1E69637C0]);
  v5 = *MEMORY[0x1E6963798];
  (v35)(&v34, 2048, *MEMORY[0x1E6963798]);
  v55[0] = *MEMORY[0x1E69638B8];
  v55[1] = v3;
  v6 = *MEMORY[0x1E6963870];
  v55[2] = *MEMORY[0x1E6963888];
  v55[3] = v6;
  v55[4] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
  v53 = *MEMORY[0x1E696A4E0];
  v54 = *MEMORY[0x1E696A4D8];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v9 = _UIActivityItemsWithTypes(v47[5], 0x4000, 0, 0);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ____ItemsFromUIActivityItems_block_invoke_5;
  v28[3] = &unk_1E71FA258;
  v10 = v7;
  v29 = v10;
  v11 = v8;
  v30 = v11;
  v31 = &v40;
  v32 = &v46;
  [v9 enumerateObjectsUsingBlock:v28];
  v12 = MEMORY[0x1E695DF70];
  v13 = _UIActivityItemsWithTypes(v47[5], 4, 0, 0);
  v14 = [v12 arrayWithArray:v13];

  if ([v14 count])
  {
    v23 = v4;
    v15 = v1;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v52 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          [v41[5] addObject:v20];
          [v47[5] removeObjectIdenticalTo:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v52 count:16];
      }

      while (v17);
    }

    v4 = v23;
    v1 = v15;
  }

  v21 = v41[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v21;
}

void sub_18B3B1630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __NSExtensionItemsFromUIActivityItems(void *a1, void *a2, void *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__2;
  v86 = __Block_byref_object_dispose__2;
  v87 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__2;
  v80 = __Block_byref_object_dispose__2;
  v81 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke;
  v74[3] = &unk_1E71FA280;
  v32 = v5;
  v75 = v32;
  if (____NSExtensionItemsFromUIActivityItems_block_invoke(v74))
  {
    v33 = 1;
  }

  else
  {
    v33 = [v6 sourceAppIsManaged];
  }

  v8 = [v77[5] copy];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_2;
  v70[3] = &unk_1E71FA2A8;
  v72 = &v82;
  v9 = v7;
  v71 = v9;
  v73 = &v76;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v70];

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v64 = ____NSExtensionItemsFromUIActivityItems_block_invoke_3;
  v65 = &unk_1E71FA2F8;
  v68 = &v76;
  v10 = v6;
  v66 = v10;
  v69 = &v82;
  v11 = v9;
  v67 = v11;
  ____NSExtensionItemsFromUIActivityItems_block_invoke_3(v63, 1024, *MEMORY[0x1E69638D8]);
  v64(v63, 512, *MEMORY[0x1E69636D8]);
  v64(v63, 128, *MEMORY[0x1E6963858]);
  v64(v63, 2, *MEMORY[0x1E69637F8]);
  v64(v63, 64, *MEMORY[0x1E6963850]);
  v64(v63, 4096, *MEMORY[0x1E6963748]);
  v12 = _UIActivityItemsWithTypes(v77[5], 1, 1u, 0);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_5;
  v58[3] = &unk_1E71FA348;
  v36 = v10;
  v59 = v36;
  v61 = &v82;
  v13 = v11;
  v60 = v13;
  v62 = &v76;
  [v12 enumerateObjectsUsingBlock:v58];
  v64(v63, 8, *MEMORY[0x1E69637C0]);
  v64(v63, 2048, *MEMORY[0x1E6963798]);
  v31 = v12;
  v14 = _UIActivityItemsWithTypes(v77[5], 0x4000, 0, 0);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_7;
  v54[3] = &unk_1E71FA370;
  v56 = &v82;
  v15 = v13;
  v55 = v15;
  v57 = &v76;
  [v14 enumerateObjectsUsingBlock:v54];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  v53 = [MEMORY[0x1E695DF70] array];
  v34 = _UIActivityItemsWithTypes(v77[5], 0x2000, 0, 0);
  v16 = MEMORY[0x1E695DF70];
  v17 = _UIActivityItemsWithTypes(v77[5], 4, 0, 0);
  v18 = [v16 arrayWithArray:v17];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_8;
  v43[3] = &unk_1E71FA3C0;
  v35 = v18;
  v44 = v35;
  v19 = v15;
  v45 = v19;
  v46 = &v48;
  v47 = &v76;
  [v34 enumerateObjectsUsingBlock:v43];
  if ([v35 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v35;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v88 count:16];
    if (v21)
    {
      v22 = *v40;
      v23 = *MEMORY[0x1E69638B8];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v39 + 1) + 8 * i);
          v26 = _NSItemProviderForUIActivityItem(v25, v23, v36);
          if (v26)
          {
            [v83[5] addObject:v26];
            if (v19)
            {
              (*(v19 + 2))(v19, v26, v25);
            }

            [v77[5] removeObjectIdenticalTo:v25];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v39 objects:v88 count:16];
      }

      while (v21);
    }
  }

  if ([v83[5] count])
  {
    v27 = objc_alloc_init(MEMORY[0x1E696ABE0]);
    [v27 setAttachments:v83[5]];
    [v49[5] insertObject:v27 atIndex:0];
  }

  v28 = v49[5];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = ____NSExtensionItemsFromUIActivityItems_block_invoke_10;
  v37[3] = &__block_descriptor_33_e32_v32__0__NSExtensionItem_8Q16_B24l;
  v38 = v33;
  [v28 enumerateObjectsUsingBlock:v37];
  v29 = v49[5];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);

  return v29;
}

void sub_18B3B2310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

id _NSItemProviderForUIActivityItem(void *a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v10 = *MEMORY[0x1E69638B8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___NSItemProviderForUIActivityItemURLRep_block_invoke;
    v20[3] = &unk_1E71FA320;
    v11 = v8;
    v21 = v11;
    [v9 registerItemForTypeIdentifier:v10 loadHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___NSItemProviderForUIActivityItemURLRep_block_invoke_2;
    v18[3] = &unk_1E71FA320;
    v12 = v11;
    v19 = v12;
    [v9 setPreviewImageHandler:v18];
    if ([v12 attachmentURLType])
    {
      v22 = @"SLAttachmentURLType";
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "attachmentURLType")}];
      v23[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      [v9 setUserInfo:v14];
    }
  }

  else
  {
    v15 = [v7 activityType];
    v12 = _UIActivityGetTypeIdentifier(v5, v6, v15);

    v16 = [v7 activityType];
    [v7 thumbnailSize];
    v9 = [_UIActivityItemMapping _itemProviderForActivityItem:v5 typeIdentifier:v12 thumbnailSize:v16 activityType:?];
  }

  return v9;
}

id _UIActivityGetTypeIdentifier(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v5 activityType:a3];
  if (![v7 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = CGImageSourceCreateWithData(v5, 0);
      if (v8)
      {
        v9 = v8;
        Type = CGImageSourceGetType(v8);
        CFRelease(v9);
      }

      else
      {
        Type = 0;
      }

      v7 = Type;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(__CFData *)v5 isFileURL])
      {
        v11 = v5;
        v12 = _UIActivityUTIForURL(v11);
        if (![v12 length])
        {
          v13 = CGImageSourceCreateWithURL(v11, 0);
          v14 = v13;
          if (!v13)
          {
LABEL_13:

            v7 = v14;
            goto LABEL_14;
          }

          v15 = CGImageSourceGetType(v13);

          CFRelease(v14);
          v12 = v15;
        }

        v12 = v12;
        v14 = v12;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if (![v7 length])
  {
    v16 = v6;

    v7 = v16;
  }

  return v7;
}

void sub_18B3B320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UICanExcludeExtensionActivities()
{
  if (_UICanExcludeExtensionActivities_onceToken != -1)
  {
    _UICanExcludeExtensionActivities_cold_1();
  }

  return _UICanExcludeExtensionActivities_hostHasEntitlement;
}

BOOL _UIExtensionElectionStateIsIgnore(void *a1)
{
  v1 = [a1 applicationExtension];
  v2 = [v1 _plugIn];
  v3 = [v2 userElection];

  return v3 == 2;
}

uint64_t _UIShouldExcludeExtensionWithActivityType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.ExtensionTester.NullPlugin"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.ExtensionTester.NullShareSheet") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.ist.AppleDirectory.extension") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.contextkit.ProofOfContext.ContentExtractionActionExtension"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.LocalAuthentication.GuiTestApp.LANonUIActionExtension.LANonUIActionExtension"];
  }

  return v2;
}

void sub_18B3B4768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCSAddParticipantsViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSAddParticipantsViewControllerClass_softClass;
  v7 = getCSAddParticipantsViewControllerClass_softClass;
  if (!getCSAddParticipantsViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCSAddParticipantsViewControllerClass_block_invoke;
    v3[3] = &unk_1E71F91F0;
    v3[4] = &v4;
    __getCSAddParticipantsViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B3B4B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFAirDropViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_5)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SharingUILibraryCore_block_invoke_5;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71FA450;
    v6 = 0;
    SharingUILibraryCore_frameworkLibrary_5 = _sl_dlopen();
    v2 = v4[0];
    if (SharingUILibraryCore_frameworkLibrary_5)
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
  result = objc_getClass("SFAirDropViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFAirDropViewControllerClass_block_invoke_cold_1();
  }

  getSFAirDropViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_5 = result;
  return result;
}

void __getCSSharingOptionsViewControllerClass_block_invoke(uint64_t a1)
{
  CloudSharingUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSSharingOptionsViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSSharingOptionsViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSSharingOptionsViewControllerClass_block_invoke_cold_1();
    CloudSharingUILibrary();
  }
}

void CloudSharingUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CloudSharingUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CloudSharingUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71FA468;
    v3 = 0;
    CloudSharingUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!CloudSharingUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CloudSharingUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudSharingUILibraryCore_frameworkLibrary = result;
  return result;
}

SHSheetRemoteCustomViewController *__getCSAddParticipantsViewControllerClass_block_invoke(uint64_t a1)
{
  CloudSharingUILibrary();
  result = objc_getClass("CSAddParticipantsViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSAddParticipantsViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCSAddParticipantsViewControllerClass_block_invoke_cold_1();
    return [(SHSheetRemoteCustomViewController *)v3 initWithSessionIdentifier:v4, v5];
  }

  return result;
}

void sub_18B3B5418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SharingUILibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_6 = result;
  return result;
}

Class initLPLinkMetadata_1()
{
  if (LinkPresentationLibrary_sOnce_3 != -1)
  {
    initLPLinkMetadata_cold_1_1();
  }

  result = objc_getClass("LPLinkMetadata");
  classLPLinkMetadata_1 = result;
  getLPLinkMetadataClass_2 = LPLinkMetadataFunction_1;
  return result;
}

void *__LinkPresentationLibrary_block_invoke_3()
{
  result = dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib_3 = result;
  return result;
}

id SHSheetCustomHeaderButtonTitle(int a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = _ShareSheetBundle();
    v2 = [v1 localizedStringForKey:@"SHARE_SHEET_SHAREPLAY_BUTTON_TITLE" value:@"SharePlay" table:@"Localizable"];

    v3 = objc_alloc(MEMORY[0x1E696AAB0]);
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v2];
    v24[0] = *MEMORY[0x1E69DB650];
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    v25[0] = v5;
    v24[1] = *MEMORY[0x1E69DB648];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v25[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v8 = [v3 initWithString:v4 attributes:v7];

    v9 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v10 = MEMORY[0x1E69DCAD8];
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    v12 = [v10 configurationWithHierarchicalColor:v11];
    v13 = [v9 configurationByApplyingConfiguration:v12];

    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shareplay" withConfiguration:v13];
    v15 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v15 setImage:v14];
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      [v8 size];
      v17 = v16 + 2.0;
      [v14 size];
      v19 = v18;
      [v14 size];
      [v15 setBounds:{0.0, -2.0, v19 * (v17 / v20), v17}];
    }

    v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v15];
    v22 = [v21 mutableCopy];

    [v22 appendAttributedString:v8];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id SHSheetCustomHeaderButtonColor(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E69DC888] systemGreenColor];
    v2 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v3 = [v1 resolvedColorWithTraitCollection:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SHSheetCollaborationModeTitle(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 BOOLValue] & 1) == 0)
  {
    v4 = _ShareSheetBundle();
    v3 = [v4 localizedStringForKey:@"SEND_LINK" value:@"Send Link" table:@"Localizable"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SHSheetTintColor()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 6)
  {
    v2 = [MEMORY[0x1E69DC888] labelColor];
    goto LABEL_8;
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 keyWindow];
  v2 = [v4 tintColor];

  if (v2)
  {
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    if ([v2 isEqual:v5])
    {
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
      v7 = [v2 isEqual:v6];

      if (!v7)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = [MEMORY[0x1E69DC888] systemBlueColor];

  v2 = v8;
LABEL_8:

  return v2;
}

void __SanitizeStringForUseAsFileName_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/\"];
  v1 = SanitizeStringForUseAsFileName___illegalFileNameCharacters;
  SanitizeStringForUseAsFileName___illegalFileNameCharacters = v0;
}

Class initQLPreviewController()
{
  if (QuickLookLibrary_sOnce_0 != -1)
  {
    initQLPreviewController_cold_1();
  }

  result = objc_getClass("QLPreviewController");
  classQLPreviewController = result;
  getQLPreviewControllerClass = QLPreviewControllerFunction;
  return result;
}

void *__QuickLookLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  QuickLookLibrary_sLib_0 = result;
  return result;
}

Class initQLDismissAction()
{
  if (QuickLookLibrary_sOnce_0 != -1)
  {
    initQLPreviewController_cold_1();
  }

  result = objc_getClass("QLDismissAction");
  classQLDismissAction = result;
  getQLDismissActionClass = QLDismissActionFunction;
  return result;
}

id canonicalPathForPath(void *a1)
{
  v1 = [a1 stringByResolvingSymlinksInPath];
  v2 = [v1 stringByStandardizingPath];

  return v2;
}

Class initFPSandboxingURLWrapper()
{
  if (FileProviderLibrary_sOnce != -1)
  {
    [UISUISecurityScopedResource initWithCoder:];
  }

  result = objc_getClass("FPSandboxingURLWrapper");
  classFPSandboxingURLWrapper = result;
  getFPSandboxingURLWrapperClass = FPSandboxingURLWrapperFunction;
  return result;
}

void *__FileProviderLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 2);
  FileProviderLibrary_sLib = result;
  return result;
}

Class ___isUnitTesting_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  _isUnitTesting_isUnitTesting = result != 0;
  return result;
}

void sub_18B3BE730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_18B3BE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

Class initCKContainerSetupInfo()
{
  if (CloudKitLibrary_sOnce != -1)
  {
    initCKContainerSetupInfo_cold_1();
  }

  result = objc_getClass("CKContainerSetupInfo");
  classCKContainerSetupInfo = result;
  getCKContainerSetupInfoClass = CKContainerSetupInfoFunction;
  return result;
}

void *__CloudKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2);
  CloudKitLibrary_sLib = result;
  return result;
}

Class initCKShare()
{
  if (CloudKitLibrary_sOnce != -1)
  {
    initCKContainerSetupInfo_cold_1();
  }

  result = objc_getClass("CKShare");
  classCKShare = result;
  getCKShareClass = CKShareFunction;
  return result;
}

uint64_t _UIActivityHelperActivityItemsIncludeICloudDriveURL(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * v4);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isFileURL])
        {
          if (CloudDocsLibrary_sOnce != -1)
          {
            _UIActivityHelperActivityItemsIncludeICloudDriveURL_cold_1();
          }

          if ([v5 br_isInMobileDocuments])
          {
            v2 = 1;
            goto LABEL_15;
          }
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v2;
}

void *__CloudDocsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
  CloudDocsLibrary_sLib = result;
  return result;
}

void sub_18B3C4968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3C4D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3C5110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3C761C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B3C98F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3CAF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3CB320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3CC3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_18B3D0E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIActivityFromApplicationExtension(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 attributes];
  v3 = [v2 objectForKeyedSubscript:@"NSExtensionExcludedFromShareSheet"];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    v7 = [v1 extensionPointIdentifier];
    v8 = [v7 isEqualToString:@"com.apple.share-services"];

    if (v8)
    {
      v9 = [v1 infoDictionary];
      v10 = [v9 objectForKeyedSubscript:@"NSExtension"];
      v11 = [v10 objectForKeyedSubscript:@"NSExtensionIsCollaborationSpecific"];
      [v11 BOOLValue];
    }

    else
    {
      v12 = [v1 identifier];
      v13 = [v12 isEqualToString:@"net.box.BoxNet.collaborateShareExtension"];

      if (!v13)
      {
        v15 = [v1 attributes];
        v16 = [v15 valueForKey:@"UIApplicationExtensionIsFileProviderSpecific"];
        v14 = objc_opt_class();

        goto LABEL_10;
      }
    }

    v14 = objc_opt_class();
LABEL_10:
    v6 = [[v14 alloc] initWithApplicationExtension:v1];
    goto LABEL_11;
  }

  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v1;
    v20 = 2112;
    v21 = @"NSExtensionExcludedFromShareSheet";
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Excluded extension:%@ reason:%@", &v18, 0x16u);
  }

  v6 = 0;
LABEL_11:

  return v6;
}

id _UIApplicationExtensionDiscoveryGetAttributesForExtensionMatchingDictionaries(void *a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = a1;
  v5 = [v3 dictionary];
  v9 = @"extensionItems";
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v5 setObject:v6 forKeyedSubscript:@"NSExtensionActivationRule"];
  if (a2)
  {
    v7 = [&unk_1EFEC96F8 stringValue];
    [v5 setObject:v7 forKeyedSubscript:@"NSUserElection"];
  }

  return v5;
}

id _UIQLPreviewUTIForURLAndMimeType(void *a1, void *a2)
{
  v3 = InitializeQuickLookFunctions_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    _UIQLPreviewUTIForURLAndMimeType_cold_1();
  }

  v6 = QLTypeCopyUTIForURLAndMimeTypeFx(v5, v4);

  return v6;
}

uint64_t _UIQLCanPreviewContentWithUTI(void *a1)
{
  v1 = InitializeQuickLookFunctions_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _UIQLPreviewUTIForURLAndMimeType_cold_1();
  }

  v3 = QLPreviewControllerSupportsContentTypeFx(v2);

  return v3;
}

uint64_t _UIQLCanPreviewItem(void *a1)
{
  v1 = getQLPreviewControllerClass_0;
  v2 = a1;
  v3 = [(objc_class *)v1() canPreviewItem:v2];

  return v3;
}

uint64_t _UIQLPreviewNeedsHelpDecompressingURL(void *a1)
{
  v1 = InitializeQuickLookFunctions_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _UIQLPreviewUTIForURLAndMimeType_cold_1();
  }

  v3 = QLPreviewNeedsHelpUnzippingURLFx(v2);

  return v3;
}

Class initQLPreviewController_0()
{
  if (QuickLookLibrary_sOnce_1 != -1)
  {
    initQLPreviewController_cold_1_0();
  }

  result = objc_getClass("QLPreviewController");
  classQLPreviewController_0 = result;
  getQLPreviewControllerClass_0 = QLPreviewControllerFunction_0;
  return result;
}

void *__QuickLookLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 2);
  QuickLookLibrary_sLib_1 = result;
  return result;
}

Class initQLDismissAction_0()
{
  if (QuickLookLibrary_sOnce_1 != -1)
  {
    initQLPreviewController_cold_1_0();
  }

  result = objc_getClass("QLDismissAction");
  classQLDismissAction_0 = result;
  getQLDismissActionClass_0 = QLDismissActionFunction_0;
  return result;
}

void *__InitializeQuickLookFunctions_block_invoke()
{
  if (QuickLookLibrary_sOnce_1 != -1)
  {
    initQLPreviewController_cold_1_0();
  }

  v0 = QuickLookLibrary_sLib_1;
  QLPreviewControllerSupportsContentTypeFx = dlsym(QuickLookLibrary_sLib_1, "QLPreviewControllerSupportsContentType");
  QLPreviewNeedsHelpUnzippingURLFx = dlsym(v0, "QLPreviewNeedsHelpUnzippingURL");
  result = dlsym(v0, "QLTypeCopyUTIForURLAndMimeType");
  QLTypeCopyUTIForURLAndMimeTypeFx = result;
  return result;
}

void sub_18B3D2D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3D2F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id SHQuickNoteLog()
{
  if (SHQuickNoteLog_onceToken != -1)
  {
    SHQuickNoteLog_cold_1();
  }

  v1 = SHQuickNoteLog___logger;

  return v1;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __ExtensionKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ExtensionKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSYIsLinkableUserActivitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SynapseLibrary();
  result = dlsym(v2, "SYIsLinkableUserActivity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSYIsLinkableUserActivitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SynapseLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SynapseLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SynapseLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71FAA28;
    v5 = 0;
    SynapseLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SynapseLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!SynapseLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SynapseLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SynapseLibraryCore_frameworkLibrary = result;
  return result;
}

void __SHQuickNoteLog_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "QuickNote");
  v1 = SHQuickNoteLog___logger;
  SHQuickNoteLog___logger = v0;
}

Class __getSYNotesActivationRequestClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  result = objc_getClass("SYNotesActivationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSYNotesActivationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSYNotesActivationRequestClass_block_invoke_cold_1();
    return __getSYNotesActivationCommandClass_block_invoke(v3);
  }

  return result;
}

Class __getSYNotesActivationCommandClass_block_invoke(uint64_t a1)
{
  SynapseLibrary();
  result = objc_getClass("SYNotesActivationCommand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSYNotesActivationCommandClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSYNotesActivationCommandClass_block_invoke_cold_1();
    return +[(UISUIActivityExtensionItemData *)v3];
  }

  return result;
}

void sub_18B3D5B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SHSheetUISpecPlaceholderColor(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1.0;
    v2 = 1.0;
    v3 = 1.0;
  }

  else
  {
    v1 = 0.0;
    v2 = 0.0;
    v3 = 0.0;
  }

  v4 = [MEMORY[0x1E69DC888] colorWithRed:v1 green:v2 blue:v3 alpha:0.05];

  return v4;
}

id UIActivityContentHelperOptionsButtonAction(int a1, void *a2, void *a3)
{
  v5 = getLPButtonActionClass;
  v6 = a3;
  v7 = a2;
  v8 = v5();
  v9 = UIActivityContentHelperOptionsButtonText(a1, v7);

  v10 = [(objc_class *)v8 actionWithTitle:v9 image:0 handler:v6];

  return v10;
}

id UIActivityContentHelperOptionsButtonText(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = _ShareSheetBundle();
      v5 = [v6 localizedStringForKey:@"Options" value:@"Options" table:@"Localizable"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id UIActivityContentHelperCollaborationButtonAction(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = _ShareSheetBundle();
    v7 = [v8 localizedStringForKey:@"Collaborative" value:@"Collaborative" table:@"Localizable"];
  }

  v9 = objc_alloc(getLPImageClass());
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.fill"];
  v11 = [v9 initWithPlatformImage:v10];

  v12 = objc_alloc(getLPImageClass());
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2"];
  v14 = [v12 initWithPlatformImage:v13];

  v15 = [(objc_class *)getLPButtonActionClass() actionWithTitle:v7 image:v14 handler:v6];
  [v15 setVisibleImage:v11];
  [v15 setSelected:a1];

  return v15;
}

id UIActivityContentHelperCopyButtonAction(int a1, void *a2)
{
  v3 = a2;
  v4 = _ShareSheetBundle();
  v5 = [v4 localizedStringForKey:@"Send Copy" value:@"Send Copy" table:@"Localizable"];

  v6 = objc_alloc(getLPImageClass());
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.fill"];
  v8 = [v6 initWithPlatformImage:v7];

  v9 = objc_alloc(getLPImageClass());
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc"];
  v11 = [v9 initWithPlatformImage:v10];

  v12 = [(objc_class *)getLPButtonActionClass() actionWithTitle:v5 image:v11 handler:v3];

  [v12 setVisibleImage:v8];
  [v12 setSelected:a1 ^ 1u];

  return v12;
}

id UIActivityContentHelperCollaborationSubtitle(void *a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = _ShareSheetBundle();
    v3 = [v4 localizedStringForKey:@"COLLABORATION_HEADER_SUBTITLE" value:@"Collaboration" table:@"Localizable"];
  }

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v3];
  v26[0] = *MEMORY[0x1E69DB650];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v27[0] = v7;
  v26[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v27[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v10 = [v5 initWithString:v6 attributes:v9];

  v11 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v12 = MEMORY[0x1E69DCAD8];
  v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v14 = [v12 configurationWithHierarchicalColor:v13];
  v15 = [v11 configurationByApplyingConfiguration:v14];

  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.fill" withConfiguration:v15];
  v17 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v17 setImage:v16];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    [v10 size];
    v19 = v18 + 2.0;
    [v16 size];
    v21 = v20;
    [v16 size];
    [v17 setBounds:{0.0, -2.0, v21 * (v19 / v22), v19}];
  }

  v23 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
  v24 = [v23 mutableCopy];

  [v24 appendAttributedString:v10];

  return v24;
}

Class initLPButtonAction()
{
  if (LinkPresentationLibrary_sOnce_4 != -1)
  {
    initLPButtonAction_cold_1();
  }

  result = objc_getClass("LPButtonAction");
  classLPButtonAction = result;
  getLPButtonActionClass = LPButtonActionFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke_4()
{
  result = dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib_4 = result;
  return result;
}

Class initLPImage()
{
  if (LinkPresentationLibrary_sOnce_4 != -1)
  {
    initLPButtonAction_cold_1();
  }

  result = objc_getClass("LPImage");
  classLPImage = result;
  getLPImageClass = LPImageFunction;
  return result;
}

void sub_18B3D7A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3D99E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B3DAA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3DADC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_18B3DBA10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void _UIShareServiceProxyRaiseInvocationUnsupportedForInstance(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Attempt to invoke -%@ on %@, which is not supported for proxies to out-of-process activities.", v6, v5}];
}

id _UIActivityGetPrintingBasedActivities()
{
  if (_UIActivityGetPrintingBasedActivities_once != -1)
  {
    _UIActivityGetPrintingBasedActivities_cold_1();
  }

  v1 = _UIActivityGetPrintingBasedActivities___printingBasedActivities;

  return v1;
}

__CFString *SHSheetActivityPerformerStateDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E71FAD50[a1];
  }
}

void sub_18B3DE260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3DF384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3DFA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3E0064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3E0D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ScanForPrintingItems(void *a1, void *a2, _BYTE *a3, _BYTE *a4, BOOL *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 allValues];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          ScanForPrintingItems(*(*(&v26 + 1) + 8 * i), v10, a3, a4, a5);
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

LABEL_9:

    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([MEMORY[0x1E69C5A18] canPrintData:v9])
    {
      [v10 addObject:v9];
      v16 = CGImageSourceCreateWithData(v9, 0);
      if (v16)
      {
        v17 = v16;
        Type = CGImageSourceGetType(v16);
        if (Type)
        {
          v19 = UTTypeConformsTo(Type, *MEMORY[0x1E69637F8]) != 0;
        }

        else
        {
          v19 = 0;
        }

        CFRelease(v17);
      }

      else
      {
        v19 = 0;
      }

      *a3 = (*a3 | v19) & 1;
      *a4 = (*a4 | !v19) & 1;
      *a5 = !v19;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isFileURL])
    {
      if (![MEMORY[0x1E69C5A18] canPrintURL:v9])
      {
        goto LABEL_32;
      }

      [v10 addObject:v9];
      v20 = _UIActivityUTIForURL(v9);
      v11 = v20;
      if (v20 && UTTypeConformsTo(v20, *MEMORY[0x1E69637F8]) && (v21 = CGImageSourceCreateWithURL(v9, 0)) != 0)
      {
        CFRelease(v21);
        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      *a3 |= v22;
      v25 = v22 ^ 1;
      *a4 |= v25;
      *a5 = v25;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v9 scheme];
      v24 = [v23 compare:@"assets-library" options:1];

      if (!v24)
      {
        if ([MEMORY[0x1E69C5A18] canPrintURL:v9])
        {
LABEL_16:
          [v10 addObject:v9];
          *a3 = 1;
        }
      }
    }
  }

LABEL_32:
}

void sub_18B3E6B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SharingUILibraryCore_frameworkLibrary_7)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SharingUILibraryCore_block_invoke_7;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71FAE20;
    v7 = 0;
    SharingUILibraryCore_frameworkLibrary_7 = _sl_dlopen();
    v3 = v5[0];
    v2 = SharingUILibraryCore_frameworkLibrary_7;
    if (SharingUILibraryCore_frameworkLibrary_7)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SharingUILibraryCore_frameworkLibrary_7;
LABEL_5:
  result = dlsym(v2, "SFUILinkMetadataSerializationForLocalUseOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharingUILibraryCore_block_invoke_7()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_7 = result;
  return result;
}

uint64_t _UISecureStandardPropertyListClasses()
{
  v14 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v14 setWithObjects:{v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

id _UISecureDecodeExtensionItemsWithKey(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696ABD8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 valueForKey:@"_extensionContextHostProtocolAllowedClassesForItems"];
  v7 = [v6 mutableCopy];

  v8 = _UISecureStandardPropertyListClasses();
  [v7 unionSet:v8];

  v9 = [v5 decodeObjectOfClasses:v7 forKey:v4];

  return v9;
}

void _UISecureEncodeCGSizeWithKey(void *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E696B098];
  v8 = a2;
  v9 = a1;
  v10 = [v7 valueWithCGSize:{a3, a4}];
  [v9 encodeObject:v10 forKey:v8];
}

double _UISecureDecodeCGSizeWithKeyAndDefaultSize(void *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:v5];

  if (v7)
  {
    [v7 CGSizeValue];
    a3 = v8;
  }

  return a3;
}

void sub_18B3E83A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LinkPresentationLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getLPImageClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLPImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getLPImageClass_block_invoke_cold_1();
    return +[(UIAddToReadingListActivity *)v3];
  }

  return result;
}

Class initSSReadingList()
{
  if (SafariServicesLibrary_sOnce_0 != -1)
  {
    initSSReadingList_cold_1();
  }

  result = objc_getClass("SSReadingList");
  classSSReadingList = result;
  getSSReadingListClass = SSReadingListFunction;
  return result;
}

void *__SafariServicesLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/SafariServices.framework/SafariServices", 2);
  SafariServicesLibrary_sLib_0 = result;
  return result;
}

void sub_18B3ED34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B3ED4C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B3EDC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initPHPhotoLibrary()
{
  if (PhotosLibrary_sOnce != -1)
  {
    initPHPhotoLibrary_cold_1();
  }

  result = objc_getClass("PHPhotoLibrary");
  classPHPhotoLibrary = result;
  getPHPhotoLibraryClass = PHPhotoLibraryFunction;
  return result;
}

void *__PhotosLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 2);
  PhotosLibrary_sLib = result;
  return result;
}

void sub_18B3EEBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id iconsToIncludeInIconArrayForDocumentProxy(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v1 format:3];
  if (v3)
  {
    [v2 addObject:v3];
  }

  v4 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v1 format:6];

  if (v4)
  {
    [v2 addObject:v4];
  }

  if (![v2 count])
  {
    v5 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v1 format:4];

    if (v5)
    {
      [v2 addObject:v5];
    }

    v4 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v1 format:7];

    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  return v2;
}

void sub_18B3F0DB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void _UIDocumentInteractionControllerPresentPopoverOrShowActivityViewController(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3[10];
  v23 = v3;
  v5 = _UIAppUseModernRotationAndPresentationBehaviors();
  if (v4)
  {
    if ((v5 & 1) != 0 || ([MEMORY[0x1E69DC938] currentDevice], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      v8 = [v3[10] _itemForPresenting];
      v9 = _UIPopoverPresentationControllerSourceItemNearestViewController();
      v10 = [v23[19] popoverPresentationController];
      [v10 setSourceItem:v8];

      [v9 presentViewController:v23[19] animated:a2 completion:0];
    }

    else
    {
      v8 = [v23 popoverController];
      [v8 presentPopoverFromBarButtonItem:v3[10] permittedArrowDirections:15 animated:a2];
    }
  }

  else if ((v5 & 1) != 0 || ([MEMORY[0x1E69DC938] currentDevice], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "userInterfaceIdiom"), v11, (v12 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v13 = *(v23 + 5);
    v14 = *(v23 + 6);
    v15 = *(v23 + 7);
    v16 = *(v23 + 8);
    v17 = [v23[19] popoverPresentationController];
    [v17 setSourceRect:{v13, v14, v15, v16}];

    v18 = v23[9];
    v19 = [v23[19] popoverPresentationController];
    [v19 setSourceView:v18];

    v20 = v23[9];
    if (v20)
    {
      v21 = v20;
      do
      {
        v8 = [MEMORY[0x1E69DD258] viewControllerForView:v21];
        if (v8)
        {
          break;
        }

        v22 = [v21 superview];

        v21 = v22;
      }

      while (v22);
    }

    else
    {
      v8 = 0;
    }

    [v8 presentViewController:v23[19] animated:a2 completion:0];
  }

  else
  {
    v8 = [v23 popoverController];
    [v8 presentPopoverFromRect:v23[9] inView:15 permittedArrowDirections:a2 animated:{*(v23 + 5), *(v23 + 6), *(v23 + 7), *(v23 + 8)}];
  }
}

void sub_18B3F14E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B3F1A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18B3F2364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B3F3034(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B3F3218(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B3F371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B3F3C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __genericDocumentIcons_block_invoke()
{
  v0 = MEMORY[0x1E6963658];
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/content"];
  v4 = [v0 documentProxyForURL:v1 isContentManaged:0 sourceAuditToken:0];

  v2 = iconsToIncludeInIconArrayForDocumentProxy(v4);
  v3 = genericDocumentIcons_icons;
  genericDocumentIcons_icons = v2;
}

void __passKitIconsIfIsPassKitDocument_block_invoke()
{
  if (PassKitLibrary_sOnce != -1)
  {
    __passKitIconsIfIsPassKitDocument_block_invoke_cold_1();
  }

  if (PassKitUILibrary_sOnce != -1)
  {
    __passKitIconsIfIsPassKitDocument_block_invoke_cold_2();
  }

  v2 = objc_alloc_init(NSClassFromString(&cfstr_Pkpass.isa));
  v0 = [v2 mailAttachmentIcon];
  v1 = passKitIconsIfIsPassKitDocument_genericPassIcon;
  passKitIconsIfIsPassKitDocument_genericPassIcon = v0;
}

void *__PassKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/PassKit.framework/PassKit", 2);
  PassKitLibrary_sLib = result;
  return result;
}

void *__PassKitUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitUI.framework/PassKitUI", 2);
  PassKitUILibrary_sLib = result;
  return result;
}

void initFPExtendBookmarkForDocumentURL(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = FileProviderLibrary_sOnce_0;
  v6 = a3;
  if (v5 != -1)
  {
    initFPExtendBookmarkForDocumentURL_cold_1();
  }

  softLinkFPExtendBookmarkForDocumentURL = dlsym(FileProviderLibrary_sLib_0, "FPExtendBookmarkForDocumentURL");
  (softLinkFPExtendBookmarkForDocumentURL)(a1, a2, v6);
}

void *__FileProviderLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/FileProvider.framework/FileProvider", 2);
  FileProviderLibrary_sLib_0 = result;
  return result;
}

void sub_18B3F654C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id tempURLForJobName(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"/" withString:@"%2F"];
  if ([v1 length] >= 0x51)
  {
    v2 = [v1 substringToIndex:80];

    v1 = v2;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = NSTemporaryDirectory();
  v5 = [v3 stringWithFormat:@"%@/%@.pdf", v4, v1];

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];

  return v6;
}

void sub_18B3F899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B3FA838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_18B3FB088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __SharingUILibraryCore_block_invoke_8()
{
  result = _sl_dlopen();
  SharingUILibraryCore_frameworkLibrary_8 = result;
  return result;
}

void _UIShimSetIsContentManaged(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setIsContentManaged:a2];
  }

  else
  {
    [v3 setSourceIsManaged:a2];
  }
}

void _UIShimSetUnderbarIsContentManaged(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 _setIsContentManaged:a2];
  }

  else
  {
    [v3 _setSourceIsManaged:a2];
  }
}

void sub_18B3FBE94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initTUCallCenter()
{
  if (TelephonyUtilitiesLibrary_sOnce != -1)
  {
    initTUCallCenter_cold_1();
  }

  result = objc_getClass("TUCallCenter");
  classTUCallCenter = result;
  getTUCallCenterClass = TUCallCenterFunction;
  return result;
}

void *__TelephonyUtilitiesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities", 2);
  TelephonyUtilitiesLibrary_sLib = result;
  return result;
}

void sub_18B3FC1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B3FC820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFBSceneWorkspaceClass_block_invoke_0(uint64_t a1)
{
  FrontBoardLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBSceneWorkspace");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBSceneWorkspaceClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFBSceneWorkspaceClass_block_invoke_cold_1();
    FrontBoardLibrary_0();
  }
}

void FrontBoardLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FrontBoardLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FrontBoardLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E71FB368;
    v3 = 0;
    FrontBoardLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!FrontBoardLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __FrontBoardLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FrontBoardLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getFBDisplayManagerClass_block_invoke_0(uint64_t a1)
{
  FrontBoardLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FBDisplayManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFBDisplayManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getFBDisplayManagerClass_block_invoke_cold_1();
    __UIEnumerateApplicationsInPreferredOrderForOpeningDocument(v2, v3);
  }
}

void __UIEnumerateApplicationsInPreferredOrderForOpeningDocument(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E69636D0];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69636D0]];
  v7 = [v3 applicationsAvailableForOpeningWithHandlerRanks:v6 error:0];
  v8 = [v7 objectForKey:v5];
  v9 = [v8 mutableCopy];

  [v3 applicationsAvailableForOpeningWithError:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v16 = [v9 containsObject:v15];
      v17 = 0;
      v4[2](v4, v15, v16, &v17);
      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void _UIEnumerateApplicationsInPreferredOrderForOpeningDocument(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 containerOwnerApplicationIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIEnumerateApplicationsInPreferredOrderForOpeningDocument_block_invoke;
  v13[3] = &unk_1E71FB388;
  v14 = v6;
  v15 = v8;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  v11 = v8;
  v12 = v6;
  __UIEnumerateApplicationsInPreferredOrderForOpeningDocument(v10, v13);
}

id _UISUIActivitySpecificMetadataForOpeningDocumentWithApplicationID(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"applicationIdentifier";
  v6[0] = a1;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id _UISUIActivityExtensionItemDataRequestForOpeningDocumentWithApplicationByCopy(void *a1, int a2)
{
  v3 = UIActivityTypeRemoteOpenInApplicationUsingByCopyOpeningMethod;
  if (!a2)
  {
    v3 = UIActivityTypeRemoteOpenInApplicationUsingInPlaceOpeningMethod;
  }

  v4 = *v3;
  v5 = _UISUIActivitySpecificMetadataForOpeningDocumentWithApplicationID(a1);
  v6 = objc_opt_new();
  v7 = [UISUIActivityExtensionItemDataRequest requestForActivity:v6 activityType:v4 activitySpecificMetadata:v5];

  return v7;
}

void *_UIApplicationCanOpenInPlaceByCopyingFromOriginalFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 ui_canOpenInPlace])
  {
    OnlyOpenInPlaceFile = [v3 dataContainerURL];

    if (OnlyOpenInPlaceFile)
    {
      OnlyOpenInPlaceFile = _UIApplicationCanOpenInPlaceForReadOnlyOpenInPlaceFile(v3, v4);
    }
  }

  else
  {
    OnlyOpenInPlaceFile = 0;
  }

  return OnlyOpenInPlaceFile;
}

uint64_t _UIApplicationCanOpenInPlaceForReadOnlyOpenInPlaceFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v4 ui_isFileProviderURL])
  {
    goto LABEL_6;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = getFPURLMightBeInFileProviderSymbolLoc_ptr;
  v17 = getFPURLMightBeInFileProviderSymbolLoc_ptr;
  if (!getFPURLMightBeInFileProviderSymbolLoc_ptr)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getFPURLMightBeInFileProviderSymbolLoc_block_invoke;
    v13[3] = &unk_1E71F91F0;
    v13[4] = &v14;
    __getFPURLMightBeInFileProviderSymbolLoc_block_invoke(v13);
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    v12 = [SHSheetRemoteSceneViewController reloadMetadata:];
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v12);
  }

  if ((v5(v4) & 1) == 0)
  {
    v8 = objc_alloc(MEMORY[0x1E69635F8]);
    v9 = [v3 bundleURL];
    v6 = 1;
    v10 = [v8 initWithURL:v9 allowPlaceholder:1 error:0];

    if (v10)
    {
      v11 = [MEMORY[0x1E6963608] defaultWorkspace];
      v6 = [v11 isApplicationEligibleForReadOnlyDocumentOpenBehavior:v10];
    }
  }

  else
  {
LABEL_6:
    v6 = 1;
  }

  return v6;
}

uint64_t _UIApplicationCanOpenInPlaceByReferenceOriginalFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 ui_canOpenInPlace] && objc_msgSend(v3, "supportsOpenInPlace"))
  {
    OnlyOpenInPlaceFile = _UIApplicationCanOpenInPlaceForReadOnlyOpenInPlaceFile(v3, v4);
  }

  else
  {
    OnlyOpenInPlaceFile = 0;
  }

  return OnlyOpenInPlaceFile;
}

BOOL _UIIsArchiveExtension(void *a1)
{
  v1 = a1;
  if (v1 && (PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v1, 0)) != 0)
  {
    v3 = PreferredIdentifierForTag;
    v4 = UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x1E69638F8]) || UTTypeConformsTo(v3, *MEMORY[0x1E69637E0]) || UTTypeConformsTo(v3, *MEMORY[0x1E6963768]) || UTTypeConformsTo(v3, @"org.gnu.gnu-tar-archive") != 0;
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UIIsIWorkArchiveURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 pathExtension], v3 = objc_claimAutoreleasedReturnValue(), v4 = _UIIsArchiveExtension(v3), v3, v4))
  {
    v5 = [v2 lastPathComponent];
    v6 = _UIStringByDeletingArchiveExtensions(v5);

    v7 = [v6 pathExtension];
    if ([v7 length])
    {
      v8 = *MEMORY[0x1E6963710];
      v9 = [v6 pathExtension];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v8, v9, 0);

      v11 = [(__CFString *)PreferredIdentifierForTag lowercaseString];
      v12 = [v11 hasPrefix:@"com.apple.iwork"];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id _UIStringByDeletingArchiveExtensions(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [v1 pathExtension];
  if ([v3 length])
  {
    while (_UIIsArchiveExtension(v3))
    {
      v4 = [v2 firstObject];
      v5 = [v4 isEqualToString:v3];

      if ((v5 & 1) == 0)
      {
        [v2 insertObject:v3 atIndex:0];
      }

      v6 = [v1 stringByDeletingPathExtension];

      v7 = [v6 pathExtension];

      v3 = v7;
      v1 = v6;
      if (![v7 length])
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v1;
  v7 = v3;
LABEL_8:

  return v6;
}

id _UIActivityDefaultOpenApplicationLaunchServiceOptions()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E699F990];
  v3[0] = *MEMORY[0x1E699F970];
  v3[1] = v0;
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];

  return v1;
}

void *__getFPURLMightBeInFileProviderSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __FileProviderLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71FB3A8;
    v7 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = FileProviderLibraryCore_frameworkLibrary;
    if (FileProviderLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = FileProviderLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "FPURLMightBeInFileProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPURLMightBeInFileProviderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}